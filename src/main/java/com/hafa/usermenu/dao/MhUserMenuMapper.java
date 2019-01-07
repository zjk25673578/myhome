package com.hafa.usermenu.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface MhUserMenuMapper {

    /**
     * 获取指定用户所拥有的菜单权限(不包含父级菜单)
     * @param ids
     * @return
     */
    List<Integer> getCheckedMenuIdsByUserId(String ids);

    /**
     * 移除指定yonghu主键和菜单主键的信息
     * @param userId
     * @param string2Set
     * @return
     */
    int removeByUserIdMenuId(@Param("userid") String userId, @Param("menuids") Set<Integer> string2Set);

    /**
     * 获取指定用户所拥有的菜单权限(所有)
     * @param userId
     * @return
     */
    List<Integer> listMenuIdByUserId(String userId);

    /**
     * 给指定用户添加菜单权限
     * @param userId
     * @param insertMenuIds
     * @return
     */
    int insertUserIdMenuIds(@Param("userid") String userId, @Param("menuids") Set<Integer> insertMenuIds);
}
