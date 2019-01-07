package com.hafa.menu.controller;

import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.TreeModel;
import com.hafa.commons.util.MyUtil;
import com.hafa.menu.model.MhMenu;
import com.hafa.menu.service.MhMenuService;
import com.hafa.usermenu.service.MhUserMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mhmenu")
public class MhMenuController {

    @Autowired
    private MhMenuService mhMenuService;

    @Autowired
    private MhUserMenuService mhUserMenuService;

    /**
     * 跳转至菜单管理页面
     * @return
     */
    @RequestMapping("/list")
    public String menu() {
        return "record/menu/menu-list";
    }

    /**
     * 跳转至菜单树页面
     * @return
     */
    @RequestMapping("/tree")
    public String tree(String ids, Model model) {
        model.addAttribute("ids", ids);
        return "record/menu/menu-tree";
    }

    /**
     * 获取当前登陆用户能看到的菜单(权限)
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/menus")
    public Message menuList(HttpServletRequest request) {
        Message msg;
        List<MhMenu> list = mhMenuService.menuList(request);
        if (list != null && list.size() > 0) {
            msg = MyUtil.msg(1, "成功返回数据", list);
        } else {
            msg = MyUtil.msg(-2);
        }
        return msg;
    }

    /**
     * 菜单管理页面的菜单树的数据
     * @return
     */
    @ResponseBody
    @RequestMapping("/menuTree")
    public Map<String, Object> menuTreeList() {
        Map<String, Object> msg;
        List<TreeModel> list = mhMenuService.menuTreeList();
        if (list != null && list.size() > 0) {
            msg = MyUtil.layData(0, "成功返回数据", list.size(), list);
        } else {
            msg = MyUtil.layData(-1, "list=" + list, 0, null);
        }
        return msg;
    }

    /**
     * 用户界面双击时显示的数据
     * @return
     */
    @ResponseBody
    @RequestMapping("/menuTree/authority")
    public Map<String, Object> menuTreeAuthority() {
        Map<String, Object> msg;
        List<TreeModel> list = mhMenuService.menuTreeAuthority();
        if (list != null && list.size() > 0) {
            msg = MyUtil.layData(0, "成功返回数据", list.size(), list);
        } else {
            msg = MyUtil.layData(-1, "list=" + list, 0, null);
        }
        return msg;
    }

    /**
     * 修改菜单树的结构
     * @param currentId
     * @param targetId
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateMenuStructure")
    public Message updateMenuStructure(String currentId, String targetId) {
        int result = mhMenuService.updateMenuStructure(currentId, targetId);
        return MyUtil.msg(result);
    }

    /**
     * 修改指定的菜单信息
     * @param menu
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateMenu")
    public Message updateMenu(MhMenu menu, HttpServletRequest request) {
        int result = mhMenuService.updateByPrimaryKeySelective(menu, request);
        return MyUtil.msg(result);
    }

    /**
     * 获取指定菜单下的子菜单, 数据返回给页面的table
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/listByParentId")
    public Map<String, Object> listByParentId(String id) {
        List<Map<String, Object>> menuList = mhMenuService.listByParentId(id);
        Map<String, Object> msg;
        if (menuList != null) {
            msg = MyUtil.layData(0, "成功返回数据", menuList.size(), menuList);
        } else {
            msg = MyUtil.layData(-1, "没有子菜单", 0, null);
        }
        return msg;
    }

    @ResponseBody
    @RequestMapping("/appendMenu")
    public Message appendMenu(MhMenu menu, HttpServletRequest request) {
        System.out.println(menu);
        return MyUtil.msg(-1);
    }
}
