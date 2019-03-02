package com.hafa.commons.controller;

import com.alibaba.fastjson.JSONObject;
import com.hafa.commons.entity.PageBean;
import com.hafa.commons.service.BaseService;
import com.hafa.commons.util.MyUtil;
import com.hafa.commons.util.msg.MsgUtil;
import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * controller公共方法类
 *
 * @param <E>
 */
public class BaseController<E extends BaseService> {

    /**
     * 构建layui的table的数据结构
     *
     * @param service
     * @param args
     * @param pageBean
     * @return
     */
    @SuppressWarnings(value = "unchecked")
    protected Map<String, Object> buildResultMap(E service, Map<String, Object> args, PageBean pageBean) {
        Map<String, Object> resultMap = null;
        try {
            resultMap = service.searchFor(MyUtil.bean2Map(args, pageBean));
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (resultMap != null) {
            MsgUtil.layData(resultMap, 0, "");
            return resultMap;
        }
        return MsgUtil.layData(-1, "", 0, null);
    }

    /**
     * 构建页面的查询参数
     *
     * @param key
     * @return
     */
    protected JSONObject buildArgs(String key) {
        if (key != null && key.trim().length() > 0) {
            try {
                return JSONObject.parseObject(key);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return new JSONObject();
    }

    /**
     * 获取当前登陆用户对象
     *
     * @param request
     * @return
     */
    protected MhUsers getCurrentUser(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return (MhUsers) session.getAttribute("currentUser");
    }

    /**
     * 获取当前登陆用户名
     *
     * @param request
     * @return
     */
    protected String getCurrentUsername(HttpServletRequest request) {
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
    protected String getCurrentPassword(HttpServletRequest request) {
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
    protected Integer getCurrentUserid(HttpServletRequest request) {
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
    protected String getCurrentRname(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getRname();
        }
        return null;
    }

    /**
     * 获取当前登陆用户所在组的id
     *
     * @param request
     * @return
     */
    protected Integer getCurrentGroupId(HttpServletRequest request) {
        MhUsers user = getCurrentUser(request);
        if (user != null) {
            return user.getGroupid();
        }
        return null;
    }
}
