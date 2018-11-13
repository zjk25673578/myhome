package com.mynba.usermenu.dao;

import com.mynba.usermenu.model.MhUserMenu;

public interface MhUserMenuMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUserMenu record);

    int insertSelective(MhUserMenu record);

    MhUserMenu selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUserMenu record);

    int updateByPrimaryKey(MhUserMenu record);
}