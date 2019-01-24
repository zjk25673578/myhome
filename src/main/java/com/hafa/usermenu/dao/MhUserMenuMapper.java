package com.hafa.usermenu.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.usermenu.model.MhUserMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface MhUserMenuMapper extends BaseMapper<MhUserMenu> {

    /**
     * 获取指定用户所拥有的菜单权限(不包含父级菜单, 数据取自mh_menu)
     *
     * @param ids
     * @return
     */
    List<Integer> getCheckedMenuIdsByUserId(String ids);

    /**
     * 移除指定用户主键和菜单主键的信息(物理删除)
     * 这个方法里没有采用大部分的全部删除再重新添加的思路
     * 取了需要修改的权限与当前权限的交集做判断该添加还是删除
     * 所以用户主键与菜单主键都传过来, 只删除需要修改的数据
     *
     * @param userId 用户主键id
     * @param set    菜单id的集合
     * @return
     */
    int removeByUserIdMenuId(@Param("userid") String userId, @Param("menuids") Set<Integer> set);

    /**
     * 获取指定用户所拥有的菜单权限(数据取自mh_user_menu)
     *
     * @param userId
     * @return
     */
    List<Integer> listMenuIdByUserId(String userId);

    /**
     * 给指定用户添加菜单权限
     *
     * @param userId
     * @param menuIds
     * @return
     */
    int insertUserIdMenuIds(@Param("userid") String userId, @Param("menuids") Set<Integer> menuIds);
}
