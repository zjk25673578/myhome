package com.mynba.dao;

import com.mynba.model.MhUserMember;

public interface MhUserMemberMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUserMember record);

    int insertSelective(MhUserMember record);

    MhUserMember selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUserMember record);

    int updateByPrimaryKey(MhUserMember record);
}