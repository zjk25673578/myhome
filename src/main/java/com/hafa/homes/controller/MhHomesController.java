package com.hafa.homes.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.dict.model.MhDict;
import com.hafa.dict.service.MhDictService;
import com.hafa.homes.model.MhHomes;
import com.hafa.homes.service.MhHomesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/homes")
public class MhHomesController extends BaseController<MhHomesService> {

    @Autowired
    protected MhHomesService mhHomesService;

    @Autowired
    protected MhDictService mhDictService;

    @RequestMapping("/index")
    public String index(Model model) {
        // 三级联动数据
        List<MhDict> provinceList = mhDictService.selectDistrictByParentId(61);
        model.addAttribute("provinceList", provinceList);
        return "record/homes/home-list";
    }

    @ResponseBody
    @RequestMapping("/list")
    public Map<String, Object> list(String key, PageBean pageBean, HttpServletRequest request) {
        JSONObject args = buildArgs(key); // 查询条件的转换
        args.put("groupid", getCurrentGroupId(request));
        return buildResultMap(mhHomesService, args, pageBean);
    }

    @ResponseBody
    @RequestMapping("/update")
    public Message update(MhHomes mhHomes, HttpServletRequest request) {
        if (mhHomes == null) {
            return MsgUtil.msg(-1);
        }
        System.out.println(mhHomes.getLiving());
        if (mhHomes.getIds() == null) {
            mhHomes.setGroupid(getCurrentGroupId(request));
        }
        if (mhHomes.getLiving() == null) {
            mhHomes.setLiving(0);
        }
        int r = mhHomesService.saveOrUpdate(mhHomes, request);
        return MsgUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/delete")
    public Message delete(String ids, HttpServletRequest request) {
        int r = mhHomesService.remove(ids, request);
        return MsgUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/deleteMultiple")
    public Message deleteMultiple(String ids, HttpServletRequest request) {
        if (ids == null || ids.trim().length() <= 0) {
            return MsgUtil.msg(-1);
        }
        String[] _ids = ids.split(",");
        if (_ids.length > 0) {
            Map<String, Object> args = MyUtil.searchForArgs(
                    "ids", _ids,
                    "username", getCurrentUsername(request),
                    "userid", getCurrentUserid(request));
            int r = mhHomesService.removeMultiple(args);
            return MsgUtil.msg(r);
        }
        return MsgUtil.msg(-1);
    }
}
