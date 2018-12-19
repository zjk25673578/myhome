package com.hafa.notebook.model;

import com.hafa.commons.entity.CommonModel;

public class MhNotebook extends CommonModel {
    private String conte;

    private Integer touser;

    private Integer status;

    public String getConte() {
        return conte;
    }

    public void setConte(String conte) {
        this.conte = conte;
    }

    public Integer getTouser() {
        return touser;
    }

    public void setTouser(Integer touser) {
        this.touser = touser;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
