package com.hafa.commons.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * MyBatis Generator公共代码
 *
 * @param <T>
 */
public interface BaseMapper<T> {
    int deleteByPrimaryKey(Serializable ids);

    int insert(T record);

    int insertSelective(T record);

    T selectByPrimaryKey(Serializable ids);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);

    // 自定义方法 start
    int countFor(Map<String, Object> args);

    List<Map<String, Object>> searchFor(Map<String, Object> args);
    // 自定义方法 end
}
