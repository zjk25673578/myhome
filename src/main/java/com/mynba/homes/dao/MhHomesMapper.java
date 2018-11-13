package com.mynba.homes.dao;

import com.mynba.homes.model.MhHomes;

public interface MhHomesMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhHomes record);

    int insertSelective(MhHomes record);

    MhHomes selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhHomes record);

    int updateByPrimaryKey(MhHomes record);
}