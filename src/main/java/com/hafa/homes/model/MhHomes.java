package com.hafa.homes.model;

import com.hafa.commons.entity.CommonEntity;

import java.util.Date;

public class MhHomes extends CommonEntity {
    private Integer groupid;

    private String hcode;

    private String community;

    private String hname;

    private String address;

    private Integer living;

    private Integer province;

    private Integer city;

    private Integer area;

    private Date begintime;

    private Date endtime;

    public String getHcode() {
        return hcode;
    }

    public void setHcode(String hcode) {
        this.hcode = hcode;
    }

    public String getCommunity() {
        return community;
    }

    public void setCommunity(String community) {
        this.community = community;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getProvince() {
        return province;
    }

    public void setProvince(Integer province) {
        this.province = province;
    }

    public Integer getCity() {
        return city;
    }

    public void setCity(Integer city) {
        this.city = city;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Date getBegintime() {
        return begintime;
    }

    public void setBegintime(Date begintime) {
        this.begintime = begintime;
    }

    public Date getEndtime() {
        return endtime;
    }

    public void setEndtime(Date endtime) {
        this.endtime = endtime;
    }

    public Integer getLiving() {
        return living;
    }

    public void setLiving(Integer living) {
        this.living = living;
    }

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    @Override
    public String toString() {
        return "MhHomes{" +
                "groupid=" + groupid +
                ", hcode='" + hcode + '\'' +
                ", community='" + community + '\'' +
                ", hname='" + hname + '\'' +
                ", address='" + address + '\'' +
                ", living=" + living +
                ", province=" + province +
                ", city=" + city +
                ", area=" + area +
                ", begintime=" + begintime +
                ", endtime=" + endtime +
                '}';
    }
}