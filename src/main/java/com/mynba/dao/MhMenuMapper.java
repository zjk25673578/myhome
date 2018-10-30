package com.mynba.dao;

import com.mynba.model.MhMenu;

public interface MhMenuMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhMenu record);

    int insertSelective(MhMenu record);

    MhMenu selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhMenu record);

    int updateByPrimaryKey(MhMenu record);
}