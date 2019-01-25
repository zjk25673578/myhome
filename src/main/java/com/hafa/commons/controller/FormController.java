package com.hafa.commons.controller;

import com.hafa.commons.util.ValidCodeUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;

/**
 * 公共页面跳转控制类
 */
@Controller
public class FormController {

    /* blog start */
    @RequestMapping("/blog/index")
    public String index() {
        return "blog/index";
    }

    @RequestMapping("/blog/about")
    public String about() {
        return "blog/about";
    }

    @RequestMapping("/blog/album")
    public String album() {
        return "blog/album";
    }

    @RequestMapping("/blog/details")
    public String details() {
        return "blog/details";
    }

    @RequestMapping("/blog/leacots")
    public String leacots() {
        return "blog/leacots";
    }

    @RequestMapping("/blog/whisper")
    public String whisper() {
        return "blog/whisper";
    }
    /* blog end */

    /* record start */
    /**
     * 后台管理(我的桌面)
     * @return
     */
    @RequestMapping("/record/welcome")
    public String welcome() {
        return "record/welcome";
    }

    /**
     * 后台管理(首页)
     * @return
     */
    @RequestMapping("/record/index")
    public String recordIndex() {
        return "record/index";
    }

    @RequestMapping("/mh/test")
    public String test() {
        return "record/test";
    }

    /**
     * 获取验证码
     * @param request
     * @param response
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping("/validCode")
    public void validCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        BufferedImage bufImg = ValidCodeUtil.drawValidCode(request, response, 120, 30);
        ImageIO.write(bufImg, "jpg", response.getOutputStream());
    }
    /* record end */
}
