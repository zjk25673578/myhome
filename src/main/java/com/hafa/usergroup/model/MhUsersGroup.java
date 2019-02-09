package com.hafa.usergroup.model;

import com.hafa.commons.entity.CommonEntity;

public class MhUsersGroup extends CommonEntity {

    private Integer master;

    private String groupcode;

    private String groupname;

    private Integer homeid;

    public Integer getMaster() {
        return master;
    }

    public void setMaster(Integer master) {
        this.master = master;
    }

    public String getGroupcode() {
        return groupcode;
    }

    public void setGroupcode(String groupcode) {
        this.groupcode = groupcode;
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname;
    }

    public Integer getHomeid() {
        return homeid;
    }

    public void setHomeid(Integer homeid) {
        this.homeid = homeid;
    }
}