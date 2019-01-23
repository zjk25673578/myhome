package com.hafa.menu.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.menu.model.MhMenu;
import com.hafa.users.model.MhUsers;

import java.util.List;
import java.util.Map;

public interface MhMenuMapper extends BaseMapper<MhMenu> {

    /**
     * 获取指定用户拥有的菜单
     *
     * @param userid
     * @return
     */
    List<MhMenu> selectMenusWithUserid(MhUsers userid);

    /**
     * 以Map的形式返回所有的菜单数据
     *
     * @return
     */
    List<Map<String, Object>> menuListByMap();

    /**
     * 获取指定parentid的菜单数据
     *
     * @param id
     * @return
     */
    List<Map<String, Object>> listByParentId(String id);

    /**
     * 获取所有菜单数据, 用于用户的权限显示<br>
     * menuListByMap 返回的数据中有"菜单", 这个没有
     *
     * @return
     * @see MhMenuMapper#menuListByMap()
     */
    List<Map<String, Object>> menuTreeAuthority();

    /**
     * 获取指定菜单的父级, 爷爷级, 祖宗级, 化石级菜单的id, 即parentid<br>
     * 以字符串的形式获取 ','分割<br>
     * 数据库底层MySql使用自定义函数getParentList<br>
     * Oracle使用层次查询
     *
     * @param menuid
     * @return
     */
    String getParentMenuId(String menuid);

    /**
     * 获取指定菜单下的子集, 孙子级, 重孙级, 玄孙级菜单id<br>
     * 以字符串的形式获取 ','分割<br>
     * 数据库底层MySql使用自定义函数getChildList<br>
     * Oracle使用层次查询
     *
     * @param menuid
     * @return
     */
    String getChildrenMenuIds(String menuid);

    /**
     * 删除指定的菜单(逻辑删除)
     * 通过函数查询出当前菜单以及子菜单全部删除
     *
     * @param ids
     * @return
     */
    int removeMenus(String[] ids);
}
