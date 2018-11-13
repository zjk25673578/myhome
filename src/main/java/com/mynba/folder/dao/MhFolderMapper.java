package com.mynba.folder.dao;

import com.mynba.folder.model.MhFolder;

public interface MhFolderMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhFolder record);

    int insertSelective(MhFolder record);

    MhFolder selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhFolder record);

    int updateByPrimaryKey(MhFolder record);
}