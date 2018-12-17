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
import java.lang.reflect.InvocationTargetException;
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
        Object sessionValidCode = session.getAttribute("validCode");
        if (sessionValidCode == null) {
            return MyUtil.msg(-4);
        }
        if (!sessionValidCode.toString().equalsIgnoreCase(validCode)) {
            return MyUtil.msg(-6);
        }
        MhUsers currentUser = mhUsersService.getUserByUnamePword(user);
        if (currentUser == null) {
            return MyUtil.msg(-400);
        }
        if (currentUser.getSetups() == null || currentUser.getSetups() != 1) {
            return MyUtil.msg(-7);
        }
        session.setAttribute("currentUser", currentUser);
        return MyUtil.msg(1, "登陆成功 ! 系统正在跳转...");
    }

    @RequestMapping("/toLogin")
    public String toLogin(boolean loginOut, HttpSession session) {
        if (loginOut) {
            session.removeAttribute("currentUser");
        }
        return "record/login";
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
        List<Map<String, Object>> list = null;
        try {
            list = mhUsersService.list(args, pageBean);
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        int result = -1;
        try {
            if (ids == null) {
                result = mhUsersService.insertUser(mhUsers, request);
            } else {
                result = mhUsersService.updateUser(mhUsers, request);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return MyUtil.msg(result);
    }

    @ResponseBody
    @RequestMapping("/deleteUser")
    public Message deleteUser(String ids, HttpServletRequest request) {
        int result = -1;
        try {
            result = mhUsersService.deleteUser(ids, request);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return MyUtil.msg(result);
    }

    @ResponseBody
    @RequestMapping("/deleteUsers")
    public Message deleteUsers(String ids, HttpServletRequest request) {
        int result = -1;
        try {
            result = mhUsersService.deleteUsers(ids, request);
        } catch (InvocationTargetException | IllegalAccessException e) {
            e.printStackTrace();
        }
        return MyUtil.msg(result);
    }

    @ResponseBody
    @RequestMapping("/updateSetups")
    public Message updateSetups(String ids, String setups, HttpServletRequest request) {
        int result = mhUsersService.updateSetups(ids, setups, request);
        return MyUtil.msg(result);
    }
}
