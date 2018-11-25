package com.hafa.usermember.dao;

import com.hafa.usermember.model.MhUserMember;

public interface MhUserMemberMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhUserMember record);

    int insertSelective(MhUserMember record);

    MhUserMember selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhUserMember record);

    int updateByPrimaryKey(MhUserMember record);
}
