package com.mynba.dao;

import com.mynba.model.MhWebAccount;

public interface MhWebAccountMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhWebAccount record);

    int insertSelective(MhWebAccount record);

    MhWebAccount selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhWebAccount record);

    int updateByPrimaryKey(MhWebAccount record);
}