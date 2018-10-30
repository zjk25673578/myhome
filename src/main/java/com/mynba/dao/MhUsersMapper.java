package com.mynba.dao;

import com.mynba.model.MhUsers;

public interface MhUsersMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUsers record);

    int insertSelective(MhUsers record);

    MhUsers selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUsers record);

    int updateByPrimaryKey(MhUsers record);
}