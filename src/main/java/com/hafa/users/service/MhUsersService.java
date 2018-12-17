package com.hafa.users.service;

import com.hafa.commons.util.PageBean;
import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

public interface MhUsersService {
    MhUsers getUserByUnamePword(MhUsers user);

    List<Map<String, Object>> list(Map<String, Object> args, PageBean pageBean) throws Exception;

    int listCount(Map<String, Object> args);

    int insertUser(MhUsers mhUsers, HttpServletRequest request);

    int updateUser(MhUsers mhUsers, HttpServletRequest request);

    int deleteUser(String ids, HttpServletRequest request);

    int deleteUsers(String ids, HttpServletRequest request) throws InvocationTargetException, IllegalAccessException;

    int updateSetups(String ids, String setups, HttpServletRequest request);
}
