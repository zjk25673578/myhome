package com.mynba.dao;

import com.mynba.model.MhHomes;

public interface MhHomesMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhHomes record);

    int insertSelective(MhHomes record);

    MhHomes selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhHomes record);

    int updateByPrimaryKey(MhHomes record);
}