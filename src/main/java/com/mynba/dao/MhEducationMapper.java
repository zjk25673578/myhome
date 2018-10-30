package com.mynba.dao;

import com.mynba.model.MhEducation;

public interface MhEducationMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhEducation record);

    int insertSelective(MhEducation record);

    MhEducation selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhEducation record);

    int updateByPrimaryKey(MhEducation record);
}