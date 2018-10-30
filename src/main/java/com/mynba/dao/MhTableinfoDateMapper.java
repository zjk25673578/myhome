package com.mynba.dao;

import com.mynba.model.MhTableinfoDate;

public interface MhTableinfoDateMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhTableinfoDate record);

    int insertSelective(MhTableinfoDate record);

    MhTableinfoDate selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhTableinfoDate record);

    int updateByPrimaryKey(MhTableinfoDate record);
}