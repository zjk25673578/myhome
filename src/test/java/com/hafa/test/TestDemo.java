package com.hafa.test;

import com.alibaba.fastjson.JSON;
import com.hafa.datebook.model.MhDatebook;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestDemo {

    public static void main(String[] args) {
        MhDatebook mhDatebook = new MhDatebook();
        mhDatebook.setCreatename("dfgdsghsdsff");
        System.out.println(JSON.toJSONString(mhDatebook));
    }

    public static void main1111(String[] args) {
        ApplicationContext c = new ClassPathXmlApplicationContext("spring-config.xml");
        SqlSessionFactoryBean sqlSessionFactoryBean = (SqlSessionFactoryBean) c.getBean("sqlSessionFactoryBean");
        System.out.println(123);
    }
}
