package com.hafa.menu.controller;

import com.hafa.commons.controller.BaseController;
import com.hafa.commons.entity.Message;
import com.hafa.commons.entity.TreeModel;
import com.hafa.commons.util.msg.MsgUtil;
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

/**
 * 系统菜单控制器类
 */
@Controller
@RequestMapping("/mhmenu")
public class MhMenuController extends BaseController<MhMenuService> {

    @Autowired
    private MhMenuService mhMenuService;

    @Autowired
    private MhUserMenuService mhUserMenuService;

    /**
     * 跳转至菜单列表页面
     *
     * @return
     */
    @RequestMapping("/list")
    public String menu() {
        return "record/menu/menu-list";
    }

    /**
     * 跳转至菜单树页面
     * 使用场景:
     * 1, 用户菜单授权
     *
     * @param ids 用户主键id, 传至页面上用于ajax获取指定用户拥有的菜单
     * @return
     */
    @RequestMapping("/tree")
    public String tree(String ids, Model model) {
        model.addAttribute("ids", ids);
        return "record/menu/menu-tree";
    }

    /**
     * 获取当前登陆用户能看到的菜单(权限)
     *
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/menus")
    public Message menuList(HttpServletRequest request) {
        Message msg;
        List<MhMenu> list = mhMenuService.menuList(getCurrentUser(request));
        if (list != null && list.size() > 0) {
            msg = MsgUtil.msg(1, "成功返回数据", list);
        } else {
            msg = MsgUtil.msg(-2); // 没有数据
        }
        return msg;
    }

    /**
     * 菜单管理页面的菜单树的数据
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/menuTree")
    public Map<String, Object> menuTreeList() {
        List<TreeModel> list = mhMenuService.menuTreeList();
        return this.layData(list);
    }

    /**
     * 用户界面数据表格行双击时显示的页面数据
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("/menuTree/authority")
    public Map<String, Object> menuTreeAuthority() {
        List<TreeModel> list = mhMenuService.menuTreeAuthority();
        return this.layData(list);
    }

    /**
     * 修改菜单树的结构
     *
     * @param currentId 菜单主键id
     * @param targetId  修改后的父级菜单主键id
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateMenuStructure")
    public Message updateMenuStructure(String currentId, String targetId) {
        int result = mhMenuService.updateMenuStructure(currentId, targetId);
        return MsgUtil.msg(result);
    }

    /**
     * 修改指定的菜单信息
     *
     * @param menu
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/updateMenu")
    public Message updateMenu(MhMenu menu, HttpServletRequest request) {
        int result = mhMenuService.updateByPrimaryKeySelective(menu, request);
        return MsgUtil.msg(result);
    }

    /**
     * 获取指定菜单下的子菜单, 数据返回给页面的table
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("/listByParentId")
    public Map<String, Object> listByParentId(String id) {
        List<Map<String, Object>> menuList = mhMenuService.listByParentId(id);
        Map<String, Object> msg;
        if (menuList != null) {
            msg = MsgUtil.layData(0, "成功返回数据", menuList.size(), menuList);
        } else {
            msg = MsgUtil.layData(-1, "没有子菜单", 0, null);
        }
        return msg;
    }

    /**
     * 添加子级菜单
     *
     * @param menu
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/appendMenu")
    public Message appendMenu(MhMenu menu, HttpServletRequest request) {
        int r = mhMenuService.saveOrUpdate(menu, request);
        return MsgUtil.msg(r);
    }

    /**
     * 删除菜单
     *
     * @param ids
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("/removeMenu")
    public Message removeMenu(String ids, HttpServletRequest request) {
        int r = mhMenuService.removeMenu(ids, request);
        return MsgUtil.msg(r);
    }

    /**
     * @param list
     * @return
     */
    public Map<String, Object> layData(List<TreeModel> list) {
        Map<String, Object> msg;
        if (list != null && list.size() > 0) {
            msg = MsgUtil.layData(0, "成功返回数据", list.size(), list);
        } else {
            msg = MsgUtil.layData(-1, "list=" + list, 0, null);
        }
        return msg;
    }
}
