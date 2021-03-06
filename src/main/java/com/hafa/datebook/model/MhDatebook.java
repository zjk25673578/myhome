package com.hafa.datebook.model;

import com.hafa.commons.entity.CommonEntity;

import java.util.Date;

public class MhDatebook extends CommonEntity {
    private Integer userid;

    private String title;

    private String detail;

    private Date happend;

    private Integer remarks;

    private String backup1;

    private String backup2;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Date getHappend() {
        return happend;
    }

    public void setHappend(Date happend) {
        this.happend = happend;
    }

    public Integer getRemarks() {
        return remarks;
    }

    public void setRemarks(Integer remarks) {
        this.remarks = remarks;
    }

    public String getBackup1() {
        return backup1;
    }

    public void setBackup1(String backup1) {
        this.backup1 = backup1;
    }

    public String getBackup2() {
        return backup2;
    }

    public void setBackup2(String backup2) {
        this.backup2 = backup2;
    }
}
