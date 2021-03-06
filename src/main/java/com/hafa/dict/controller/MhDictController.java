package com.hafa.dict.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.dict.model.MhDict;
import com.hafa.dict.service.MhDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * 数据字典控制器类
 */
@Controller
@RequestMapping("/dict")
public class MhDictController extends BaseController<MhDictService> {

    @Autowired
    private MhDictService mhDictService;

    /**
     * 跳转至字典列表页面
     *
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String index(Model model) {
        List<Map<String, Object>> dicCodeList = mhDictService.getDicCodeList(); // 获取数据字典中所有分类
        model.addAttribute("dicList", dicCodeList);
        List<Map<String, Object>> parentList = mhDictService.getParentList(); // 获取数据字典中所有父级分类
        model.addAttribute("parentList", parentList);
        return "record/dict/dict-list";
    }

    /**
     * 获取所有字典数据
     *
     * @param key
     * @param pageBean
     * @return
     */
    @ResponseBody
    @RequestMapping("/dictList")
    public Map<String, Object> dictList(String key, PageBean pageBean) {
        JSONObject args = JSONObject.parseObject(key); // 查询条件的转换
        return buildResultMap(mhDictService, args, pageBean);
    }

    /**
     * 删除指定的字典信息
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteDict")
    public Message deleteDict() {
        return MsgUtil.msg(false, "功能未开发...");
    }

    /**
     * 删除指定的列表中的字典数据
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/deleteMultiple")
    public Message deleteMultiple() {
        return MsgUtil.msg(false, "功能未开发...");
    }

    /**
     * 保存字典信息
     *
     * @param dict
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/save")
    public Message save(MhDict dict, HttpServletRequest request) {
        int r = mhDictService.saveOrUpdate(dict, request);
        return MsgUtil.msg(r);
    }

    /**
     * 批量保存字典信息
     *
     * @param dict
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/saveMultiple")
    public Message saveMultiple(MhDict dict, HttpServletRequest request) {
        int r = mhDictService.saveMultiple(dict, request);
        return MsgUtil.msg(r);
    }

    /**
     * 修改指定的字典信息
     *
     * @param dict
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/update")
    public Message update(MhDict dict, HttpServletRequest request) {
        int r = mhDictService.saveOrUpdate(dict, request);
        return MsgUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/children/district")
    public Message update(@RequestParam(value = "parentid", defaultValue = "-1") String parentid) {
        int pid;
        try {
            pid = Integer.parseInt(parentid);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return MsgUtil.msg(-1);
        }
        if (pid <= 0) {
            return MsgUtil.msg(-1);
        }
        List<MhDict> childrenList = mhDictService.selectDistrictByParentId(pid);
        return MsgUtil.msg(1, "操作成功 !", childrenList);
    }
}
