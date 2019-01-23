package com.hafa.menu.service;

import com.hafa.commons.entity.TreeModel;
import com.hafa.commons.service.BaseService;
import com.hafa.menu.model.MhMenu;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * 系统菜单业务逻辑类
 */
public interface MhMenuService extends BaseService<MhMenu> {

    /**
     * 获取当前登陆用户的菜单列表(左侧菜单栏)
     *
     * @param request 获取当前登陆用户
     * @return
     */
    List<MhMenu> menuList(HttpServletRequest request);

    /**
     * 获取所有菜单的列表<br>
     * 菜单列表页的展示数据
     *
     * @return
     */
    List<TreeModel> menuTreeList();

    /**
     * 用户对象的菜单权限展示<br>
     * 这个没有最外层的'菜单'选项
     *
     * @return
     */
    List<TreeModel> menuTreeAuthority();

    /**
     * 更改指定菜单的父级菜单
     *
     * @param currentId 选中的菜单主键id
     * @param targetId  变更后的父级菜单id
     * @return
     */
    int updateMenuStructure(String currentId, String targetId);

    /**
     * 数据修改
     *
     * @param menu
     * @param request
     * @return
     */
    int updateByPrimaryKeySelective(MhMenu menu, HttpServletRequest request);

    /**
     * 获取指定菜单的子菜单们
     *
     * @param id
     * @return
     */
    List<Map<String, Object>> listByParentId(String id);

    /**
     * 删除指定菜单及该菜单的子级菜单
     *
     * @param ids
     * @param request
     * @return
     */
    int removeMenu(String ids, HttpServletRequest request);
}
