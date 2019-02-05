package com.hafa.travel.model;

import com.hafa.commons.entity.CommonEntity;

public class MhTravel extends CommonEntity {
    private Integer groupid;

    private Integer userid;

    private String targets;

    private String detail;

    private Integer lastime;

    private Integer consume;

    private Integer isimpl;

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getTargets() {
        return targets;
    }

    public void setTargets(String targets) {
        this.targets = targets;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public Integer getLastime() {
        return lastime;
    }

    public void setLastime(Integer lastime) {
        this.lastime = lastime;
    }

    public Integer getConsume() {
        return consume;
    }

    public void setConsume(Integer consume) {
        this.consume = consume;
    }

    public Integer getIsimpl() {
        return isimpl;
    }

    public void setIsimpl(Integer isimpl) {
        this.isimpl = isimpl;
    }
}
