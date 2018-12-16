/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : myhome

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-12-14 18:34:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `mh_datebook`
-- ----------------------------
DROP TABLE IF EXISTS `mh_datebook`;
CREATE TABLE `mh_datebook` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `title` varchar(100) DEFAULT NULL COMMENT '事件主题',
  `detail` varchar(500) DEFAULT NULL COMMENT '事件详情',
  `happend` datetime DEFAULT NULL COMMENT '发生日期',
  `remarks` int(4) DEFAULT NULL COMMENT '重要等级',
  `backup1` varchar(100) DEFAULT NULL COMMENT '备用字段1',
  `backup2` varchar(100) DEFAULT NULL COMMENT '备用字段2',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大事记表';

-- ----------------------------
-- Records of mh_datebook
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_dict`
-- ----------------------------
DROP TABLE IF EXISTS `mh_dict`;
CREATE TABLE `mh_dict` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `diccode` int(8) DEFAULT NULL COMMENT '标识',
  `dicvalue` varchar(100) DEFAULT NULL COMMENT '值',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of mh_dict
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_education`
-- ----------------------------
DROP TABLE IF EXISTS `mh_education`;
CREATE TABLE `mh_education` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `school` varchar(50) DEFAULT NULL COMMENT '就读学校',
  `major` varchar(50) DEFAULT NULL COMMENT '所学专业',
  `clazz` varchar(20) DEFAULT NULL COMMENT '就读班级',
  `place` varchar(20) DEFAULT NULL COMMENT '担任职务',
  `startime` datetime DEFAULT NULL COMMENT '入学日期',
  `endtime` datetime DEFAULT NULL COMMENT '毕业日期',
  `photo` varchar(50) DEFAULT NULL COMMENT '毕业照',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教育经历信息';

