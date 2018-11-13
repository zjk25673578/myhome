package com.mynba.finance.dao;

import com.mynba.finance.model.MhFinance;

public interface MhFinanceMapper {
    int deleteByPrimaryKey(Integer ids);

    int insert(MhFinance record);

    int insertSelective(MhFinance record);

    MhFinance selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(MhFinance record);

    int updateByPrimaryKey(MhFinance record);
}