package com.hafa.finance.controller;

import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/finance")
public class MhFinanceController {

    @Autowired
    private MhFinanceService mhFinanceService;

    @RequestMapping("/{page}")
    public String index(@PathVariable("page") String page) {
        return "record/finance/" + page;
    }
}
