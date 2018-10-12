prompt PL/SQL Developer import file
prompt Created on 2018年10月13日 星期六 by Administrator
set feedback off
set define off
prompt Dropping SYSMENU...
drop table SYSMENU cascade constraints;
prompt Creating SYSMENU...
create table SYSMENU
(
  ids      NUMBER(8) not null,
  label    VARCHAR2(30),
  icon     VARCHAR2(30),
  parentid NUMBER(8)
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SYSMENU
  add constraint PK_SYSMENU primary key (IDS)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for SYSMENU...
alter table SYSMENU disable all triggers;
prompt Loading SYSMENU...
insert into SYSMENU (ids, label, icon, parentid)
values (42, '库存管理', 'layui-icon-home', 0);
insert into SYSMENU (ids, label, icon, parentid)
values (43, '客户信息', 'layui-icon-user', 0);
insert into SYSMENU (ids, label, icon, parentid)
values (44, '日程管理', 'layui-icon-date', 0);
insert into SYSMENU (ids, label, icon, parentid)
values (45, '会议管理', 'layui-icon-chat', 0);
insert into SYSMENU (ids, label, icon, parentid)
values (46, '系统设置', 'layui-icon-set', 0);
insert into SYSMENU (ids, label, icon, parentid)
values (47, '入库记录', 'layui-icon-star', 42);
insert into SYSMENU (ids, label, icon, parentid)
values (48, '出库记录', 'layui-icon-star-fill', 42);
insert into SYSMENU (ids, label, icon, parentid)
values (49, '库存盘点', 'layui-icon-form', 42);
insert into SYSMENU (ids, label, icon, parentid)
values (50, '潜在客户', 'layui-icon-username', 43);
insert into SYSMENU (ids, label, icon, parentid)
values (51, '新增客户', 'layui-icon-add-1', 43);
insert into SYSMENU (ids, label, icon, parentid)
values (52, 'A类客户', null, 43);
insert into SYSMENU (ids, label, icon, parentid)
values (53, 'B类客户', null, 43);
insert into SYSMENU (ids, label, icon, parentid)
values (54, 'C类客户', null, 43);
insert into SYSMENU (ids, label, icon, parentid)
values (55, 'D类客户', null, 43);
insert into SYSMENU (ids, label, icon, parentid)
values (56, '我的日程', 'layui-icon-table', 44);
insert into SYSMENU (ids, label, icon, parentid)
values (57, '日程提醒', 'layui-icon-tips', 44);
insert into SYSMENU (ids, label, icon, parentid)
values (58, '我的会议', 'layui-icon-group', 45);
insert into SYSMENU (ids, label, icon, parentid)
values (59, '会议提醒', 'layui-icon-reply-fill', 45);
insert into SYSMENU (ids, label, icon, parentid)
values (60, '更换皮肤', 'layui-icon-fonts-clear', 46);
insert into SYSMENU (ids, label, icon, parentid)
values (61, '自动退出时间', 'layui-icon-upload-circle', 46);
insert into SYSMENU (ids, label, icon, parentid)
values (62, '重新登陆', 'layui-icon-face-smile-fine', 46);
insert into SYSMENU (ids, label, icon, parentid)
values (63, '个人中心', 'layui-icon-friends', 46);
insert into SYSMENU (ids, label, icon, parentid)
values (64, '我参加的会议', 'layui-icon-release', 58);
insert into SYSMENU (ids, label, icon, parentid)
values (65, '我发起的会议', 'layui-icon-about', 58);
insert into SYSMENU (ids, label, icon, parentid)
values (66, '更换头像', 'layui-icon-edit', 63);
insert into SYSMENU (ids, label, icon, parentid)
values (67, '密码修改', 'layui-icon-survey', 63);
commit;
prompt 26 records loaded
prompt Enabling triggers for SYSMENU...
alter table SYSMENU enable all triggers;
set feedback on
set define on
prompt Done.
