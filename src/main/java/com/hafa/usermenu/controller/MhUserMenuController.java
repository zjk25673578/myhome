package com.hafa.usermenu.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.controller.BaseController;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 用户菜单权限控制器类
 */
@Controller
@RequestMapping("/usermenu")
public class MhUserMenuController extends BaseController<MhUserMenuService> {

    @Autowired
    protected MhUserMenuService mhUserMenuService;

    /**
     * 获取指定用户拥有的菜单
     *
     * @param ids 用户主键id
     * @return
     */
    @ResponseBody
    @RequestMapping("/getChecked")
    public JSONObject getChecked(String ids) {
        List<Integer> list = mhUserMenuService.getCheckedMenuIdsByUserId(ids);
        if (list != null) {
            return MsgUtil.ajaxData("success", true, "checkedId", list);
        }
        return MsgUtil.ajaxData("success", false);
    }

    /**
     * 修改用户权限
     *
     * @param ids     用户主键id
     * @param menuid  需要赋予权限的菜单主键id(包括其子菜单)
     * @param checked 授权类型 true: 赋予权限, false: 取消权限
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateAuthority")
    public JSONObject updateAuthority(String ids, String menuid, boolean checked) {
        boolean r = mhUserMenuService.updateAuthority(ids, menuid, checked);
        if (r) {
            return MsgUtil.ajaxData("success", true);
        }
        return MsgUtil.ajaxData("success", false, "msg", "呵呵呵呵 !");
    }


}
