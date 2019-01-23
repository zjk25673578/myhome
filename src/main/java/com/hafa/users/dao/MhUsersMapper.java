package com.hafa.users.dao;

import com.hafa.commons.dao.BaseMapper;
import com.hafa.users.model.MhUsers;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MhUsersMapper extends BaseMapper<MhUsers> {

    /**
     * 获取指定用户名密码的用户
     *
     * @param uname
     * @param pword
     * @return
     */
    List<MhUsers> selectByUnamePword(@Param("uname") String uname, @Param("pword") String pword);

    /**
     * 批量删除用户对象(逻辑删除)
     *
     * @param args
     * @return
     */
    int deleteUsers(Map<String, Object> args);

    /**
     * 获取系统中超级管理员的数量
     *
     * @return
     */
    Integer selectAdmins();

    /**
     * 在指定列表中验证是否含有超级管理员
     *
     * @param ids 用户信息的主键, 以","分隔
     * @return
     */
    Integer checkAdmin(String[] ids);
}
