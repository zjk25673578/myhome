package com.mynba.notebook.dao;

import com.mynba.notebook.model.MhNotebook;

public interface MhNotebookMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhNotebook record);

    int insertSelective(MhNotebook record);

    MhNotebook selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhNotebook record);

    int updateByPrimaryKey(MhNotebook record);
}