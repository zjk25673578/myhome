package com.hafa.commons.service.impl;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.commons.entity.CommonModel;
import com.hafa.commons.util.MyUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * 公共业务逻辑处理类
 */
public abstract class CommonServiceImpl {

    /**
     * 通用的保存修改的方法
     *
     * @param mapper
     * @param entity
     * @param request
     * @return
     */
    @SuppressWarnings("unchecked")
    protected int saveOrUpdate(BaseMapper mapper, CommonModel entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        if (entity.getIds() != null) {
            entity.setValue("u", request);
            return mapper.updateByPrimaryKeySelective(entity);
        }
        entity.setValue("c", request);
        entity.setStatus(1);
        return mapper.insertSelective(entity);
    }

    /**
     * 通用的删除方法(逻辑删除)
     *
     * @param mapper
     * @param entity
     * @param request
     * @return
     */
    @SuppressWarnings("unchecked")
    public int remove(BaseMapper mapper, CommonModel entity, HttpServletRequest request) {
        if (entity == null) {
            return -1;
        }
        entity.setStatus(0);
        entity.setValue("u", request);
        return mapper.updateByPrimaryKeySelective(entity);
    }

    /**
     * 通用的删除方法(逻辑删除)
     *
     * @param mapper
     * @param ids
     * @param request
     * @return
     */
    public int remove(BaseMapper mapper, Serializable ids, HttpServletRequest request) {
        if (ids == null) {
            return -1;
        }
        CommonModel entity = new CommonModel();
        entity.setIds((Integer) ids);
        return remove(mapper, entity, request);
    }

    /**
     * 通用的查询方法
     *
     * @param mapper
     * @param args
     * @return
     */
    @SuppressWarnings("unchecked")
    public Map<String, Object> searchFor(BaseMapper mapper, Map<String, Object> args) {
        List<Map<String, Object>> list = mapper.searchFor(args);
        return MyUtil.searchForLayData(mapper.countFor(args), list);
    }

}
