package com.hafa.usergroup.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.usergroup.model.MhUsersGroup;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MhUsersGroupMapper extends BaseMapper<MhUsersGroup> {

    /**
     * 用户列表下拉框数据
     *
     * @return
     */
    List<Map<String, Object>> selectList();

    /**
     * 查询指定的用户组代码是否存在
     *
     * @param groupcode
     * @return
     */
    int countByCode(@Param("groupcode") String groupcode, @Param("ids") Integer ids);
}