package com.hafa.commons.dao;

public interface BaseMapper<T> {
    int deleteByPrimaryKey(Integer ids);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);
}
