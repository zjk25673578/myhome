package com.mynba.dict.dao;

import com.mynba.dict.model.MhDict;

public interface MhDictMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhDict record);

    int insertSelective(MhDict record);

    MhDict selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhDict record);

    int updateByPrimaryKey(MhDict record);
}