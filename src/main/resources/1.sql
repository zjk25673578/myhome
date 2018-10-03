prompt PL/SQL Developer import file
prompt Created on 2018年10月3日 星期三 by Administrator
set feedback off
set define off
prompt Dropping EMP...
drop table EMP cascade constraints;
prompt Creating EMP...
create table EMP
(
  empno    NUMBER(8) not null,
  ename    VARCHAR2(50),
  sex      NUMBER(1),
  age      NUMBER(8),
  hiredate DATE,
  sal      NUMBER(7,2),
  comm     NUMBER(8)
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
alter table EMP
  add constraint PK_EMP primary key (EMPNO)
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

prompt Disabling triggers for EMP...
alter table EMP disable all triggers;
prompt Loading EMP...
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (1, 'Tom', 1, 35, to_date('04-09-2018', 'dd-mm-yyyy'), 800, 300);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (2, 'Jack', 1, 31, to_date('04-09-2018', 'dd-mm-yyyy'), 1200, null);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (3, '江一燕', 0, 22, to_date('04-09-2018', 'dd-mm-yyyy'), 8000, 500);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (4, '张家辉', 1, 38, to_date('04-09-2018', 'dd-mm-yyyy'), 5600, null);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (5, '陈小春', 1, 42, to_date('04-09-2018', 'dd-mm-yyyy'), 4500, null);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (6, '王祖蓝', 1, 1, to_date('02-10-2018', 'dd-mm-yyyy'), 1, 1);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (7, '王祖蓝', 1, 1, to_date('02-10-2018', 'dd-mm-yyyy'), 1, 1);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (8, '王祖蓝', 1, 1, to_date('02-10-2018', 'dd-mm-yyyy'), 1, 1);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (9, '王祖蓝222', 0, 1, to_date('03-10-2018', 'dd-mm-yyyy'), 1, 1);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (10, '王祖蓝ooo', 1, 1, to_date('02-10-2018', 'dd-mm-yyyy'), 1, 1);
insert into EMP (empno, ename, sex, age, hiredate, sal, comm)
values (11, '谢霆锋', 1, 45, to_date('02-10-2018', 'dd-mm-yyyy'), 1, 1);
commit;
prompt 11 records loaded
prompt Enabling triggers for EMP...
alter table EMP enable all triggers;
set feedback on
set define on
prompt Done.
