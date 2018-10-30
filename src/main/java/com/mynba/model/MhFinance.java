package com.mynba.model;

import java.math.BigDecimal;
import java.util.Date;

public class MhFinance {
    private Integer ids;

    private Integer userid;

    private Short ftype;

    private BigDecimal cash;

    private Integer createtype;

    private Date prodate;

    private String reason;

    private Short status;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Short getFtype() {
        return ftype;
    }

    public void setFtype(Short ftype) {
        this.ftype = ftype;
    }

    public BigDecimal getCash() {
        return cash;
    }

    public void setCash(BigDecimal cash) {
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

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }
}