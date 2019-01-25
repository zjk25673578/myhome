package com.hafa.commons.entity;

import com.hafa.users.model.MhUsers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 实体类数据模型公共类
 */
public class CommonModel implements Serializable {

    /**
     * 
     */
    private static final long serialVersionUID = 1L;

    private Integer ids;

    /**
     * 创建时间
     */
    private Date createtime;

    /**
     * 创建人id
     */
    private Integer creator;

    /**
     * 创建人名称
     */
    private String createname;

    /**
     * 修改时间
     */
    private Date updatetime;

    /**
     * 修改人id
     */
    private Integer updator;

    /**
     * 修改人名称
     */
    private String updatename;

    /**
     * 有效标志
     */
    private Integer status;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getCreator() {
        return creator;
    }

    public void setCreator(Integer creator) {
        this.creator = creator;
    }

    public String getCreatename() {
        return createname;
    }

    public void setCreatename(String createname) {
        this.createname = createname;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Integer getUpdator() {
        return updator;
    }

    public void setUpdator(Integer updator) {
        this.updator = updator;
    }

    public String getUpdatename() {
        return updatename;
    }

    public void setUpdatename(String updatename) {
        this.updatename = updatename;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 根据操作方式, 添加还是修改设置值
     *
     * @param type    操作方式: "c" 创建, "u" 更新/修改
     * @param request
     */
    public void setValue(String type, HttpServletRequest request) {
        HttpSession session = request.getSession();
        Object o = session.getAttribute("currentUser");
        if (o != null) {
            MhUsers user = (MhUsers) o;
            switch (type) {
                case "c":
                    this.setCreatename(user.getUname());
                    this.setCreatetime(new Date());
                    this.setCreator(user.getIds());
                    break;
                case "u":
                    this.setUpdatename(user.getUname());
                    this.setUpdatetime(new Date());
                    this.setUpdator(user.getIds());
                    break;
            }
        }
    }

    /**
     * 实例化一个当前对象<br>
     * 获取添加, 修改的信息<br>
     * 并转换成Map返回
     *
     * @param type
     * @param request
     * @return
     * @throws InvocationTargetException
     * @throws IllegalAccessException
     */
    public static Map<String, Object> get(String type, HttpServletRequest request) throws InvocationTargetException, IllegalAccessException {
        CommonModel cm = new CommonModel();
        cm.setValue(type, request);
        return cm.toMap();
    }

    /**
     * 利用反射将当前对象的值组成Map返回
     *
     * @return
     * @throws InvocationTargetException
     * @throws IllegalAccessException
     */
    public Map<String, Object> toMap() throws InvocationTargetException, IllegalAccessException {
        Map<String, Object> map = new HashMap<>();
        Class<?> clazz = this.getClass();
        Field[] fields = clazz.getDeclaredFields();
        for (Field field : fields) {
            String fieldName = field.getName();
            try {
                Method method = clazz.getMethod(
                        "get" + (fieldName.charAt(0) + "").toUpperCase() + fieldName.substring(1));
                map.put(fieldName, method.invoke(this));
            } catch (NoSuchMethodException ignored) {
            }
        }
        return map;
    }
}
