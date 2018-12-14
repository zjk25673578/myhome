package com.hafa.commons.util;

import com.hafa.users.model.MhUsers;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @ClassName: LoginInterceptor
 * @Description: TODO
 * @author: dp
 * @date: 2016年8月23日 上午9:10:56
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    Logger logger = Logger.getLogger(this.getClass());

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String requestUri = request.getRequestURI();
        /**
         * 需要跳转的路径
         */
        String redirectUrl = request.getContextPath();

        if ((redirectUrl + "/").equals(requestUri)) { // 如果是根目录跳转至博客首页
            redirectUrl += "/blog/index";
        } else { // 其他跳转至后台登录页面
            redirectUrl += "/toLogin";
        }

        MhUsers currentUser = (MhUsers) request.getSession().getAttribute("currentUser");
        if (currentUser == null) {
            logger.debug("SECURITY CHECKED: NEED TO LOGIN");
            String type = request.getHeader("X-Requested-With");
            if ("XMLHttpRequest".equalsIgnoreCase(type)) {// AJAX REQUEST
                // PROCESS
                response.setHeader("sessionStatus", "timeout");
                response.setHeader("redirectUrl", redirectUrl);
                return false;
            } else {
                // 跳转登录页面
                response.sendRedirect(redirectUrl);
                return false;
            }
        }
        return true;
    }

}
