/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : myhome

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-02-05 16:43:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for mh_datebook
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
-- Table structure for mh_dict
-- ----------------------------
DROP TABLE IF EXISTS `mh_dict`;
CREATE TABLE `mh_dict` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parentid` int(8) DEFAULT NULL,
  `diccode` varchar(50) DEFAULT NULL COMMENT '标识',
  `dicvalue` varchar(100) DEFAULT NULL COMMENT '值',
  `desp` varchar(100) DEFAULT NULL COMMENT '描述',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of mh_dict
-- ----------------------------
INSERT INTO `mh_dict` VALUES ('14', '53', 'xingbie', '男', '性别', '1', '2019-01-07 14:59:03', '1', 'admin', '2019-01-31 22:06:56', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('15', '53', 'xingbie', '女', '性别', '1', '2019-01-07 15:20:22', '1', 'admin', '2019-01-31 22:10:43', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('16', null, 'xingzuo', '天秤座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('17', null, 'xingzuo', '金牛座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('18', null, 'xingzuo', '摩羯座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('19', null, 'xingzuo', '天蝎座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('20', null, 'xingzuo', '水瓶座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('21', null, 'xingzuo', '巨蟹座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('22', null, 'xingzuo', '白羊座', '星座', '1', '2019-01-07 15:21:43', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('23', null, 'xingzuo', '狮子座', '星座', '1', '2019-01-07 15:21:43', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('24', null, 'xingzuo', '处女座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('25', null, 'xingzuo', '双鱼座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('26', null, 'xingzuo', '射手座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('27', null, 'xingzuo', '双子座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('28', '54', 'caiwuleibieout', '水费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:26:26', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('29', '54', 'caiwuleibieout', '电费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:26:31', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('30', '54', 'caiwuleibieout', '煤气费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:26:39', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('31', '56', 'caiwuleibieout', '生活费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:30:13', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('32', '56', 'caiwuleibieout', '其他', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:30:17', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('33', '57', 'caiwuleibiein', '工资', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:43:16', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('34', '60', 'caiwuleibiein', '彩票', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:46:34', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('35', '59', 'caiwuleibiein', '啃老', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:28', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('36', '59', 'caiwuleibiein', '赌博', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:40', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('37', '59', 'caiwuleibiein', '红包', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:45', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('38', '59', 'caiwuleibiein', '地上捡的', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:52', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('39', '53', 'xingbie', '不男不女', '性别', '1', '2019-01-22 21:46:12', '1', 'admin', '2019-01-31 22:14:29', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('40', '53', 'xingbie', '未知', '性别', '1', '2019-01-22 21:46:12', '1', 'admin', '2019-01-31 22:15:12', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('41', '53', 'xingbie', '待定', '性别', '1', '2019-01-22 21:46:12', '1', 'admin', '2019-01-31 22:15:17', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('42', null, 'xueli', '大专', '学历', '1', '2019-01-25 21:41:36', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('43', null, 'xueli', '本科', '学历', '1', '2019-01-25 21:41:36', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('44', null, 'xueli', '高中', '学历', '1', '2019-01-25 21:41:36', '1', 'admin', '2019-01-27 01:19:24', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('45', '54', 'caiwuleibieout', '物业费', '财务类别(支出)', '1', '2019-01-25 21:47:52', '1', 'admin', '2019-01-31 22:27:36', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('46', null, 'xueli', '研究生(硕士)', '学历', '1', '2019-01-27 01:20:28', '1', 'admin', '2019-01-27 01:20:52', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('47', null, 'xueli', '博士', '学历', '1', '2019-01-27 01:20:28', '1', 'admin', '2019-01-27 01:21:04', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('48', null, 'xueli', '博士后', '学历', '1', '2019-01-27 01:20:28', '1', 'admin', '2019-01-27 01:20:59', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('49', null, 'xueli', '胎教', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('50', null, 'xueli', '幼儿园', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('51', null, 'xueli', '小学', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('52', null, 'xueli', '初中', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('53', '0', 'xingbie', '性别', '父级数据', '1', '2019-01-31 21:33:44', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('54', '0', 'zuzhufeiyong', '租住费用', '水电气暖', '1', '2019-01-31 22:25:26', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('55', '54', 'caiwuleibieout', '暖气费', '财务类别(支出)', '1', '2019-01-31 22:27:19', '1', 'admin', '2019-01-31 22:27:25', '1', 'admin');
INSERT INTO `mh_dict` VALUES ('56', '0', 'richangxiaofei', '日常消费', '买菜, 吃饭, 各种娱乐活动', '1', '2019-01-31 22:29:13', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('57', '0', 'wendingshouru', '稳定收入', '工资, 理财类', '1', '2019-01-31 22:32:05', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('58', '57', 'caiwuleibiein', '理财保险', '财务类别(收入)', '1', '2019-01-31 22:43:58', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('59', '0', 'buyizhicai', '不义之财', '瞎写的测试数据', '1', '2019-01-31 22:44:44', '1', 'admin', null, null, null);
INSERT INTO `mh_dict` VALUES ('60', '0', 'zuomeng', '梦想', '呵呵呵呵....', '1', '2019-01-31 22:46:26', '1', 'admin', null, null, null);

-- ----------------------------
-- Table structure for mh_education
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
-- Table structure for mh_finance
-- ----------------------------
DROP TABLE IF EXISTS `mh_finance`;
CREATE TABLE `mh_finance` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(8) DEFAULT NULL COMMENT '用户id',
  `ftype` int(4) DEFAULT NULL COMMENT '进出账(0:出账, 1:进账)',
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='财务信息记录表';

-- ----------------------------
-- Records of mh_finance
-- ----------------------------
INSERT INTO `mh_finance` VALUES ('1', '1', '0', '230.00', '31', '2018-09-17 21:02:04', '花钱好多啊', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 22:38:54', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('2', '1', '0', '10.00', '45', '2006-07-14 04:03:01', '买糖吃了', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 22:39:16', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('3', '1', '0', '15.00', '32', '2019-01-23 21:44:31', '买屎吃了', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 21:54:11', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('4', '1', '0', '12.00', '30', '2019-01-27 21:04:39', '没水喝了', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 22:39:04', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('5', '1', '1', '180.00', '33', '2018-09-17 21:02:04', '无', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 22:38:38', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('6', '1', '1', '50.00', '34', '2019-01-28 22:35:51', '呵呵', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 22:37:02', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('7', '1', '1', '10.00', '38', '2018-11-14 21:44:31', '嘿嘿嘿', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-28 22:38:12', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('8', '1', '1', '1000.00', '58', '2019-01-27 21:04:39', '结账啦', '1', '2019-01-23 21:44:31', '1', 'admin', '2019-01-31 23:35:46', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('9', '1', '0', '12.00', '31', '2018-12-02 00:00:00', 'what ?!', '1', '2019-02-04 10:28:10', '1', 'admin', '2019-02-04 16:09:16', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('10', '1', '0', '34.80', '30', '2018-12-02 00:00:00', '租住房煤气(天然气)缴费', '1', '2019-02-04 10:28:10', '1', 'admin', '2019-02-04 17:02:01', '1', 'admin');
INSERT INTO `mh_finance` VALUES ('11', '1', '0', '23.00', '29', '2018-12-02 00:00:00', '租住房用电量缴费', '1', '2019-02-04 10:28:10', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('12', '1', '0', '45.00', '55', '2018-12-02 00:00:00', '租住房暖气缴费', '1', '2019-02-04 10:28:10', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('13', '1', '0', '33.00', '45', '2018-12-02 00:00:00', '租住房物业缴费', '1', '2019-02-04 10:28:10', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('14', '1', '0', '11.00', '28', '2018-12-25 00:00:00', '租住房用水缴费', '1', '2019-02-04 10:35:26', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('15', '1', '0', '33.00', '30', '2018-12-25 00:00:00', '租住房煤气(天然气)缴费', '1', '2019-02-04 10:35:26', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('16', '1', '0', '22.00', '29', '2018-12-25 00:00:00', '租住房用电量缴费', '1', '2019-02-04 10:35:26', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('17', '1', '0', '44.00', '55', '2018-12-25 00:00:00', '租住房暖气缴费', '1', '2019-02-04 10:35:26', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('18', '1', '0', '55.00', '45', '2018-12-25 00:00:00', '租住房物业缴费', '1', '2019-02-04 10:35:26', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('19', '1', '1', '100.00', '37', '2019-02-04 00:00:00', '过年给的红包', '1', '2019-02-04 16:34:29', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('20', '1', '1', '7100.00', '33', '2019-02-04 00:00:00', '正常发工资', '1', '2019-02-04 16:45:17', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('21', '1', '1', '7000.00', '33', '2019-02-04 00:00:00', '又发工资了', '1', '2019-02-04 16:45:49', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('22', '1', '0', '12.50', '31', '2019-02-04 00:00:00', '买菜买菜', '1', '2019-02-04 17:04:29', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('23', '1', '1', '150.00', '37', '2019-02-04 00:00:00', '又给了个红包', '1', '2019-02-04 17:05:23', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('24', '1', '0', '0.00', '28', '2019-02-05 14:30:34', '租住房用水缴费', '1', '2019-02-05 14:30:34', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('25', '1', '0', '0.00', '30', '2019-02-05 14:30:34', '租住房煤气(天然气)缴费', '1', '2019-02-05 14:30:34', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('26', '1', '0', '0.00', '29', '2019-02-05 14:30:34', '租住房用电量缴费', '1', '2019-02-05 14:30:34', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('27', '1', '0', '0.00', '55', '2019-02-05 14:30:34', '租住房暖气缴费', '1', '2019-02-05 14:30:34', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('28', '1', '0', '0.00', '45', '2019-02-05 14:30:34', '租住房物业缴费', '1', '2019-02-05 14:30:34', '1', 'admin', null, null, null);

-- ----------------------------
-- Table structure for mh_folder
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
-- Table structure for mh_homes
-- ----------------------------
DROP TABLE IF EXISTS `mh_homes`;
CREATE TABLE `mh_homes` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hcode` varchar(100) DEFAULT NULL COMMENT '使用加密后的字符串生成',
  `community` varchar(50) DEFAULT NULL COMMENT '小区名称',
  `hname` varchar(50) DEFAULT NULL COMMENT '名称',
  `address` varchar(300) DEFAULT NULL COMMENT '小区所在的详细地址(几号楼等...)',
  `living` int(4) DEFAULT NULL COMMENT '启用标志, 当时是否正在使用',
  `province` int(11) DEFAULT NULL COMMENT '省',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `area` int(11) DEFAULT NULL COMMENT '区县',
  `begintime` datetime DEFAULT NULL COMMENT '开始入住的时间',
  `endtime` datetime DEFAULT NULL COMMENT '离开的时间',
  `status` int(11) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录住房和租房信息的';

