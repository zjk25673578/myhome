package com.mynba.userinfo.dao;

import com.mynba.userinfo.model.MhUsersInfo;

public interface MhUsersInfoMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUsersInfo record);

    int insertSelective(MhUsersInfo record);

    MhUsersInfo selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUsersInfo record);

    int updateByPrimaryKey(MhUsersInfo record);
}