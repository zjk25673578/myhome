package com.hafa.dict.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dict")
public class MhDictController {

    @RequestMapping("/list")
    public String index() {
        return "record/dict/dict-list";
    }
}
