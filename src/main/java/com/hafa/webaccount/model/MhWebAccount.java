package com.hafa.webaccount.model;

import com.hafa.commons.entity.CommonModel;

public class MhWebAccount extends CommonModel {
    private Integer webid;

    private String accounts;

    private String pword;

    private String emails;

    private String mphone;

    private String note;

    private Integer pwordhis;

    private Integer userid;

    private Integer status;

    public Integer getWebid() {
        return webid;
    }

    public void setWebid(Integer webid) {
        this.webid = webid;
    }

    public String getAccounts() {
        return accounts;
    }

    public void setAccounts(String accounts) {
        this.accounts = accounts;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public String getEmails() {
        return emails;
    }

    public void setEmails(String emails) {
        this.emails = emails;
    }

    public String getMphone() {
        return mphone;
    }

    public void setMphone(String mphone) {
        this.mphone = mphone;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Integer getPwordhis() {
        return pwordhis;
    }

    public void setPwordhis(Integer pwordhis) {
        this.pwordhis = pwordhis;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getStatus() {
        return status;
    }
}
