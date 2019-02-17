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

    /* ===============页面跳转 start============== */

    /**
     * 财务支出列表页
     *
     * @param model
     * @return
     */
    @RequestMapping("/out")
    public String out(Model model) {
        List<Map<String, Object>> financeOutList = mhDictService.getDicCodeListByCdkey("caiwuleibieout");
        model.addAttribute("financeTypeList", financeOutList);
        model.addAttribute("label", "支出");
        model.addAttribute("ftype", "0");
        return "record/finance/finance-list";
    }

    /**
     * 财务收入列表页
     *
     * @param model
     * @return
     */
    @RequestMapping("/in")
    public String in(Model model) {
        List<Map<String, Object>> financeInList = mhDictService.getDicCodeListByCdkey("caiwuleibiein");
        model.addAttribute("financeTypeList", financeInList);
        model.addAttribute("label", "收入");
        model.addAttribute("ftype", "1");
        return "record/finance/finance-list";
    }

    /**
     * 统计视图
     *
     * @param model
     * @return
     */
    @RequestMapping("/view")
    public String view(Model model) {
        return "record/finance/finance-month-view";
    }
    /* ===============页面跳转 end============== */

    /**
     * 请求出账记录列表
     *
     * @param key
     * @param pageBean
     * @return
     */
    @ResponseBody
    @RequestMapping("/list")
    public Map<String, Object> outList(String key, PageBean pageBean, HttpServletRequest request) {
        JSONObject args = buildArgs(key); // 查询条件的转换
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
        mhFinance.setUserid(getCurrentUserid(request));
        int r = mhFinanceService.saveOrUpdate(mhFinance, request);
        return MsgUtil.msg(r);
    }
}
