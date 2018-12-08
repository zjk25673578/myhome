package com.hafa.users.dao;

import com.hafa.users.model.MhUsers;
import org.apache.ibatis.annotations.Param;

public interface MhUsersMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUsers record);

    int insertSelective(MhUsers record);

    MhUsers selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUsers record);

    int updateByPrimaryKey(MhUsers record);

    MhUsers selectByUnamePword(@Param("uname") String uname, @Param("pword") String pword);
}
