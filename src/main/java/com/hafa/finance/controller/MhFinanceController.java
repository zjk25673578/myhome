package com.hafa.finance.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.util.PageBean;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
@RequestMapping("/finance")
public class MhFinanceController extends BaseController<MhFinanceService> {

    @Autowired
    private MhFinanceService mhFinanceService;

    /**
     * 页面跳转
     *
     * @param page
     * @return
     */
    @RequestMapping("/{page}")
    public String index(@PathVariable("page") String page) {
        return "record/finance/" + page;
    }

    /**
     * 请求出账记录列表
     *
     * @param key
     * @param pageBean
     * @return
     */
    @ResponseBody
    @RequestMapping("/out/list")
    public Map<String, Object> outList(String key, PageBean pageBean) {
        JSONObject args = JSONObject.parseObject(key); // 查询条件的转换
        args.put("ftype", 0);
        return buildResultMap(mhFinanceService, args, pageBean);
    }
}
