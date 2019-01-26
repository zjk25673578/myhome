package com.hafa.finance.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.dict.service.MhDictService;
import com.hafa.finance.model.MhFinance;
import com.hafa.finance.service.MhFinanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/finance")
public class MhFinanceController extends BaseController<MhFinanceService> {

    @Autowired
    private MhFinanceService mhFinanceService;
    @Autowired
    private MhDictService mhDictService;

    /**
     * 页面跳转
     *
     * @param page
     * @return
     */
    @RequestMapping("/{page}")
    public String index(@PathVariable("page") String page, Model model) {
        if ("finance-in".equals(page) || "finance-add".equals(page)) { // 新增记录或者收入记录
            List<Map<String, Object>> financeInList = mhDictService.getDicCodeListByCdkey("caiwuleibiein");
            model.addAttribute("financeInList", financeInList);
        }
        if ("finance-out".equals(page) || "finance-add".equals(page)) { // 新增记录或者支出记录
            List<Map<String, Object>> financeOutList = mhDictService.getDicCodeListByCdkey("caiwuleibieout");
            model.addAttribute("financeOutList", financeOutList);
        }
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
    public Map<String, Object> outList(String key, PageBean pageBean, HttpServletRequest request) {
        JSONObject args = buildArgs(key); // 查询条件的转换
        args.put("ftype", 0);
        args.put("userid", getCurrentUserid(request));
        return buildResultMap(mhFinanceService, args, pageBean);
    }

    /**
     * 批量删除指定记录
     *
     * @param ids
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteMultiple")
    public Message deleteMultiple(String ids, HttpServletRequest request) {
        if (ids != null && ids.trim().length() > 0) {
            String[] _ids = ids.split(",");
            return MsgUtil.msg(mhFinanceService.deleteMultiple(_ids, request));
        }
        return MsgUtil.msg(-1);
    }

    /**
     * 删除指定记录
     *
     * @param ids
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/delete")
    public Message delete(String ids, HttpServletRequest request) {
        if (ids != null && ids.trim().length() > 0) {
            return MsgUtil.msg(mhFinanceService.remove(ids, request));
        }
        return MsgUtil.msg(-1);
    }

    /**
     * 修改指定记录
     *
     * @param mhFinance
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/update")
    public Message update(MhFinance mhFinance, HttpServletRequest request) {
        if (mhFinance == null) {
            return MsgUtil.msg(-1);
        }
        int r = mhFinanceService.saveOrUpdate(mhFinance, request);
        return MsgUtil.msg(r);
    }
}
