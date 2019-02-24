package com.hafa.homes.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.homes.model.MhHomes;

import java.util.Map;

public interface MhHomesMapper extends BaseMapper<MhHomes> {

    /**
     * 批量删除
     *
     * @param args 必须包含三个字段{ids: [1,2,3], username: 当前登陆用户名, userid: 当前登陆用户id}
     * @return
     */
    int removeMultiple(Map<String, Object> args);

    /**
     * 根据用户组id查询出当前住所
     *
     * @param groupId
     * @return
     */
    Map<String, Object> getHomeInfoByGroupId(Integer groupId);
}