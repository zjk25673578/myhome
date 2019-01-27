package com.hafa.commons.service.impl;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.commons.entity.CommonModel;
import com.hafa.commons.util.msg.MsgUtil;

import javax.servlet.http.HttpServletRequest;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * 公共业务逻辑处理类
 */
public abstract class CommonServiceImpl<E extends CommonModel> {

    /**
     * 通用的保存修改的方法
     *
     * @param mapper
     * @param entity
     * @param request
     * @return
     */
    @SuppressWarnings("unchecked")
    protected int saveOrUpdate(BaseMapper<E> mapper, E entity, HttpServletRequest request) {
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
    public int remove(BaseMapper<E> mapper, E entity, HttpServletRequest request) {
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
    public int remove(BaseMapper<E> mapper, Serializable ids, HttpServletRequest request) {
        if (ids == null) {
            return -1;
        }
        int id = -1;

        // 因为Mapper中已经指定了jdbcType=INTEGER, 所以无法传入字符串类型的值进行查询
        // 这里需要根据实际的业务逻辑来进行判断
        // 要注意的是, 这种情况的出现一定要在构建项目的初期就应该考虑到
        // 要么全Integer, 要么全String, 主键常用类型无非就这两种
        // 本项目中使用的主键全部为Integer, 所以在这里就直接转了
        if (ids.toString().trim().length() > 0) {
            try {
                id = Integer.parseInt(ids.toString());
            } catch (NumberFormatException e) {
                System.out.println("com.hafa.commons.service.impl.CommonServiceImpl#remove -> NumberFormatException");
                e.printStackTrace();
                return -1;
            }
        }
        E entity = mapper.selectByPrimaryKey(id);
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
    public Map<String, Object> searchFor(BaseMapper<E> mapper, Map<String, Object> args) {
        List<Map<String, Object>> list = mapper.searchFor(args);
        return MsgUtil.searchForLayData(mapper.countFor(args), list);
    }

}
