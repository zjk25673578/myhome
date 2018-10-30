package com.mynba.dao;

import com.mynba.model.MhUserMenu;

public interface MhUserMenuMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUserMenu record);

    int insertSelective(MhUserMenu record);

    MhUserMenu selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUserMenu record);

    int updateByPrimaryKey(MhUserMenu record);
}