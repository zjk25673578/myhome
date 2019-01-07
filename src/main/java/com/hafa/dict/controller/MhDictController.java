package com.hafa.dict.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.entity.Message;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.PageBean;
import com.hafa.dict.model.MhDict;
import com.hafa.dict.service.MhDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/dict")
public class MhDictController {

    @Autowired
    private MhDictService mhDictService;

    @RequestMapping("/list")
    public String index() {
        return "record/dict/dict-list";
    }

    @ResponseBody
    @RequestMapping("/dictList")
    public Map<String, Object> dictList(String key, PageBean pageBean) {
        JSONObject args = JSONObject.parseObject(key);
        Map<String, Object> resultMap = null;
        try {
            resultMap = mhDictService.searchFor(MyUtil.bean2Map(args, pageBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (resultMap != null) {
            MyUtil.layData(resultMap, 0, "");
            return resultMap;
        }
        return MyUtil.layData(-1, "mhDictService.searchFor(MyUtil.bean2Map(args, pageBean))返回null", 0, null);
    }

    @ResponseBody
    @RequestMapping("/deleteDict")
    public JSONObject deleteDict() {
        return null;
    }

    @ResponseBody
    @RequestMapping("/deleteMultiple")
    public JSONObject deleteMultiple() {
        return null;
    }

    @ResponseBody
    @RequestMapping("/save")
    public Message save(MhDict dict, HttpServletRequest request) {
        int r = mhDictService.saveOrUpdate(dict, request);
        return MyUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/saveMultiple")
    public Message saveMultiple(MhDict dict, HttpServletRequest request) {
        int r = mhDictService.saveMultiple(dict, request);
        return MyUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/update")
    public Message update(MhDict dict, HttpServletRequest request) {
        int r = mhDictService.saveOrUpdate(dict, request);
        return MyUtil.msg(r);
    }
}
