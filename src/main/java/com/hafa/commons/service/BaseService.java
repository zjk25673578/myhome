package com.hafa.commons.service;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.Map;

public interface BaseService<T> {

    /**
     * 添加或者保存一条数据<br>
     * 根据主键是否为空作为依据
     *
     * @param entity
     * @param request
     * @return
     */
    int saveOrUpdate(T entity, HttpServletRequest request);

    /**
     * 删除一条记录(逻辑删除)
     *
     * @param entity
     * @return
     */
    int remove(T entity, HttpServletRequest request);

    /**
     * 删除一条指定主键的记录(逻辑删除)
     *
     * @param ids
     * @return
     */
    int remove(Serializable ids, HttpServletRequest request);

    /**
     * 根据指定的分页信息与查询条件获取当前页码的列表信息
     * 返回的数据结构: {"count": 0, "data": list}
     *
     * @param args
     * @return
     */
    Map<String, Object> searchFor(Map<String, Object> args);
}
