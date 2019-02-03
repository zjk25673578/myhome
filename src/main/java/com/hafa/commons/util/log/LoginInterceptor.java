package com.hafa.commons.util.log;

import com.hafa.users.model.MhUsers;
import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * springmvc登陆拦截器
 *
 * @ClassName: LoginInterceptor
 * @Description: TODO
 * @author: dp
 * @date: 2016年8月23日 上午9:10:56
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {
    private Logger logger = Logger.getLogger(this.getClass());

    public LoginInterceptor() {
        super();
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle方法: handler: " + handler + ", modelAndView: " + modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("afterCompletion方法: handler: " + handler + ", modelAndView: " + ex);
    }

    @Override
    public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("afterConcurrentHandlingStarted方法: handler: " + handler);
    }

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        String requestUri = request.getRequestURI();
        System.out.println("preHandle方法: 访问" + requestUri + "请求之前..");

        // 需要跳转的路径
        String redirectUrl = request.getContextPath();

        if ((redirectUrl + "/").equals(requestUri)) { // 如果是根目录跳转至博客首页
            redirectUrl += "/blog/index";
        } else { // 其他跳转至后台登录页面
            redirectUrl += "/mhusers/toLogin";
        }

        MhUsers currentUser = (MhUsers) request.getSession().getAttribute("currentUser");
        if (currentUser == null) {
            logger.debug("SECURITY CHECKED: NEED TO LOGIN");
            String type = request.getHeader("X-Requested-With");
            if ("XMLHttpRequest".equalsIgnoreCase(type)) {// AJAX REQUEST
                // PROCESS
                response.setHeader("sessionStatus", "timeout");
                response.setHeader("redirectUrl", redirectUrl);
            } else {
                // 跳转登录页面
                response.sendRedirect(redirectUrl);
            }
            return false;
        }
        return true;
    }

}
