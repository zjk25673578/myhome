package com.hafa.commons.util;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 自定义的日期参数转换器
 *
 * @author Administrator
 */
public class MyDateFormatUtil implements Converter<String, Date> {

    private static SimpleDateFormat[] sdfs = {
            new SimpleDateFormat("yyyy-MM-dd"),
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
            new SimpleDateFormat("yyyyMMdd"),
            new SimpleDateFormat("yyyy/MM/dd")
    };

    @Override
    public Date convert(String arg0) {
        // SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (SimpleDateFormat sdf : sdfs) {
            try {
                return sdf.parse(arg0);
            } catch (ParseException e) {
                // e.printStackTrace();
            }
        }
        return null;
    }

}
