package com.hafa.homes.model;

import com.hafa.commons.entity.CommonModel;

public class MhHomes extends CommonModel {
    private String hcode;

    private String hname;

    private Integer status;

    public String getHcode() {
        return hcode;
    }

    public void setHcode(String hcode) {
        this.hcode = hcode;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
