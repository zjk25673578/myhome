package com.mynba.dao;

import com.mynba.model.MhMedias;

public interface MhMediasMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhMedias record);

    int insertSelective(MhMedias record);

    MhMedias selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhMedias record);

    int updateByPrimaryKey(MhMedias record);
}