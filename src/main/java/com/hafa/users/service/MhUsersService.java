package com.hafa.users.service;

import com.hafa.commons.util.PageBean;
import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

public interface MhUsersService {

    /**
     * 根据用户名和密码查询用户
     * @param user
     * @return
     */
    MhUsers getUserByUnamePword(MhUsers user);

    /**
     * 根据指定的分页信息查询当前页码的用户列表
     * @param args
     * @param pageBean
     * @return
     * @throws Exception
     */
    List<Map<String, Object>> list(Map<String, Object> args, PageBean pageBean) throws Exception;

    /**
     * 查询列表的总数
     * @param args
     * @return
     */
    int listCount(Map<String, Object> args);

    /**
     * 添加一个用户信息
     * @param mhUsers
     * @param request
     * @return
     */
    int insertUser(MhUsers mhUsers, HttpServletRequest request);

    /**
     * 修改一个用户信息
     * @param mhUsers
     * @param request
     * @return
     */
    int updateUser(MhUsers mhUsers, HttpServletRequest request);

    /**
     * 删除用户信息(逻辑删除)
     * @param ids
     * @param request
     * @return
     */
    int deleteUser(String ids, HttpServletRequest request);

    /**
     * 删除指定的用户信息列表(批量删除, 逻辑删除)
     * @param ids
     * @param request
     * @return
     * @throws InvocationTargetException
     * @throws IllegalAccessException
     */
    int deleteUsers(String ids, HttpServletRequest request) throws InvocationTargetException, IllegalAccessException;

    /**
     * 更改用户状态(启用, 禁用)
     * @param ids
     * @param setups
     * @param request
     * @return
     */
    int updateSetups(String ids, String setups, HttpServletRequest request);

    /**
     * 获取当前系统中超级管理员的数量
     * @return
     */
    Integer adminCount();
}
