package com.hafa.commons.util.enums;

/**
 * 表名枚举类
 */
public enum TableNameEnum {
    MHDATEBOOK("mh_datebook"),
    MHDICT("mh_dict"),
    MHEDUCATION("mh_education"),
    MHFINANCE("mh_finance"),
    MHFOLDER("mh_folder"),
    MHHOMEMEMBER("mh_home_member"),
    MHHOMES("mh_homes"),
    MHMEDIAS("mh_medias"),
    MHMENU("mh_menu"),
    MHNOTEBOOK("mh_notebook"),
    MHPWORDHIS("mh_pword_his"),
    MHTRAVEL("mh_travel"),
    MHUSERMEMBER("mh_user_member"),
    MHUSERMENU("mh_user_menu"),
    MHUSERS("mh_users"),
    MHUSERSINFO("mh_users_info"),
    MHWEBACCOUNT("mh_web_account"),
    MHWEBINFO("mh_webinfo"),
    MHWORKS("mh_works");

    private String tname;

    TableNameEnum(String table_name) {
        this.tname = table_name;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }
}
