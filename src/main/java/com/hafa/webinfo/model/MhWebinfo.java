package com.hafa.webinfo.model;

import com.hafa.commons.entity.CommonEntity;

public class MhWebinfo extends CommonEntity {
    private String webname;

    private String webadd;

    private String note;

    public String getWebname() {
        return webname;
    }

    public void setWebname(String webname) {
        this.webname = webname;
    }

    public String getWebadd() {
        return webadd;
    }

    public void setWebadd(String webadd) {
        this.webadd = webadd;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }
}
