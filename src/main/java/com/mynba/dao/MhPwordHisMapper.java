package com.mynba.dao;

import com.mynba.model.MhPwordHis;

public interface MhPwordHisMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhPwordHis record);

    int insertSelective(MhPwordHis record);

    MhPwordHis selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhPwordHis record);

    int updateByPrimaryKey(MhPwordHis record);
}