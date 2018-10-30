package com.mynba.dao;

import com.mynba.model.MhTravel;

public interface MhTravelMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhTravel record);

    int insertSelective(MhTravel record);

    MhTravel selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhTravel record);

    int updateByPrimaryKey(MhTravel record);
}