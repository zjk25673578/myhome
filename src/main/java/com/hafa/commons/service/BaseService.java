package com.hafa.commons.service;

import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Map;

public interface BaseService<T> {

    /**
     * 添加或者保存一条数据<br>
     * 根据主键是否为空作为依据
     *
     * @param entity
     * @param request
     * @return
     */
    int saveOrUpdate(T entity, HttpServletRequest request);

    /**
     * 删除一条记录(逻辑删除)
     *
     * @param entity
     * @return
     */
    int remove(T entity, HttpServletRequest request);

    /**
     * 删除一条指定主键的记录(逻辑删除)
     *
     * @param ids
     * @return
     */
    int remove(Serializable ids, HttpServletRequest request);

    /**
     * 根据指定的分页信息查询当前页码的列表信息
     *
     * @param args
     * @return
     */
    Map<String, Object> searchFor(Map<String, Object> args);

    /**
     * 获取当前登陆用户对象
     *
     * @param request
     * @return
     */
    default MhUsers getCurrentUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (MhUsers) session.getAttribute("currentUser");
    }

    /**
     * 获取当前登陆用户名
     *
     * @param request
     * @return
     */
    default String getCurrentUsername(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getUname();
        }
        return null;
    }

    /**
     * 获取当前登陆用户密码
     *
     * @param request
     * @return
     */
    default String getCurrentPassword(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getPword();
        }
        return null;
    }

    /**
     * 获取当前登陆用户id
     *
     * @param request
     * @return
     */
    default Integer getCurrentUserid(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getIds();
        }
        return null;
    }

    /**
     * 获取当前登陆用户姓名
     *
     * @param request
     * @return
     */
    default String getCurrentRname(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getRname();
        }
        return null;
    }
}
