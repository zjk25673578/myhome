package com.hafa.commons.controller;

import com.hafa.commons.util.datetime.MyDateUtil;
import com.hafa.commons.util.validcode.ValidCodeUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    /**
     * 服务器操作系统
     */
    @Value("#{systemProperties['os.name']}")
    private String osName;

    /**
     * 服务器地址
     */
    @Value("#{systemProperties['java.rmi.server.hostname']}")
    private String serverName;

    /**
     * 运行java版本
     */
    @Value("#{systemProperties['java.runtime.version']}")
    private String javaVersion;

    /**
     * 服务器所在时区
     */
    @Value("#{systemProperties['user.timezone']}")
    private String timezone;

    /**
     * 数据库名称及版本
     */
    @Value("#{dataSource.connection.metaData.databaseProductName} - #{dataSource.connection.metaData.databaseProductVersion}")
    private String databaseInfo;

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
    public String recordIndex(Model model, HttpServletRequest request) {
        int currentYear = MyDateUtil.getCurrYear();
        model.addAttribute("currentYear", currentYear);
        model.addAttribute("osName", osName);
        model.addAttribute("serverName", serverName);
        model.addAttribute("version", "1.0.0");
        model.addAttribute("environment", request.getServletContext().getServerInfo());
        model.addAttribute("javaVersion", javaVersion);
        model.addAttribute("timezone", timezone);
        model.addAttribute("databaseInfo", databaseInfo);
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
