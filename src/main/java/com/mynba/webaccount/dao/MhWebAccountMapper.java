package com.mynba.webaccount.dao;

import com.mynba.webaccount.model.MhWebAccount;

public interface MhWebAccountMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhWebAccount record);

    int insertSelective(MhWebAccount record);

    MhWebAccount selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhWebAccount record);

    int updateByPrimaryKey(MhWebAccount record);
}