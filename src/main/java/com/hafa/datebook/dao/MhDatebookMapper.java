package com.hafa.datebook.dao;

import com.hafa.datebook.model.MhDatebook;

public interface MhDatebookMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhDatebook record);

    int insertSelective(MhDatebook record);

    MhDatebook selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhDatebook record);

    int updateByPrimaryKey(MhDatebook record);
}
