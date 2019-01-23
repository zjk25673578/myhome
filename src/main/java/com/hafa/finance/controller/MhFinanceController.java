package com.hafa.finance.controller;

import com.hafa.commons.util.MyUtil;
import com.hafa.finance.model.MhFinance;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/finance")
public class MhFinanceController {

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
     * @param page
     * @return
     */
    @ResponseBody
    @RequestMapping("/out/list")
    public Map<String, Object> outList(String page) {
        List<MhFinance> outList = mhFinanceService.outList();
        if (outList != null) {
            return MyUtil.layData(0, "", mhFinanceService.outListCount(), outList);
        }
        return MyUtil.layData(-1, "", 0, null);
    }
}
