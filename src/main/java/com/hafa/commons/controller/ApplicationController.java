package com.hafa.commons.controller;

import com.hafa.commons.service.ApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;

/**
 * 公共页面跳转控制类
 */
@Controller
public class ApplicationController {

    @Autowired
    protected ApplicationService applicationService;

    /* blog start */
    @RequestMapping("/blog/index")
    public String index() {
        return "blog/index";
    }

    @RequestMapping("/about")
    public String about() {
        return "blog/about";
    }

    @RequestMapping("/album")
    public String album() {
        return "blog/album";
    }

    @RequestMapping("/details")
    public String details() {
        return "blog/details";
    }

    @RequestMapping("/leacots")
    public String leacots() {
        return "blog/leacots";
    }

    @RequestMapping("/whisper")
    public String whisper() {
        return "blog/whisper";
    }
    /* blog end */

    /* record start */
    @RequestMapping("/toLogin")
    public String toLogin(boolean loginOut, HttpSession session) {
        if (loginOut) {
            session.removeAttribute("currentUser");
        }
        return "record/login";
    }

    @RequestMapping("/record/welcome")
    public String welcome() {
        return "record/welcome";
    }

    @RequestMapping("/record/index")
    public String recordIndex() {
        return "record/index";
    }

    @ResponseBody
    @RequestMapping("/validCode")
    public void validCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        BufferedImage bufImg = applicationService.drawValidCode(request, response);
        ImageIO.write(bufImg, "jpg", response.getOutputStream());
    }
    /* record end */

    @RequestMapping("/error404")
    public String error404() {
        return "jsp/404";
    }

    @RequestMapping("/error500")
    public String error500() {
        return "jsp/500";
    }
}
