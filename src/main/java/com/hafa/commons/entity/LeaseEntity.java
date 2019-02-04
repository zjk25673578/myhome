package com.hafa.commons.entity;

import com.hafa.finance.model.MhFinance;
import freemarker.template.utility.StringUtil;
import org.apache.commons.lang3.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 财政信息 -> 租住费用 -> 添加纪录
 * 页面表单数据模型
 */
public class LeaseEntity {
    private String water;
    private String gas;
    private String electric;
    private String warm;
    private String property;
    private Date createtime;

    private List<MhFinance> list;

    public String getWater() {
        return water;
    }

    public void setWater(String water) {
        this.water = water;
    }

    public String getGas() {
        return gas;
    }

    public void setGas(String gas) {
        this.gas = gas;
    }

    public String getElectric() {
        return electric;
    }

    public void setElectric(String electric) {
        this.electric = electric;
    }

    public String getWarm() {
        return warm;
    }

    public void setWarm(String warm) {
        this.warm = warm;
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    @Override
    public String toString() {
        return "LeaseEntity{" +
                "water=" + water +
                ", gas=" + gas +
                ", electric=" + electric +
                ", warm=" + warm +
                ", property=" + property +
                ", createtime=" + createtime +
                '}';
    }

}
