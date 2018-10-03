package com.mynba.test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

/**
 * 项目文件内容行数统计
 * @author Administrator
 * @version 1.0
 */
public class TestCode {

    /**
     * 代码行数
     */
    public static int code;

    /**
     * 注释行数
     */
    public static int comment;

    /**
     * 空白行数
     */
    public static int blank;

    /**
     * 总行数
     */
    public static int total;

    public static void main(String[] args) {
        long start = System.currentTimeMillis();
        File file = new File("E:\\mytest");
        try {
            calCountor(file);
        } catch (Exception e) {
            e.printStackTrace();
        }
        long end = System.currentTimeMillis();
        long time = end - start;
        System.out.println("代码行数: " + code);
        System.out.println("注释行数: " + comment);
        System.out.println("空白行数: " + blank);
        System.out.println("总行数: " + total);
        System.out.println("用时: " + (time / 1000) + "秒");
    }

    /**
     * @param commentStart  多行注释的开始标记
     * @param commentEnd    多行注释的结束标记
     * @param commentSingle 单行注释的标记
     * @param file
     * @throws Exception
     */
    public static void countor(String commentStart, String commentEnd, String commentSingle, File file) throws Exception {
        InputStreamReader isr = new InputStreamReader(new FileInputStream(file));
        BufferedReader br = new BufferedReader(isr);
        String temp = null;
        boolean lock = false;
        while ((temp = br.readLine()) != null) {
            total++;
            if (temp.trim().length() > 0) {
                if (temp.trim().contains(commentStart) && temp.trim().contains(commentEnd)) {
                    comment++;
                    continue;
                }
                if (temp.trim().contains(commentEnd)) {
                    comment++;
                    lock = false;
                }
                if (lock) {
                    comment++;
                    continue;
                }
                if (temp.trim().startsWith(commentSingle)) {
                    comment++;
                } else if (temp.trim().contains(commentStart)) {
                    comment++;
                    lock = true;
                } else {
                    code++;
                }
            } else {
                blank++;
            }
        }
        br.close();
        System.out.println("==============" + file.getName() + "内容行数已添加...");
    }

    /**
     * 根据文件类型不同执行不同的判断逻辑
     *
     * @param file
     * @param orgName
     * @throws Exception
     */
    public static void chooseType(File file, String orgName) throws Exception {
        switch (orgName) {
            case "java":
                countor("/*", "*/", "//", file);
                break;
            case "js":
                countor("/*", "*/", "//", file);
                break;
            case "xml":
                countor("<!--", "-->", "aaa", file);
                break;
            case "properties":
                countor("aaa", "bbb", "#", file);
                break;
            case "css":
                countor("/*", "*/", "aaa", file);
                break;
            case "html":
                countor("<!--", "-->", "aaa", file);
                break;
            case "jsp":
                countor("<!--", "-->", "aaa", file);
                break;
            case "ftl":
                countor("<!--", "-->", "aaa", file);
                break;
            default:
                System.out.println(file.getName() + "为其它类型文件, 忽略...");
        }
    }

    /**
     * 获取扩展名
     *
     * @param fileName
     * @return
     */
    public static String getOrgName(String fileName) {
        if (fileName == null)
            return "";
        return fileName.substring(fileName.lastIndexOf('.') + 1);
    }

    /**
     * 计算代码行数
     *
     * @param file
     * @throws Exception
     */
    public static void calCountor(File file) throws Exception {
        if (file.getName().startsWith(".")) {
            System.out.println(file.getName() + "为IDE或项目文件, 忽略...");
            return;
        }

        if (!file.exists()) {
            System.err.println("当前路径错误...! 没有找到指定文件");
            return;
        }

        if (file.isDirectory()) {
            File[] files = file.listFiles();
            for (File f : files) {
                if (f.isDirectory()) {
                    calCountor(f);
                } else {
                    chooseType(f, getOrgName(f.getName()));
                }
            }
        }

        if (file.isFile()) {
            chooseType(file, getOrgName(file.getName()));
        }
    }
}
