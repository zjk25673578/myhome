package com.hafa.commons.entity;

import com.alibaba.fastjson.JSON;

import java.util.List;

public class Message {
    private boolean success;
    private String message;
    private Integer iconType;
    private List<?> data;

    public Message() {
    }

    public Message(boolean success, String message, Integer iconType) {
        this.success = success;
        this.message = message;
        this.iconType = iconType;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Integer getIconType() {
        return iconType;
    }

    public void setIconType(Integer iconType) {
        this.iconType = iconType;
    }

    public List<?> getData() {
        return data;
    }

    public void setData(List<?> data) {
        this.data = data;
    }

    @Override
    public String toString() {
        return JSON.toJSONString(this);
    }
}
