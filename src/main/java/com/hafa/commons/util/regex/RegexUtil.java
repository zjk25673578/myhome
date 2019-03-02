package com.hafa.commons.util.regex;

import java.util.regex.Pattern;

/**
 * 正则表达式相关工具类
 */
public class RegexUtil {

    /**
     * 判断指定的字符串是否匹配指定的正则表达式
     *
     * @param regex
     * @param input
     * @return
     */
    public static boolean matcher(String regex, String input) {
        return matcher(regex, input, 0);
    }

    /**
     * 从字符串的指定索引位置开始判断是否匹配指定的正则表达式
     *
     * @param regex
     * @param input
     * @return
     */
    public static boolean matcher(String regex, String input, int start) {
        if (regex == null || input == null || start < 0) {
            return false;
        }
        Pattern p = Pattern.compile(regex);
        return p.matcher(input).find(start);
    }

    /**
     * 判断指定的多个字符串是否全部都能匹配正则表达式
     *
     * @param regex
     * @param inputs
     * @return
     */
    public static boolean matcherAll(String regex, String... inputs) {
        if (regex == null || inputs == null || inputs.length == 0) {
            return false;
        }
        for (String input : inputs) {
            boolean result = matcher(regex, input);
            if (!result) {
                return false;
            }
        }
        return true;
    }
}
