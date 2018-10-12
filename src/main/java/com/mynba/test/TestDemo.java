package com.mynba.test;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class TestDemo {
    public static void main(String[] args) {
/*        String key = "{\"ename\":\"小明\",\"sex\":\"1\",\"min_sal\":\"22\",\"max_sal\":\"1200\"," +
                "\"min_age\":\"\",\"max_age\":\"\",\"start_hiredate\":\"2012-09-15\",\"end_hiredate\":\"\"}";
        EmpSearchEntity empSearchEntity = JSON.parseObject(key, EmpSearchEntity.class); // 竟然可以兼容数据类型进行转换

        Map<String, Object> map = transBean2Map(empSearchEntity);
        System.out.println(map);*/

    }

    public static Map<String, Object> transBean2Map(Object obj) {
        if (obj == null) {
            return null;
        }
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            BeanInfo beanInfo = Introspector.getBeanInfo(obj.getClass());
            PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
            for (PropertyDescriptor property : propertyDescriptors) {
                String key = property.getName();
                // 过滤class属性
                if (!key.equals("class")) {                     // 得到property对应的getter方法
                    Method getter = property.getReadMethod();
                    Object value = getter.invoke(obj);
                    map.put(key, value);
                }
            }
        } catch (Exception e) {
            System.out.println("transBean2Map Error " + e);
        }
        return map;
    }


}
