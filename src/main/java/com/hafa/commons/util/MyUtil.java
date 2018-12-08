package com.hafa.commons.util;


import com.hafa.commons.entity.Message;

import javax.servlet.http.HttpSession;
import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

public class MyUtil {

    /**
     * 获取随机的验证码内容(字母加数字)
     * 同时将验证码放入session中
     */
    public static String getCodeContent(HttpSession session) {
        String str = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder code = new StringBuilder();
        for (int x = 1; x <= 4; x++) {
            Random a = new Random();
            int m = a.nextInt(str.length());
            code.append(str.charAt(m));
        }
        session.setAttribute("validCode", code.toString());
        return code.toString();
    }

    /**
     * 构建response消息模型
     *
     * @param result
     * @return
     */
    public static Message msg(int result) {
        Message msg;
        if (result > 0) {
            msg = new Message(true, "数据操作成功 !", 1);
        } else {
            msg = new Message(false, "操作失败 !", 5);
        }
        return msg;
    }

    /**
     * 构建response消息模型
     *
     * @param result
     * @return
     */
    public static Message msg(int result, String action) {
        Message msg = msg(result);
        msg.setMessage(action);
        return msg;
    }

    /**
     * 用于将多个javabean转换成Map<String, Object><br>
     * 应当注意重复的key值
     *
     * @param objects
     * @return
     * @throws Exception
     */
    public static Map<String, Object> bean2Map(Object... objects) throws Exception {
        Map<String, Object> _map = null;
        if (objects != null && objects.length > 0) {
            for (Object object : objects) {
                if (_map == null) {
                    _map = transBean2Map(object);
                } else {
                    _map.putAll(transBean2Map(object));
                }
            }
        }
        return _map;
    }

    /**
     * 通过反射将javaBean转换成Map
     * @param obj
     * @return
     * @throws Exception
     */
    private static Map<String, Object> transBean2Map(Object obj) throws Exception {
        if (obj == null) {
            return null;
        }
        Map<String, Object> map = new HashMap<>();
        BeanInfo beanInfo = Introspector.getBeanInfo(obj.getClass());
        PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
        for (PropertyDescriptor property : propertyDescriptors) {
            String key = property.getName();
            // 过滤class属性
            if (!key.equals("class")) { // 得到property对应的getter方法
                Method getter = property.getReadMethod();
                Object value = getter.invoke(obj);
                map.put(key, value);
            }
        }
        return map;
    }

    /**
     * 组装layui-data-table所需的数据格式
     *
     * @param code 状态码
     * @param msg 当数据获取失败时返回的消息
     * @param count 数据条数, 用于分页和统计
     * @param data 数据列表
     * @return
     */
    public static Map<String, Object> layData(int code, String msg, int count, List<?> data) {
        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("code", code);
        resultMap.put("msg", msg);
        resultMap.put("count", count);
        resultMap.put("data", data);
        return resultMap;
    }
}
