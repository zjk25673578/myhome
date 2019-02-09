package com.hafa.users.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.usergroup.service.MhUsersGroupService;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * 用户相关控制器类
 */
@Controller
@RequestMapping("/mhusers")
public class MhUsersController extends BaseController<MhUsersService> {

    @Autowired
    protected MhUsersService mhUsersService;

    @Autowired
    protected MhUsersGroupService mhUsersGroupService;

    /**
     * 跳转至登陆页面
     *
     * @param loginOut
     * @param session
     * @return
     */
    @RequestMapping("/toLogin")
    public String toLogin(boolean loginOut, HttpSession session) {
        if (loginOut) {
            session.removeAttribute("currentUser");
        }
        return "record/login";
    }

    /**
     * 跳转至用户列表页面
     *
     * @return
     */
    @RequestMapping("/list")
    public String mhUsersList(Model model) {
        List<Map<String, Object>> groupList = mhUsersGroupService.selectList();
        model.addAttribute("groupList", groupList);
        return "record/mhusers/mhusers-list";
    }

    /**
     * 登录请求
     *
     * @param user
     * @param validCode
     * @param session
     * @return
     */
    @ResponseBody
    @RequestMapping("/login")
    public Message login(MhUsers user, String validCode, HttpSession session) {
        Object sessionValidCode = session.getAttribute("validCode");
        if (sessionValidCode == null) { // 验证码失效
            return MsgUtil.msg(-4);
        }
/*        if (!sessionValidCode.toString().equalsIgnoreCase(validCode)) { // 验证码错误
            return MyUtil.msg(-6);
        }*/
        MhUsers currentUser = mhUsersService.getUserByUnamePword(user);
        if (currentUser == null) { // 用户名或密码错误
            return MsgUtil.msg(-400);
        }
        if (currentUser.getSetups() == null || currentUser.getSetups() != 1) { // 账号被禁用
            return MsgUtil.msg(-7);
        }
        session.setAttribute("currentUser", currentUser);
        return MsgUtil.msg(1, "<font color='green'>验证通过 ! 系统正在跳转...</font>");
    }

    /**
     * 请求获取用户列表数据
     *
     * @param pageBean
     * @param key
     * @return
     */
    @ResponseBody
    @RequestMapping("/userList")
    public Map<String, Object> list(PageBean pageBean, String key) {
        JSONObject args = JSON.parseObject(key, JSONObject.class); // 将页面传递过来的查询参数字符串转换成json对象
        Map<String, Object> result = null;
        try {
            // 根据指定条件查询
            result = mhUsersService.searchFor(MyUtil.bean2Map(args, pageBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
        int code = -1;
        String msg = "";
        if (result != null) {
            code = 0;
        } else {
            msg = "mhUsersService.searchFor返回结果为null";
        }
        MsgUtil.layData(result, code, msg); // 组装layui的数据表格的结构
        return result;
    }

    /**
     * 请求保存用户信息
     *
     * @param mhUsers
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/saveUser")
    public Message saveUser(MhUsers mhUsers, HttpServletRequest request) {
        int r = mhUsersService.saveOrUpdate(mhUsers, request);
        return MsgUtil.msg(r);
    }

    /**
     * 请求修改用户信息
     *
     * @param mhUsers
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateUser")
    public Message updateUser(MhUsers mhUsers, HttpServletRequest request) {
        int r = mhUsersService.saveOrUpdate(mhUsers, request);
        return MsgUtil.msg(r);
    }

    /**
     * 单个的删除
     *
     * @param ids     单条记录的主键
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteUser")
    public Message deleteUser(String ids, HttpServletRequest request) {
        int r = mhUsersService.remove(Integer.parseInt(ids), request);
        return MsgUtil.msg(r);
    }

    /**
     * 批量删除
     *
     * @param ids     多条记录的主键字符串, 以逗号分隔
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteUsers")
    public Message deleteUsers(String ids, HttpServletRequest request) {
        int result;
        try {
            result = mhUsersService.deleteUsers(ids, request);
        } catch (Exception e) {
            e.printStackTrace();
            return MsgUtil.msg(false, "com.hafa.users.service.MhUsersService.deleteUsers方法异常");
        }
        return MsgUtil.msg(result);
    }

    /**
     * 更改用户的启用禁用
     *
     * @param ids
     * @param setups
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateSetups")
    public Message updateSetups(String ids, String setups, HttpServletRequest request) {
        int result = mhUsersService.updateSetups(ids, setups, request);
        return MsgUtil.msg(result);
    }
}
