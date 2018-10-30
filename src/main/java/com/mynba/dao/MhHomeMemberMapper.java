package com.mynba.dao;

import com.mynba.model.MhHomeMember;

public interface MhHomeMemberMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhHomeMember record);

    int insertSelective(MhHomeMember record);

    MhHomeMember selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhHomeMember record);

    int updateByPrimaryKey(MhHomeMember record);
}