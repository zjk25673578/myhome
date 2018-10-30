drop table mh_datebook cascade constraints;

drop table mh_dict cascade constraints;

drop table mh_education cascade constraints;

drop table mh_finance cascade constraints;

drop table mh_folder cascade constraints;

drop table mh_home_member cascade constraints;

drop table mh_homes cascade constraints;

drop table mh_medias cascade constraints;

drop table mh_menu cascade constraints;

drop table mh_notebook cascade constraints;

drop table mh_pword_his cascade constraints;

drop table mh_tableinfo_date cascade constraints;

drop table mh_travel cascade constraints;

drop table mh_user_member cascade constraints;

drop table mh_user_menu cascade constraints;

drop table mh_users cascade constraints;

drop table mh_users_info cascade constraints;

drop table mh_web_account cascade constraints;

drop table mh_webinfo cascade constraints;

drop table mh_works cascade constraints;

/*==============================================================*/
/* Table: mh_datebook                                           */
/*==============================================================*/
create table mh_datebook
(
   ids                  number(8)            not null,
   userid               number(8),
   title                varchar2(100),
   detail               varchar2(500),
   happend              date,
   remarks              number(1),
   backup1              varchar2(100),
   backup2              varchar2(100),
   status               number(1),
   constraint PK_MH_DATEBOOK primary key (ids)
);

comment on table mh_datebook is
'大事记表';

comment on column mh_datebook.ids is
'主键';

comment on column mh_datebook.userid is
'用户id';

comment on column mh_datebook.title is
'事件主题';

comment on column mh_datebook.detail is
'事件详情';

comment on column mh_datebook.happend is
'发生日期';

comment on column mh_datebook.remarks is
'重要等级';

comment on column mh_datebook.backup1 is
'备用字段1';

comment on column mh_datebook.backup2 is
'备用字段2';

comment on column mh_datebook.status is
'有效标志';

/*==============================================================*/
/* Table: mh_dict                                               */
/*==============================================================*/
create table mh_dict
(
   ids                  number(8)            not null,
   diccode              number(8),
   dicvalue             varchar2(100),
   status               number(1),
   constraint PK_MH_DICT primary key (ids)
);

comment on table mh_dict is
'数据字典表';

comment on column mh_dict.ids is
'主键';

comment on column mh_dict.diccode is
'标识';

comment on column mh_dict.dicvalue is
'值';

comment on column mh_dict.status is
'有效标志';

/*==============================================================*/
/* Table: mh_education                                          */
/*==============================================================*/
create table mh_education
(
   ids                  number(8)            not null,
   userid               number(8),
   school               varchar2(50),
   major                varchar2(50),
   clazz                varchar2(20),
   place                varchar2(20),
   startime             date,
   endtime              date,
   photo                varchar2(50),
   status               number(1),
   constraint PK_MH_EDUCATION primary key (ids)
);

comment on table mh_education is
'教育经历信息';

comment on column mh_education.ids is
'主键';

comment on column mh_education.userid is
'用户id';

comment on column mh_education.school is
'就读学校';

comment on column mh_education.major is
'所学专业';

comment on column mh_education.clazz is
'就读班级';

comment on column mh_education.place is
'担任职务';

comment on column mh_education.startime is
'入学日期';

comment on column mh_education.endtime is
'毕业日期';

comment on column mh_education.photo is
'毕业照';

comment on column mh_education.status is
'有效标志';

/*==============================================================*/
/* Table: mh_finance                                            */
/*==============================================================*/
create table mh_finance
(
   ids                  number(8)            not null,
   userid               number(8),
   ftype                number(1),
   cash                 number(8,2),
   createtype           number(8),
   prodate              date,
   reason               varchar2(300),
   status               number(1),
   constraint PK_MH_FINANCE primary key (ids)
);

comment on table mh_finance is
'财务信息记录表';

comment on column mh_finance.ids is
'主键';

comment on column mh_finance.userid is
'用户id';

comment on column mh_finance.ftype is
'进出账';

comment on column mh_finance.cash is
'金额';

comment on column mh_finance.createtype is
'产生类型';

comment on column mh_finance.prodate is
'产生日期';

comment on column mh_finance.reason is
'产生事由';

comment on column mh_finance.status is
'有效标志';

