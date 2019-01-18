package com.hafa.test;

import com.hafa.commons.util.Base64Util;
import com.hafa.commons.util.MD5Code;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hafa.commons.util.enums.MessageEnum;
import org.springframework.util.Base64Utils;

import java.util.Arrays;
import java.util.Base64;

public class TestDemo {

    public static void main(String[] args) {
        /*
         * 网上资料上说明md5加密是不可逆的
         * 而网上的解密md5方式无非两种
         *      1: 暴力穷举, 挨个测试可能性
         *      2: 收录密码存入数据库, 可以根据查询贩卖密码信息
         * 很明显2491158219这个密码已经被收录了
         */
        String s = "643115";
        System.out.println("原始: " + s);
        MD5Code m = new MD5Code();
        System.out.println("base64加密: " + Base64Util.encode(s));
        System.out.println("MD5后: " + m.getMD5ofStr(Base64Util.encode(s)));
    }

    public static void main1112(String[] args) {
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
