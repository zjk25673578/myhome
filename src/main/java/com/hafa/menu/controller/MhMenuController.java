package com.hafa.menu.controller;

import com.hafa.commons.entity.Message;
import com.hafa.commons.util.MyUtil;
import com.hafa.menu.model.MhMenu;
import com.hafa.menu.service.MhMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/mhmenu")
public class MhMenuController {

    @Autowired
    private MhMenuService mhMenuService;

    @RequestMapping("/list")
    public String menu() {
        return "record/menu/menu-list";
    }

    @ResponseBody
    @RequestMapping("/menus")
    public Message menuList(HttpServletRequest request) {
        Message msg;
        List<MhMenu> list = mhMenuService.menuList(request);
        if (list != null && list.size() > 0) {
            msg = MyUtil.msg(1, "成功返回数据", list);
        } else {
            msg = MyUtil.msg(-1, "啥也没有", null);
        }
        return msg;
    }
}