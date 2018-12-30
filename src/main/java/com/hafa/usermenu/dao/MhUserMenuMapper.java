package com.hafa.usermenu.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.usermenu.model.MhUserMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Set;

public interface MhUserMenuMapper extends BaseMapper<MhUserMenu> {

    List<Integer> getCheckedMenuIdsByUserId(String ids);

    int removeByUserIdMenuId(@Param("userid") String userId, @Param("menuids") Set<Integer> string2Set);

    List<Integer> listMenuIdByUserId(String userId);

    int insertUserIdMenuIds(@Param("userid") String userId, @Param("menuids") Set<Integer> insertMenuIds);
}
