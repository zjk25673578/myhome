package com.hafa.commons.service;

import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class BaseService {

    /**
     * 获取当前登陆用户对象
     * @param request
     * @return
     */
    public MhUsers getCurrentUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (MhUsers) session.getAttribute("currentUser");
    }

    /**
     * 获取当前登陆用户名
     * @param request
     * @return
     */
    public String getCurrentUsername(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getUname();
        }
        return null;
    }

    /**
     * 获取当前登陆用户密码
     * @param request
     * @return
     */
    public String getCurrentPassword(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getPword();
        }
        return null;
    }

    /**
     * 获取当前登陆用户id
     * @param request
     * @return
     */
    public Integer getCurrentUserid(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getIds();
        }
        return null;
    }
}
