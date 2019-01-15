package com.hafa.commons.util;

import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Invocation;

import java.util.Properties;

public class MyBatisInterceptor implements Interceptor {
    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        System.out.println(invocation.getMethod().getName());
        return null;
    }

    @Override
    public Object plugin(Object o) {
        System.out.println(o);
        return null;
    }

    @Override
    public void setProperties(Properties properties) {
        System.out.println(properties);
    }
}
