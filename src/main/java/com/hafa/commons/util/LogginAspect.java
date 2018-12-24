package com.hafa.commons.util;

import org.apache.log4j.Logger;
import org.aspectj.lang.JoinPoint;

import java.util.Arrays;

public class LogginAspect {

    private Logger logger = Logger.getRootLogger();

    public void before(JoinPoint joinPoint) {
        // 方法名
        String methodName = joinPoint.getSignature().getName();
        // 参数列表
        Object[] objs = joinPoint.getArgs();

        logger.info(methodName + "方法开始调用......");
        logger.info("方法的参数列表: " + (objs == null ? "[]" : Arrays.asList(objs)));
    }

    public void after(JoinPoint joinPoint) {
        String methodName = joinPoint.getSignature().getName();
        logger.info(methodName + "方法调用完毕");
    }

    public void throwObject(JoinPoint joinPoint, Exception exception) {
        String methodName = joinPoint.getSignature().getName();
        logger.info(methodName + "出现了异常...(" + exception.getMessage() + ")");
    }

    public void returnObject(JoinPoint joinPoint, Object object) {
        String methodName = joinPoint.getSignature().getName();
        logger.info(methodName + "方法已将结果(" + (object == null ? "null" : object.toString()) + ")返回");
    }

}
