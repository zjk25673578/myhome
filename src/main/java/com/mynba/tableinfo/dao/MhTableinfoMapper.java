package com.mynba.tableinfo.dao;

import com.mynba.tableinfo.model.MhTableinfo;

public interface MhTableinfoMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhTableinfo record);

    int insertSelective(MhTableinfo record);

    MhTableinfo selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhTableinfo record);

    int updateByPrimaryKey(MhTableinfo record);
}