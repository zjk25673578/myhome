package com.hafa.users.model;

public class MhUsers {
    private Integer ids;

    private String uname;

    private String pword;

    private String rname;

    private String pic;

    private Byte userType;

    private Integer homeid;

    private Byte status;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

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

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public Byte getUserType() {
        return userType;
    }

    public void setUserType(Byte userType) {
        this.userType = userType;
    }

    @Override
    public String toString() {
        return "MhUsers{" +
                "ids=" + ids +
                ", uname='" + uname + '\'' +
                ", pword='" + pword + '\'' +
                ", rname='" + rname + '\'' +
                ", pic='" + pic + '\'' +
                ", userType=" + userType +
                ", homeid=" + homeid +
                ", status=" + status +
                '}';
    }
}
