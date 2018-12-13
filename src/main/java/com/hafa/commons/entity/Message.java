package com.hafa.commons.entity;

import com.alibaba.fastjson.JSONObject;

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

    @Override
    public String toString() {
        JSONObject json = new JSONObject();
        json.put("success", this.success);
        json.put("message", this.message);
        json.put("iconType", this.iconType);
        json.put("data", this.data);
        return json.toJSONString();
    }

    public List<?> getData() {
        return data;
    }

    public void setData(List<?> data) {
        this.data = data;
    }
}
