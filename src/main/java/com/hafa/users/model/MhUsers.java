package com.hafa.users.model;

import com.hafa.commons.entity.CommonEntity;

/**
 * 系统用户实体类
 */
public class MhUsers extends CommonEntity {
    private String uname;

    private String pword;

    private String rname;

    private String pic; // 头像保存路径

    private Integer userType; // 用户类型: 1,超级管理员; 0:普通用户

    private Integer homeid;

    private Integer setups; // 1: 启用, 其他: 禁用

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getHomeid() {
        return homeid;
    }

    public void setHomeid(Integer homeid) {
        this.homeid = homeid;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Integer getSetups() {
        return setups;
    }

    public void setSetups(Integer setups) {
        this.setups = setups;
    }
}
