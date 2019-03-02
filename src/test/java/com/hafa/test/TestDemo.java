package com.hafa.test;

import com.hafa.commons.util.encrypt.Base64Util;
import com.hafa.commons.util.encrypt.MD5Util;
import com.hafa.commons.util.enums.MessageEnum;
import com.hafa.outlay.model.MhHouseOutlay;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.Conventions;

public class TestDemo {

    public static void main(String[] args) {
        MhHouseOutlay mhHouseOutlay = new MhHouseOutlay();
        mhHouseOutlay.setBedate("0000-00");
        System.out.println(mhHouseOutlay.getBedate());
    }

    public static void main123(String[] args) {
        int abc = 11111;
        String vn = Conventions.getVariableName(abc);
        System.out.println(vn);
    }

    public static void main111(String[] args) {
        /*String key = "{\"createtype\":\"31\",\"prodate\":\"\",\"minprice\":\"\",\"maxprice\":\"\"}";
        System.out.println(JSONObject.parse(key));*/
        String password = "123456";
        System.out.println(Base64Util.encode(password));
        // System.out.println(EscapeUtil.escape(password));
        // System.out.println(EscapeUtil.unescape(password));
        MD5Util md5Util = new MD5Util();
        System.out.println(md5Util.getMD5ofStr(Base64Util.encode(password)));
        System.out.println(md5Util.getMD5ofStr(Base64Util.encode(password)));
        System.out.println(md5Util.getMD5ofStr(Base64Util.encode(password)));
        System.out.println(md5Util.getMD5ofStr(Base64Util.encode(password)));
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