-- ----------------------------
-- Records of mh_education
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_finance`
-- ----------------------------
DROP TABLE IF EXISTS `mh_finance`;
CREATE TABLE `mh_finance` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `ftype` int(4) DEFAULT NULL COMMENT '进出账',
  `cash` decimal(8,2) DEFAULT NULL COMMENT '金额',
  `createtype` int(8) DEFAULT NULL COMMENT '产生类型',
  `prodate` datetime DEFAULT NULL COMMENT '产生日期',
  `reason` varchar(300) DEFAULT NULL COMMENT '产生事由',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='财务信息记录表';

-- ----------------------------
-- Records of mh_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_folder`
-- ----------------------------
DROP TABLE IF EXISTS `mh_folder`;
CREATE TABLE `mh_folder` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parentid` int(8) DEFAULT NULL COMMENT '父级id',
  `userid` int(8) DEFAULT NULL COMMENT '所属用户',
  `foldername` varchar(50) DEFAULT NULL COMMENT '文件夹名称',
  `status` int(4) DEFAULT NULL COMMENT '删除标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件夹信息';

-- ----------------------------
-- Records of mh_folder
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_homes`
-- ----------------------------
DROP TABLE IF EXISTS `mh_homes`;
CREATE TABLE `mh_homes` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hcode` varchar(100) DEFAULT NULL COMMENT '编号',
  `hname` varchar(50) DEFAULT NULL COMMENT '名称',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家庭信息表';

-- ----------------------------
-- Records of mh_homes
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_home_member`
-- ----------------------------
DROP TABLE IF EXISTS `mh_home_member`;
CREATE TABLE `mh_home_member` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mbirthday` datetime DEFAULT NULL COMMENT '生日',
  `mage` decimal(3,0) DEFAULT NULL COMMENT '年龄',
  `backup1` varchar(20) DEFAULT NULL COMMENT '备用字段1',
  `backup2` varchar(20) DEFAULT NULL COMMENT '备用字段2',
  `backup3` varchar(20) DEFAULT NULL COMMENT '备用字段3',
  `backup4` varchar(20) DEFAULT NULL COMMENT '备用字段4',
  `backup5` varchar(20) DEFAULT NULL COMMENT '备用字段5',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家庭成员信息表';

-- ----------------------------
-- Records of mh_home_member
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_medias`
-- ----------------------------
DROP TABLE IF EXISTS `mh_medias`;
CREATE TABLE `mh_medias` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fname` varchar(50) DEFAULT NULL COMMENT '文件名称',
  `filename` varchar(300) DEFAULT NULL COMMENT '文件原名称',
  `filepath` varchar(100) DEFAULT NULL COMMENT '文件路径',
  `filetype` int(4) DEFAULT NULL COMMENT '文件类型',
  `comlevl` int(4) DEFAULT NULL COMMENT '公开级别',
  `photos` int(8) DEFAULT NULL COMMENT '所属相册',
  `filesize` varchar(100) DEFAULT NULL COMMENT '文件大小',
  `descp` varchar(300) DEFAULT NULL COMMENT '描述',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户文件表';

-- ----------------------------
-- Records of mh_medias
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mh_menu`;
CREATE TABLE `mh_menu` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parentid` int(8) DEFAULT NULL COMMENT '父级id',
  `menuname` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `murl` varchar(150) DEFAULT NULL COMMENT '访问路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of mh_menu
-- ----------------------------
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('1', '0', '我', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('2', '0', '我的空间', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('3', '1', '网站账号管理', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('4', '1', '我的家庭成员', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('5', '1', '我的朋友圈', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('6', '1', '日记本', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('7', '0', '我家', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('8', '7', '相册', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('9', '7', '家庭留言本', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('10', '0', '大事记', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('11', '0', '财政信息', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('12', '11', '收入记录', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('13', '11', '支出记录', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('14', '11', '月统计', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('15', '0', '旅行计划', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('16', '15', '旅行记录', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('17', '15', '旅行日记', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('18', '0', '我的奏折', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('19', '0', '系统设置', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('20', '19', '菜单管理', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('21', '19', '用户管理', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('22', '19', '角色管理', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('23', '19', '流程定义', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('24', '19', '测试多级', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('25', '24', '菜单1', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('26', '24', '菜单2', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('27', '26', '菜单2-1', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('28', '26', '菜单2-2', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('29', '28', '菜单2-2-1', null, null, '1');
INSERT INTO `mh_menu` (ids, parentid, menuname, murl, icon, status) VALUES ('30', '27', '菜单2-1-1', null, null, '1');

-- ----------------------------
-- Table structure for `mh_notebook`
-- ----------------------------
DROP TABLE IF EXISTS `mh_notebook`;
CREATE TABLE `mh_notebook` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `conte` varchar(1000) DEFAULT NULL COMMENT '内容',
  `touser` int(8) DEFAULT NULL COMMENT '提醒谁看',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言信息表';

-- ----------------------------
-- Records of mh_notebook
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_pword_his`
-- ----------------------------
DROP TABLE IF EXISTS `mh_pword_his`;
CREATE TABLE `mh_pword_his` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `accid` int(8) DEFAULT NULL COMMENT '账号id',
  `pword` varchar(100) DEFAULT NULL COMMENT '密码',
  `changetime` datetime DEFAULT NULL COMMENT '密码修改日期',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='历史密码信息';

-- ----------------------------
-- Records of mh_pword_his
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_travel`
-- ----------------------------
DROP TABLE IF EXISTS `mh_travel`;
CREATE TABLE `mh_travel` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `homeid` int(8) DEFAULT NULL COMMENT '家庭id',
  `userid` int(8) DEFAULT NULL COMMENT '计划人',
  `targets` varchar(50) DEFAULT NULL COMMENT '目的地',
  `detail` varchar(500) DEFAULT NULL COMMENT '目标地详情',
  `lastime` int(8) DEFAULT NULL COMMENT '计划时长',
  `consume` int(8) DEFAULT NULL COMMENT '计划消费',
  `isimpl` int(4) DEFAULT NULL COMMENT '是否实现',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家庭旅行计划表';

-- ----------------------------
-- Records of mh_travel
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_users`
-- ----------------------------
DROP TABLE IF EXISTS `mh_users`;
CREATE TABLE `mh_users` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `pword` varchar(50) DEFAULT NULL COMMENT '密码',
  `rname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pic` varchar(100) DEFAULT NULL COMMENT '头像',
  `userType` int(4) DEFAULT NULL COMMENT '用户类型: 1,超级管理员; 0:普通用户',
  `homeid` int(8) DEFAULT NULL COMMENT '家庭id',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of mh_users
