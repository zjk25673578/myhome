package com.hafa.finance.model;

import com.hafa.commons.entity.CommonModel;

import java.util.Date;

public class MhFinance extends CommonModel {
    private Integer userid;

    private Integer ftype;

    private Double cash;

    private Integer createtype;

    private Date prodate;

    private String reason;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getFtype() {
        return ftype;
    }

    public void setFtype(Integer ftype) {
        this.ftype = ftype;
    }

    public Double getCash() {
        return cash;
    }

    public void setCash(Double cash) {
        this.cash = cash;
    }

    public Integer getCreatetype() {
        return createtype;
    }

    public void setCreatetype(Integer createtype) {
        this.createtype = createtype;
    }

    public Date getProdate() {
        return prodate;
    }

    public void setProdate(Date prodate) {
        this.prodate = prodate;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
