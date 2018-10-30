package com.mynba.dao;

import com.mynba.model.MhFolder;

public interface MhFolderMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhFolder record);

    int insertSelective(MhFolder record);

    MhFolder selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhFolder record);

    int updateByPrimaryKey(MhFolder record);
}