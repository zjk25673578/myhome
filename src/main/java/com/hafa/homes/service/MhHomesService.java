package com.hafa.homes.service;

import com.hafa.commons.service.BaseService;
import com.hafa.homes.model.MhHomes;

import java.util.Map;

public interface MhHomesService extends BaseService<MhHomes> {

    /**
     * 批量删除家庭地址信息(逻辑删除)
     *
     * @return
     */
    int removeMultiple(Map<String, Object> args);

    /**
     * 获取指定用户组的当前住所信息
     *
     * @param groupId
     * @return
     */
    Map<String, Object> selectHomeInfoByGroupId(Integer groupId);
}
