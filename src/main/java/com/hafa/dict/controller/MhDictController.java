package com.hafa.dict.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.PageBean;
import com.hafa.dict.model.MhDict;
import com.hafa.dict.service.MhDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
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
        List<MhDict> list = null;
        try {
            list = mhDictService.searchFor(MyUtil.bean2Map(args, pageBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (list != null) {
            return MyUtil.layData(0, "", 0,list);
        }
        return null;
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
    @RequestMapping("/saveOrUpdate")
    public JSONObject saveOrUpdate() {
        return null;
    }
}
