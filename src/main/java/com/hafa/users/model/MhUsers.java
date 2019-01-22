package com.hafa.users.model;

import com.hafa.commons.entity.CommonModel;

public class MhUsers extends CommonModel {
    private String uname;

    private String pword;

    private String rname;

    private String pic;

    private Integer userType;

    private Integer homeid;

    private Integer status;

    private Integer setups;

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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
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

    private static ThreadLocal<MhUsers> threadLocal = ThreadLocal.withInitial(() -> new MhUsers());

    public static void set(MhUsers user) {
        threadLocal.set(user);
    }

    public static MhUsers get() {
        return threadLocal.get();
    }

    @Override
    public String toString() {
        return "MhUsers{" +
                "uname='" + uname + '\'' +
                ", pword='" + pword + '\'' +
                ", rname='" + rname + '\'' +
                ", pic='" + pic + '\'' +
                ", userType=" + userType +
                ", homeid=" + homeid +
                ", status=" + status +
                ", setups=" + setups +
                '}';
    }
}
