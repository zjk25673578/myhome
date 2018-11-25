package com.hafa.finance.model;

import java.math.BigDecimal;
import java.util.Date;

public class MhFinance {
    private Integer ids;

    private Integer userid;

    private Byte ftype;

    private BigDecimal cash;

    private Integer createtype;

    private Date prodate;

    private String reason;

    private Byte status;

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

    public Byte getFtype() {
        return ftype;
    }

    public void setFtype(Byte ftype) {
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

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}
