package com.hafa.commons.util;

import org.aspectj.lang.JoinPoint;

import java.util.Arrays;

public class LogginAspect {

    // private Logger logger = Logger.getRootLogger();

    public void before(JoinPoint joinPoint) {
        String methodName = joinPoint.getSignature().getName();
        Object[] objs = joinPoint.getArgs();
        System.out.println(methodName + "方法开始调用......");
        System.out.println("方法的参数列表: " + Arrays.asList(objs));
    }

    public void after(JoinPoint joinPoint) {
        String methodName = joinPoint.getSignature().getName();
        System.out.println(methodName + "方法调用完毕");
    }

    public void throwObject(JoinPoint joinPoint, Exception exception) {
        String methodName = joinPoint.getSignature().getName();
        System.out.println(methodName + "出现了异常...(" + exception.getMessage() + ")");
    }

    public void returnObject(JoinPoint joinPoint, Object object) {
        String methodName = joinPoint.getSignature().getName();
        System.out.println(methodName + "方法已将结果(" + object.toString() + ")返回");
    }

}
