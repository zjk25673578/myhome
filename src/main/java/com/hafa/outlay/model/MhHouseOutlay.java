package com.hafa.outlay.model;

import com.hafa.commons.entity.CommonEntity;
import com.hafa.commons.util.regex.RegexUtil;

import java.util.Date;

public class MhHouseOutlay extends CommonEntity {

    private Integer groupid;

    /**
     * 费用类型: (因为是固定类型, 故不再关联字典, 直接填写汉字)
     */
    private String ptname;

    private Double cash;

    private Date prodate;

    private Integer transfer;

    private Integer userid;

    private Integer homeid;

    /**
     * 表明数据属于那个时间段, 比如2015-09, 只能是这个格式
     */
    private String bedate;

    private String pic;

    private String note;

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    public Double getCash() {
        return cash;
    }

    public void setCash(Double cash) {
        this.cash = cash;
    }

    public Date getProdate() {
        return prodate;
    }

    public void setProdate(Date prodate) {
        this.prodate = prodate;
    }

    public Integer getTransfer() {
        return transfer;
    }

    public void setTransfer(Integer transfer) {
        this.transfer = transfer;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getBedate() {
        return bedate;
    }

    public void setBedate(String bedate) {
        boolean result = RegexUtil.matcher("\\d{4}-\\d{2}", bedate);
        if (result) {
            this.bedate = bedate;
        } else {
            System.err.println("setBedate方法参数格式不符合");
            this.bedate = "0000-00";
        }
    }

    public String getPtname() {
        return ptname;
    }

    public void setPtname(String ptname) {
        this.ptname = ptname;
    }

    public Integer getHomeid() {
        return homeid;
    }

    public void setHomeid(Integer homeid) {
        this.homeid = homeid;
    }
}