-- ----------------------------
-- Records of mh_homes
-- ----------------------------

-- ----------------------------
-- Table structure for mh_home_member
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
-- Table structure for mh_house_outlay
-- ----------------------------
DROP TABLE IF EXISTS `mh_house_outlay`;
CREATE TABLE `mh_house_outlay` (
  `ids` int(8) NOT NULL AUTO_INCREMENT,
  `homeid` int(8) DEFAULT NULL COMMENT '居住的详细地址等情况',
  `groupid` int(8) DEFAULT NULL COMMENT '该用户组下的所有用户都能看到',
  `ptype` int(8) DEFAULT NULL COMMENT '关联字典表',
  `cash` double(10,2) DEFAULT NULL,
  `prodate` datetime DEFAULT NULL,
  `transfer` int(4) DEFAULT NULL COMMENT '1:转账; 2:现金',
  `userid` int(8) DEFAULT NULL,
  `pic` varchar(300) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `creator` int(8) DEFAULT NULL,
  `createname` varchar(50) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `updator` int(8) DEFAULT NULL,
  `updatename` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='租住房缴费信息表, 基本信息包含房租(房贷), 水费, 物业费, 电费, 取暖费, 煤气费, 装修购置费等';

-- ----------------------------
-- Records of mh_house_outlay
-- ----------------------------

-- ----------------------------
-- Table structure for mh_medias
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
-- Table structure for mh_menu
-- ----------------------------
DROP TABLE IF EXISTS `mh_menu`;
CREATE TABLE `mh_menu` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parentid` int(8) DEFAULT NULL COMMENT '父级id',
  `menuname` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `murl` varchar(150) DEFAULT NULL COMMENT '访问路径',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int(5) DEFAULT NULL COMMENT '排序依据',
  `isparent` int(8) DEFAULT NULL COMMENT '是否父级菜单(1: 是, 0:否)',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of mh_menu
-- ----------------------------
INSERT INTO `mh_menu` VALUES ('1', '0', '我', '', 'fa fa-drupal', '1', '1', '1', null, null, null, '2018-12-26 22:03:34', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('2', '0', '我的空间', '', 'fa fa-user-secret', '2', '1', '1', null, null, null, '2019-01-09 22:47:46', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('3', '1', '网站账号管理', '', 'fa fa-internet-explorer', '1', '0', '1', null, null, null, '2019-01-07 13:39:10', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('4', '1', '我的家庭成员', '', 'fa fa-users', '4', '0', '1', null, null, null, '2018-12-23 13:10:55', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('5', '1', '我的朋友圈', '', 'fa fa-user-circle-o', '3', '0', '1', null, null, null, '2018-12-23 13:10:51', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('6', '1', '日记本', '', 'fa fa-odnoklassniki-square', '2', '0', '1', null, null, null, '2019-01-07 13:39:21', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('7', '0', '我家', '', 'fa fa-s15', '3', '1', '1', null, null, null, '2018-12-30 22:15:01', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('8', '7', '相册', '', 'fa fa-photo', '1', '0', '1', null, null, null, '2018-12-23 13:11:13', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('9', '7', '家庭留言本', '', 'fa fa-rocket', '3', '0', '1', null, null, null, '2019-02-04 16:26:11', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('10', '0', '大事记', '', 'fa fa-tags', '4', '0', '1', null, null, null, '2018-12-23 12:54:53', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('11', '0', '财政信息', '', 'fa fa-database', '5', '1', '1', null, null, null, '2019-01-09 22:47:52', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('12', '11', '收入记录', '/finance/in', 'fa fa-wheelchair', '2', '0', '1', null, null, null, '2019-01-28 22:08:33', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('13', '11', '支出记录', '/finance/out', 'fa fa-wheelchair-alt', '3', '0', '1', null, null, null, '2019-01-28 22:08:41', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('14', '11', '统计视图', '/finance/view', 'fa fa-line-chart', '1', '0', '1', null, null, null, '2019-01-28 22:44:57', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('15', '0', '旅行计划', '', 'fa fa-train', '6', '1', '1', null, null, null, '2018-12-23 12:54:56', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('16', '15', '旅行记录', '', 'fa fa-map', '2', '0', '1', null, null, null, '2018-12-23 13:11:42', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('17', '15', '旅行日记', '', 'fa fa-file-text', '1', '0', '1', null, null, null, '2018-12-23 13:11:38', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('18', '0', '我的奏折', '', 'fa fa-black-tie', '7', '0', '1', null, null, null, '2019-01-07 13:39:46', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('19', '0', '系统设置', 'aaabbb', 'fa fa-gears', '8', '1', '1', null, null, null, '2018-12-23 22:53:27', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('20', '19', '菜单管理', '/mhmenu/list', 'fa fa-list', '2', '0', '1', null, null, null, '2018-12-23 13:12:06', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('21', '19', '用户管理', '/mhusers/list', 'fa fa-grav', '1', '0', '1', null, null, null, '2018-12-24 22:23:38', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('23', '19', '流程定义', '', 'fa fa-ravelry', '5', '0', '1', null, null, null, '2018-12-24 22:25:08', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('31', '19', '字典管理', '/dict/list', 'fa fa-paper-plane', '4', '0', '1', null, null, null, '2019-01-03 23:22:35', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('32', '19', '测试页面', '/mh/test', 'fa fa-ambulance', '6', '0', '1', null, null, null, null, null, null);
INSERT INTO `mh_menu` VALUES ('38', '2', '新的菜单', '', 'fa fa-circle', '1', null, '0', '2019-01-07 23:09:49', '1', 'admin', '2019-01-09 22:47:40', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('39', '38', '新的菜单', null, 'fa fa-circle', null, null, '0', '2019-01-09 22:26:36', '1', 'admin', '2019-01-09 22:47:37', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('40', '39', '新的菜单', null, 'fa fa-circle', null, null, '0', '2019-01-09 22:27:30', '1', 'admin', '2019-01-09 22:47:33', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('41', '2', '新的菜单2222', '', 'fa fa-circle', '3', null, '0', '2019-01-09 23:17:14', '1', 'admin', '2019-01-25 21:38:59', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('42', '2', '新的菜单', '', 'fa fa-circle', '1', null, '0', '2019-01-25 21:38:48', '1', 'admin', '2019-01-25 21:39:07', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('43', '7', '租住房费用', '/finance/add', 'fa fa-cny', '2', null, '1', '2019-01-26 21:04:36', '1', 'admin', '2019-02-04 16:26:46', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('44', '2', '新的菜单33331', 'fgffgh', 'fa fa-circle', '78', null, '0', '2019-01-27 19:48:46', '1', 'admin', '2019-01-27 20:12:33', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('45', '43', '生活缴费', '/finance/add', 'fa fa-coffee', '1', null, '0', '2019-01-31 22:53:26', '1', 'admin', '2019-01-31 23:02:51', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('46', '43', '日常支出', '/finance/add', 'fa fa-glass', '2', null, '0', '2019-01-31 22:53:57', '1', 'admin', '2019-01-31 23:02:55', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('47', '7', '新的菜单', '', 'fa fa-circle', null, null, '0', '2019-02-03 12:42:38', '1', 'admin', '2019-02-03 12:44:26', '1', 'admin');

-- ----------------------------
-- Table structure for mh_notebook
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
-- Table structure for mh_pword_his
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
-- Table structure for mh_travel
-- ----------------------------
DROP TABLE IF EXISTS `mh_travel`;
CREATE TABLE `mh_travel` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `groupid` int(8) DEFAULT NULL COMMENT '用户组id',
  `userid` int(8) DEFAULT NULL COMMENT '计划人',
  `targets` varchar(50) DEFAULT NULL COMMENT '目的地',
  `detail` varchar(500) DEFAULT NULL COMMENT '目标地详情',
  `lastime` int(8) DEFAULT NULL COMMENT '计划时长(单位:天)',
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
-- Table structure for mh_users
-- ----------------------------
DROP TABLE IF EXISTS `mh_users`;
CREATE TABLE `mh_users` (
  `ids` int(8) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uname` varchar(50) DEFAULT NULL COMMENT '用户名',
  `pword` varchar(50) DEFAULT NULL COMMENT '密码',
  `rname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pic` varchar(100) DEFAULT NULL COMMENT '头像',
  `userType` int(4) DEFAULT NULL COMMENT '用户类型: 1,超级管理员; 0:普通用户',
  `groupid` int(8) DEFAULT NULL COMMENT '用户组id',
  `setups` int(4) DEFAULT NULL COMMENT '1:启用,other:禁用状态',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of mh_users
-- ----------------------------
INSERT INTO `mh_users` VALUES ('1', 'admin', '87D9BB400C0634691F0E3BAAF1E2FD0D', '赵大帅', null, '1', null, '1', '1', '2018-12-06 23:10:46', '0', 'GOD', '2018-12-16 14:37:26', '1', 'zhaodashuai');
INSERT INTO `mh_users` VALUES ('13', 'xiaohuang', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小黄', null, '0', null, '0', '1', '2019-01-06 23:00:42', '1', 'zhaodashuai', '2019-01-23 23:20:08', '1', 'admin');
INSERT INTO `mh_users` VALUES ('14', 'xiaolv', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小绿', null, '0', null, '1', '1', '2019-01-06 23:01:11', '1', 'zhaodashuai', '2019-01-23 23:19:19', '1', 'admin');
INSERT INTO `mh_users` VALUES ('15', 'xiaozi', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小紫', null, '0', null, '1', '1', '2019-01-06 23:02:22', '1', 'admin', '2019-01-27 01:05:11', '1', 'admin');
INSERT INTO `mh_users` VALUES ('16', 'xiaohong', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小红', null, '0', null, '0', '1', '2019-01-07 15:24:30', '1', 'admin', '2019-01-25 21:37:51', '1', 'admin');
INSERT INTO `mh_users` VALUES ('17', 'xiaocheng2', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小橙', null, '0', null, '0', '1', '2019-01-07 15:24:45', '1', 'admin', '2019-01-25 21:38:06', '1', 'admin');
INSERT INTO `mh_users` VALUES ('18', 'xiaoqing', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小青', null, '0', null, '1', '0', '2019-01-07 15:24:58', '1', 'admin', '2019-01-27 19:44:17', '1', 'admin');
INSERT INTO `mh_users` VALUES ('19', 'xiaolan', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小兰', null, '0', null, '1', '1', '2019-01-07 15:25:07', '1', 'admin', '2019-01-28 23:11:48', '1', 'admin');
INSERT INTO `mh_users` VALUES ('20', 'xiaoshi', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小屎', null, '0', null, '1', '1', '2019-01-07 15:25:32', '1', 'admin', '2019-01-28 23:11:46', '1', 'admin');
INSERT INTO `mh_users` VALUES ('21', 'Android', '87D9BB400C0634691F0E3BAAF1E2FD0D', '安卓', null, '0', null, '0', '1', '2019-01-25 21:37:01', '1', 'admin', '2019-01-28 23:11:39', '1', 'admin');
INSERT INTO `mh_users` VALUES ('22', 'zhifou', '87D9BB400C0634691F0E3BAAF1E2FD0D', '知否', null, '0', null, '1', '1', '2019-01-27 19:43:58', '1', 'admin', '2019-01-27 19:45:13', '1', 'admin');
INSERT INTO `mh_users` VALUES ('24', 'baimuda', '87D9BB400C0634691F0E3BAAF1E2FD0D', '百慕大', null, '0', null, '1', '1', '2019-01-28 23:09:26', '1', 'admin', '2019-01-28 23:09:47', '1', 'admin');

-- ----------------------------
-- Table structure for mh_users_group
-- ----------------------------
DROP TABLE IF EXISTS `mh_users_group`;
CREATE TABLE `mh_users_group` (
  `ids` int(8) NOT NULL AUTO_INCREMENT,
  `master` int(8) DEFAULT NULL COMMENT '户主',
  `groupcode` varchar(100) DEFAULT NULL COMMENT '群组编号',
  `groupname` varchar(100) DEFAULT NULL COMMENT '群组名称',
  `homeid` int(8) DEFAULT NULL COMMENT '家庭信息主键',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(100) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(100) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='记录一个家庭用户群体';

-- ----------------------------
-- Records of mh_users_group
-- ----------------------------

-- ----------------------------
-- Table structure for mh_users_info
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
-- Table structure for mh_user_member
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
-- Table structure for mh_user_menu
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='用户菜单表';

-- ----------------------------
-- Records of mh_user_menu
-- ----------------------------
INSERT INTO `mh_user_menu` VALUES ('1', '15', '1', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('2', '15', '3', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('3', '15', '6', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('4', '15', '5', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('5', '15', '2', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('6', '15', '11', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('7', '15', '12', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('8', '15', '13', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('9', '15', '14', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('22', '13', '2', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('23', '17', '11', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('31', '16', '1', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('32', '16', '3', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('33', '16', '4', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('34', '16', '5', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('35', '16', '6', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('36', '16', '11', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('37', '16', '12', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('38', '16', '13', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('39', '16', '14', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('40', '16', '7', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('41', '16', '8', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('42', '16', '9', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('43', '20', '18', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('44', '20', '16', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('45', '20', '17', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('46', '20', '15', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('47', '20', '11', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('48', '20', '12', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('49', '20', '13', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('50', '20', '14', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('51', '20', '10', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('52', '20', '7', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('53', '20', '8', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('54', '20', '9', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('55', '20', '2', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('56', '20', '41', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('57', '20', '1', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('58', '20', '3', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('59', '20', '4', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('60', '20', '5', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('61', '20', '6', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('62', '21', '1', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('63', '21', '3', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('64', '21', '4', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('65', '21', '5', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('66', '21', '6', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('68', '15', '7', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('69', '15', '8', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('70', '15', '9', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('71', '24', '43', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('72', '24', '11', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('73', '24', '45', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('74', '24', '46', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for mh_webinfo
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
-- Table structure for mh_web_account
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
-- Table structure for mh_works
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

-- ----------------------------
-- Function structure for getChildList
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildList`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildList`(rootId INT) RETURNS varchar(1000) CHARSET utf8
BEGIN
    DECLARE sTemp VARCHAR(1000);
    DECLARE sTempChd VARCHAR(1000);
    SET sTemp = '0';
    SET sTempChd =cast(rootId as CHAR);
    WHILE sTempChd is not null DO
        SET sTemp = concat(sTemp,',',sTempChd);
        SELECT group_concat(ids) INTO sTempChd FROM mh_menu where STATUS='1' and FIND_IN_SET(parentid,sTempChd)>0;
    END WHILE;
    RETURN sTemp; 
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getParentList
-- ----------------------------
DROP FUNCTION IF EXISTS `getParentList`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getParentList`(rootId INT) RETURNS varchar(1000) CHARSET utf8
BEGIN
    DECLARE sTemp VARCHAR (1000) ;
    DECLARE sTempPar VARCHAR (1000) ;
    SET sTemp = '' ;
    SET sTempPar = rootId;#循环递归
    WHILE
        sTempPar is not null DO -- 判断是否是第一个，不加的话第一个会为空
        IF sTemp != '' 
        THEN SET sTemp = concat(sTemp, ',', sTempPar) ;
        ELSE SET sTemp = sTempPar ;END IF ;SET sTemp = concat(sTemp, ',', sTempPar) ;
        SELECT 
            group_concat(parentid) INTO sTempPar 
        FROM
            mh_menu 
        where parentid <> ids and STATUS='1'
            and FIND_IN_SET(ids, sTempPar) > 0 ;
    END WHILE ;
    RETURN sTemp ;
END
;;
DELIMITER ;
