package com.hafa.commons.service.impl;

import com.hafa.commons.service.ApplicationService;
import com.hafa.commons.util.ColorUtils;
import com.hafa.commons.util.MyUtil;
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
        /**
         * 验证码的要求:
         * 1, 验证码随机取
         * 2, 背景颜色随机变化
         * 3, 字体倾斜
         * 4, 多条干扰线
         * 5, 有边框
         */
        int width = 120, height = 30;
        BufferedImage bufImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        //也可以使用bufImg.getGraphics(), get是返回一个Graphics对象, create是返回一个Graphics2D对象
        Graphics2D g = bufImg.createGraphics();
        //画出图片验证码的背景(200到250是一个浅色调的背景)
        g.setColor(ColorUtils.getRandColor(200, 250));
        //填充一个矩形
        g.fillRect(0, 0, width, height);
        //画出图片验证码的干扰线, 给出两个点的坐标, 两点确定一条直线
        for (int i = 0; i < 10; i++) {
            g.setColor(ColorUtils.getRandColor(160, 200));
            int x1 = new Random().nextInt(width / 2);
            int y1 = new Random().nextInt(height);
            int x2 = new Random().nextInt(width);
            int y2 = new Random().nextInt(height);
            g.drawLine(x1, y1, x2, y2);
        }
        //画一个边框
        g.setColor(Color.RED);
        //四个参数(前面两个是起笔位置, 后面两个是宽高)
        g.drawRect(1, 1, width - 3, height - 3);
        //画出图片验证码的内容
        String data = MyUtil.getCodeContent(request.getSession());
        int _x = 5;
        for (int i = 0; i < data.length(); i++) {
            //定义旋转的弧度
            int deg = new Random().nextInt() % 30;
            g.setColor(ColorUtils.getRandColor(20, 130));// 20到130之间是深色调
            g.rotate(deg * Math.PI / 180, _x, 20);
            //g.rotate(deg*Math.PI/180);
            g.setFont(new Font("宋体", Font.BOLD, 20));
            g.drawString(data.charAt(i) + "", _x, 20);
            //这里必须设置一个恢复旋转角度的代码, 否则后面的内容会显示到边框的外面
            g.rotate(-deg * Math.PI / 180, _x, 20);
            //g.rotate(-deg*Math.PI/180);
            _x += width / data.length();
        }

        return bufImg;
    }
}
