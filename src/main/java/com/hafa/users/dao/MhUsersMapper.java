package com.hafa.users.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.users.model.MhUsers;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MhUsersMapper extends BaseMapper<MhUsers> {

    List<MhUsers> selectByUnamePword(@Param("uname") String uname, @Param("pword") String pword);

    List<Map<String, Object>> list(Map<String, Object> params);

    int listCount(Map<String, Object> args);

    /**
     * 批量删除用户对象(逻辑删除)
     * @param args
     * @return
     */
    int deleteUsers(Map<String, Object> args);

    Integer selectAdmins();

    Integer checkAdmin(String[] ids);
}
