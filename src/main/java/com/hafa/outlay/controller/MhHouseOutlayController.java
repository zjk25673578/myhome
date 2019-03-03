package com.hafa.outlay.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.CommonEntity;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.util.datetime.MyDateUtil;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.homes.service.MhHomesService;
import com.hafa.outlay.model.LeaseEntity;
import com.hafa.outlay.service.MhHouseOutlayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@Controller
@RequestMapping("/outlay")
public class MhHouseOutlayController extends BaseController<MhHouseOutlayService> {

    @Autowired
    protected MhHomesService mhHomesService;
    @Autowired
    protected MhHouseOutlayService mhHouseOutlayService;

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
    @RequestMapping("/insert")
    public Message update(LeaseEntity leaseEntity, HttpServletRequest request) {
        Map<String, Object> args = null;
        try {
            args = CommonEntity.get("c", request);
        } catch (InvocationTargetException | IllegalAccessException e) {
            e.printStackTrace();
        }
        if (args == null) {
            return MsgUtil.msg(-1);
        }
        args.put("leaseEntity", leaseEntity);
        args.put("groupid", getCurrentGroupId(request));
        int r = mhHouseOutlayService.insertData(args);
        return MsgUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/getList")
    public Map<String, Object> getList(String key, PageBean pageBean) {
        JSONObject jsonObject = buildArgs(key);
        return buildResultMap(mhHouseOutlayService, jsonObject, pageBean);
    }
}
