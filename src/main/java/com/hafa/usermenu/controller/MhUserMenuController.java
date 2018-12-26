package com.hafa.usermenu.controller;

import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/usermenu")
public class MhUserMenuController {

    @Autowired
    protected MhUserMenuService mhUserMenuService;

    @RequestMapping("/list")
    public String list() {
        System.out.println("srgesgfesfes");
        return "record/usermenu/usermenu-list";
    }
}
