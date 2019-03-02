package com.hafa.usergroup.service;

import com.hafa.commons.service.BaseService;
import com.hafa.usergroup.model.MhUsersGroup;

import java.util.List;
import java.util.Map;

/**
 * 用户组业务逻辑
 */
public interface MhUsersGroupService extends BaseService<MhUsersGroup> {

    /**
     * 用户列表下拉框数据
     *
     * @return
     */
    List<Map<String, Object>> selectList();

    /**
     * 查询指定名称的分组是否存在
     *
     * @param groupname 分组名称
     * @return true: 存在, false: 不存在
     */
    boolean selectGroupByName(String groupname, Integer ids);

    /**
     * 查询指定主键的用户组
     *
     * @param ids
     * @return
     */
    MhUsersGroup selectByPrimary(String ids);
}
