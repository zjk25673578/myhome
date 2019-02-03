package com.hafa.homemember.model;

import com.hafa.commons.entity.CommonEntity;

import java.util.Date;

public class MhHomeMember extends CommonEntity {
    private String mname;

    private Date mbirthday;

    private Short mage;

    private String backup1;

    private String backup2;

    private String backup3;

    private String backup4;

    private String backup5;

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public Date getMbirthday() {
        return mbirthday;
    }

    public void setMbirthday(Date mbirthday) {
        this.mbirthday = mbirthday;
    }

    public Short getMage() {
        return mage;
    }

    public void setMage(Short mage) {
        this.mage = mage;
    }

    public String getBackup1() {
        return backup1;
    }

    public void setBackup1(String backup1) {
        this.backup1 = backup1;
    }

    public String getBackup2() {
        return backup2;
    }

    public void setBackup2(String backup2) {
        this.backup2 = backup2;
    }

    public String getBackup3() {
        return backup3;
    }

    public void setBackup3(String backup3) {
        this.backup3 = backup3;
    }

    public String getBackup4() {
        return backup4;
    }

    public void setBackup4(String backup4) {
        this.backup4 = backup4;
    }

    public String getBackup5() {
        return backup5;
    }

    public void setBackup5(String backup5) {
        this.backup5 = backup5;
    }
}
