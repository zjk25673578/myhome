package com.mynba.datebook.dao;

import com.mynba.datebook.model.MhDatebook;

public interface MhDatebookMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhDatebook record);

    int insertSelective(MhDatebook record);

    MhDatebook selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhDatebook record);

    int updateByPrimaryKey(MhDatebook record);
}