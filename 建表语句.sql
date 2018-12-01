drop table if exists mh_datebook;

drop table if exists mh_dict;

drop table if exists mh_education;

drop table if exists mh_finance;

drop table if exists mh_folder;

drop table if exists mh_home_member;

drop table if exists mh_homes;

drop table if exists mh_medias;

drop table if exists mh_menu;

drop table if exists mh_notebook;

drop table if exists mh_pword_his;

drop table if exists mh_tableinfo;

drop table if exists mh_travel;

drop table if exists mh_user_member;

drop table if exists mh_user_menu;

drop table if exists mh_users;

drop table if exists mh_users_info;

drop table if exists mh_web_account;

drop table if exists mh_webinfo;

drop table if exists mh_works;

/*==============================================================*/
/* Table: mh_datebook                                           */
/*==============================================================*/
create table mh_datebook
(
   ids                  int(8) not null auto_increment comment '主键',
   userid               int(8) comment '用户id',
   title                varchar(100) comment '事件主题',
   detail               varchar(500) comment '事件详情',
   happend              datetime comment '发生日期',
   remarks              int(1) comment '重要等级',
   backup1              varchar(100) comment '备用字段1',
   backup2              varchar(100) comment '备用字段2',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_datebook comment '大事记表';

/*==============================================================*/
/* Table: mh_dict                                               */
/*==============================================================*/
create table mh_dict
(
   ids                  int(8) not null auto_increment comment '主键',
   diccode              int(8) comment '标识',
   dicvalue             varchar(100) comment '值',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_dict comment '数据字典表';

/*==============================================================*/
/* Table: mh_education                                          */
/*==============================================================*/
create table mh_education
(
   ids                  int(8) not null auto_increment comment '主键',
   userid               int(8) comment '用户id',
   school               varchar(50) comment '就读学校',
   major                varchar(50) comment '所学专业',
   clazz                varchar(20) comment '就读班级',
   place                varchar(20) comment '担任职务',
   startime             datetime comment '入学日期',
   endtime              datetime comment '毕业日期',
   photo                varchar(50) comment '毕业照',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_education comment '教育经历信息';

/*==============================================================*/
/* Table: mh_finance                                            */
/*==============================================================*/
create table mh_finance
(
   ids                  int(8) not null auto_increment comment '主键',
   userid               int(8) comment '用户id',
   ftype                int(1) comment '进出账',
   cash                 float(8,2) comment '金额',
   createtype           int(8) comment '产生类型',
   prodate              datetime comment '产生日期',
   reason               varchar(300) comment '产生事由',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_finance comment '财务信息记录表';

/*==============================================================*/
/* Table: mh_folder                                             */
/*==============================================================*/
create table mh_folder
(
   ids                  int(8) not null auto_increment comment '主键',
   parentid             int(8) comment '父级id',
   userid               int(8) comment '所属用户',
   foldername           varchar(50) comment '文件夹名称',
   status               int(1) comment '删除标志',
   primary key (ids)
);

alter table mh_folder comment '文件夹信息';

/*==============================================================*/
/* Table: mh_home_member                                        */
/*==============================================================*/
create table mh_home_member
(
   ids                  int(8) not null auto_increment comment '主键',
   mname                varchar(20) comment '姓名',
   mbirthday            datetime comment '生日',
   mage                 int(3) comment '年龄',
   backup1              varchar(20) comment '备用字段1',
   backup2              varchar(20) comment '备用字段2',
   backup3              varchar(20) comment '备用字段3',
   backup4              varchar(20) comment '备用字段4',
   backup5              varchar(20) comment '备用字段5',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_home_member comment '家庭成员信息表';

/*==============================================================*/
/* Table: mh_homes                                              */
/*==============================================================*/
create table mh_homes
(
   ids                  int(8) not null auto_increment comment '主键',
   hcode                varchar(100) comment '编号',
   hname                varchar(50) comment '名称',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_homes comment '家庭信息表';

/*==============================================================*/
/* Table: mh_medias                                             */
/*==============================================================*/
create table mh_medias
(
   ids                  int(8) not null auto_increment comment '主键',
   fname                varchar(50) comment '文件名称',
   filename             varchar(300) comment '文件原名称',
   filepath             varchar(100) comment '文件路径',
   filetype             int(1) comment '文件类型',
   comlevl              int(1) comment '公开级别',
   photos               int(8) comment '所属相册',
   filesize             varchar(100) comment '文件大小',
   descp                varchar(300) comment '描述',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_medias comment '用户文件表';

/*==============================================================*/
/* Table: mh_menu                                               */
/*==============================================================*/
create table mh_menu
(
   ids                  int(8) not null auto_increment comment '主键',
   parentid             int(8) comment '父级id',
   menuname             varchar(50) comment '菜单名称',
   murl                 varchar(150) comment '访问路径',
   icon                 varchar(50) comment '图标',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_menu comment '系统菜单表';

/*==============================================================*/
/* Table: mh_notebook                                           */
/*==============================================================*/
create table mh_notebook
(
   ids                  int(8) not null auto_increment comment '主键',
   conte                varchar(1000) comment '内容',
   touser               int(8) comment '提醒谁看',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_notebook comment '留言信息表';

/*==============================================================*/
/* Table: mh_pword_his                                          */
/*==============================================================*/
create table mh_pword_his
(
   ids                  int(8) not null auto_increment comment '主键',
   accid                int(8) comment '账号id',
   pword                varchar(100) comment '密码',
   updatetime           datetime comment '修改日期',
   primary key (ids)
);

alter table mh_pword_his comment '历史密码信息';

/*==============================================================*/
/* Table: mh_tableinfo                                          */
/*==============================================================*/
create table mh_tableinfo
(
   ids                  int(8) not null auto_increment comment '主键',
   tableid              int(8) comment '表主键',
   createtime           datetime comment '创建日期',
   creator              int(8) comment '创建人',
   createname           varchar(50) comment '创建人名称',
   updatetime           datetime comment '修改日期',
   updator              int(8) comment '修改人',
   updatename           varchar(50) comment '修改人名称',
   primary key (ids)
);

alter table mh_tableinfo comment '数据信息表';

/*==============================================================*/
/* Table: mh_travel                                             */
/*==============================================================*/
create table mh_travel
(
   ids                  int(8) not null auto_increment comment '主键',
   homeid               int(8) comment '家庭id',
   userid               int(8) comment '计划人',
   targets              varchar(50) comment '目的地',
   detail               varchar(500) comment '目标地详情',
   lastime              int(8) comment '计划时长',
   consume              int(8) comment '计划消费',
   isimpl               int(1) comment '是否实现',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_travel comment '家庭旅行计划表';

/*==============================================================*/
/* Table: mh_user_member                                        */
/*==============================================================*/
create table mh_user_member
(
   ids                  int(8) not null auto_increment comment '主键',
   userid               int(8) comment '系统用户表主键',
   memberid             int(8) comment '家庭成员表主键',
   relation             int(8) comment '成员关系',
   primary key (ids)
);

alter table mh_user_member comment '用户成员表';

/*==============================================================*/
/* Table: mh_user_menu                                          */
/*==============================================================*/
create table mh_user_menu
(
   ids                  int(8) not null auto_increment comment '主键',
   userid               int(8) comment '用户id',
   menuid               int(8) comment '菜单id',
   primary key (ids)
);

alter table mh_user_menu comment '用户菜单表';

/*==============================================================*/
/* Table: mh_users                                              */
/*==============================================================*/
create table mh_users
(
   ids                  int(8) not null auto_increment comment '主键',
   uname                varchar(50) comment '用户名',
   pword                varchar(50) comment '密码',
   rname                varchar(50) comment '姓名',
   pic                  varchar(100) comment '头像',
   homeid               int(8) comment '家庭id',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_users comment '系统用户表';

/*==============================================================*/
/* Table: mh_users_info                                         */
/*==============================================================*/
create table mh_users_info
(
   ids                  int(8) not null auto_increment comment '主键',
   userid               int(8) comment '用户id',
   feeling              varchar(50) comment '心情',
   blood                int(8) comment '血型',
   ansign               int(8) comment '属相',
   conste               int(8) comment '星座',
   favor                varchar(100) comment '爱好',
   persign              varchar(500) comment '个性签名',
   highedu              int(8) comment '最高学历',
   birthday             datetime comment '生日',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_users_info comment '用户信息表';

/*==============================================================*/
/* Table: mh_web_account                                        */
/*==============================================================*/
create table mh_web_account
(
   ids                  int(8) not null auto_increment comment '主键',
   webid                int(8) comment '网站id',
   accounts             varchar(100) comment '账号',
   pword                varchar(100) comment '密码',
   emails               varchar(200) comment '邮箱',
   mphone               varchar(20) comment '手机',
   note                 varchar(300) comment '备注',
   pwordhis             int(8) comment '密码历史id',
   userid               int(8) comment '用户id',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_web_account comment '网站账号信息表';

/*==============================================================*/
/* Table: mh_webinfo                                            */
/*==============================================================*/
create table mh_webinfo
(
   ids                  int(8) not null auto_increment comment '主键',
   webname              varchar(100) comment '网站名称',
   webadd               varchar(300) comment '网址',
   note                 varchar(300) comment '备注',
   status               int(1) comment '有效标志',
   primary key (ids)
);

alter table mh_webinfo comment '网站信息表';

/*==============================================================*/
/* Table: mh_works                                              */
/*==============================================================*/
create table mh_works
(
   ids                  int(8,0) not null auto_increment comment '主键',
   userid               int(8,0) comment '用户id',
   company              varchar(100) comment '公司名称',
   address              varchar(100) comment '公司所在地',
   comscale             varchar(50) comment '公司规模',
   industry             varchar(50) comment '所属行业',
   hiredate             datetime comment '入职日期',
   leavedate            datetime comment '离职日期',
   job                  varchar(50) comment '所属职位',
   sal                  int(8,0) comment '平均薪资(月薪)',
   status               int(1,0) comment '有效标志',
   primary key (ids)
);

alter table mh_works comment '工作经历记录';
