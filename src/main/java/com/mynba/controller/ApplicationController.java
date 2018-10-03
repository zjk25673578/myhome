package com.mynba.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplicationController {

    @RequestMapping("/login")
    public String toLogin() {
        return "page/login";
    }

    @RequestMapping("/index")
    public String index() {
        return "page/index";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "page/welcome";
    }

    @RequestMapping("/error404")
    public String error404() {
        return "jsp/404";
    }

    @RequestMapping("/error500")
    public String error500() {
        return "jsp/500";
    }
}
