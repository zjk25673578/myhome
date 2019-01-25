package com.hafa.webinfo.model;

import com.hafa.commons.entity.CommonModel;

public class MhWebinfo extends CommonModel {
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
