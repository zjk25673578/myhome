package com.mynba.commons.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplicationController {

    @RequestMapping("/login")
    public String toLogin() {
        return "record/login";
    }

    @RequestMapping("/index")
    public String index() {
        return "record/index";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "record/welcome";
    }

    @RequestMapping("/error404")
    public String error404() {
        return "jsp/404";
    }

    @RequestMapping("/error500")
    public String error500() {
        return "jsp/500";
    }

    @RequestMapping("/test")
    public String test() {
        return "aabbcc/test";
    }
}
