package com.hafa.commons.dao;

/**
 * MyBatis Generator公共代码
 * @param <T>
 */
public interface BaseMapper<T> {
    int deleteByPrimaryKey(Integer ids);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(Integer ids);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);
}
