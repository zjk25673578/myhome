package com.mynba.test;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDemo {
    public static void main(String[] args) {
        ApplicationContext c = new ClassPathXmlApplicationContext("spring-config.xml");
        SqlSessionFactoryBean sqlSessionFactoryBean = (SqlSessionFactoryBean) c.getBean("sqlSessionFactoryBean");
        System.out.println(123);
    }
}