-- ----------------------------
INSERT INTO `mh_users` (ids, uname, pword, rname, pic, userType, homeid, status) VALUES ('1', 'zhaodashuai', '123456', '赵大帅', null, '1', null, '1');

-- ----------------------------
-- Table structure for `mh_users_info`
-- ----------------------------
DROP TABLE IF EXISTS `mh_users_info`;
CREATE TABLE `mh_users_info` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `feeling` varchar(50) DEFAULT NULL COMMENT '心情',
  `blood` int(8) DEFAULT NULL COMMENT '血型',
  `ansign` int(8) DEFAULT NULL COMMENT '属相',
  `conste` int(8) DEFAULT NULL COMMENT '星座',
  `favor` varchar(100) DEFAULT NULL COMMENT '爱好',
  `persign` varchar(500) DEFAULT NULL COMMENT '个性签名',
  `highedu` int(8) DEFAULT NULL COMMENT '最高学历',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of mh_users_info
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_user_member`
-- ----------------------------
DROP TABLE IF EXISTS `mh_user_member`;
CREATE TABLE `mh_user_member` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '系统用户表主键',
  `memberid` int(8) DEFAULT NULL COMMENT '家庭成员表主键',
  `relation` int(8) DEFAULT NULL COMMENT '成员关系',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户成员表';

-- ----------------------------
-- Records of mh_user_member
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_user_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mh_user_menu`;
CREATE TABLE `mh_user_menu` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `menuid` int(8) DEFAULT NULL COMMENT '菜单id',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户菜单表';

-- ----------------------------
-- Records of mh_user_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_webinfo`
-- ----------------------------
DROP TABLE IF EXISTS `mh_webinfo`;
CREATE TABLE `mh_webinfo` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `webname` varchar(100) DEFAULT NULL COMMENT '网站名称',
  `webadd` varchar(300) DEFAULT NULL COMMENT '网址',
  `note` varchar(300) DEFAULT NULL COMMENT '备注',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站信息表';

-- ----------------------------
-- Records of mh_webinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_web_account`
-- ----------------------------
DROP TABLE IF EXISTS `mh_web_account`;
CREATE TABLE `mh_web_account` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `webid` int(8) DEFAULT NULL COMMENT '网站id',
  `accounts` varchar(100) DEFAULT NULL COMMENT '账号',
  `pword` varchar(100) DEFAULT NULL COMMENT '密码',
  `emails` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `mphone` varchar(20) DEFAULT NULL COMMENT '手机',
  `note` varchar(300) DEFAULT NULL COMMENT '备注',
  `pwordhis` int(8) DEFAULT NULL COMMENT '密码历史id',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站账号信息表';

-- ----------------------------
-- Records of mh_web_account
-- ----------------------------

-- ----------------------------
-- Table structure for `mh_works`
-- ----------------------------
DROP TABLE IF EXISTS `mh_works`;
CREATE TABLE `mh_works` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `company` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `address` varchar(100) DEFAULT NULL COMMENT '公司所在地',
  `comscale` varchar(50) DEFAULT NULL COMMENT '公司规模',
  `industry` varchar(50) DEFAULT NULL COMMENT '所属行业',
  `hiredate` datetime DEFAULT NULL COMMENT '入职日期',
  `leavedate` datetime DEFAULT NULL COMMENT '离职日期',
  `job` varchar(50) DEFAULT NULL COMMENT '所属职位',
  `sal` int(8) DEFAULT NULL COMMENT '平均薪资(月薪)',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作经历记录';

-- ----------------------------
-- Records of mh_works
-- ----------------------------