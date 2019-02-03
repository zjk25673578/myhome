package com.hafa.folder.model;

import com.hafa.commons.entity.CommonEntity;

public class MhFolder extends CommonEntity {
    private Integer parentid;

    private Integer userid;

    private String foldername;

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getFoldername() {
        return foldername;
    }

    public void setFoldername(String foldername) {
        this.foldername = foldername;
    }
}
