package com.hafa.usermenu.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.util.MyUtil;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/usermenu")
public class MhUserMenuController {

    @Autowired
    protected MhUserMenuService mhUserMenuService;

    @ResponseBody
    @RequestMapping("/getChecked")
    public JSONObject getChecked(String ids) {
        List<Integer> list = mhUserMenuService.getCheckedMenuIdsByUserId(ids);
        if (list != null) {
            return MyUtil.ajaxData("success", true, "checkedId", list);
        }
        return MyUtil.ajaxData("success", false);
    }
}
