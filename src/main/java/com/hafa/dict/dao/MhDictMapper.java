package com.hafa.dict.dao;

import com.hafa.dict.model.MhDict;

public interface MhDictMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhDict record);

    int insertSelective(MhDict record);

    MhDict selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhDict record);

    int updateByPrimaryKey(MhDict record);
}
