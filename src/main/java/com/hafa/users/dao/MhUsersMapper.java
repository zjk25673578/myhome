package com.hafa.users.dao;

import com.hafa.users.model.MhUsers;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MhUsersMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUsers record);

    int insertSelective(MhUsers record);

    MhUsers selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUsers record);

    int updateByPrimaryKey(MhUsers record);

    MhUsers selectByUnamePword(@Param("uname") String uname, @Param("pword") String pword);

    List<Map<String, Object>> list(Map<String, Object> params);

    int listCount(Map<String, Object> args);

    int updateUsersStatus(String[] ids);
}
