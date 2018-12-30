package com.hafa.commons.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;

/**
 * 公共业务处理接口
 */
public interface ApplicationService {
    /**
     * 验证码图片
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    BufferedImage drawValidCode(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
