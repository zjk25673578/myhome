package com.hafa.travel.dao;

import com.hafa.travel.model.MhTravel;

public interface MhTravelMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhTravel record);

    int insertSelective(MhTravel record);

    MhTravel selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhTravel record);

    int updateByPrimaryKey(MhTravel record);
}
