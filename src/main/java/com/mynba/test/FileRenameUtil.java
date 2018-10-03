package com.mynba.test;

import java.io.File;
import java.text.Collator;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 文件改名操作类
 */
public class FileRenameUtil {
    public static void main(String[] args) {
        String path = "D:\\编程视频\\小锋\\[www.java1234.com]一头扎进Shiro视频教程";
        File file = new File(path);
        try {
            renameFiles(file, "mp4", "Shiro视频-");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 用于将一个字符串中汉字的"一二三"替换成"123"
     *
     * @param source 需要替换的字符串
     * @return
     */
    public static String chinese2Number(String source) {
        Pattern p = Pattern.compile("[一二三四五六七八九十]");
        Matcher m = p.matcher(source);
        while (m.find()) {
            String s = m.group();
            switch (s) {
                case "一":
                    source = source.replace(s, "1");
                    break;
                case "二":
                    source = source.replace(s, "2");
                    break;
                case "三":
                    source = source.replace(s, "3");
                    break;
                case "四":
                    source = source.replace(s, "4");
                    break;
                case "五":
                    source = source.replace(s, "5");
                    break;
                case "六":
                    source = source.replace(s, "6");
                    break;
                case "七":
                    source = source.replace(s, "7");
                    break;
                case "八":
                    source = source.replace(s, "8");
                    break;
                case "九":
                    source = source.replace(s, "9");
                    break;
                case "十":
                    source = source.replace(s, "10");
                    break;
                case "零":
                    source = source.replace(s, "0");
                    break;
            }
        }
        return source;
    }

    /**
     * 判断字符串中是否包含中文, 不能校验是否为中文标点符号
     *
     * @param str 待校验字符串
     * @return 是否为中文
     */
    public static boolean isContainChinese(String str) {
        Pattern p = Pattern.compile("[\u4e00-\u9fa5]");
        Matcher m = p.matcher(str);
        if (m.find()) {
            return true;
        }
        return false;
    }

    /**
     * 判断File数组中是否有以中文命名的文件
     *
     * @param files 需要判断的File数组
     * @return
     */
    public static boolean isContainChinese(File[] files) {
        boolean r = false;
        for (int i = 0; i < files.length; i++) {
            String name = files[i].getName();
            r = isContainChinese(name);
            if (r) {
                break;
            }
        }
        return r;
    }

    /**
     * 按照汉字的拼音顺序对汉字字符串进行比较
     *
     * @param s1
     * @param s2
     * @return
     */
    private static int chineseCompare(String s1, String s2) {
        return Collator.getInstance(Locale.CHINESE).compare(s1, s2);
    }

    /**
     * 文件改名
     *
     * @param file    需要改名的文件所在的文件夹必须是一个路径
     * @param orgName 需要改名的文件后缀名
     * @param prefix  需要添加的前缀
     * @throws Exception
     */
    public static void renameFiles(File file, String orgName, String prefix) throws Exception {
        if (file.isFile()) {
            throw new Exception("当前路径为文件, 并非目录 !");
        }
        File[] files = file.listFiles();
        System.out.println("已获取文件列表, 正在进行排序.....");
        List<File> fileList = Arrays.asList(files);
        if (isContainChinese(files)) {
            Collections.sort(fileList, (File f1, File f2) -> (
                            chineseCompare(
                                    chinese2Number(f1.getName()),
                                    chinese2Number(f2.getName())
                            )
                    )
            ); // 使用了Lambda表达式
        } else {
            Collections.sort(fileList);
        }
        int index = 1;
        // 当前路径
        String currentPath = file.getAbsolutePath();
        System.out.println("当前路径为: " + currentPath);

        for (File f : fileList) {
            String fname = f.getName();
            if (!fname.endsWith(orgName)) {
                System.out.println(fname + "文件被过滤...");
                continue;
            }
            System.out.print("正在执行对" + fname + "的操作...");
            String updateName = (prefix == null ? "" : prefix) + index + "." + getOrgName(fname);
            index++;
            try {
                f.renameTo(new File(currentPath + "\\" + updateName));
            } catch (Exception e) {
                System.out.println(e.getMessage());
                continue;
            }
            System.out.print("操作完成 !");
            System.out.println("原名称: \"" + fname + "\" 改为: \"" + updateName + "\"");
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
}