/*==============================================================*/
/* Table: mh_folder                                             */
/*==============================================================*/
create table mh_folder
(
   ids                  number(8)            not null,
   parentid             number(8),
   userid               number(8),
   foldername           varchar2(50),
   status               number(1),
   constraint PK_MH_FOLDER primary key (ids)
);

comment on table mh_folder is
'文件夹信息';

comment on column mh_folder.ids is
'主键';

comment on column mh_folder.parentid is
'父级id';

comment on column mh_folder.userid is
'所属用户';

comment on column mh_folder.foldername is
'文件夹名称';

comment on column mh_folder.status is
'删除标志';

/*==============================================================*/
/* Table: mh_home_member                                        */
/*==============================================================*/
create table mh_home_member
(
   ids                  number(8)            not null,
   mname                varchar2(20),
   mbirthday            date,
   mage                 number(3),
   backup1              varchar2(20),
   backup2              varchar2(20),
   backup3              varchar2(20),
   backup4              varchar2(20),
   backup5              varchar2(20),
   status               number(1),
   constraint PK_MH_HOME_MEMBER primary key (ids)
);

comment on table mh_home_member is
'家庭成员信息表';

comment on column mh_home_member.ids is
'主键';

comment on column mh_home_member.mname is
'姓名';

comment on column mh_home_member.mbirthday is
'生日';

comment on column mh_home_member.mage is
'年龄';

comment on column mh_home_member.backup1 is
'备用字段1';

comment on column mh_home_member.backup2 is
'备用字段2';

comment on column mh_home_member.backup3 is
'备用字段3';

comment on column mh_home_member.backup4 is
'备用字段4';

comment on column mh_home_member.backup5 is
'备用字段5';

comment on column mh_home_member.status is
'有效标志';

/*==============================================================*/
/* Table: mh_homes                                              */
/*==============================================================*/
create table mh_homes
(
   ids                  number(8)            not null,
   hcode                varchar2(100),
   hname                varchar2(50),
   status               number(1),
   constraint PK_MH_HOMES primary key (ids)
);

comment on table mh_homes is
'家庭信息表';

comment on column mh_homes.ids is
'主键';

comment on column mh_homes.hcode is
'编号';

comment on column mh_homes.hname is
'名称';

comment on column mh_homes.status is
'有效标志';

/*==============================================================*/
/* Table: mh_medias                                             */
/*==============================================================*/
create table mh_medias
(
   ids                  number(8)            not null,
   fname                varchar2(50),
   filename             varchar2(300),
   filepath             varchar2(100),
   filetype             number(1),
   comlevl              number(1),
   photos               number(8),
   filesize             varchar2(100),
   descp                varchar2(300),
   status               number(1),
   constraint PK_MH_MEDIAS primary key (ids)
);

comment on table mh_medias is
'用户文件表';

comment on column mh_medias.ids is
'主键';

comment on column mh_medias.fname is
'文件名称';

comment on column mh_medias.filename is
'文件原名称';

comment on column mh_medias.filepath is
'文件路径';

comment on column mh_medias.filetype is
'文件类型';

comment on column mh_medias.comlevl is
'公开级别';

comment on column mh_medias.photos is
'所属相册';

comment on column mh_medias.filesize is
'文件大小';

comment on column mh_medias.descp is
'描述';

comment on column mh_medias.status is
'有效标志';

/*==============================================================*/
/* Table: mh_menu                                               */
/*==============================================================*/
create table mh_menu
(
   ids                  number(8)            not null,
   parentid             number(8),
   menuname             varchar2(50),
   murl                 varchar2(150),
   icon                 varchar2(50),
   status               number(1),
   constraint PK_MH_MENU primary key (ids)
);

comment on table mh_menu is
'系统菜单表';

comment on column mh_menu.ids is
'主键';

comment on column mh_menu.parentid is
'父级id';

comment on column mh_menu.menuname is
'菜单名称';

comment on column mh_menu.murl is
'访问路径';

comment on column mh_menu.icon is
'图标';

comment on column mh_menu.status is
'有效标志';

/*==============================================================*/
/* Table: mh_notebook                                           */
/*==============================================================*/
create table mh_notebook
(
   ids                  number(8)            not null,
   conte                varchar2(1000),
   touser               number(8),
   status               number(1),
   constraint PK_MH_NOTEBOOK primary key (ids)
);

