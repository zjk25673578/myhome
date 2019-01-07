package com.hafa.menu.model;

import com.hafa.commons.entity.CommonModel;

public class MhMenu extends CommonModel {
    private Integer parentid;

    private String menuname;

    private String murl;

    private String icon;

    private Integer sort;

    private Integer status;

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    public String getMenuname() {
        return menuname;
    }

    public void setMenuname(String menuname) {
        this.menuname = menuname;
    }

    public String getMurl() {
        return murl;
    }

    public void setMurl(String murl) {
        this.murl = murl;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "MhMenu{" +
                "parentid=" + parentid +
                ", menuname='" + menuname + '\'' +
                ", murl='" + murl + '\'' +
                ", icon='" + icon + '\'' +
                ", sort=" + sort +
                ", status=" + status +
                ", ids=" + getIds() +
                ", createtime=" + getCreatetime() +
                ", creator=" + getCreator() +
                ", createname='" + getCreatename() + '\'' +
                ", updatetime=" + getUpdatetime() +
                ", updator=" + getUpdator() +
                ", updatename='" + getUpdatename() + '\'' +
                '}';
    }
}
