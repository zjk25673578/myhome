package com.hafa.commons.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ApplicationController {

    /* blog start */
    @RequestMapping("/index")
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
    @RequestMapping("/login")
    public String toLogin() {
        return "record/login";
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "record/welcome";
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
