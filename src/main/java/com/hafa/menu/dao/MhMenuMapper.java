package com.hafa.menu.dao;

import com.hafa.menu.model.MhMenu;
import com.hafa.users.model.MhUsers;

import java.util.List;
import java.util.Map;

public interface MhMenuMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhMenu record);

    int insertSelective(MhMenu record);

    MhMenu selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhMenu record);

    int updateByPrimaryKey(MhMenu record);

    List<MhMenu> selectMenusWithUserid(MhUsers userid);

    List<Map<String, Object>> menuListByMap();
}
