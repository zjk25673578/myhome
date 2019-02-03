package com.hafa.usermember.model;

import com.hafa.commons.entity.CommonEntity;

public class MhUserMember extends CommonEntity {
    private Integer userid;

    private Integer memberid;

    private Integer relation;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getMemberid() {
        return memberid;
    }

    public void setMemberid(Integer memberid) {
        this.memberid = memberid;
    }

    public Integer getRelation() {
        return relation;
    }

    public void setRelation(Integer relation) {
        this.relation = relation;
    }
}
