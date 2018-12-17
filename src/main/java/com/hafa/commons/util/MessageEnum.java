package com.hafa.commons.util;

public enum MessageEnum {

    INVALIDATE_USERNAME_PASSWORD(-400,"用户名或密码错误"),
    USER_ACCOUNT_FORBIDDEN(-7, "账号已被禁用"),
    WRONG_CODE(-6, "验证码错误"),
    NOT_BIND(-5, "未登录状态，无法操作"),
    VALID_CODE_DEPRECATED(-4, "验证码已经失效, 请刷新页面"),
    INCORRECT_PARAM(-3, "参数不正确"),
    NULL_RESULT(-2, "没有数据"),
    FAILURE(-1, "操作失败");

    private int code;
    private String message;

    MessageEnum(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int code() {
        return code;
    }

    public String msg() {
        return message;
    }

    public static MessageEnum codeOf(int index) {
        for (MessageEnum messageEnum : values()) {
            if (messageEnum.code() == index) {
                return messageEnum;
            }
        }
        return null;
    }
}
