package com.hafa.pwordhis.model;

import com.hafa.commons.entity.CommonEntity;

import java.util.Date;

public class MhPwordHis extends CommonEntity {
    private Integer accid;

    private String pword;

    private Date changetime;

    public Integer getAccid() {
        return accid;
    }

    public void setAccid(Integer accid) {
        this.accid = accid;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public Date getChangetime() {
        return changetime;
    }

    public void setChangetime(Date changetime) {
        this.changetime = changetime;
    }
}
