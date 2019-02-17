package com.hafa.outlay.controller;

import com.hafa.commons.controller.BaseController;
import com.hafa.outlay.service.MhHouseOutlayService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/outlay")
public class MhHouseOutlayController extends BaseController<MhHouseOutlayService> {

    /**
     * 跳转至数据添加界面
     *
     * @param model
     * @return
     */
    @RequestMapping("/add")
    public String add(Model model) {

        return "record/outlay/outlay-list";
    }

}
