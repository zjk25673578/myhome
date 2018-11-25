package com.hafa.homes.dao;

import com.hafa.homes.model.MhHomes;

public interface MhHomesMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhHomes record);

    int insertSelective(MhHomes record);

    MhHomes selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhHomes record);

    int updateByPrimaryKey(MhHomes record);
}
