package com.mynba.webinfo.dao;

import com.mynba.webinfo.model.MhWebinfo;

public interface MhWebinfoMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhWebinfo record);

    int insertSelective(MhWebinfo record);

    MhWebinfo selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhWebinfo record);

    int updateByPrimaryKey(MhWebinfo record);
}