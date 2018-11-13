package com.mynba.works.dao;

import com.mynba.works.model.MhWorks;

public interface MhWorksMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhWorks record);

    int insertSelective(MhWorks record);

    MhWorks selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhWorks record);

    int updateByPrimaryKey(MhWorks record);
}