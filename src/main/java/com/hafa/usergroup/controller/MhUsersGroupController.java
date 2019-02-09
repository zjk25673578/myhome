package com.hafa.usergroup.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.util.encrypt.Base64Util;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.usergroup.model.MhUsersGroup;
import com.hafa.usergroup.service.MhUsersGroupService;
import com.hafa.users.model.MhUsers;
import com.hafa.users.service.MhUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * 用户组请求控制类
 */
@Controller
@RequestMapping("/group")
public class MhUsersGroupController extends BaseController<MhUsersGroupService> {

    @Autowired
    protected MhUsersGroupService mhUsersGroupService;

    @Autowired
    protected MhUsersService mhUsersService;

    /**
     * 页面跳转
     *
     * @return
     */
    @RequestMapping("/list")
    public String index() {
        return "record/group/usergroup-list";
    }

    @RequestMapping("/edit")
    public String edit(String ids, Model model) {
        MhUsersGroup mhUsersGroup = mhUsersGroupService.selectByPrimary(ids);
        // 组成员列表
        List<MhUsers> userList = mhUsersService.listUsersByGroup(ids);
        // 家庭所在地列表
        // ...
        model.addAttribute("mhUsersGroup", mhUsersGroup);
        model.addAttribute("userList", userList);
        return "record/group/usergroup-edit";
    }

    @ResponseBody
    @RequestMapping("/groupList")
    public Map<String, Object> list(String key, PageBean pageBean) {
        JSONObject jsonObject = buildArgs(key);
        return buildResultMap(mhUsersGroupService, jsonObject, pageBean);
    }

    @ResponseBody
    @RequestMapping("/saveGroup")
    public Message saveGroup(MhUsersGroup mhUsersGroup, HttpServletRequest request) {
        boolean a = mhUsersGroupService.selectGroupByName(mhUsersGroup.getGroupname(), mhUsersGroup.getIds());
        if (a) {
            return MsgUtil.msg(-1, "这个用户组名已经存在了....");
        }
        mhUsersGroup.setValue("c", request);
        mhUsersGroup.setGroupcode(Base64Util.encode(mhUsersGroup.getGroupname())); // 默认的groupcode
        int r = mhUsersGroupService.saveOrUpdate(mhUsersGroup, request);
        return MsgUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/updateGroup")
    public Message updateGroup(MhUsersGroup mhUsersGroup, HttpServletRequest request) {
        boolean a = mhUsersGroupService.selectGroupByName(mhUsersGroup.getGroupname(), mhUsersGroup.getIds());
        if (a) {
            return MsgUtil.msg(-1, "这个用户组名已经存在了....");
        }
        mhUsersGroup.setValue("u", request);
        if (mhUsersGroup.getGroupname() != null) {
            mhUsersGroup.setGroupcode(Base64Util.encode(mhUsersGroup.getGroupname()));
        }
        int r = mhUsersGroupService.saveOrUpdate(mhUsersGroup, request);
        return MsgUtil.msg(r);
    }

    @ResponseBody
    @RequestMapping("/deleteGroup")
    public Message deleteGroup(MhUsersGroup mhUsersGroup, HttpServletRequest request) {
        mhUsersGroup.setValue("u", request);
        mhUsersGroup.setStatus(0);
        int r = mhUsersGroupService.saveOrUpdate(mhUsersGroup, request);
        return MsgUtil.msg(r);
    }

}
