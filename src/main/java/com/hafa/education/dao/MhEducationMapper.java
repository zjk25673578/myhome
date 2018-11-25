package com.hafa.education.dao;

import com.hafa.education.model.MhEducation;

public interface MhEducationMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhEducation record);

    int insertSelective(MhEducation record);

    MhEducation selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhEducation record);

    int updateByPrimaryKey(MhEducation record);
}
