package com.hafa.folder.dao;

import com.hafa.folder.model.MhFolder;

public interface MhFolderMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhFolder record);

    int insertSelective(MhFolder record);

    MhFolder selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhFolder record);

    int updateByPrimaryKey(MhFolder record);
}
