package com.hafa.users.service;

import com.hafa.commons.service.BaseService;
import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;

/**
 * 系统用户业务处理类
 */
public interface MhUsersService extends BaseService<MhUsers> {

    /**
     * 根据用户名和密码查询用户
     *
     * @param user
     * @return
     */
    MhUsers getUserByUnamePword(MhUsers user);

    /**
     * 删除指定的用户信息列表(批量删除, 逻辑删除)
     *
     * @param ids
     * @param request
     * @return
     * @throws InvocationTargetException
     * @throws IllegalAccessException
     */
    int deleteUsers(String ids, HttpServletRequest request) throws Exception;

    /**
     * 更改用户状态(启用, 禁用)
     *
     * @param ids
     * @param setups
     * @param request
     * @return
     */
    int updateSetups(String ids, String setups, HttpServletRequest request);
}
