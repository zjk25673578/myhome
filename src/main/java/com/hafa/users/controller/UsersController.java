package com.hafa.users.controller;

import com.hafa.commons.entity.Message;
import com.hafa.commons.util.MyUtil;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    protected MhUsersService mhUsersService;

    @ResponseBody
    @RequestMapping("/login")
    public Message login(MhUsers user, String validCode, HttpSession session) {
        MhUsers currentUser = mhUsersService.getUserByUnamePword(user);
        Object sessionValidCode = session.getAttribute("validCode");
        if (currentUser != null) {
            session.setAttribute("currentUser", currentUser);
            if (currentUser.getStatus() > 0) {
                String validMsg = "<br>";
                if (validCode.length() <= 0) {
                    validMsg += "但是 ! 系统知道你验证码没有填写...";
                }
                if (validCode.length() > 0 && !validCode.equals(sessionValidCode)) {
                    validMsg += "但是 ! 系统知道你验证码写错了...";
                }
                return MyUtil.msg(1, "登陆成功 ! 系统正在跳转..." + validMsg);
            }
            return MyUtil.msg(-1, "这个账号被禁用喽 !");
        }
        return MyUtil.msg(-1, "用户名或者密码不对 !");
    }

    @RequestMapping("/mhusers-list")
    public String mhUsersList() {
        return "record/mhusers/mhusers-list";
    }
}
