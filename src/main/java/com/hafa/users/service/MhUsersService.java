package com.hafa.users.service;

import com.hafa.commons.util.PageBean;
import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public interface MhUsersService {
    MhUsers getUserByUnamePword(MhUsers user);

    List<Map<String, Object>> list(Map<String, Object> args, PageBean pageBean);

    int listCount(Map<String, Object> args);

    int insertUser(MhUsers mhUsers, HttpServletRequest request);

    int updateUser(MhUsers mhUsers, HttpServletRequest request);

    int deleteUser(String ids);

    int deleteUsers(String ids);
}
