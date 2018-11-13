package com.mynba.menu.dao;

import com.mynba.menu.model.MhMenu;

public interface MhMenuMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhMenu record);

    int insertSelective(MhMenu record);

    MhMenu selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhMenu record);

    int updateByPrimaryKey(MhMenu record);
}