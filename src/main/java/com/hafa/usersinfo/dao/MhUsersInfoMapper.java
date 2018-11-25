package com.hafa.usersinfo.dao;

import com.hafa.usersinfo.model.MhUsersInfo;

public interface MhUsersInfoMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUsersInfo record);

    int insertSelective(MhUsersInfo record);

    MhUsersInfo selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUsersInfo record);

    int updateByPrimaryKey(MhUsersInfo record);
}