comment on table mh_notebook is
'留言信息表';

comment on column mh_notebook.ids is
'主键';

comment on column mh_notebook.conte is
'内容';

comment on column mh_notebook.touser is
'提醒谁看';

comment on column mh_notebook.status is
'有效标志';

/*==============================================================*/
/* Table: mh_pword_his                                          */
/*==============================================================*/
create table mh_pword_his
(
   ids                  number(8)            not null,
   accid                number(8),
   pword                varchar2(100),
   updatetime           date,
   constraint PK_MH_PWORD_HIS primary key (ids)
);

comment on table mh_pword_his is
'历史密码信息';

comment on column mh_pword_his.ids is
'主键';

comment on column mh_pword_his.accid is
'账号id';

comment on column mh_pword_his.pword is
'密码';

comment on column mh_pword_his.updatetime is
'修改日期';

/*==============================================================*/
/* Table: mh_tableinfo_date                                     */
/*==============================================================*/
create table mh_tableinfo_date
(
   ids                  number(8)            not null,
   tableid              number(8),
   createtime           date,
   creator              number(8),
   createname           varchar2(50),
   updatetime           date,
   updator              number(8),
   updatename           varchar2(50),
   constraint PK_MH_TABLEINFO_DATE primary key (ids)
);

comment on table mh_tableinfo_date is
'数据信息表';

comment on column mh_tableinfo_date.ids is
'主键';

comment on column mh_tableinfo_date.tableid is
'表主键';

comment on column mh_tableinfo_date.createtime is
'创建日期';

comment on column mh_tableinfo_date.creator is
'创建人';

comment on column mh_tableinfo_date.createname is
'创建人名称';

comment on column mh_tableinfo_date.updatetime is
'修改日期';

comment on column mh_tableinfo_date.updator is
'修改人';

comment on column mh_tableinfo_date.updatename is
'修改人名称';

/*==============================================================*/
/* Table: mh_travel                                             */
/*==============================================================*/
create table mh_travel
(
   ids                  number(8)            not null,
   homeid               number(8),
   userid               number(8),
   targets              varchar2(50),
   detail               varchar2(500),
   lastime              number(8),
   consume              number(8),
   isimpl               number(1),
   status               number(1),
   constraint PK_MH_TRAVEL primary key (ids)
);

comment on table mh_travel is
'家庭旅行计划表';

comment on column mh_travel.ids is
'主键';

comment on column mh_travel.homeid is
'家庭id';

comment on column mh_travel.userid is
'计划人';

comment on column mh_travel.targets is
'目的地';

comment on column mh_travel.detail is
'目标地详情';

comment on column mh_travel.lastime is
'计划时长';

comment on column mh_travel.consume is
'计划消费';

comment on column mh_travel.isimpl is
'是否实现';

comment on column mh_travel.status is
'有效标志';

/*==============================================================*/
/* Table: mh_user_member                                        */
/*==============================================================*/
create table mh_user_member
(
   ids                  number(8)            not null,
   userid               number(8),
   memberid             number(8),
   relation             number(8),
   constraint PK_MH_USER_MEMBER primary key (ids)
);

comment on table mh_user_member is
'用户成员表';

comment on column mh_user_member.ids is
'主键';

comment on column mh_user_member.userid is
'系统用户表主键';

comment on column mh_user_member.memberid is
'家庭成员表主键';

comment on column mh_user_member.relation is
'成员关系';

/*==============================================================*/
/* Table: mh_user_menu                                          */
/*==============================================================*/
create table mh_user_menu
(
   ids                  number(8)            not null,
   userid               number(8),
   menuid               number(8),
   constraint PK_MH_USER_MENU primary key (ids)
);

comment on table mh_user_menu is
'用户菜单表';

comment on column mh_user_menu.ids is
'主键';

comment on column mh_user_menu.userid is
'用户id';

comment on column mh_user_menu.menuid is
'菜单id';

/*==============================================================*/
/* Table: mh_users                                              */
/*==============================================================*/
create table mh_users
(
   ids                  number(8)            not null,
   uname                varchar2(50),
   pword                varchar2(50),
   rname                varchar2(50),
   pic                  varchar2(100),
   homeid               number(8),
   status               number(1),
   constraint PK_MH_USERS primary key (ids)
);

