package com.hafa.commons.entity;

import com.alibaba.fastjson.JSONObject;

public class Message {
    private boolean success;
    private String message;
    private Integer iconType;

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
        return json.toJSONString();
    }
}
