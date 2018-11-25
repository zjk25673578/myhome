package com.hafa.tableinfo.dao;

import com.hafa.tableinfo.model.MhTableinfo;

public interface MhTableinfoMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhTableinfo record);

    int insertSelective(MhTableinfo record);

    MhTableinfo selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhTableinfo record);

    int updateByPrimaryKey(MhTableinfo record);
}
