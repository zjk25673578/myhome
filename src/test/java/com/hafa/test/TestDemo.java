package com.hafa.test;

import com.alibaba.fastjson.JSONObject;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hafa.commons.util.enums.MessageEnum;

public class TestDemo {

    public static void main(String[] args) {
        String key = "{\"createtype\":\"31\",\"prodate\":\"\",\"minprice\":\"\",\"maxprice\":\"\"}";
        System.out.println(JSONObject.parse(key));
    }

    public static void main222(String[] args) {
        MessageEnum messageEnum = MessageEnum.codeOf(0);
        String m = messageEnum.msg();
        System.out.println(m);
    }

    public static void main1111(String[] args) {
        ApplicationContext c = new ClassPathXmlApplicationContext("spring-config.xml");
        SqlSessionFactoryBean sqlSessionFactoryBean = (SqlSessionFactoryBean) c.getBean("sqlSessionFactoryBean");
        System.out.println(123);
    }
}
