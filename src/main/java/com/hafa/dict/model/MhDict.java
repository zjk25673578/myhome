package com.hafa.dict.model;

import com.hafa.commons.entity.CommonModel;

public class MhDict extends CommonModel {
    private Integer diccode;

    private String dicvalue;

    private Integer status;

    public Integer getDiccode() {
        return diccode;
    }

    public void setDiccode(Integer diccode) {
        this.diccode = diccode;
    }

    public String getDicvalue() {
        return dicvalue;
    }

    public void setDicvalue(String dicvalue) {
        this.dicvalue = dicvalue;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