comment on table mh_users is
'系统用户表';

comment on column mh_users.ids is
'主键';

comment on column mh_users.uname is
'用户名';

comment on column mh_users.pword is
'密码';

comment on column mh_users.rname is
'姓名';

comment on column mh_users.pic is
'头像';

comment on column mh_users.homeid is
'家庭id';

comment on column mh_users.status is
'有效标志';

/*==============================================================*/
/* Table: mh_users_info                                         */
/*==============================================================*/
create table mh_users_info
(
   ids                  number(8)            not null,
   userid               number(8),
   feeling              varchar2(50),
   blood                number(8),
   ansign               number(8),
   conste               number(8),
   favor                varchar2(100),
   persign              varchar2(500),
   highedu              number(8),
   birthday             date,
   status               number(1),
   constraint PK_MH_USERS_INFO primary key (ids)
);

comment on table mh_users_info is
'用户信息表';

comment on column mh_users_info.ids is
'主键';

comment on column mh_users_info.userid is
'用户id';

comment on column mh_users_info.feeling is
'心情';

comment on column mh_users_info.blood is
'血型';

comment on column mh_users_info.ansign is
'属相';

comment on column mh_users_info.conste is
'星座';

comment on column mh_users_info.favor is
'爱好';

comment on column mh_users_info.persign is
'个性签名';

comment on column mh_users_info.highedu is
'最高学历';

comment on column mh_users_info.birthday is
'生日';

comment on column mh_users_info.status is
'有效标志';

/*==============================================================*/
/* Table: mh_web_account                                        */
/*==============================================================*/
create table mh_web_account
(
   ids                  number(8)            not null,
   webid                number(8),
   accounts             varchar2(100),
   pword                varchar2(100),
   emails               varchar2(200),
   mphone               varchar2(20),
   note                 varchar2(300),
   pwordhis             number(8),
   userid               number(8),
   status               number(1),
   constraint PK_MH_WEB_ACCOUNT primary key (ids)
);

comment on table mh_web_account is
'网站账号信息表';

comment on column mh_web_account.ids is
'主键';

comment on column mh_web_account.webid is
'网站id';

comment on column mh_web_account.accounts is
'账号';

comment on column mh_web_account.pword is
'密码';

comment on column mh_web_account.emails is
'邮箱';

comment on column mh_web_account.mphone is
'手机';

comment on column mh_web_account.note is
'备注';

comment on column mh_web_account.pwordhis is
'密码历史id';

comment on column mh_web_account.userid is
'用户id';

comment on column mh_web_account.status is
'有效标志';

/*==============================================================*/
/* Table: mh_webinfo                                            */
/*==============================================================*/
create table mh_webinfo
(
   ids                  number(8)            not null,
   webname              varchar2(100),
   webadd               varchar2(300),
   note                 varchar2(300),
   status               number(1),
   constraint PK_MH_WEBINFO primary key (ids)
);

comment on table mh_webinfo is
'网站信息表';

comment on column mh_webinfo.ids is
'主键';

comment on column mh_webinfo.webname is
'网站名称';

comment on column mh_webinfo.webadd is
'网址';

comment on column mh_webinfo.note is
'备注';

comment on column mh_webinfo.status is
'有效标志';

/*==============================================================*/
/* Table: mh_works                                              */
/*==============================================================*/
create table mh_works
(
   ids                  number(8)            not null,
   userid               number(8),
   company              varchar2(100),
   address              varchar2(100),
   comscale             varchar2(50),
   industry             varchar2(50),
   hiredate             date,
   leavedate            date,
   job                  varchar2(50),
   sal                  number(8),
   status               number(1),
   constraint PK_MH_WORKS primary key (ids)
);

comment on table mh_works is
'工作经历记录';

comment on column mh_works.ids is
'主键';

comment on column mh_works.userid is
'用户id';

comment on column mh_works.company is
'公司名称';

comment on column mh_works.address is
'公司所在地';

comment on column mh_works.comscale is
'公司规模';

comment on column mh_works.industry is
'所属行业';

comment on column mh_works.hiredate is
'入职日期';

comment on column mh_works.leavedate is
'离职日期';

comment on column mh_works.job is
'所属职位';

comment on column mh_works.sal is
'平均薪资(月薪)';

comment on column mh_works.status is
'有效标志';
