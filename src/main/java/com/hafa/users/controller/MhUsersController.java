package com.hafa.users.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.entity.Message;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.PageBean;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mhusers")
public class MhUsersController {

    @Autowired
    protected MhUsersService mhUsersService;

    @ResponseBody
    @RequestMapping("/login")
    public Message login(MhUsers user, String validCode, HttpSession session) {
        MhUsers currentUser = mhUsersService.getUserByUnamePword(user);
        Object sessionValidCode = session.getAttribute("validCode");
        if (currentUser != null) {
            session.setAttribute("currentUser", currentUser);
            if (currentUser.getSetups() > 0) {
                String validMsg = "<br>";
                if (validCode.length() <= 0) {
                    validMsg += "但是 ! 系统知道你验证码没有填写...";
                }
                if (validCode.length() > 0 && !validCode.equalsIgnoreCase(sessionValidCode.toString())) {
                    validMsg += "但是 ! 系统知道你验证码写错了...";
                }
                return MyUtil.msg(1, "登陆成功 ! 系统正在跳转..." + validMsg);
            }
            return MyUtil.msg(-1, "这个账号被禁用喽 !");
        }
        return MyUtil.msg(-1, "用户名或者密码不对 !");
    }

    @RequestMapping("/list")
    public String mhUsersList() {
        return "record/mhusers/mhusers-list";
    }

    @ResponseBody
    @RequestMapping("/userList")
    public Map<String, Object> list(@RequestParam(defaultValue = "1") int page,
                                    @RequestParam(defaultValue = "8") int limit, String key) {
        PageBean pageBean = new PageBean(limit, page);
        JSONObject args = JSON.parseObject(key, JSONObject.class);
        int code = -1;
        String msg = "success";
        int size = 0;
        List<Map<String, Object>> list = mhUsersService.list(args, pageBean);
        if (list != null) {
            code = 0;
            size = mhUsersService.listCount(args);
        } else {
            msg = "mhUsersService.list()返回结果为null";
        }
        return MyUtil.layData(code, msg, size, list);
    }

    @ResponseBody
    @RequestMapping("/saveOrUpdate")
    public Message saveOrUpdate(MhUsers mhUsers, HttpServletRequest request) {
        Integer ids = mhUsers.getIds();
        int result;
        if (ids == null) {
            result = mhUsersService.insertUser(mhUsers, request);
        } else {
            result = mhUsersService.updateUser(mhUsers, request);
        }
        return MyUtil.msg(result);
    }

    @ResponseBody
    @RequestMapping("/deleteUser")
    public Message deleteUser(String ids, HttpServletRequest request) {
        int result = mhUsersService.deleteUser(ids, request);
        return MyUtil.msg(result);
    }

    @ResponseBody
    @RequestMapping("/deleteUsers")
    public Message deleteUsers(String ids, HttpServletRequest request) {
        int result = mhUsersService.deleteUsers(ids, request);
        return MyUtil.msg(result);
    }

    @ResponseBody
    @RequestMapping("/updateSetups")
    public Message updateSetups(String ids, String setups, HttpServletRequest request) {
        int result = mhUsersService.updateSetups(ids, setups, request);
        return MyUtil.msg(result);
    }
}
