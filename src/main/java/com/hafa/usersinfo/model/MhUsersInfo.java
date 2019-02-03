package com.hafa.usersinfo.model;

import com.hafa.commons.entity.CommonEntity;

import java.util.Date;

public class MhUsersInfo extends CommonEntity {
    private Integer userid;

    private String feeling;

    private Integer blood;

    private Integer ansign;

    private Integer conste;

    private String favor;

    private String persign;

    private Integer highedu;

    private Date birthday;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getFeeling() {
        return feeling;
    }

    public void setFeeling(String feeling) {
        this.feeling = feeling;
    }

    public Integer getBlood() {
        return blood;
    }

    public void setBlood(Integer blood) {
        this.blood = blood;
    }

    public Integer getAnsign() {
        return ansign;
    }

    public void setAnsign(Integer ansign) {
        this.ansign = ansign;
    }

    public Integer getConste() {
        return conste;
    }

    public void setConste(Integer conste) {
        this.conste = conste;
    }

    public String getFavor() {
        return favor;
    }

    public void setFavor(String favor) {
        this.favor = favor;
    }

    public String getPersign() {
        return persign;
    }

    public void setPersign(String persign) {
        this.persign = persign;
    }

    public Integer getHighedu() {
        return highedu;
    }

    public void setHighedu(Integer highedu) {
        this.highedu = highedu;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
