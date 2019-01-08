package com.hafa.commons.service.impl;

import com.hafa.commons.service.ApplicationService;
import com.hafa.commons.util.ColorUtils;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.ValidCodeUtil;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

@Repository
public class ApplicationServiceImpl implements ApplicationService {

    @Override
    public BufferedImage drawValidCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        //响应类型为图片类型的加上这一句
        response.setContentType("image/jpeg");
        //设置响应头控制浏览器不缓存图片数据
        response.setDateHeader("expries", -1);
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Pragma", "no-cache");

        return ValidCodeUtil.drawValidCode(request, 120, 30);
    }
}
