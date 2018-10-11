package com.mynba.model;

public class Sysmenu {
    private Integer ids;
    private String mname;
    private String icon;
    private Integer parentid;

    public Integer getIds() {
        return ids;
    }

    public void setIds(Integer ids) {
        this.ids = ids;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    @Override
    public String toString() {
        return "Sysmenu{" +
                "ids=" + ids +
                ", mname='" + mname + '\'' +
                ", icon='" + icon + '\'' +
                ", parentid=" + parentid +
                '}';
    }
}
