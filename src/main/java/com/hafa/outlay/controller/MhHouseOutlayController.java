package com.hafa.outlay.controller;

import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.LeaseEntity;
import com.hafa.commons.entity.Message;
import com.hafa.commons.util.datetime.MyDateUtil;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.homes.service.MhHomesService;
import com.hafa.outlay.service.MhHouseOutlayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/outlay")
public class MhHouseOutlayController extends BaseController<MhHouseOutlayService> {

    @Autowired
    protected MhHomesService mhHomesService;

    /**
     * 跳转至数据添加界面
     *
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model, HttpServletRequest request) {
        model.addAttribute("year", MyDateUtil.getCurrYear());
        Map<String, Object> mhHomes = mhHomesService.selectHomeInfoByGroupId(getCurrentGroupId(request));
        model.addAllAttributes(mhHomes);
        return "record/outlay/outlay-list";
    }

    @ResponseBody
    @RequestMapping("/update")
    public Message update(LeaseEntity leaseEntity, HttpServletRequest request) {
        System.out.println(leaseEntity);
        return MsgUtil.msg(-1);
    }
}
