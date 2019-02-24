/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : myhome

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-02-24 22:57:32
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
  `note` varchar(300) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=3978 DEFAULT CHARSET=utf8 COMMENT='数据字典表';

-- ----------------------------
-- Records of mh_dict
-- ----------------------------
INSERT INTO `mh_dict` VALUES ('14', '53', 'xingbie', '男', '性别', '1', '2019-01-07 14:59:03', '1', 'admin', '2019-01-31 22:06:56', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('15', '53', 'xingbie', '女', '性别', '1', '2019-01-07 15:20:22', '1', 'admin', '2019-01-31 22:10:43', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('16', null, 'xingzuo', '天秤座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('17', null, 'xingzuo', '金牛座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('18', null, 'xingzuo', '摩羯座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('19', null, 'xingzuo', '天蝎座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('20', null, 'xingzuo', '水瓶座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('21', null, 'xingzuo', '巨蟹座', '星座', '1', '2019-01-07 15:20:54', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('22', null, 'xingzuo', '白羊座', '星座', '1', '2019-01-07 15:21:43', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('23', null, 'xingzuo', '狮子座', '星座', '1', '2019-01-07 15:21:43', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('24', null, 'xingzuo', '处女座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('25', null, 'xingzuo', '双鱼座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('26', null, 'xingzuo', '射手座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('27', null, 'xingzuo', '双子座', '星座', '1', '2019-01-07 15:32:32', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('28', '54', 'caiwuleibieout', '水费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:26:26', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('29', '54', 'caiwuleibieout', '电费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:26:31', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('30', '54', 'caiwuleibieout', '煤气费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:26:39', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('31', '56', 'caiwuleibieout', '生活费', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:30:13', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('32', '56', 'caiwuleibieout', '其他', '财务类别(支出)', '1', '2019-01-07 15:39:02', '1', 'admin', '2019-01-31 22:30:17', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('33', '57', 'caiwuleibiein', '工资', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:43:16', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('34', '60', 'caiwuleibiein', '彩票', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:46:34', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('35', '59', 'caiwuleibiein', '啃老', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:28', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('36', '59', 'caiwuleibiein', '赌博', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:40', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('37', '59', 'caiwuleibiein', '红包', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:45', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('38', '59', 'caiwuleibiein', '地上捡的', '财务类别(收入)', '1', '2019-01-08 19:26:37', '1', 'admin', '2019-01-31 22:45:52', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('39', '53', 'xingbie', '不男不女', '性别', '1', '2019-01-22 21:46:12', '1', 'admin', '2019-01-31 22:14:29', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('40', '53', 'xingbie', '未知', '性别', '1', '2019-01-22 21:46:12', '1', 'admin', '2019-01-31 22:15:12', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('41', '53', 'xingbie', '待定', '性别', '1', '2019-01-22 21:46:12', '1', 'admin', '2019-01-31 22:15:17', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('42', null, 'xueli', '大专', '学历', '1', '2019-01-25 21:41:36', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('43', null, 'xueli', '本科', '学历', '1', '2019-01-25 21:41:36', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('44', null, 'xueli', '高中', '学历', '1', '2019-01-25 21:41:36', '1', 'admin', '2019-01-27 01:19:24', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('45', '54', 'caiwuleibieout', '物业费', '财务类别(支出)', '1', '2019-01-25 21:47:52', '1', 'admin', '2019-01-31 22:27:36', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('46', null, 'xueli', '研究生(硕士)', '学历', '1', '2019-01-27 01:20:28', '1', 'admin', '2019-01-27 01:20:52', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('47', null, 'xueli', '博士', '学历', '1', '2019-01-27 01:20:28', '1', 'admin', '2019-01-27 01:21:04', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('48', null, 'xueli', '博士后', '学历', '1', '2019-01-27 01:20:28', '1', 'admin', '2019-01-27 01:20:59', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('49', null, 'xueli', '胎教', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('50', null, 'xueli', '幼儿园', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('51', null, 'xueli', '小学', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('52', null, 'xueli', '初中', '学历', '1', '2019-01-27 01:22:02', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('53', '0', 'xingbie', '性别', '父级数据', '1', '2019-01-31 21:33:44', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('54', '0', 'zuzhufeiyong', '租住费用', '水电气暖', '1', '2019-01-31 22:25:26', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('55', '54', 'caiwuleibieout', '暖气费', '财务类别(支出)', '1', '2019-01-31 22:27:19', '1', 'admin', '2019-01-31 22:27:25', '1', 'admin', null);
INSERT INTO `mh_dict` VALUES ('56', '0', 'richangxiaofei', '日常消费', '买菜, 吃饭, 各种娱乐活动', '1', '2019-01-31 22:29:13', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('57', '0', 'wendingshouru', '稳定收入', '工资, 理财类', '1', '2019-01-31 22:32:05', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('58', '57', 'caiwuleibiein', '理财保险', '财务类别(收入)', '1', '2019-01-31 22:43:58', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('59', '0', 'buyizhicai', '不义之财', '瞎写的测试数据', '1', '2019-01-31 22:44:44', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('60', '0', 'zuomeng', '梦想', '呵呵呵呵....', '1', '2019-01-31 22:46:26', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('61', '0', 'diqu', '地区', '三级联动数据', '1', '2019-02-23 18:00:00', '1', 'admin', null, null, null, null);
INSERT INTO `mh_dict` VALUES ('62', '61', 'diqu', '北京', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '110000');
INSERT INTO `mh_dict` VALUES ('63', '61', 'diqu', '天津', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '120000');
INSERT INTO `mh_dict` VALUES ('64', '61', 'diqu', '河北省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '130000');
INSERT INTO `mh_dict` VALUES ('65', '61', 'diqu', '山西省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '140000');
INSERT INTO `mh_dict` VALUES ('66', '61', 'diqu', '内蒙古自治区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '150000');
INSERT INTO `mh_dict` VALUES ('67', '61', 'diqu', '辽宁省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '210000');
INSERT INTO `mh_dict` VALUES ('68', '61', 'diqu', '吉林省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '220000');
INSERT INTO `mh_dict` VALUES ('69', '61', 'diqu', '黑龙江省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '230000');
INSERT INTO `mh_dict` VALUES ('70', '61', 'diqu', '上海', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '310000');
INSERT INTO `mh_dict` VALUES ('71', '61', 'diqu', '江苏省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '320000');
INSERT INTO `mh_dict` VALUES ('72', '61', 'diqu', '浙江省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '330000');
INSERT INTO `mh_dict` VALUES ('73', '61', 'diqu', '安徽省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '340000');
INSERT INTO `mh_dict` VALUES ('74', '61', 'diqu', '福建省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '350000');
INSERT INTO `mh_dict` VALUES ('75', '61', 'diqu', '江西省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '360000');
INSERT INTO `mh_dict` VALUES ('76', '61', 'diqu', '山东省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '370000');
INSERT INTO `mh_dict` VALUES ('77', '61', 'diqu', '河南省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '410000');
INSERT INTO `mh_dict` VALUES ('78', '61', 'diqu', '湖北省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '420000');
INSERT INTO `mh_dict` VALUES ('79', '61', 'diqu', '湖南省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '430000');
INSERT INTO `mh_dict` VALUES ('80', '61', 'diqu', '广东省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '440000');
INSERT INTO `mh_dict` VALUES ('81', '61', 'diqu', '广西壮族自治区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '450000');
INSERT INTO `mh_dict` VALUES ('82', '61', 'diqu', '海南省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '460000');
INSERT INTO `mh_dict` VALUES ('83', '61', 'diqu', '重庆', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '500000');
INSERT INTO `mh_dict` VALUES ('84', '61', 'diqu', '四川省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '510000');
INSERT INTO `mh_dict` VALUES ('85', '61', 'diqu', '贵州省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '520000');
INSERT INTO `mh_dict` VALUES ('86', '61', 'diqu', '云南省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '530000');
INSERT INTO `mh_dict` VALUES ('87', '61', 'diqu', '西藏自治区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '540000');
INSERT INTO `mh_dict` VALUES ('88', '61', 'diqu', '陕西省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '610000');
INSERT INTO `mh_dict` VALUES ('89', '61', 'diqu', '甘肃省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '620000');
INSERT INTO `mh_dict` VALUES ('90', '61', 'diqu', '青海省', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '630000');
INSERT INTO `mh_dict` VALUES ('91', '61', 'diqu', '宁夏回族自治区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '640000');
INSERT INTO `mh_dict` VALUES ('92', '61', 'diqu', '新疆维吾尔自治区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '650000');
INSERT INTO `mh_dict` VALUES ('93', '61', 'diqu', '台湾', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '710000');
INSERT INTO `mh_dict` VALUES ('94', '61', 'diqu', '香港特别行政区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '810000');
INSERT INTO `mh_dict` VALUES ('95', '61', 'diqu', '澳门特别行政区', '地区', '1', '2019-02-23 18:01:57', '1', 'admin', null, null, null, '820000');
INSERT INTO `mh_dict` VALUES ('125', '62', 'diqu', '北京市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '110100');
INSERT INTO `mh_dict` VALUES ('126', '63', 'diqu', '天津市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '120100');
INSERT INTO `mh_dict` VALUES ('127', '64', 'diqu', '石家庄市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130100');
INSERT INTO `mh_dict` VALUES ('128', '64', 'diqu', '唐山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130200');
INSERT INTO `mh_dict` VALUES ('129', '64', 'diqu', '秦皇岛市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130300');
INSERT INTO `mh_dict` VALUES ('130', '64', 'diqu', '邯郸市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130400');
INSERT INTO `mh_dict` VALUES ('131', '64', 'diqu', '邢台市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130500');
INSERT INTO `mh_dict` VALUES ('132', '64', 'diqu', '保定市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130600');
INSERT INTO `mh_dict` VALUES ('133', '64', 'diqu', '张家口市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130700');
INSERT INTO `mh_dict` VALUES ('134', '64', 'diqu', '承德市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130800');
INSERT INTO `mh_dict` VALUES ('135', '64', 'diqu', '沧州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '130900');
INSERT INTO `mh_dict` VALUES ('136', '64', 'diqu', '廊坊市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '131000');
INSERT INTO `mh_dict` VALUES ('137', '64', 'diqu', '衡水市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '131100');
INSERT INTO `mh_dict` VALUES ('138', '65', 'diqu', '太原市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140100');
INSERT INTO `mh_dict` VALUES ('139', '65', 'diqu', '大同市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140200');
INSERT INTO `mh_dict` VALUES ('140', '65', 'diqu', '阳泉市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140300');
INSERT INTO `mh_dict` VALUES ('141', '65', 'diqu', '长治市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140400');
INSERT INTO `mh_dict` VALUES ('142', '65', 'diqu', '晋城市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140500');
INSERT INTO `mh_dict` VALUES ('143', '65', 'diqu', '朔州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140600');
INSERT INTO `mh_dict` VALUES ('144', '65', 'diqu', '晋中市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140700');
INSERT INTO `mh_dict` VALUES ('145', '65', 'diqu', '运城市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140800');
INSERT INTO `mh_dict` VALUES ('146', '65', 'diqu', '忻州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '140900');
INSERT INTO `mh_dict` VALUES ('147', '65', 'diqu', '临汾市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '141000');
INSERT INTO `mh_dict` VALUES ('148', '65', 'diqu', '吕梁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '141100');
INSERT INTO `mh_dict` VALUES ('149', '66', 'diqu', '呼和浩特市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150100');
INSERT INTO `mh_dict` VALUES ('150', '66', 'diqu', '包头市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150200');
INSERT INTO `mh_dict` VALUES ('151', '66', 'diqu', '乌海市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150300');
INSERT INTO `mh_dict` VALUES ('152', '66', 'diqu', '赤峰市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150400');
INSERT INTO `mh_dict` VALUES ('153', '66', 'diqu', '通辽市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150500');
INSERT INTO `mh_dict` VALUES ('154', '66', 'diqu', '鄂尔多斯市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150600');
INSERT INTO `mh_dict` VALUES ('155', '66', 'diqu', '呼伦贝尔市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150700');
INSERT INTO `mh_dict` VALUES ('156', '66', 'diqu', '巴彦淖尔市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150800');
INSERT INTO `mh_dict` VALUES ('157', '66', 'diqu', '乌兰察布市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '150900');
INSERT INTO `mh_dict` VALUES ('158', '66', 'diqu', '兴安盟', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '152200');
INSERT INTO `mh_dict` VALUES ('159', '66', 'diqu', '锡林郭勒盟', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '152500');
INSERT INTO `mh_dict` VALUES ('160', '66', 'diqu', '阿拉善盟', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '152900');
INSERT INTO `mh_dict` VALUES ('161', '67', 'diqu', '沈阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210100');
INSERT INTO `mh_dict` VALUES ('162', '67', 'diqu', '大连市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210200');
INSERT INTO `mh_dict` VALUES ('163', '67', 'diqu', '鞍山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210300');
INSERT INTO `mh_dict` VALUES ('164', '67', 'diqu', '抚顺市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210400');
INSERT INTO `mh_dict` VALUES ('165', '67', 'diqu', '本溪市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210500');
INSERT INTO `mh_dict` VALUES ('166', '67', 'diqu', '丹东市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210600');
INSERT INTO `mh_dict` VALUES ('167', '67', 'diqu', '锦州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210700');
INSERT INTO `mh_dict` VALUES ('168', '67', 'diqu', '营口市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210800');
INSERT INTO `mh_dict` VALUES ('169', '67', 'diqu', '阜新市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '210900');
INSERT INTO `mh_dict` VALUES ('170', '67', 'diqu', '辽阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '211000');
INSERT INTO `mh_dict` VALUES ('171', '67', 'diqu', '盘锦市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '211100');
INSERT INTO `mh_dict` VALUES ('172', '67', 'diqu', '铁岭市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '211200');
INSERT INTO `mh_dict` VALUES ('173', '67', 'diqu', '朝阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '211300');
INSERT INTO `mh_dict` VALUES ('174', '67', 'diqu', '葫芦岛市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '211400');
INSERT INTO `mh_dict` VALUES ('175', '67', 'diqu', '金普新区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '211500');
INSERT INTO `mh_dict` VALUES ('176', '68', 'diqu', '长春市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220100');
INSERT INTO `mh_dict` VALUES ('177', '68', 'diqu', '吉林市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220200');
INSERT INTO `mh_dict` VALUES ('178', '68', 'diqu', '四平市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220300');
INSERT INTO `mh_dict` VALUES ('179', '68', 'diqu', '辽源市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220400');
INSERT INTO `mh_dict` VALUES ('180', '68', 'diqu', '通化市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220500');
INSERT INTO `mh_dict` VALUES ('181', '68', 'diqu', '白山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220600');
INSERT INTO `mh_dict` VALUES ('182', '68', 'diqu', '松原市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220700');
INSERT INTO `mh_dict` VALUES ('183', '68', 'diqu', '白城市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '220800');
INSERT INTO `mh_dict` VALUES ('184', '68', 'diqu', '延边朝鲜族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '222400');
INSERT INTO `mh_dict` VALUES ('185', '69', 'diqu', '哈尔滨市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230100');
INSERT INTO `mh_dict` VALUES ('186', '69', 'diqu', '齐齐哈尔市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230200');
INSERT INTO `mh_dict` VALUES ('187', '69', 'diqu', '鸡西市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230300');
INSERT INTO `mh_dict` VALUES ('188', '69', 'diqu', '鹤岗市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230400');
INSERT INTO `mh_dict` VALUES ('189', '69', 'diqu', '双鸭山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230500');
INSERT INTO `mh_dict` VALUES ('190', '69', 'diqu', '大庆市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230600');
INSERT INTO `mh_dict` VALUES ('191', '69', 'diqu', '伊春市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230700');
INSERT INTO `mh_dict` VALUES ('192', '69', 'diqu', '佳木斯市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230800');
INSERT INTO `mh_dict` VALUES ('193', '69', 'diqu', '七台河市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '230900');
INSERT INTO `mh_dict` VALUES ('194', '69', 'diqu', '牡丹江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '231000');
INSERT INTO `mh_dict` VALUES ('195', '69', 'diqu', '黑河市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '231100');
INSERT INTO `mh_dict` VALUES ('196', '69', 'diqu', '绥化市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '231200');
INSERT INTO `mh_dict` VALUES ('197', '69', 'diqu', '大兴安岭地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '232700');
INSERT INTO `mh_dict` VALUES ('198', '70', 'diqu', '上海市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '310100');
INSERT INTO `mh_dict` VALUES ('199', '71', 'diqu', '南京市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320100');
INSERT INTO `mh_dict` VALUES ('200', '71', 'diqu', '无锡市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320200');
INSERT INTO `mh_dict` VALUES ('201', '71', 'diqu', '徐州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320300');
INSERT INTO `mh_dict` VALUES ('202', '71', 'diqu', '常州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320400');
INSERT INTO `mh_dict` VALUES ('203', '71', 'diqu', '苏州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320500');
INSERT INTO `mh_dict` VALUES ('204', '71', 'diqu', '南通市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320600');
INSERT INTO `mh_dict` VALUES ('205', '71', 'diqu', '连云港市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320700');
INSERT INTO `mh_dict` VALUES ('206', '71', 'diqu', '淮安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320800');
INSERT INTO `mh_dict` VALUES ('207', '71', 'diqu', '盐城市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '320900');
INSERT INTO `mh_dict` VALUES ('208', '71', 'diqu', '扬州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '321000');
INSERT INTO `mh_dict` VALUES ('209', '71', 'diqu', '镇江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '321100');
INSERT INTO `mh_dict` VALUES ('210', '71', 'diqu', '泰州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '321200');
INSERT INTO `mh_dict` VALUES ('211', '71', 'diqu', '宿迁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '321300');
INSERT INTO `mh_dict` VALUES ('212', '72', 'diqu', '杭州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330100');
INSERT INTO `mh_dict` VALUES ('213', '72', 'diqu', '宁波市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330200');
INSERT INTO `mh_dict` VALUES ('214', '72', 'diqu', '温州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330300');
INSERT INTO `mh_dict` VALUES ('215', '72', 'diqu', '嘉兴市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330400');
INSERT INTO `mh_dict` VALUES ('216', '72', 'diqu', '湖州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330500');
INSERT INTO `mh_dict` VALUES ('217', '72', 'diqu', '绍兴市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330600');
INSERT INTO `mh_dict` VALUES ('218', '72', 'diqu', '金华市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330700');
INSERT INTO `mh_dict` VALUES ('219', '72', 'diqu', '衢州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330800');
INSERT INTO `mh_dict` VALUES ('220', '72', 'diqu', '舟山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '330900');
INSERT INTO `mh_dict` VALUES ('221', '72', 'diqu', '台州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '331000');
INSERT INTO `mh_dict` VALUES ('222', '72', 'diqu', '丽水市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '331100');
INSERT INTO `mh_dict` VALUES ('223', '72', 'diqu', '舟山群岛新区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '331200');
INSERT INTO `mh_dict` VALUES ('224', '73', 'diqu', '合肥市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340100');
INSERT INTO `mh_dict` VALUES ('225', '73', 'diqu', '芜湖市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340200');
INSERT INTO `mh_dict` VALUES ('226', '73', 'diqu', '蚌埠市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340300');
INSERT INTO `mh_dict` VALUES ('227', '73', 'diqu', '淮南市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340400');
INSERT INTO `mh_dict` VALUES ('228', '73', 'diqu', '马鞍山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340500');
INSERT INTO `mh_dict` VALUES ('229', '73', 'diqu', '淮北市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340600');
INSERT INTO `mh_dict` VALUES ('230', '73', 'diqu', '铜陵市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340700');
INSERT INTO `mh_dict` VALUES ('231', '73', 'diqu', '安庆市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '340800');
INSERT INTO `mh_dict` VALUES ('232', '73', 'diqu', '黄山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341000');
INSERT INTO `mh_dict` VALUES ('233', '73', 'diqu', '滁州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341100');
INSERT INTO `mh_dict` VALUES ('234', '73', 'diqu', '阜阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341200');
INSERT INTO `mh_dict` VALUES ('235', '73', 'diqu', '宿州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341300');
INSERT INTO `mh_dict` VALUES ('236', '73', 'diqu', '六安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341500');
INSERT INTO `mh_dict` VALUES ('237', '73', 'diqu', '亳州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341600');
INSERT INTO `mh_dict` VALUES ('238', '73', 'diqu', '池州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341700');
INSERT INTO `mh_dict` VALUES ('239', '73', 'diqu', '宣城市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '341800');
INSERT INTO `mh_dict` VALUES ('240', '74', 'diqu', '福州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350100');
INSERT INTO `mh_dict` VALUES ('241', '74', 'diqu', '厦门市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350200');
INSERT INTO `mh_dict` VALUES ('242', '74', 'diqu', '莆田市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350300');
INSERT INTO `mh_dict` VALUES ('243', '74', 'diqu', '三明市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350400');
INSERT INTO `mh_dict` VALUES ('244', '74', 'diqu', '泉州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350500');
INSERT INTO `mh_dict` VALUES ('245', '74', 'diqu', '漳州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350600');
INSERT INTO `mh_dict` VALUES ('246', '74', 'diqu', '南平市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350700');
INSERT INTO `mh_dict` VALUES ('247', '74', 'diqu', '龙岩市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350800');
INSERT INTO `mh_dict` VALUES ('248', '74', 'diqu', '宁德市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '350900');
INSERT INTO `mh_dict` VALUES ('249', '75', 'diqu', '南昌市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360100');
INSERT INTO `mh_dict` VALUES ('250', '75', 'diqu', '景德镇市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360200');
INSERT INTO `mh_dict` VALUES ('251', '75', 'diqu', '萍乡市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360300');
INSERT INTO `mh_dict` VALUES ('252', '75', 'diqu', '九江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360400');
INSERT INTO `mh_dict` VALUES ('253', '75', 'diqu', '新余市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360500');
INSERT INTO `mh_dict` VALUES ('254', '75', 'diqu', '鹰潭市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360600');
INSERT INTO `mh_dict` VALUES ('255', '75', 'diqu', '赣州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360700');
INSERT INTO `mh_dict` VALUES ('256', '75', 'diqu', '吉安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360800');
INSERT INTO `mh_dict` VALUES ('257', '75', 'diqu', '宜春市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '360900');
INSERT INTO `mh_dict` VALUES ('258', '75', 'diqu', '抚州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '361000');
INSERT INTO `mh_dict` VALUES ('259', '75', 'diqu', '上饶市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '361100');
INSERT INTO `mh_dict` VALUES ('260', '76', 'diqu', '济南市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370100');
INSERT INTO `mh_dict` VALUES ('261', '76', 'diqu', '青岛市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370200');
INSERT INTO `mh_dict` VALUES ('262', '76', 'diqu', '淄博市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370300');
INSERT INTO `mh_dict` VALUES ('263', '76', 'diqu', '枣庄市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370400');
INSERT INTO `mh_dict` VALUES ('264', '76', 'diqu', '东营市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370500');
INSERT INTO `mh_dict` VALUES ('265', '76', 'diqu', '烟台市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370600');
INSERT INTO `mh_dict` VALUES ('266', '76', 'diqu', '潍坊市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370700');
INSERT INTO `mh_dict` VALUES ('267', '76', 'diqu', '济宁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370800');
INSERT INTO `mh_dict` VALUES ('268', '76', 'diqu', '泰安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '370900');
INSERT INTO `mh_dict` VALUES ('269', '76', 'diqu', '威海市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371000');
INSERT INTO `mh_dict` VALUES ('270', '76', 'diqu', '日照市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371100');
INSERT INTO `mh_dict` VALUES ('271', '76', 'diqu', '莱芜市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371200');
INSERT INTO `mh_dict` VALUES ('272', '76', 'diqu', '临沂市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371300');
INSERT INTO `mh_dict` VALUES ('273', '76', 'diqu', '德州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371400');
INSERT INTO `mh_dict` VALUES ('274', '76', 'diqu', '聊城市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371500');
INSERT INTO `mh_dict` VALUES ('275', '76', 'diqu', '滨州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371600');
INSERT INTO `mh_dict` VALUES ('276', '76', 'diqu', '菏泽市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '371700');
INSERT INTO `mh_dict` VALUES ('277', '77', 'diqu', '郑州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410100');
INSERT INTO `mh_dict` VALUES ('278', '77', 'diqu', '开封市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410200');
INSERT INTO `mh_dict` VALUES ('279', '77', 'diqu', '洛阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410300');
INSERT INTO `mh_dict` VALUES ('280', '77', 'diqu', '平顶山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410400');
INSERT INTO `mh_dict` VALUES ('281', '77', 'diqu', '安阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410500');
INSERT INTO `mh_dict` VALUES ('282', '77', 'diqu', '鹤壁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410600');
INSERT INTO `mh_dict` VALUES ('283', '77', 'diqu', '新乡市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410700');
INSERT INTO `mh_dict` VALUES ('284', '77', 'diqu', '焦作市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410800');
INSERT INTO `mh_dict` VALUES ('285', '77', 'diqu', '濮阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '410900');
INSERT INTO `mh_dict` VALUES ('286', '77', 'diqu', '许昌市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411000');
INSERT INTO `mh_dict` VALUES ('287', '77', 'diqu', '漯河市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411100');
INSERT INTO `mh_dict` VALUES ('288', '77', 'diqu', '三门峡市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411200');
INSERT INTO `mh_dict` VALUES ('289', '77', 'diqu', '南阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411300');
INSERT INTO `mh_dict` VALUES ('290', '77', 'diqu', '商丘市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411400');
INSERT INTO `mh_dict` VALUES ('291', '77', 'diqu', '信阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411500');
INSERT INTO `mh_dict` VALUES ('292', '77', 'diqu', '周口市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411600');
INSERT INTO `mh_dict` VALUES ('293', '77', 'diqu', '驻马店市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '411700');
INSERT INTO `mh_dict` VALUES ('294', '77', 'diqu', '直辖县级', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '419000');
INSERT INTO `mh_dict` VALUES ('295', '78', 'diqu', '武汉市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420100');
INSERT INTO `mh_dict` VALUES ('296', '78', 'diqu', '黄石市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420200');
INSERT INTO `mh_dict` VALUES ('297', '78', 'diqu', '十堰市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420300');
INSERT INTO `mh_dict` VALUES ('298', '78', 'diqu', '宜昌市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420500');
INSERT INTO `mh_dict` VALUES ('299', '78', 'diqu', '襄阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420600');
INSERT INTO `mh_dict` VALUES ('300', '78', 'diqu', '鄂州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420700');
INSERT INTO `mh_dict` VALUES ('301', '78', 'diqu', '荆门市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420800');
INSERT INTO `mh_dict` VALUES ('302', '78', 'diqu', '孝感市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '420900');
INSERT INTO `mh_dict` VALUES ('303', '78', 'diqu', '荆州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '421000');
INSERT INTO `mh_dict` VALUES ('304', '78', 'diqu', '黄冈市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '421100');
INSERT INTO `mh_dict` VALUES ('305', '78', 'diqu', '咸宁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '421200');
INSERT INTO `mh_dict` VALUES ('306', '78', 'diqu', '随州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '421300');
INSERT INTO `mh_dict` VALUES ('307', '78', 'diqu', '恩施土家族苗族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '422800');
INSERT INTO `mh_dict` VALUES ('308', '78', 'diqu', '直辖县级', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '429000');
INSERT INTO `mh_dict` VALUES ('309', '79', 'diqu', '长沙市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430100');
INSERT INTO `mh_dict` VALUES ('310', '79', 'diqu', '株洲市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430200');
INSERT INTO `mh_dict` VALUES ('311', '79', 'diqu', '湘潭市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430300');
INSERT INTO `mh_dict` VALUES ('312', '79', 'diqu', '衡阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430400');
INSERT INTO `mh_dict` VALUES ('313', '79', 'diqu', '邵阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430500');
INSERT INTO `mh_dict` VALUES ('314', '79', 'diqu', '岳阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430600');
INSERT INTO `mh_dict` VALUES ('315', '79', 'diqu', '常德市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430700');
INSERT INTO `mh_dict` VALUES ('316', '79', 'diqu', '张家界市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430800');
INSERT INTO `mh_dict` VALUES ('317', '79', 'diqu', '益阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '430900');
INSERT INTO `mh_dict` VALUES ('318', '79', 'diqu', '郴州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '431000');
INSERT INTO `mh_dict` VALUES ('319', '79', 'diqu', '永州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '431100');
INSERT INTO `mh_dict` VALUES ('320', '79', 'diqu', '怀化市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '431200');
INSERT INTO `mh_dict` VALUES ('321', '79', 'diqu', '娄底市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '431300');
INSERT INTO `mh_dict` VALUES ('322', '79', 'diqu', '湘西土家族苗族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '433100');
INSERT INTO `mh_dict` VALUES ('323', '80', 'diqu', '广州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440100');
INSERT INTO `mh_dict` VALUES ('324', '80', 'diqu', '韶关市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440200');
INSERT INTO `mh_dict` VALUES ('325', '80', 'diqu', '深圳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440300');
INSERT INTO `mh_dict` VALUES ('326', '80', 'diqu', '珠海市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440400');
INSERT INTO `mh_dict` VALUES ('327', '80', 'diqu', '汕头市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440500');
INSERT INTO `mh_dict` VALUES ('328', '80', 'diqu', '佛山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440600');
INSERT INTO `mh_dict` VALUES ('329', '80', 'diqu', '江门市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440700');
INSERT INTO `mh_dict` VALUES ('330', '80', 'diqu', '湛江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440800');
INSERT INTO `mh_dict` VALUES ('331', '80', 'diqu', '茂名市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '440900');
INSERT INTO `mh_dict` VALUES ('332', '80', 'diqu', '肇庆市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441200');
INSERT INTO `mh_dict` VALUES ('333', '80', 'diqu', '惠州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441300');
INSERT INTO `mh_dict` VALUES ('334', '80', 'diqu', '梅州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441400');
INSERT INTO `mh_dict` VALUES ('335', '80', 'diqu', '汕尾市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441500');
INSERT INTO `mh_dict` VALUES ('336', '80', 'diqu', '河源市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441600');
INSERT INTO `mh_dict` VALUES ('337', '80', 'diqu', '阳江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441700');
INSERT INTO `mh_dict` VALUES ('338', '80', 'diqu', '清远市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441800');
INSERT INTO `mh_dict` VALUES ('339', '80', 'diqu', '东莞市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '441900');
INSERT INTO `mh_dict` VALUES ('340', '80', 'diqu', '中山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '442000');
INSERT INTO `mh_dict` VALUES ('341', '80', 'diqu', '潮州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '445100');
INSERT INTO `mh_dict` VALUES ('342', '80', 'diqu', '揭阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '445200');
INSERT INTO `mh_dict` VALUES ('343', '80', 'diqu', '云浮市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '445300');
INSERT INTO `mh_dict` VALUES ('344', '81', 'diqu', '南宁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450100');
INSERT INTO `mh_dict` VALUES ('345', '81', 'diqu', '柳州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450200');
INSERT INTO `mh_dict` VALUES ('346', '81', 'diqu', '桂林市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450300');
INSERT INTO `mh_dict` VALUES ('347', '81', 'diqu', '梧州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450400');
INSERT INTO `mh_dict` VALUES ('348', '81', 'diqu', '北海市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450500');
INSERT INTO `mh_dict` VALUES ('349', '81', 'diqu', '防城港市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450600');
INSERT INTO `mh_dict` VALUES ('350', '81', 'diqu', '钦州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450700');
INSERT INTO `mh_dict` VALUES ('351', '81', 'diqu', '贵港市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450800');
INSERT INTO `mh_dict` VALUES ('352', '81', 'diqu', '玉林市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '450900');
INSERT INTO `mh_dict` VALUES ('353', '81', 'diqu', '百色市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '451000');
INSERT INTO `mh_dict` VALUES ('354', '81', 'diqu', '贺州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '451100');
INSERT INTO `mh_dict` VALUES ('355', '81', 'diqu', '河池市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '451200');
INSERT INTO `mh_dict` VALUES ('356', '81', 'diqu', '来宾市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '451300');
INSERT INTO `mh_dict` VALUES ('357', '81', 'diqu', '崇左市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '451400');
INSERT INTO `mh_dict` VALUES ('358', '82', 'diqu', '海口市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '460100');
INSERT INTO `mh_dict` VALUES ('359', '82', 'diqu', '三亚市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '460200');
INSERT INTO `mh_dict` VALUES ('360', '82', 'diqu', '三沙市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '460300');
INSERT INTO `mh_dict` VALUES ('361', '82', 'diqu', '直辖县级', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '469000');
INSERT INTO `mh_dict` VALUES ('362', '83', 'diqu', '重庆市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '500100');
INSERT INTO `mh_dict` VALUES ('363', '83', 'diqu', '两江新区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '500300');
INSERT INTO `mh_dict` VALUES ('364', '84', 'diqu', '成都市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510100');
INSERT INTO `mh_dict` VALUES ('365', '84', 'diqu', '自贡市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510300');
INSERT INTO `mh_dict` VALUES ('366', '84', 'diqu', '攀枝花市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510400');
INSERT INTO `mh_dict` VALUES ('367', '84', 'diqu', '泸州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510500');
INSERT INTO `mh_dict` VALUES ('368', '84', 'diqu', '德阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510600');
INSERT INTO `mh_dict` VALUES ('369', '84', 'diqu', '绵阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510700');
INSERT INTO `mh_dict` VALUES ('370', '84', 'diqu', '广元市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510800');
INSERT INTO `mh_dict` VALUES ('371', '84', 'diqu', '遂宁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '510900');
INSERT INTO `mh_dict` VALUES ('372', '84', 'diqu', '内江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511000');
INSERT INTO `mh_dict` VALUES ('373', '84', 'diqu', '乐山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511100');
INSERT INTO `mh_dict` VALUES ('374', '84', 'diqu', '南充市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511300');
INSERT INTO `mh_dict` VALUES ('375', '84', 'diqu', '眉山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511400');
INSERT INTO `mh_dict` VALUES ('376', '84', 'diqu', '宜宾市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511500');
INSERT INTO `mh_dict` VALUES ('377', '84', 'diqu', '广安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511600');
INSERT INTO `mh_dict` VALUES ('378', '84', 'diqu', '达州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511700');
INSERT INTO `mh_dict` VALUES ('379', '84', 'diqu', '雅安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511800');
INSERT INTO `mh_dict` VALUES ('380', '84', 'diqu', '巴中市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '511900');
INSERT INTO `mh_dict` VALUES ('381', '84', 'diqu', '资阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '512000');
INSERT INTO `mh_dict` VALUES ('382', '84', 'diqu', '阿坝藏族羌族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '513200');
INSERT INTO `mh_dict` VALUES ('383', '84', 'diqu', '甘孜藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '513300');
INSERT INTO `mh_dict` VALUES ('384', '84', 'diqu', '凉山彝族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '513400');
INSERT INTO `mh_dict` VALUES ('385', '85', 'diqu', '贵阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '520100');
INSERT INTO `mh_dict` VALUES ('386', '85', 'diqu', '六盘水市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '520200');
INSERT INTO `mh_dict` VALUES ('387', '85', 'diqu', '遵义市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '520300');
INSERT INTO `mh_dict` VALUES ('388', '85', 'diqu', '安顺市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '520400');
INSERT INTO `mh_dict` VALUES ('389', '85', 'diqu', '毕节市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '520500');
INSERT INTO `mh_dict` VALUES ('390', '85', 'diqu', '铜仁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '520600');
INSERT INTO `mh_dict` VALUES ('391', '85', 'diqu', '黔西南布依族苗族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '522300');
INSERT INTO `mh_dict` VALUES ('392', '85', 'diqu', '黔东南苗族侗族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '522600');
INSERT INTO `mh_dict` VALUES ('393', '85', 'diqu', '黔南布依族苗族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '522700');
INSERT INTO `mh_dict` VALUES ('394', '86', 'diqu', '昆明市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530100');
INSERT INTO `mh_dict` VALUES ('395', '86', 'diqu', '曲靖市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530300');
INSERT INTO `mh_dict` VALUES ('396', '86', 'diqu', '玉溪市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530400');
INSERT INTO `mh_dict` VALUES ('397', '86', 'diqu', '保山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530500');
INSERT INTO `mh_dict` VALUES ('398', '86', 'diqu', '昭通市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530600');
INSERT INTO `mh_dict` VALUES ('399', '86', 'diqu', '丽江市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530700');
INSERT INTO `mh_dict` VALUES ('400', '86', 'diqu', '普洱市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530800');
INSERT INTO `mh_dict` VALUES ('401', '86', 'diqu', '临沧市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '530900');
INSERT INTO `mh_dict` VALUES ('402', '86', 'diqu', '楚雄彝族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '532300');
INSERT INTO `mh_dict` VALUES ('403', '86', 'diqu', '红河哈尼族彝族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '532500');
INSERT INTO `mh_dict` VALUES ('404', '86', 'diqu', '文山壮族苗族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '532600');
INSERT INTO `mh_dict` VALUES ('405', '86', 'diqu', '西双版纳傣族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '532800');
INSERT INTO `mh_dict` VALUES ('406', '86', 'diqu', '大理白族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '532900');
INSERT INTO `mh_dict` VALUES ('407', '86', 'diqu', '德宏傣族景颇族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '533100');
INSERT INTO `mh_dict` VALUES ('408', '86', 'diqu', '怒江傈僳族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '533300');
INSERT INTO `mh_dict` VALUES ('409', '86', 'diqu', '迪庆藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '533400');
INSERT INTO `mh_dict` VALUES ('410', '87', 'diqu', '拉萨市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '540100');
INSERT INTO `mh_dict` VALUES ('411', '87', 'diqu', '日喀则市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '540200');
INSERT INTO `mh_dict` VALUES ('412', '87', 'diqu', '昌都市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '540300');
INSERT INTO `mh_dict` VALUES ('413', '87', 'diqu', '山南地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '542200');
INSERT INTO `mh_dict` VALUES ('414', '87', 'diqu', '那曲地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '542400');
INSERT INTO `mh_dict` VALUES ('415', '87', 'diqu', '阿里地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '542500');
INSERT INTO `mh_dict` VALUES ('416', '87', 'diqu', '林芝地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '542600');
INSERT INTO `mh_dict` VALUES ('417', '88', 'diqu', '西安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610100');
INSERT INTO `mh_dict` VALUES ('418', '88', 'diqu', '铜川市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610200');
INSERT INTO `mh_dict` VALUES ('419', '88', 'diqu', '宝鸡市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610300');
INSERT INTO `mh_dict` VALUES ('420', '88', 'diqu', '咸阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610400');
INSERT INTO `mh_dict` VALUES ('421', '88', 'diqu', '渭南市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610500');
INSERT INTO `mh_dict` VALUES ('422', '88', 'diqu', '延安市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610600');
INSERT INTO `mh_dict` VALUES ('423', '88', 'diqu', '汉中市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610700');
INSERT INTO `mh_dict` VALUES ('424', '88', 'diqu', '榆林市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610800');
INSERT INTO `mh_dict` VALUES ('425', '88', 'diqu', '安康市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '610900');
INSERT INTO `mh_dict` VALUES ('426', '88', 'diqu', '商洛市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '611000');
INSERT INTO `mh_dict` VALUES ('427', '88', 'diqu', '西咸新区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '611100');
INSERT INTO `mh_dict` VALUES ('428', '89', 'diqu', '兰州市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620100');
INSERT INTO `mh_dict` VALUES ('429', '89', 'diqu', '嘉峪关市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620200');
INSERT INTO `mh_dict` VALUES ('430', '89', 'diqu', '金昌市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620300');
INSERT INTO `mh_dict` VALUES ('431', '89', 'diqu', '白银市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620400');
INSERT INTO `mh_dict` VALUES ('432', '89', 'diqu', '天水市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620500');
INSERT INTO `mh_dict` VALUES ('433', '89', 'diqu', '武威市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620600');
INSERT INTO `mh_dict` VALUES ('434', '89', 'diqu', '张掖市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620700');
INSERT INTO `mh_dict` VALUES ('435', '89', 'diqu', '平凉市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620800');
INSERT INTO `mh_dict` VALUES ('436', '89', 'diqu', '酒泉市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '620900');
INSERT INTO `mh_dict` VALUES ('437', '89', 'diqu', '庆阳市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '621000');
INSERT INTO `mh_dict` VALUES ('438', '89', 'diqu', '定西市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '621100');
INSERT INTO `mh_dict` VALUES ('439', '89', 'diqu', '陇南市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '621200');
INSERT INTO `mh_dict` VALUES ('440', '89', 'diqu', '临夏回族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '622900');
INSERT INTO `mh_dict` VALUES ('441', '89', 'diqu', '甘南藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '623000');
INSERT INTO `mh_dict` VALUES ('442', '90', 'diqu', '西宁市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '630100');
INSERT INTO `mh_dict` VALUES ('443', '90', 'diqu', '海东市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '630200');
INSERT INTO `mh_dict` VALUES ('444', '90', 'diqu', '海北藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '632200');
INSERT INTO `mh_dict` VALUES ('445', '90', 'diqu', '黄南藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '632300');
INSERT INTO `mh_dict` VALUES ('446', '90', 'diqu', '海南藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '632500');
INSERT INTO `mh_dict` VALUES ('447', '90', 'diqu', '果洛藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '632600');
INSERT INTO `mh_dict` VALUES ('448', '90', 'diqu', '玉树藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '632700');
INSERT INTO `mh_dict` VALUES ('449', '90', 'diqu', '海西蒙古族藏族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '632800');
INSERT INTO `mh_dict` VALUES ('450', '91', 'diqu', '银川市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '640100');
INSERT INTO `mh_dict` VALUES ('451', '91', 'diqu', '石嘴山市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '640200');
INSERT INTO `mh_dict` VALUES ('452', '91', 'diqu', '吴忠市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '640300');
INSERT INTO `mh_dict` VALUES ('453', '91', 'diqu', '固原市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '640400');
INSERT INTO `mh_dict` VALUES ('454', '91', 'diqu', '中卫市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '640500');
INSERT INTO `mh_dict` VALUES ('455', '92', 'diqu', '乌鲁木齐市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '650100');
INSERT INTO `mh_dict` VALUES ('456', '92', 'diqu', '克拉玛依市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '650200');
INSERT INTO `mh_dict` VALUES ('457', '92', 'diqu', '吐鲁番地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '652100');
INSERT INTO `mh_dict` VALUES ('458', '92', 'diqu', '哈密地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '652200');
INSERT INTO `mh_dict` VALUES ('459', '92', 'diqu', '昌吉回族自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '652300');
INSERT INTO `mh_dict` VALUES ('460', '92', 'diqu', '博尔塔拉蒙古自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '652700');
INSERT INTO `mh_dict` VALUES ('461', '92', 'diqu', '巴音郭楞蒙古自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '652800');
INSERT INTO `mh_dict` VALUES ('462', '92', 'diqu', '阿克苏地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '652900');
INSERT INTO `mh_dict` VALUES ('463', '92', 'diqu', '克孜勒苏柯尔克孜自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '653000');
INSERT INTO `mh_dict` VALUES ('464', '92', 'diqu', '喀什地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '653100');
INSERT INTO `mh_dict` VALUES ('465', '92', 'diqu', '和田地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '653200');
INSERT INTO `mh_dict` VALUES ('466', '92', 'diqu', '伊犁哈萨克自治州', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '654000');
INSERT INTO `mh_dict` VALUES ('467', '92', 'diqu', '塔城地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '654200');
INSERT INTO `mh_dict` VALUES ('468', '92', 'diqu', '阿勒泰地区', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '654300');
INSERT INTO `mh_dict` VALUES ('469', '92', 'diqu', '直辖县级', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '659000');
INSERT INTO `mh_dict` VALUES ('470', '93', 'diqu', '台北市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710100');
INSERT INTO `mh_dict` VALUES ('471', '93', 'diqu', '高雄市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710200');
INSERT INTO `mh_dict` VALUES ('472', '93', 'diqu', '基隆市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710300');
INSERT INTO `mh_dict` VALUES ('473', '93', 'diqu', '台中市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710400');
INSERT INTO `mh_dict` VALUES ('474', '93', 'diqu', '台南市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710500');
INSERT INTO `mh_dict` VALUES ('475', '93', 'diqu', '新竹市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710600');
INSERT INTO `mh_dict` VALUES ('476', '93', 'diqu', '嘉义市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710700');
INSERT INTO `mh_dict` VALUES ('477', '93', 'diqu', '新北市', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '710800');
INSERT INTO `mh_dict` VALUES ('478', '93', 'diqu', '宜兰县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712200');
INSERT INTO `mh_dict` VALUES ('479', '93', 'diqu', '桃园县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712300');
INSERT INTO `mh_dict` VALUES ('480', '93', 'diqu', '新竹县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712400');
INSERT INTO `mh_dict` VALUES ('481', '93', 'diqu', '苗栗县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712500');
INSERT INTO `mh_dict` VALUES ('482', '93', 'diqu', '彰化县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712700');
INSERT INTO `mh_dict` VALUES ('483', '93', 'diqu', '南投县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712800');
INSERT INTO `mh_dict` VALUES ('484', '93', 'diqu', '云林县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '712900');
INSERT INTO `mh_dict` VALUES ('485', '93', 'diqu', '嘉义县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713000');
INSERT INTO `mh_dict` VALUES ('486', '93', 'diqu', '屏东县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713300');
INSERT INTO `mh_dict` VALUES ('487', '93', 'diqu', '台东县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713400');
INSERT INTO `mh_dict` VALUES ('488', '93', 'diqu', '花莲县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713500');
INSERT INTO `mh_dict` VALUES ('489', '93', 'diqu', '澎湖县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713600');
INSERT INTO `mh_dict` VALUES ('490', '93', 'diqu', '金门县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713700');
INSERT INTO `mh_dict` VALUES ('491', '93', 'diqu', '连江县', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '713800');
INSERT INTO `mh_dict` VALUES ('492', '94', 'diqu', '香港岛', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '810100');
INSERT INTO `mh_dict` VALUES ('493', '94', 'diqu', '九龙', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '810200');
INSERT INTO `mh_dict` VALUES ('494', '94', 'diqu', '新界', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '810300');
INSERT INTO `mh_dict` VALUES ('495', '95', 'diqu', '澳门半岛', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '820100');
INSERT INTO `mh_dict` VALUES ('496', '95', 'diqu', '氹仔岛', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '820200');
INSERT INTO `mh_dict` VALUES ('497', '95', 'diqu', '路环岛', '地区', '1', '2019-02-23 18:03:30', '1', 'admin', null, null, null, '820300');
INSERT INTO `mh_dict` VALUES ('636', '125', 'diqu', '东城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110101');
INSERT INTO `mh_dict` VALUES ('637', '125', 'diqu', '西城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110102');
INSERT INTO `mh_dict` VALUES ('638', '125', 'diqu', '朝阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110105');
INSERT INTO `mh_dict` VALUES ('639', '125', 'diqu', '丰台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110106');
INSERT INTO `mh_dict` VALUES ('640', '125', 'diqu', '石景山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110107');
INSERT INTO `mh_dict` VALUES ('641', '125', 'diqu', '海淀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110108');
INSERT INTO `mh_dict` VALUES ('642', '125', 'diqu', '门头沟区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110109');
INSERT INTO `mh_dict` VALUES ('643', '125', 'diqu', '房山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110111');
INSERT INTO `mh_dict` VALUES ('644', '125', 'diqu', '通州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110112');
INSERT INTO `mh_dict` VALUES ('645', '125', 'diqu', '顺义区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110113');
INSERT INTO `mh_dict` VALUES ('646', '125', 'diqu', '昌平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110114');
INSERT INTO `mh_dict` VALUES ('647', '125', 'diqu', '大兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110115');
INSERT INTO `mh_dict` VALUES ('648', '125', 'diqu', '怀柔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110116');
INSERT INTO `mh_dict` VALUES ('649', '125', 'diqu', '平谷区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110117');
INSERT INTO `mh_dict` VALUES ('650', '125', 'diqu', '密云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110228');
INSERT INTO `mh_dict` VALUES ('651', '125', 'diqu', '延庆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '110229');
INSERT INTO `mh_dict` VALUES ('652', '126', 'diqu', '和平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120101');
INSERT INTO `mh_dict` VALUES ('653', '126', 'diqu', '河东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120102');
INSERT INTO `mh_dict` VALUES ('654', '126', 'diqu', '河西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120103');
INSERT INTO `mh_dict` VALUES ('655', '126', 'diqu', '南开区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120104');
INSERT INTO `mh_dict` VALUES ('656', '126', 'diqu', '河北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120105');
INSERT INTO `mh_dict` VALUES ('657', '126', 'diqu', '红桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120106');
INSERT INTO `mh_dict` VALUES ('658', '126', 'diqu', '东丽区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120110');
INSERT INTO `mh_dict` VALUES ('659', '126', 'diqu', '西青区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120111');
INSERT INTO `mh_dict` VALUES ('660', '126', 'diqu', '津南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120112');
INSERT INTO `mh_dict` VALUES ('661', '126', 'diqu', '北辰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120113');
INSERT INTO `mh_dict` VALUES ('662', '126', 'diqu', '武清区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120114');
INSERT INTO `mh_dict` VALUES ('663', '126', 'diqu', '宝坻区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120115');
INSERT INTO `mh_dict` VALUES ('664', '126', 'diqu', '滨海新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120116');
INSERT INTO `mh_dict` VALUES ('665', '126', 'diqu', '宁河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120221');
INSERT INTO `mh_dict` VALUES ('666', '126', 'diqu', '静海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120223');
INSERT INTO `mh_dict` VALUES ('667', '126', 'diqu', '蓟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '120225');
INSERT INTO `mh_dict` VALUES ('668', '127', 'diqu', '长安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130102');
INSERT INTO `mh_dict` VALUES ('669', '127', 'diqu', '桥西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130104');
INSERT INTO `mh_dict` VALUES ('670', '127', 'diqu', '新华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130105');
INSERT INTO `mh_dict` VALUES ('671', '127', 'diqu', '井陉矿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130107');
INSERT INTO `mh_dict` VALUES ('672', '127', 'diqu', '裕华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130108');
INSERT INTO `mh_dict` VALUES ('673', '127', 'diqu', '藁城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130109');
INSERT INTO `mh_dict` VALUES ('674', '127', 'diqu', '鹿泉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130110');
INSERT INTO `mh_dict` VALUES ('675', '127', 'diqu', '栾城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130111');
INSERT INTO `mh_dict` VALUES ('676', '127', 'diqu', '井陉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130121');
INSERT INTO `mh_dict` VALUES ('677', '127', 'diqu', '正定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130123');
INSERT INTO `mh_dict` VALUES ('678', '127', 'diqu', '行唐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130125');
INSERT INTO `mh_dict` VALUES ('679', '127', 'diqu', '灵寿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130126');
INSERT INTO `mh_dict` VALUES ('680', '127', 'diqu', '高邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130127');
INSERT INTO `mh_dict` VALUES ('681', '127', 'diqu', '深泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130128');
INSERT INTO `mh_dict` VALUES ('682', '127', 'diqu', '赞皇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130129');
INSERT INTO `mh_dict` VALUES ('683', '127', 'diqu', '无极县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130130');
INSERT INTO `mh_dict` VALUES ('684', '127', 'diqu', '平山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130131');
INSERT INTO `mh_dict` VALUES ('685', '127', 'diqu', '元氏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130132');
INSERT INTO `mh_dict` VALUES ('686', '127', 'diqu', '赵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130133');
INSERT INTO `mh_dict` VALUES ('687', '127', 'diqu', '辛集市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130181');
INSERT INTO `mh_dict` VALUES ('688', '127', 'diqu', '晋州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130183');
INSERT INTO `mh_dict` VALUES ('689', '127', 'diqu', '新乐市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130184');
INSERT INTO `mh_dict` VALUES ('690', '128', 'diqu', '路南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130202');
INSERT INTO `mh_dict` VALUES ('691', '128', 'diqu', '路北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130203');
INSERT INTO `mh_dict` VALUES ('692', '128', 'diqu', '古冶区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130204');
INSERT INTO `mh_dict` VALUES ('693', '128', 'diqu', '开平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130205');
INSERT INTO `mh_dict` VALUES ('694', '128', 'diqu', '丰南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130207');
INSERT INTO `mh_dict` VALUES ('695', '128', 'diqu', '丰润区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130208');
INSERT INTO `mh_dict` VALUES ('696', '128', 'diqu', '曹妃甸区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130209');
INSERT INTO `mh_dict` VALUES ('697', '128', 'diqu', '滦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130223');
INSERT INTO `mh_dict` VALUES ('698', '128', 'diqu', '滦南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130224');
INSERT INTO `mh_dict` VALUES ('699', '128', 'diqu', '乐亭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130225');
INSERT INTO `mh_dict` VALUES ('700', '128', 'diqu', '迁西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130227');
INSERT INTO `mh_dict` VALUES ('701', '128', 'diqu', '玉田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130229');
INSERT INTO `mh_dict` VALUES ('702', '128', 'diqu', '遵化市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130281');
INSERT INTO `mh_dict` VALUES ('703', '128', 'diqu', '迁安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130283');
INSERT INTO `mh_dict` VALUES ('704', '129', 'diqu', '海港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130302');
INSERT INTO `mh_dict` VALUES ('705', '129', 'diqu', '山海关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130303');
INSERT INTO `mh_dict` VALUES ('706', '129', 'diqu', '北戴河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130304');
INSERT INTO `mh_dict` VALUES ('707', '129', 'diqu', '青龙满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130321');
INSERT INTO `mh_dict` VALUES ('708', '129', 'diqu', '昌黎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130322');
INSERT INTO `mh_dict` VALUES ('709', '129', 'diqu', '抚宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130323');
INSERT INTO `mh_dict` VALUES ('710', '129', 'diqu', '卢龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130324');
INSERT INTO `mh_dict` VALUES ('711', '130', 'diqu', '邯山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130402');
INSERT INTO `mh_dict` VALUES ('712', '130', 'diqu', '丛台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130403');
INSERT INTO `mh_dict` VALUES ('713', '130', 'diqu', '复兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130404');
INSERT INTO `mh_dict` VALUES ('714', '130', 'diqu', '峰峰矿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130406');
INSERT INTO `mh_dict` VALUES ('715', '130', 'diqu', '邯郸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130421');
INSERT INTO `mh_dict` VALUES ('716', '130', 'diqu', '临漳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130423');
INSERT INTO `mh_dict` VALUES ('717', '130', 'diqu', '成安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130424');
INSERT INTO `mh_dict` VALUES ('718', '130', 'diqu', '大名县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130425');
INSERT INTO `mh_dict` VALUES ('719', '130', 'diqu', '涉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130426');
INSERT INTO `mh_dict` VALUES ('720', '130', 'diqu', '磁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130427');
INSERT INTO `mh_dict` VALUES ('721', '130', 'diqu', '肥乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130428');
INSERT INTO `mh_dict` VALUES ('722', '130', 'diqu', '永年县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130429');
INSERT INTO `mh_dict` VALUES ('723', '130', 'diqu', '邱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130430');
INSERT INTO `mh_dict` VALUES ('724', '130', 'diqu', '鸡泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130431');
INSERT INTO `mh_dict` VALUES ('725', '130', 'diqu', '广平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130432');
INSERT INTO `mh_dict` VALUES ('726', '130', 'diqu', '馆陶县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130433');
INSERT INTO `mh_dict` VALUES ('727', '130', 'diqu', '魏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130434');
INSERT INTO `mh_dict` VALUES ('728', '130', 'diqu', '曲周县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130435');
INSERT INTO `mh_dict` VALUES ('729', '130', 'diqu', '武安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130481');
INSERT INTO `mh_dict` VALUES ('730', '131', 'diqu', '桥东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130502');
INSERT INTO `mh_dict` VALUES ('731', '131', 'diqu', '桥西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130503');
INSERT INTO `mh_dict` VALUES ('732', '131', 'diqu', '邢台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130521');
INSERT INTO `mh_dict` VALUES ('733', '131', 'diqu', '临城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130522');
INSERT INTO `mh_dict` VALUES ('734', '131', 'diqu', '内丘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130523');
INSERT INTO `mh_dict` VALUES ('735', '131', 'diqu', '柏乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130524');
INSERT INTO `mh_dict` VALUES ('736', '131', 'diqu', '隆尧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130525');
INSERT INTO `mh_dict` VALUES ('737', '131', 'diqu', '任县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130526');
INSERT INTO `mh_dict` VALUES ('738', '131', 'diqu', '南和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130527');
INSERT INTO `mh_dict` VALUES ('739', '131', 'diqu', '宁晋县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130528');
INSERT INTO `mh_dict` VALUES ('740', '131', 'diqu', '巨鹿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130529');
INSERT INTO `mh_dict` VALUES ('741', '131', 'diqu', '新河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130530');
INSERT INTO `mh_dict` VALUES ('742', '131', 'diqu', '广宗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130531');
INSERT INTO `mh_dict` VALUES ('743', '131', 'diqu', '平乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130532');
INSERT INTO `mh_dict` VALUES ('744', '131', 'diqu', '威县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130533');
INSERT INTO `mh_dict` VALUES ('745', '131', 'diqu', '清河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130534');
INSERT INTO `mh_dict` VALUES ('746', '131', 'diqu', '临西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130535');
INSERT INTO `mh_dict` VALUES ('747', '131', 'diqu', '南宫市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130581');
INSERT INTO `mh_dict` VALUES ('748', '131', 'diqu', '沙河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130582');
INSERT INTO `mh_dict` VALUES ('749', '132', 'diqu', '新市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130602');
INSERT INTO `mh_dict` VALUES ('750', '132', 'diqu', '北市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130603');
INSERT INTO `mh_dict` VALUES ('751', '132', 'diqu', '南市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130604');
INSERT INTO `mh_dict` VALUES ('752', '132', 'diqu', '满城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130621');
INSERT INTO `mh_dict` VALUES ('753', '132', 'diqu', '清苑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130622');
INSERT INTO `mh_dict` VALUES ('754', '132', 'diqu', '涞水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130623');
INSERT INTO `mh_dict` VALUES ('755', '132', 'diqu', '阜平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130624');
INSERT INTO `mh_dict` VALUES ('756', '132', 'diqu', '徐水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130625');
INSERT INTO `mh_dict` VALUES ('757', '132', 'diqu', '定兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130626');
INSERT INTO `mh_dict` VALUES ('758', '132', 'diqu', '唐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130627');
INSERT INTO `mh_dict` VALUES ('759', '132', 'diqu', '高阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130628');
INSERT INTO `mh_dict` VALUES ('760', '132', 'diqu', '容城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130629');
INSERT INTO `mh_dict` VALUES ('761', '132', 'diqu', '涞源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130630');
INSERT INTO `mh_dict` VALUES ('762', '132', 'diqu', '望都县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130631');
INSERT INTO `mh_dict` VALUES ('763', '132', 'diqu', '安新县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130632');
INSERT INTO `mh_dict` VALUES ('764', '132', 'diqu', '易县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130633');
INSERT INTO `mh_dict` VALUES ('765', '132', 'diqu', '曲阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130634');
INSERT INTO `mh_dict` VALUES ('766', '132', 'diqu', '蠡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130635');
INSERT INTO `mh_dict` VALUES ('767', '132', 'diqu', '顺平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130636');
INSERT INTO `mh_dict` VALUES ('768', '132', 'diqu', '博野县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130637');
INSERT INTO `mh_dict` VALUES ('769', '132', 'diqu', '雄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130638');
INSERT INTO `mh_dict` VALUES ('770', '132', 'diqu', '涿州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130681');
INSERT INTO `mh_dict` VALUES ('771', '132', 'diqu', '定州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130682');
INSERT INTO `mh_dict` VALUES ('772', '132', 'diqu', '安国市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130683');
INSERT INTO `mh_dict` VALUES ('773', '132', 'diqu', '高碑店市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130684');
INSERT INTO `mh_dict` VALUES ('774', '133', 'diqu', '桥东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130702');
INSERT INTO `mh_dict` VALUES ('775', '133', 'diqu', '桥西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130703');
INSERT INTO `mh_dict` VALUES ('776', '133', 'diqu', '宣化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130705');
INSERT INTO `mh_dict` VALUES ('777', '133', 'diqu', '下花园区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130706');
INSERT INTO `mh_dict` VALUES ('778', '133', 'diqu', '宣化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130721');
INSERT INTO `mh_dict` VALUES ('779', '133', 'diqu', '张北县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130722');
INSERT INTO `mh_dict` VALUES ('780', '133', 'diqu', '康保县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130723');
INSERT INTO `mh_dict` VALUES ('781', '133', 'diqu', '沽源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130724');
INSERT INTO `mh_dict` VALUES ('782', '133', 'diqu', '尚义县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130725');
INSERT INTO `mh_dict` VALUES ('783', '133', 'diqu', '蔚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130726');
INSERT INTO `mh_dict` VALUES ('784', '133', 'diqu', '阳原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130727');
INSERT INTO `mh_dict` VALUES ('785', '133', 'diqu', '怀安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130728');
INSERT INTO `mh_dict` VALUES ('786', '133', 'diqu', '万全县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130729');
INSERT INTO `mh_dict` VALUES ('787', '133', 'diqu', '怀来县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130730');
INSERT INTO `mh_dict` VALUES ('788', '133', 'diqu', '涿鹿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130731');
INSERT INTO `mh_dict` VALUES ('789', '133', 'diqu', '赤城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130732');
INSERT INTO `mh_dict` VALUES ('790', '133', 'diqu', '崇礼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130733');
INSERT INTO `mh_dict` VALUES ('791', '134', 'diqu', '双桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130802');
INSERT INTO `mh_dict` VALUES ('792', '134', 'diqu', '双滦区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130803');
INSERT INTO `mh_dict` VALUES ('793', '134', 'diqu', '鹰手营子矿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130804');
INSERT INTO `mh_dict` VALUES ('794', '134', 'diqu', '承德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130821');
INSERT INTO `mh_dict` VALUES ('795', '134', 'diqu', '兴隆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130822');
INSERT INTO `mh_dict` VALUES ('796', '134', 'diqu', '平泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130823');
INSERT INTO `mh_dict` VALUES ('797', '134', 'diqu', '滦平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130824');
INSERT INTO `mh_dict` VALUES ('798', '134', 'diqu', '隆化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130825');
INSERT INTO `mh_dict` VALUES ('799', '134', 'diqu', '丰宁满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130826');
INSERT INTO `mh_dict` VALUES ('800', '134', 'diqu', '宽城满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130827');
INSERT INTO `mh_dict` VALUES ('801', '134', 'diqu', '围场满族蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130828');
INSERT INTO `mh_dict` VALUES ('802', '135', 'diqu', '新华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130902');
INSERT INTO `mh_dict` VALUES ('803', '135', 'diqu', '运河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130903');
INSERT INTO `mh_dict` VALUES ('804', '135', 'diqu', '沧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130921');
INSERT INTO `mh_dict` VALUES ('805', '135', 'diqu', '青县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130922');
INSERT INTO `mh_dict` VALUES ('806', '135', 'diqu', '东光县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130923');
INSERT INTO `mh_dict` VALUES ('807', '135', 'diqu', '海兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130924');
INSERT INTO `mh_dict` VALUES ('808', '135', 'diqu', '盐山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130925');
INSERT INTO `mh_dict` VALUES ('809', '135', 'diqu', '肃宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130926');
INSERT INTO `mh_dict` VALUES ('810', '135', 'diqu', '南皮县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130927');
INSERT INTO `mh_dict` VALUES ('811', '135', 'diqu', '吴桥县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130928');
INSERT INTO `mh_dict` VALUES ('812', '135', 'diqu', '献县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130929');
INSERT INTO `mh_dict` VALUES ('813', '135', 'diqu', '孟村回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130930');
INSERT INTO `mh_dict` VALUES ('814', '135', 'diqu', '泊头市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130981');
INSERT INTO `mh_dict` VALUES ('815', '135', 'diqu', '任丘市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130982');
INSERT INTO `mh_dict` VALUES ('816', '135', 'diqu', '黄骅市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130983');
INSERT INTO `mh_dict` VALUES ('817', '135', 'diqu', '河间市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '130984');
INSERT INTO `mh_dict` VALUES ('818', '136', 'diqu', '安次区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131002');
INSERT INTO `mh_dict` VALUES ('819', '136', 'diqu', '广阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131003');
INSERT INTO `mh_dict` VALUES ('820', '136', 'diqu', '固安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131022');
INSERT INTO `mh_dict` VALUES ('821', '136', 'diqu', '永清县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131023');
INSERT INTO `mh_dict` VALUES ('822', '136', 'diqu', '香河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131024');
INSERT INTO `mh_dict` VALUES ('823', '136', 'diqu', '大城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131025');
INSERT INTO `mh_dict` VALUES ('824', '136', 'diqu', '文安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131026');
INSERT INTO `mh_dict` VALUES ('825', '136', 'diqu', '大厂回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131028');
INSERT INTO `mh_dict` VALUES ('826', '136', 'diqu', '霸州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131081');
INSERT INTO `mh_dict` VALUES ('827', '136', 'diqu', '三河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131082');
INSERT INTO `mh_dict` VALUES ('828', '137', 'diqu', '桃城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131102');
INSERT INTO `mh_dict` VALUES ('829', '137', 'diqu', '枣强县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131121');
INSERT INTO `mh_dict` VALUES ('830', '137', 'diqu', '武邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131122');
INSERT INTO `mh_dict` VALUES ('831', '137', 'diqu', '武强县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131123');
INSERT INTO `mh_dict` VALUES ('832', '137', 'diqu', '饶阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131124');
INSERT INTO `mh_dict` VALUES ('833', '137', 'diqu', '安平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131125');
INSERT INTO `mh_dict` VALUES ('834', '137', 'diqu', '故城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131126');
INSERT INTO `mh_dict` VALUES ('835', '137', 'diqu', '景县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131127');
INSERT INTO `mh_dict` VALUES ('836', '137', 'diqu', '阜城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131128');
INSERT INTO `mh_dict` VALUES ('837', '137', 'diqu', '冀州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131181');
INSERT INTO `mh_dict` VALUES ('838', '137', 'diqu', '深州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '131182');
INSERT INTO `mh_dict` VALUES ('839', '138', 'diqu', '小店区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140105');
INSERT INTO `mh_dict` VALUES ('840', '138', 'diqu', '迎泽区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140106');
INSERT INTO `mh_dict` VALUES ('841', '138', 'diqu', '杏花岭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140107');
INSERT INTO `mh_dict` VALUES ('842', '138', 'diqu', '尖草坪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140108');
INSERT INTO `mh_dict` VALUES ('843', '138', 'diqu', '万柏林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140109');
INSERT INTO `mh_dict` VALUES ('844', '138', 'diqu', '晋源区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140110');
INSERT INTO `mh_dict` VALUES ('845', '138', 'diqu', '清徐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140121');
INSERT INTO `mh_dict` VALUES ('846', '138', 'diqu', '阳曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140122');
INSERT INTO `mh_dict` VALUES ('847', '138', 'diqu', '娄烦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140123');
INSERT INTO `mh_dict` VALUES ('848', '138', 'diqu', '古交市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140181');
INSERT INTO `mh_dict` VALUES ('849', '139', 'diqu', '城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140202');
INSERT INTO `mh_dict` VALUES ('850', '139', 'diqu', '矿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140203');
INSERT INTO `mh_dict` VALUES ('851', '139', 'diqu', '南郊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140211');
INSERT INTO `mh_dict` VALUES ('852', '139', 'diqu', '新荣区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140212');
INSERT INTO `mh_dict` VALUES ('853', '139', 'diqu', '阳高县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140221');
INSERT INTO `mh_dict` VALUES ('854', '139', 'diqu', '天镇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140222');
INSERT INTO `mh_dict` VALUES ('855', '139', 'diqu', '广灵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140223');
INSERT INTO `mh_dict` VALUES ('856', '139', 'diqu', '灵丘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140224');
INSERT INTO `mh_dict` VALUES ('857', '139', 'diqu', '浑源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140225');
INSERT INTO `mh_dict` VALUES ('858', '139', 'diqu', '左云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140226');
INSERT INTO `mh_dict` VALUES ('859', '139', 'diqu', '大同县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140227');
INSERT INTO `mh_dict` VALUES ('860', '140', 'diqu', '城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140302');
INSERT INTO `mh_dict` VALUES ('861', '140', 'diqu', '矿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140303');
INSERT INTO `mh_dict` VALUES ('862', '140', 'diqu', '郊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140311');
INSERT INTO `mh_dict` VALUES ('863', '140', 'diqu', '平定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140321');
INSERT INTO `mh_dict` VALUES ('864', '140', 'diqu', '盂县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140322');
INSERT INTO `mh_dict` VALUES ('865', '141', 'diqu', '城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140402');
INSERT INTO `mh_dict` VALUES ('866', '141', 'diqu', '郊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140411');
INSERT INTO `mh_dict` VALUES ('867', '141', 'diqu', '长治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140421');
INSERT INTO `mh_dict` VALUES ('868', '141', 'diqu', '襄垣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140423');
INSERT INTO `mh_dict` VALUES ('869', '141', 'diqu', '屯留县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140424');
INSERT INTO `mh_dict` VALUES ('870', '141', 'diqu', '平顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140425');
INSERT INTO `mh_dict` VALUES ('871', '141', 'diqu', '黎城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140426');
INSERT INTO `mh_dict` VALUES ('872', '141', 'diqu', '壶关县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140427');
INSERT INTO `mh_dict` VALUES ('873', '141', 'diqu', '长子县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140428');
INSERT INTO `mh_dict` VALUES ('874', '141', 'diqu', '武乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140429');
INSERT INTO `mh_dict` VALUES ('875', '141', 'diqu', '沁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140430');
INSERT INTO `mh_dict` VALUES ('876', '141', 'diqu', '沁源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140431');
INSERT INTO `mh_dict` VALUES ('877', '141', 'diqu', '潞城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140481');
INSERT INTO `mh_dict` VALUES ('878', '142', 'diqu', '城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140502');
INSERT INTO `mh_dict` VALUES ('879', '142', 'diqu', '沁水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140521');
INSERT INTO `mh_dict` VALUES ('880', '142', 'diqu', '阳城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140522');
INSERT INTO `mh_dict` VALUES ('881', '142', 'diqu', '陵川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140524');
INSERT INTO `mh_dict` VALUES ('882', '142', 'diqu', '泽州县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140525');
INSERT INTO `mh_dict` VALUES ('883', '142', 'diqu', '高平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140581');
INSERT INTO `mh_dict` VALUES ('884', '143', 'diqu', '朔城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140602');
INSERT INTO `mh_dict` VALUES ('885', '143', 'diqu', '平鲁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140603');
INSERT INTO `mh_dict` VALUES ('886', '143', 'diqu', '山阴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140621');
INSERT INTO `mh_dict` VALUES ('887', '143', 'diqu', '应县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140622');
INSERT INTO `mh_dict` VALUES ('888', '143', 'diqu', '右玉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140623');
INSERT INTO `mh_dict` VALUES ('889', '143', 'diqu', '怀仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140624');
INSERT INTO `mh_dict` VALUES ('890', '144', 'diqu', '榆次区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140702');
INSERT INTO `mh_dict` VALUES ('891', '144', 'diqu', '榆社县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140721');
INSERT INTO `mh_dict` VALUES ('892', '144', 'diqu', '左权县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140722');
INSERT INTO `mh_dict` VALUES ('893', '144', 'diqu', '和顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140723');
INSERT INTO `mh_dict` VALUES ('894', '144', 'diqu', '昔阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140724');
INSERT INTO `mh_dict` VALUES ('895', '144', 'diqu', '寿阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140725');
INSERT INTO `mh_dict` VALUES ('896', '144', 'diqu', '太谷县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140726');
INSERT INTO `mh_dict` VALUES ('897', '144', 'diqu', '祁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140727');
INSERT INTO `mh_dict` VALUES ('898', '144', 'diqu', '平遥县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140728');
INSERT INTO `mh_dict` VALUES ('899', '144', 'diqu', '灵石县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140729');
INSERT INTO `mh_dict` VALUES ('900', '144', 'diqu', '介休市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140781');
INSERT INTO `mh_dict` VALUES ('901', '145', 'diqu', '盐湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140802');
INSERT INTO `mh_dict` VALUES ('902', '145', 'diqu', '临猗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140821');
INSERT INTO `mh_dict` VALUES ('903', '145', 'diqu', '万荣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140822');
INSERT INTO `mh_dict` VALUES ('904', '145', 'diqu', '闻喜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140823');
INSERT INTO `mh_dict` VALUES ('905', '145', 'diqu', '稷山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140824');
INSERT INTO `mh_dict` VALUES ('906', '145', 'diqu', '新绛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140825');
INSERT INTO `mh_dict` VALUES ('907', '145', 'diqu', '绛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140826');
INSERT INTO `mh_dict` VALUES ('908', '145', 'diqu', '垣曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140827');
INSERT INTO `mh_dict` VALUES ('909', '145', 'diqu', '夏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140828');
INSERT INTO `mh_dict` VALUES ('910', '145', 'diqu', '平陆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140829');
INSERT INTO `mh_dict` VALUES ('911', '145', 'diqu', '芮城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140830');
INSERT INTO `mh_dict` VALUES ('912', '145', 'diqu', '永济市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140881');
INSERT INTO `mh_dict` VALUES ('913', '145', 'diqu', '河津市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140882');
INSERT INTO `mh_dict` VALUES ('914', '146', 'diqu', '忻府区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140902');
INSERT INTO `mh_dict` VALUES ('915', '146', 'diqu', '定襄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140921');
INSERT INTO `mh_dict` VALUES ('916', '146', 'diqu', '五台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140922');
INSERT INTO `mh_dict` VALUES ('917', '146', 'diqu', '代县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140923');
INSERT INTO `mh_dict` VALUES ('918', '146', 'diqu', '繁峙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140924');
INSERT INTO `mh_dict` VALUES ('919', '146', 'diqu', '宁武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140925');
INSERT INTO `mh_dict` VALUES ('920', '146', 'diqu', '静乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140926');
INSERT INTO `mh_dict` VALUES ('921', '146', 'diqu', '神池县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140927');
INSERT INTO `mh_dict` VALUES ('922', '146', 'diqu', '五寨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140928');
INSERT INTO `mh_dict` VALUES ('923', '146', 'diqu', '岢岚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140929');
INSERT INTO `mh_dict` VALUES ('924', '146', 'diqu', '河曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140930');
INSERT INTO `mh_dict` VALUES ('925', '146', 'diqu', '保德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140931');
INSERT INTO `mh_dict` VALUES ('926', '146', 'diqu', '偏关县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140932');
INSERT INTO `mh_dict` VALUES ('927', '146', 'diqu', '原平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '140981');
INSERT INTO `mh_dict` VALUES ('928', '147', 'diqu', '尧都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141002');
INSERT INTO `mh_dict` VALUES ('929', '147', 'diqu', '曲沃县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141021');
INSERT INTO `mh_dict` VALUES ('930', '147', 'diqu', '翼城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141022');
INSERT INTO `mh_dict` VALUES ('931', '147', 'diqu', '襄汾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141023');
INSERT INTO `mh_dict` VALUES ('932', '147', 'diqu', '洪洞县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141024');
INSERT INTO `mh_dict` VALUES ('933', '147', 'diqu', '古县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141025');
INSERT INTO `mh_dict` VALUES ('934', '147', 'diqu', '安泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141026');
INSERT INTO `mh_dict` VALUES ('935', '147', 'diqu', '浮山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141027');
INSERT INTO `mh_dict` VALUES ('936', '147', 'diqu', '吉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141028');
INSERT INTO `mh_dict` VALUES ('937', '147', 'diqu', '乡宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141029');
INSERT INTO `mh_dict` VALUES ('938', '147', 'diqu', '大宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141030');
INSERT INTO `mh_dict` VALUES ('939', '147', 'diqu', '隰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141031');
INSERT INTO `mh_dict` VALUES ('940', '147', 'diqu', '永和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141032');
INSERT INTO `mh_dict` VALUES ('941', '147', 'diqu', '蒲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141033');
INSERT INTO `mh_dict` VALUES ('942', '147', 'diqu', '汾西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141034');
INSERT INTO `mh_dict` VALUES ('943', '147', 'diqu', '侯马市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141081');
INSERT INTO `mh_dict` VALUES ('944', '147', 'diqu', '霍州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141082');
INSERT INTO `mh_dict` VALUES ('945', '148', 'diqu', '离石区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141102');
INSERT INTO `mh_dict` VALUES ('946', '148', 'diqu', '文水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141121');
INSERT INTO `mh_dict` VALUES ('947', '148', 'diqu', '交城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141122');
INSERT INTO `mh_dict` VALUES ('948', '148', 'diqu', '兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141123');
INSERT INTO `mh_dict` VALUES ('949', '148', 'diqu', '临县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141124');
INSERT INTO `mh_dict` VALUES ('950', '148', 'diqu', '柳林县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141125');
INSERT INTO `mh_dict` VALUES ('951', '148', 'diqu', '石楼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141126');
INSERT INTO `mh_dict` VALUES ('952', '148', 'diqu', '岚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141127');
INSERT INTO `mh_dict` VALUES ('953', '148', 'diqu', '方山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141128');
INSERT INTO `mh_dict` VALUES ('954', '148', 'diqu', '中阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141129');
INSERT INTO `mh_dict` VALUES ('955', '148', 'diqu', '交口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141130');
INSERT INTO `mh_dict` VALUES ('956', '148', 'diqu', '孝义市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141181');
INSERT INTO `mh_dict` VALUES ('957', '148', 'diqu', '汾阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '141182');
INSERT INTO `mh_dict` VALUES ('958', '149', 'diqu', '新城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150102');
INSERT INTO `mh_dict` VALUES ('959', '149', 'diqu', '回民区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150103');
INSERT INTO `mh_dict` VALUES ('960', '149', 'diqu', '玉泉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150104');
INSERT INTO `mh_dict` VALUES ('961', '149', 'diqu', '赛罕区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150105');
INSERT INTO `mh_dict` VALUES ('962', '149', 'diqu', '土默特左旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150121');
INSERT INTO `mh_dict` VALUES ('963', '149', 'diqu', '托克托县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150122');
INSERT INTO `mh_dict` VALUES ('964', '149', 'diqu', '和林格尔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150123');
INSERT INTO `mh_dict` VALUES ('965', '149', 'diqu', '清水河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150124');
INSERT INTO `mh_dict` VALUES ('966', '149', 'diqu', '武川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150125');
INSERT INTO `mh_dict` VALUES ('967', '150', 'diqu', '东河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150202');
INSERT INTO `mh_dict` VALUES ('968', '150', 'diqu', '昆都仑区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150203');
INSERT INTO `mh_dict` VALUES ('969', '150', 'diqu', '青山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150204');
INSERT INTO `mh_dict` VALUES ('970', '150', 'diqu', '石拐区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150205');
INSERT INTO `mh_dict` VALUES ('971', '150', 'diqu', '白云鄂博矿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150206');
INSERT INTO `mh_dict` VALUES ('972', '150', 'diqu', '九原区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150207');
INSERT INTO `mh_dict` VALUES ('973', '150', 'diqu', '土默特右旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150221');
INSERT INTO `mh_dict` VALUES ('974', '150', 'diqu', '固阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150222');
INSERT INTO `mh_dict` VALUES ('975', '150', 'diqu', '达尔罕茂明安联合旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150223');
INSERT INTO `mh_dict` VALUES ('976', '151', 'diqu', '海勃湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150302');
INSERT INTO `mh_dict` VALUES ('977', '151', 'diqu', '海南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150303');
INSERT INTO `mh_dict` VALUES ('978', '151', 'diqu', '乌达区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150304');
INSERT INTO `mh_dict` VALUES ('979', '152', 'diqu', '红山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150402');
INSERT INTO `mh_dict` VALUES ('980', '152', 'diqu', '元宝山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150403');
INSERT INTO `mh_dict` VALUES ('981', '152', 'diqu', '松山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150404');
INSERT INTO `mh_dict` VALUES ('982', '152', 'diqu', '阿鲁科尔沁旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150421');
INSERT INTO `mh_dict` VALUES ('983', '152', 'diqu', '巴林左旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150422');
INSERT INTO `mh_dict` VALUES ('984', '152', 'diqu', '巴林右旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150423');
INSERT INTO `mh_dict` VALUES ('985', '152', 'diqu', '林西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150424');
INSERT INTO `mh_dict` VALUES ('986', '152', 'diqu', '克什克腾旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150425');
INSERT INTO `mh_dict` VALUES ('987', '152', 'diqu', '翁牛特旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150426');
INSERT INTO `mh_dict` VALUES ('988', '152', 'diqu', '喀喇沁旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150428');
INSERT INTO `mh_dict` VALUES ('989', '152', 'diqu', '宁城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150429');
INSERT INTO `mh_dict` VALUES ('990', '152', 'diqu', '敖汉旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150430');
INSERT INTO `mh_dict` VALUES ('991', '153', 'diqu', '科尔沁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150502');
INSERT INTO `mh_dict` VALUES ('992', '153', 'diqu', '科尔沁左翼中旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150521');
INSERT INTO `mh_dict` VALUES ('993', '153', 'diqu', '科尔沁左翼后旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150522');
INSERT INTO `mh_dict` VALUES ('994', '153', 'diqu', '开鲁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150523');
INSERT INTO `mh_dict` VALUES ('995', '153', 'diqu', '库伦旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150524');
INSERT INTO `mh_dict` VALUES ('996', '153', 'diqu', '奈曼旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150525');
INSERT INTO `mh_dict` VALUES ('997', '153', 'diqu', '扎鲁特旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150526');
INSERT INTO `mh_dict` VALUES ('998', '153', 'diqu', '霍林郭勒市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150581');
INSERT INTO `mh_dict` VALUES ('999', '154', 'diqu', '东胜区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150602');
INSERT INTO `mh_dict` VALUES ('1000', '154', 'diqu', '达拉特旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150621');
INSERT INTO `mh_dict` VALUES ('1001', '154', 'diqu', '准格尔旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150622');
INSERT INTO `mh_dict` VALUES ('1002', '154', 'diqu', '鄂托克前旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150623');
INSERT INTO `mh_dict` VALUES ('1003', '154', 'diqu', '鄂托克旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150624');
INSERT INTO `mh_dict` VALUES ('1004', '154', 'diqu', '杭锦旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150625');
INSERT INTO `mh_dict` VALUES ('1005', '154', 'diqu', '乌审旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150626');
INSERT INTO `mh_dict` VALUES ('1006', '154', 'diqu', '伊金霍洛旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150627');
INSERT INTO `mh_dict` VALUES ('1007', '155', 'diqu', '海拉尔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150702');
INSERT INTO `mh_dict` VALUES ('1008', '155', 'diqu', '扎赉诺尔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150703');
INSERT INTO `mh_dict` VALUES ('1009', '155', 'diqu', '阿荣旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150721');
INSERT INTO `mh_dict` VALUES ('1010', '155', 'diqu', '莫力达瓦达斡尔族自治旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150722');
INSERT INTO `mh_dict` VALUES ('1011', '155', 'diqu', '鄂伦春自治旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150723');
INSERT INTO `mh_dict` VALUES ('1012', '155', 'diqu', '鄂温克族自治旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150724');
INSERT INTO `mh_dict` VALUES ('1013', '155', 'diqu', '陈巴尔虎旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150725');
INSERT INTO `mh_dict` VALUES ('1014', '155', 'diqu', '新巴尔虎左旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150726');
INSERT INTO `mh_dict` VALUES ('1015', '155', 'diqu', '新巴尔虎右旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150727');
INSERT INTO `mh_dict` VALUES ('1016', '155', 'diqu', '满洲里市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150781');
INSERT INTO `mh_dict` VALUES ('1017', '155', 'diqu', '牙克石市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150782');
INSERT INTO `mh_dict` VALUES ('1018', '155', 'diqu', '扎兰屯市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150783');
INSERT INTO `mh_dict` VALUES ('1019', '155', 'diqu', '额尔古纳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150784');
INSERT INTO `mh_dict` VALUES ('1020', '155', 'diqu', '根河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150785');
INSERT INTO `mh_dict` VALUES ('1021', '156', 'diqu', '临河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150802');
INSERT INTO `mh_dict` VALUES ('1022', '156', 'diqu', '五原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150821');
INSERT INTO `mh_dict` VALUES ('1023', '156', 'diqu', '磴口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150822');
INSERT INTO `mh_dict` VALUES ('1024', '156', 'diqu', '乌拉特前旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150823');
INSERT INTO `mh_dict` VALUES ('1025', '156', 'diqu', '乌拉特中旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150824');
INSERT INTO `mh_dict` VALUES ('1026', '156', 'diqu', '乌拉特后旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150825');
INSERT INTO `mh_dict` VALUES ('1027', '156', 'diqu', '杭锦后旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150826');
INSERT INTO `mh_dict` VALUES ('1028', '157', 'diqu', '集宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150902');
INSERT INTO `mh_dict` VALUES ('1029', '157', 'diqu', '卓资县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150921');
INSERT INTO `mh_dict` VALUES ('1030', '157', 'diqu', '化德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150922');
INSERT INTO `mh_dict` VALUES ('1031', '157', 'diqu', '商都县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150923');
INSERT INTO `mh_dict` VALUES ('1032', '157', 'diqu', '兴和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150924');
INSERT INTO `mh_dict` VALUES ('1033', '157', 'diqu', '凉城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150925');
INSERT INTO `mh_dict` VALUES ('1034', '157', 'diqu', '察哈尔右翼前旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150926');
INSERT INTO `mh_dict` VALUES ('1035', '157', 'diqu', '察哈尔右翼中旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150927');
INSERT INTO `mh_dict` VALUES ('1036', '157', 'diqu', '察哈尔右翼后旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150928');
INSERT INTO `mh_dict` VALUES ('1037', '157', 'diqu', '四子王旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150929');
INSERT INTO `mh_dict` VALUES ('1038', '157', 'diqu', '丰镇市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '150981');
INSERT INTO `mh_dict` VALUES ('1039', '158', 'diqu', '乌兰浩特市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152201');
INSERT INTO `mh_dict` VALUES ('1040', '158', 'diqu', '阿尔山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152202');
INSERT INTO `mh_dict` VALUES ('1041', '158', 'diqu', '科尔沁右翼前旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152221');
INSERT INTO `mh_dict` VALUES ('1042', '158', 'diqu', '科尔沁右翼中旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152222');
INSERT INTO `mh_dict` VALUES ('1043', '158', 'diqu', '扎赉特旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152223');
INSERT INTO `mh_dict` VALUES ('1044', '158', 'diqu', '突泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152224');
INSERT INTO `mh_dict` VALUES ('1045', '159', 'diqu', '二连浩特市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152501');
INSERT INTO `mh_dict` VALUES ('1046', '159', 'diqu', '锡林浩特市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152502');
INSERT INTO `mh_dict` VALUES ('1047', '159', 'diqu', '阿巴嘎旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152522');
INSERT INTO `mh_dict` VALUES ('1048', '159', 'diqu', '苏尼特左旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152523');
INSERT INTO `mh_dict` VALUES ('1049', '159', 'diqu', '苏尼特右旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152524');
INSERT INTO `mh_dict` VALUES ('1050', '159', 'diqu', '东乌珠穆沁旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152525');
INSERT INTO `mh_dict` VALUES ('1051', '159', 'diqu', '西乌珠穆沁旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152526');
INSERT INTO `mh_dict` VALUES ('1052', '159', 'diqu', '太仆寺旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152527');
INSERT INTO `mh_dict` VALUES ('1053', '159', 'diqu', '镶黄旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152528');
INSERT INTO `mh_dict` VALUES ('1054', '159', 'diqu', '正镶白旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152529');
INSERT INTO `mh_dict` VALUES ('1055', '159', 'diqu', '正蓝旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152530');
INSERT INTO `mh_dict` VALUES ('1056', '159', 'diqu', '多伦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152531');
INSERT INTO `mh_dict` VALUES ('1057', '160', 'diqu', '阿拉善左旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152921');
INSERT INTO `mh_dict` VALUES ('1058', '160', 'diqu', '阿拉善右旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152922');
INSERT INTO `mh_dict` VALUES ('1059', '160', 'diqu', '额济纳旗', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '152923');
INSERT INTO `mh_dict` VALUES ('1060', '161', 'diqu', '和平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210102');
INSERT INTO `mh_dict` VALUES ('1061', '161', 'diqu', '沈河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210103');
INSERT INTO `mh_dict` VALUES ('1062', '161', 'diqu', '大东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210104');
INSERT INTO `mh_dict` VALUES ('1063', '161', 'diqu', '皇姑区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210105');
INSERT INTO `mh_dict` VALUES ('1064', '161', 'diqu', '铁西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210106');
INSERT INTO `mh_dict` VALUES ('1065', '161', 'diqu', '苏家屯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210111');
INSERT INTO `mh_dict` VALUES ('1066', '161', 'diqu', '浑南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210112');
INSERT INTO `mh_dict` VALUES ('1067', '161', 'diqu', '沈北新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210113');
INSERT INTO `mh_dict` VALUES ('1068', '161', 'diqu', '于洪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210114');
INSERT INTO `mh_dict` VALUES ('1069', '161', 'diqu', '辽中县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210122');
INSERT INTO `mh_dict` VALUES ('1070', '161', 'diqu', '康平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210123');
INSERT INTO `mh_dict` VALUES ('1071', '161', 'diqu', '法库县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210124');
INSERT INTO `mh_dict` VALUES ('1072', '161', 'diqu', '新民市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210181');
INSERT INTO `mh_dict` VALUES ('1073', '162', 'diqu', '中山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210202');
INSERT INTO `mh_dict` VALUES ('1074', '162', 'diqu', '西岗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210203');
INSERT INTO `mh_dict` VALUES ('1075', '162', 'diqu', '沙河口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210204');
INSERT INTO `mh_dict` VALUES ('1076', '162', 'diqu', '甘井子区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210211');
INSERT INTO `mh_dict` VALUES ('1077', '162', 'diqu', '旅顺口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210212');
INSERT INTO `mh_dict` VALUES ('1078', '162', 'diqu', '金州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210213');
INSERT INTO `mh_dict` VALUES ('1079', '162', 'diqu', '长海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210224');
INSERT INTO `mh_dict` VALUES ('1080', '162', 'diqu', '瓦房店市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210281');
INSERT INTO `mh_dict` VALUES ('1081', '162', 'diqu', '普兰店市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210282');
INSERT INTO `mh_dict` VALUES ('1082', '162', 'diqu', '庄河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210283');
INSERT INTO `mh_dict` VALUES ('1083', '163', 'diqu', '铁东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210302');
INSERT INTO `mh_dict` VALUES ('1084', '163', 'diqu', '铁西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210303');
INSERT INTO `mh_dict` VALUES ('1085', '163', 'diqu', '立山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210304');
INSERT INTO `mh_dict` VALUES ('1086', '163', 'diqu', '千山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210311');
INSERT INTO `mh_dict` VALUES ('1087', '163', 'diqu', '台安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210321');
INSERT INTO `mh_dict` VALUES ('1088', '163', 'diqu', '岫岩满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210323');
INSERT INTO `mh_dict` VALUES ('1089', '163', 'diqu', '海城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210381');
INSERT INTO `mh_dict` VALUES ('1090', '164', 'diqu', '新抚区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210402');
INSERT INTO `mh_dict` VALUES ('1091', '164', 'diqu', '东洲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210403');
INSERT INTO `mh_dict` VALUES ('1092', '164', 'diqu', '望花区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210404');
INSERT INTO `mh_dict` VALUES ('1093', '164', 'diqu', '顺城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210411');
INSERT INTO `mh_dict` VALUES ('1094', '164', 'diqu', '抚顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210421');
INSERT INTO `mh_dict` VALUES ('1095', '164', 'diqu', '新宾满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210422');
INSERT INTO `mh_dict` VALUES ('1096', '164', 'diqu', '清原满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210423');
INSERT INTO `mh_dict` VALUES ('1097', '165', 'diqu', '平山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210502');
INSERT INTO `mh_dict` VALUES ('1098', '165', 'diqu', '溪湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210503');
INSERT INTO `mh_dict` VALUES ('1099', '165', 'diqu', '明山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210504');
INSERT INTO `mh_dict` VALUES ('1100', '165', 'diqu', '南芬区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210505');
INSERT INTO `mh_dict` VALUES ('1101', '165', 'diqu', '本溪满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210521');
INSERT INTO `mh_dict` VALUES ('1102', '165', 'diqu', '桓仁满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210522');
INSERT INTO `mh_dict` VALUES ('1103', '166', 'diqu', '元宝区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210602');
INSERT INTO `mh_dict` VALUES ('1104', '166', 'diqu', '振兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210603');
INSERT INTO `mh_dict` VALUES ('1105', '166', 'diqu', '振安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210604');
INSERT INTO `mh_dict` VALUES ('1106', '166', 'diqu', '宽甸满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210624');
INSERT INTO `mh_dict` VALUES ('1107', '166', 'diqu', '东港市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210681');
INSERT INTO `mh_dict` VALUES ('1108', '166', 'diqu', '凤城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210682');
INSERT INTO `mh_dict` VALUES ('1109', '167', 'diqu', '古塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210702');
INSERT INTO `mh_dict` VALUES ('1110', '167', 'diqu', '凌河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210703');
INSERT INTO `mh_dict` VALUES ('1111', '167', 'diqu', '太和区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210711');
INSERT INTO `mh_dict` VALUES ('1112', '167', 'diqu', '黑山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210726');
INSERT INTO `mh_dict` VALUES ('1113', '167', 'diqu', '义县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210727');
INSERT INTO `mh_dict` VALUES ('1114', '167', 'diqu', '凌海市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210781');
INSERT INTO `mh_dict` VALUES ('1115', '167', 'diqu', '北镇市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210782');
INSERT INTO `mh_dict` VALUES ('1116', '168', 'diqu', '站前区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210802');
INSERT INTO `mh_dict` VALUES ('1117', '168', 'diqu', '西市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210803');
INSERT INTO `mh_dict` VALUES ('1118', '168', 'diqu', '鲅鱼圈区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210804');
INSERT INTO `mh_dict` VALUES ('1119', '168', 'diqu', '老边区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210811');
INSERT INTO `mh_dict` VALUES ('1120', '168', 'diqu', '盖州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210881');
INSERT INTO `mh_dict` VALUES ('1121', '168', 'diqu', '大石桥市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210882');
INSERT INTO `mh_dict` VALUES ('1122', '169', 'diqu', '海州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210902');
INSERT INTO `mh_dict` VALUES ('1123', '169', 'diqu', '新邱区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210903');
INSERT INTO `mh_dict` VALUES ('1124', '169', 'diqu', '太平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210904');
INSERT INTO `mh_dict` VALUES ('1125', '169', 'diqu', '清河门区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210905');
INSERT INTO `mh_dict` VALUES ('1126', '169', 'diqu', '细河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210911');
INSERT INTO `mh_dict` VALUES ('1127', '169', 'diqu', '阜新蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210921');
INSERT INTO `mh_dict` VALUES ('1128', '169', 'diqu', '彰武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '210922');
INSERT INTO `mh_dict` VALUES ('1129', '170', 'diqu', '白塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211002');
INSERT INTO `mh_dict` VALUES ('1130', '170', 'diqu', '文圣区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211003');
INSERT INTO `mh_dict` VALUES ('1131', '170', 'diqu', '宏伟区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211004');
INSERT INTO `mh_dict` VALUES ('1132', '170', 'diqu', '弓长岭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211005');
INSERT INTO `mh_dict` VALUES ('1133', '170', 'diqu', '太子河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211011');
INSERT INTO `mh_dict` VALUES ('1134', '170', 'diqu', '辽阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211021');
INSERT INTO `mh_dict` VALUES ('1135', '170', 'diqu', '灯塔市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211081');
INSERT INTO `mh_dict` VALUES ('1136', '171', 'diqu', '双台子区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211102');
INSERT INTO `mh_dict` VALUES ('1137', '171', 'diqu', '兴隆台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211103');
INSERT INTO `mh_dict` VALUES ('1138', '171', 'diqu', '大洼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211121');
INSERT INTO `mh_dict` VALUES ('1139', '171', 'diqu', '盘山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211122');
INSERT INTO `mh_dict` VALUES ('1140', '172', 'diqu', '银州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211202');
INSERT INTO `mh_dict` VALUES ('1141', '172', 'diqu', '清河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211204');
INSERT INTO `mh_dict` VALUES ('1142', '172', 'diqu', '铁岭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211221');
INSERT INTO `mh_dict` VALUES ('1143', '172', 'diqu', '西丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211223');
INSERT INTO `mh_dict` VALUES ('1144', '172', 'diqu', '昌图县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211224');
INSERT INTO `mh_dict` VALUES ('1145', '172', 'diqu', '调兵山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211281');
INSERT INTO `mh_dict` VALUES ('1146', '172', 'diqu', '开原市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211282');
INSERT INTO `mh_dict` VALUES ('1147', '173', 'diqu', '双塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211302');
INSERT INTO `mh_dict` VALUES ('1148', '173', 'diqu', '龙城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211303');
INSERT INTO `mh_dict` VALUES ('1149', '173', 'diqu', '朝阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211321');
INSERT INTO `mh_dict` VALUES ('1150', '173', 'diqu', '建平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211322');
INSERT INTO `mh_dict` VALUES ('1151', '173', 'diqu', '喀喇沁左翼蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211324');
INSERT INTO `mh_dict` VALUES ('1152', '173', 'diqu', '北票市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211381');
INSERT INTO `mh_dict` VALUES ('1153', '173', 'diqu', '凌源市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211382');
INSERT INTO `mh_dict` VALUES ('1154', '174', 'diqu', '连山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211402');
INSERT INTO `mh_dict` VALUES ('1155', '174', 'diqu', '龙港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211403');
INSERT INTO `mh_dict` VALUES ('1156', '174', 'diqu', '南票区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211404');
INSERT INTO `mh_dict` VALUES ('1157', '174', 'diqu', '绥中县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211421');
INSERT INTO `mh_dict` VALUES ('1158', '174', 'diqu', '建昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211422');
INSERT INTO `mh_dict` VALUES ('1159', '174', 'diqu', '兴城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211481');
INSERT INTO `mh_dict` VALUES ('1160', '175', 'diqu', '金州新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211501');
INSERT INTO `mh_dict` VALUES ('1161', '175', 'diqu', '普湾新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211502');
INSERT INTO `mh_dict` VALUES ('1162', '175', 'diqu', '保税区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '211503');
INSERT INTO `mh_dict` VALUES ('1163', '176', 'diqu', '南关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220102');
INSERT INTO `mh_dict` VALUES ('1164', '176', 'diqu', '宽城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220103');
INSERT INTO `mh_dict` VALUES ('1165', '176', 'diqu', '朝阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220104');
INSERT INTO `mh_dict` VALUES ('1166', '176', 'diqu', '二道区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220105');
INSERT INTO `mh_dict` VALUES ('1167', '176', 'diqu', '绿园区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220106');
INSERT INTO `mh_dict` VALUES ('1168', '176', 'diqu', '双阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220112');
INSERT INTO `mh_dict` VALUES ('1169', '176', 'diqu', '九台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220113');
INSERT INTO `mh_dict` VALUES ('1170', '176', 'diqu', '农安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220122');
INSERT INTO `mh_dict` VALUES ('1171', '176', 'diqu', '榆树市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220182');
INSERT INTO `mh_dict` VALUES ('1172', '176', 'diqu', '德惠市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220183');
INSERT INTO `mh_dict` VALUES ('1173', '177', 'diqu', '昌邑区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220202');
INSERT INTO `mh_dict` VALUES ('1174', '177', 'diqu', '龙潭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220203');
INSERT INTO `mh_dict` VALUES ('1175', '177', 'diqu', '船营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220204');
INSERT INTO `mh_dict` VALUES ('1176', '177', 'diqu', '丰满区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220211');
INSERT INTO `mh_dict` VALUES ('1177', '177', 'diqu', '永吉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220221');
INSERT INTO `mh_dict` VALUES ('1178', '177', 'diqu', '蛟河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220281');
INSERT INTO `mh_dict` VALUES ('1179', '177', 'diqu', '桦甸市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220282');
INSERT INTO `mh_dict` VALUES ('1180', '177', 'diqu', '舒兰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220283');
INSERT INTO `mh_dict` VALUES ('1181', '177', 'diqu', '磐石市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220284');
INSERT INTO `mh_dict` VALUES ('1182', '178', 'diqu', '铁西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220302');
INSERT INTO `mh_dict` VALUES ('1183', '178', 'diqu', '铁东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220303');
INSERT INTO `mh_dict` VALUES ('1184', '178', 'diqu', '梨树县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220322');
INSERT INTO `mh_dict` VALUES ('1185', '178', 'diqu', '伊通满族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220323');
INSERT INTO `mh_dict` VALUES ('1186', '178', 'diqu', '公主岭市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220381');
INSERT INTO `mh_dict` VALUES ('1187', '178', 'diqu', '双辽市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220382');
INSERT INTO `mh_dict` VALUES ('1188', '179', 'diqu', '龙山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220402');
INSERT INTO `mh_dict` VALUES ('1189', '179', 'diqu', '西安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220403');
INSERT INTO `mh_dict` VALUES ('1190', '179', 'diqu', '东丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220421');
INSERT INTO `mh_dict` VALUES ('1191', '179', 'diqu', '东辽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220422');
INSERT INTO `mh_dict` VALUES ('1192', '180', 'diqu', '东昌区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220502');
INSERT INTO `mh_dict` VALUES ('1193', '180', 'diqu', '二道江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220503');
INSERT INTO `mh_dict` VALUES ('1194', '180', 'diqu', '通化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220521');
INSERT INTO `mh_dict` VALUES ('1195', '180', 'diqu', '辉南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220523');
INSERT INTO `mh_dict` VALUES ('1196', '180', 'diqu', '柳河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220524');
INSERT INTO `mh_dict` VALUES ('1197', '180', 'diqu', '梅河口市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220581');
INSERT INTO `mh_dict` VALUES ('1198', '180', 'diqu', '集安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220582');
INSERT INTO `mh_dict` VALUES ('1199', '181', 'diqu', '浑江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220602');
INSERT INTO `mh_dict` VALUES ('1200', '181', 'diqu', '江源区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220605');
INSERT INTO `mh_dict` VALUES ('1201', '181', 'diqu', '抚松县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220621');
INSERT INTO `mh_dict` VALUES ('1202', '181', 'diqu', '靖宇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220622');
INSERT INTO `mh_dict` VALUES ('1203', '181', 'diqu', '长白朝鲜族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220623');
INSERT INTO `mh_dict` VALUES ('1204', '181', 'diqu', '临江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220681');
INSERT INTO `mh_dict` VALUES ('1205', '182', 'diqu', '宁江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220702');
INSERT INTO `mh_dict` VALUES ('1206', '182', 'diqu', '前郭尔罗斯蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220721');
INSERT INTO `mh_dict` VALUES ('1207', '182', 'diqu', '长岭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220722');
INSERT INTO `mh_dict` VALUES ('1208', '182', 'diqu', '乾安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220723');
INSERT INTO `mh_dict` VALUES ('1209', '182', 'diqu', '扶余市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220781');
INSERT INTO `mh_dict` VALUES ('1210', '183', 'diqu', '洮北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220802');
INSERT INTO `mh_dict` VALUES ('1211', '183', 'diqu', '镇赉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220821');
INSERT INTO `mh_dict` VALUES ('1212', '183', 'diqu', '通榆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220822');
INSERT INTO `mh_dict` VALUES ('1213', '183', 'diqu', '洮南市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220881');
INSERT INTO `mh_dict` VALUES ('1214', '183', 'diqu', '大安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '220882');
INSERT INTO `mh_dict` VALUES ('1215', '184', 'diqu', '延吉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222401');
INSERT INTO `mh_dict` VALUES ('1216', '184', 'diqu', '图们市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222402');
INSERT INTO `mh_dict` VALUES ('1217', '184', 'diqu', '敦化市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222403');
INSERT INTO `mh_dict` VALUES ('1218', '184', 'diqu', '珲春市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222404');
INSERT INTO `mh_dict` VALUES ('1219', '184', 'diqu', '龙井市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222405');
INSERT INTO `mh_dict` VALUES ('1220', '184', 'diqu', '和龙市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222406');
INSERT INTO `mh_dict` VALUES ('1221', '184', 'diqu', '汪清县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222424');
INSERT INTO `mh_dict` VALUES ('1222', '184', 'diqu', '安图县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '222426');
INSERT INTO `mh_dict` VALUES ('1223', '185', 'diqu', '道里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230102');
INSERT INTO `mh_dict` VALUES ('1224', '185', 'diqu', '南岗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230103');
INSERT INTO `mh_dict` VALUES ('1225', '185', 'diqu', '道外区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230104');
INSERT INTO `mh_dict` VALUES ('1226', '185', 'diqu', '平房区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230108');
INSERT INTO `mh_dict` VALUES ('1227', '185', 'diqu', '松北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230109');
INSERT INTO `mh_dict` VALUES ('1228', '185', 'diqu', '香坊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230110');
INSERT INTO `mh_dict` VALUES ('1229', '185', 'diqu', '呼兰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230111');
INSERT INTO `mh_dict` VALUES ('1230', '185', 'diqu', '阿城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230112');
INSERT INTO `mh_dict` VALUES ('1231', '185', 'diqu', '双城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230113');
INSERT INTO `mh_dict` VALUES ('1232', '185', 'diqu', '依兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230123');
INSERT INTO `mh_dict` VALUES ('1233', '185', 'diqu', '方正县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230124');
INSERT INTO `mh_dict` VALUES ('1234', '185', 'diqu', '宾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230125');
INSERT INTO `mh_dict` VALUES ('1235', '185', 'diqu', '巴彦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230126');
INSERT INTO `mh_dict` VALUES ('1236', '185', 'diqu', '木兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230127');
INSERT INTO `mh_dict` VALUES ('1237', '185', 'diqu', '通河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230128');
INSERT INTO `mh_dict` VALUES ('1238', '185', 'diqu', '延寿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230129');
INSERT INTO `mh_dict` VALUES ('1239', '185', 'diqu', '尚志市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230183');
INSERT INTO `mh_dict` VALUES ('1240', '185', 'diqu', '五常市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230184');
INSERT INTO `mh_dict` VALUES ('1241', '186', 'diqu', '龙沙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230202');
INSERT INTO `mh_dict` VALUES ('1242', '186', 'diqu', '建华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230203');
INSERT INTO `mh_dict` VALUES ('1243', '186', 'diqu', '铁锋区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230204');
INSERT INTO `mh_dict` VALUES ('1244', '186', 'diqu', '昂昂溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230205');
INSERT INTO `mh_dict` VALUES ('1245', '186', 'diqu', '富拉尔基区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230206');
INSERT INTO `mh_dict` VALUES ('1246', '186', 'diqu', '碾子山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230207');
INSERT INTO `mh_dict` VALUES ('1247', '186', 'diqu', '梅里斯达斡尔族区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230208');
INSERT INTO `mh_dict` VALUES ('1248', '186', 'diqu', '龙江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230221');
INSERT INTO `mh_dict` VALUES ('1249', '186', 'diqu', '依安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230223');
INSERT INTO `mh_dict` VALUES ('1250', '186', 'diqu', '泰来县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230224');
INSERT INTO `mh_dict` VALUES ('1251', '186', 'diqu', '甘南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230225');
INSERT INTO `mh_dict` VALUES ('1252', '186', 'diqu', '富裕县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230227');
INSERT INTO `mh_dict` VALUES ('1253', '186', 'diqu', '克山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230229');
INSERT INTO `mh_dict` VALUES ('1254', '186', 'diqu', '克东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230230');
INSERT INTO `mh_dict` VALUES ('1255', '186', 'diqu', '拜泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230231');
INSERT INTO `mh_dict` VALUES ('1256', '186', 'diqu', '讷河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230281');
INSERT INTO `mh_dict` VALUES ('1257', '187', 'diqu', '鸡冠区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230302');
INSERT INTO `mh_dict` VALUES ('1258', '187', 'diqu', '恒山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230303');
INSERT INTO `mh_dict` VALUES ('1259', '187', 'diqu', '滴道区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230304');
INSERT INTO `mh_dict` VALUES ('1260', '187', 'diqu', '梨树区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230305');
INSERT INTO `mh_dict` VALUES ('1261', '187', 'diqu', '城子河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230306');
INSERT INTO `mh_dict` VALUES ('1262', '187', 'diqu', '麻山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230307');
INSERT INTO `mh_dict` VALUES ('1263', '187', 'diqu', '鸡东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230321');
INSERT INTO `mh_dict` VALUES ('1264', '187', 'diqu', '虎林市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230381');
INSERT INTO `mh_dict` VALUES ('1265', '187', 'diqu', '密山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230382');
INSERT INTO `mh_dict` VALUES ('1266', '188', 'diqu', '向阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230402');
INSERT INTO `mh_dict` VALUES ('1267', '188', 'diqu', '工农区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230403');
INSERT INTO `mh_dict` VALUES ('1268', '188', 'diqu', '南山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230404');
INSERT INTO `mh_dict` VALUES ('1269', '188', 'diqu', '兴安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230405');
INSERT INTO `mh_dict` VALUES ('1270', '188', 'diqu', '东山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230406');
INSERT INTO `mh_dict` VALUES ('1271', '188', 'diqu', '兴山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230407');
INSERT INTO `mh_dict` VALUES ('1272', '188', 'diqu', '萝北县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230421');
INSERT INTO `mh_dict` VALUES ('1273', '188', 'diqu', '绥滨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230422');
INSERT INTO `mh_dict` VALUES ('1274', '189', 'diqu', '尖山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230502');
INSERT INTO `mh_dict` VALUES ('1275', '189', 'diqu', '岭东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230503');
INSERT INTO `mh_dict` VALUES ('1276', '189', 'diqu', '四方台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230505');
INSERT INTO `mh_dict` VALUES ('1277', '189', 'diqu', '宝山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230506');
INSERT INTO `mh_dict` VALUES ('1278', '189', 'diqu', '集贤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230521');
INSERT INTO `mh_dict` VALUES ('1279', '189', 'diqu', '友谊县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230522');
INSERT INTO `mh_dict` VALUES ('1280', '189', 'diqu', '宝清县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230523');
INSERT INTO `mh_dict` VALUES ('1281', '189', 'diqu', '饶河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230524');
INSERT INTO `mh_dict` VALUES ('1282', '190', 'diqu', '萨尔图区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230602');
INSERT INTO `mh_dict` VALUES ('1283', '190', 'diqu', '龙凤区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230603');
INSERT INTO `mh_dict` VALUES ('1284', '190', 'diqu', '让胡路区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230604');
INSERT INTO `mh_dict` VALUES ('1285', '190', 'diqu', '红岗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230605');
INSERT INTO `mh_dict` VALUES ('1286', '190', 'diqu', '大同区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230606');
INSERT INTO `mh_dict` VALUES ('1287', '190', 'diqu', '肇州县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230621');
INSERT INTO `mh_dict` VALUES ('1288', '190', 'diqu', '肇源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230622');
INSERT INTO `mh_dict` VALUES ('1289', '190', 'diqu', '林甸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230623');
INSERT INTO `mh_dict` VALUES ('1290', '190', 'diqu', '杜尔伯特蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230624');
INSERT INTO `mh_dict` VALUES ('1291', '191', 'diqu', '伊春区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230702');
INSERT INTO `mh_dict` VALUES ('1292', '191', 'diqu', '南岔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230703');
INSERT INTO `mh_dict` VALUES ('1293', '191', 'diqu', '友好区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230704');
INSERT INTO `mh_dict` VALUES ('1294', '191', 'diqu', '西林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230705');
INSERT INTO `mh_dict` VALUES ('1295', '191', 'diqu', '翠峦区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230706');
INSERT INTO `mh_dict` VALUES ('1296', '191', 'diqu', '新青区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230707');
INSERT INTO `mh_dict` VALUES ('1297', '191', 'diqu', '美溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230708');
INSERT INTO `mh_dict` VALUES ('1298', '191', 'diqu', '金山屯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230709');
INSERT INTO `mh_dict` VALUES ('1299', '191', 'diqu', '五营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230710');
INSERT INTO `mh_dict` VALUES ('1300', '191', 'diqu', '乌马河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230711');
INSERT INTO `mh_dict` VALUES ('1301', '191', 'diqu', '汤旺河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230712');
INSERT INTO `mh_dict` VALUES ('1302', '191', 'diqu', '带岭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230713');
INSERT INTO `mh_dict` VALUES ('1303', '191', 'diqu', '乌伊岭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230714');
INSERT INTO `mh_dict` VALUES ('1304', '191', 'diqu', '红星区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230715');
INSERT INTO `mh_dict` VALUES ('1305', '191', 'diqu', '上甘岭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230716');
INSERT INTO `mh_dict` VALUES ('1306', '191', 'diqu', '嘉荫县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230722');
INSERT INTO `mh_dict` VALUES ('1307', '191', 'diqu', '铁力市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230781');
INSERT INTO `mh_dict` VALUES ('1308', '192', 'diqu', '向阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230803');
INSERT INTO `mh_dict` VALUES ('1309', '192', 'diqu', '前进区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230804');
INSERT INTO `mh_dict` VALUES ('1310', '192', 'diqu', '东风区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230805');
INSERT INTO `mh_dict` VALUES ('1311', '192', 'diqu', '郊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230811');
INSERT INTO `mh_dict` VALUES ('1312', '192', 'diqu', '桦南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230822');
INSERT INTO `mh_dict` VALUES ('1313', '192', 'diqu', '桦川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230826');
INSERT INTO `mh_dict` VALUES ('1314', '192', 'diqu', '汤原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230828');
INSERT INTO `mh_dict` VALUES ('1315', '192', 'diqu', '抚远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230833');
INSERT INTO `mh_dict` VALUES ('1316', '192', 'diqu', '同江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230881');
INSERT INTO `mh_dict` VALUES ('1317', '192', 'diqu', '富锦市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230882');
INSERT INTO `mh_dict` VALUES ('1318', '193', 'diqu', '新兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230902');
INSERT INTO `mh_dict` VALUES ('1319', '193', 'diqu', '桃山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230903');
INSERT INTO `mh_dict` VALUES ('1320', '193', 'diqu', '茄子河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230904');
INSERT INTO `mh_dict` VALUES ('1321', '193', 'diqu', '勃利县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '230921');
INSERT INTO `mh_dict` VALUES ('1322', '194', 'diqu', '东安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231002');
INSERT INTO `mh_dict` VALUES ('1323', '194', 'diqu', '阳明区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231003');
INSERT INTO `mh_dict` VALUES ('1324', '194', 'diqu', '爱民区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231004');
INSERT INTO `mh_dict` VALUES ('1325', '194', 'diqu', '西安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231005');
INSERT INTO `mh_dict` VALUES ('1326', '194', 'diqu', '东宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231024');
INSERT INTO `mh_dict` VALUES ('1327', '194', 'diqu', '林口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231025');
INSERT INTO `mh_dict` VALUES ('1328', '194', 'diqu', '绥芬河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231081');
INSERT INTO `mh_dict` VALUES ('1329', '194', 'diqu', '海林市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231083');
INSERT INTO `mh_dict` VALUES ('1330', '194', 'diqu', '宁安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231084');
INSERT INTO `mh_dict` VALUES ('1331', '194', 'diqu', '穆棱市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231085');
INSERT INTO `mh_dict` VALUES ('1332', '195', 'diqu', '爱辉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231102');
INSERT INTO `mh_dict` VALUES ('1333', '195', 'diqu', '嫩江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231121');
INSERT INTO `mh_dict` VALUES ('1334', '195', 'diqu', '逊克县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231123');
INSERT INTO `mh_dict` VALUES ('1335', '195', 'diqu', '孙吴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231124');
INSERT INTO `mh_dict` VALUES ('1336', '195', 'diqu', '北安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231181');
INSERT INTO `mh_dict` VALUES ('1337', '195', 'diqu', '五大连池市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231182');
INSERT INTO `mh_dict` VALUES ('1338', '196', 'diqu', '北林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231202');
INSERT INTO `mh_dict` VALUES ('1339', '196', 'diqu', '望奎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231221');
INSERT INTO `mh_dict` VALUES ('1340', '196', 'diqu', '兰西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231222');
INSERT INTO `mh_dict` VALUES ('1341', '196', 'diqu', '青冈县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231223');
INSERT INTO `mh_dict` VALUES ('1342', '196', 'diqu', '庆安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231224');
INSERT INTO `mh_dict` VALUES ('1343', '196', 'diqu', '明水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231225');
INSERT INTO `mh_dict` VALUES ('1344', '196', 'diqu', '绥棱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231226');
INSERT INTO `mh_dict` VALUES ('1345', '196', 'diqu', '安达市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231281');
INSERT INTO `mh_dict` VALUES ('1346', '196', 'diqu', '肇东市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231282');
INSERT INTO `mh_dict` VALUES ('1347', '196', 'diqu', '海伦市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '231283');
INSERT INTO `mh_dict` VALUES ('1348', '197', 'diqu', '加格达奇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232701');
INSERT INTO `mh_dict` VALUES ('1349', '197', 'diqu', '新林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232702');
INSERT INTO `mh_dict` VALUES ('1350', '197', 'diqu', '松岭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232703');
INSERT INTO `mh_dict` VALUES ('1351', '197', 'diqu', '呼中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232704');
INSERT INTO `mh_dict` VALUES ('1352', '197', 'diqu', '呼玛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232721');
INSERT INTO `mh_dict` VALUES ('1353', '197', 'diqu', '塔河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232722');
INSERT INTO `mh_dict` VALUES ('1354', '197', 'diqu', '漠河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '232723');
INSERT INTO `mh_dict` VALUES ('1355', '198', 'diqu', '黄浦区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310101');
INSERT INTO `mh_dict` VALUES ('1356', '198', 'diqu', '徐汇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310104');
INSERT INTO `mh_dict` VALUES ('1357', '198', 'diqu', '长宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310105');
INSERT INTO `mh_dict` VALUES ('1358', '198', 'diqu', '静安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310106');
INSERT INTO `mh_dict` VALUES ('1359', '198', 'diqu', '普陀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310107');
INSERT INTO `mh_dict` VALUES ('1360', '198', 'diqu', '闸北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310108');
INSERT INTO `mh_dict` VALUES ('1361', '198', 'diqu', '虹口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310109');
INSERT INTO `mh_dict` VALUES ('1362', '198', 'diqu', '杨浦区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310110');
INSERT INTO `mh_dict` VALUES ('1363', '198', 'diqu', '闵行区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310112');
INSERT INTO `mh_dict` VALUES ('1364', '198', 'diqu', '宝山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310113');
INSERT INTO `mh_dict` VALUES ('1365', '198', 'diqu', '嘉定区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310114');
INSERT INTO `mh_dict` VALUES ('1366', '198', 'diqu', '浦东新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310115');
INSERT INTO `mh_dict` VALUES ('1367', '198', 'diqu', '金山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310116');
INSERT INTO `mh_dict` VALUES ('1368', '198', 'diqu', '松江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310117');
INSERT INTO `mh_dict` VALUES ('1369', '198', 'diqu', '青浦区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310118');
INSERT INTO `mh_dict` VALUES ('1370', '198', 'diqu', '奉贤区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310120');
INSERT INTO `mh_dict` VALUES ('1371', '198', 'diqu', '崇明县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '310230');
INSERT INTO `mh_dict` VALUES ('1372', '199', 'diqu', '玄武区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320102');
INSERT INTO `mh_dict` VALUES ('1373', '199', 'diqu', '秦淮区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320104');
INSERT INTO `mh_dict` VALUES ('1374', '199', 'diqu', '建邺区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320105');
INSERT INTO `mh_dict` VALUES ('1375', '199', 'diqu', '鼓楼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320106');
INSERT INTO `mh_dict` VALUES ('1376', '199', 'diqu', '浦口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320111');
INSERT INTO `mh_dict` VALUES ('1377', '199', 'diqu', '栖霞区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320113');
INSERT INTO `mh_dict` VALUES ('1378', '199', 'diqu', '雨花台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320114');
INSERT INTO `mh_dict` VALUES ('1379', '199', 'diqu', '江宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320115');
INSERT INTO `mh_dict` VALUES ('1380', '199', 'diqu', '六合区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320116');
INSERT INTO `mh_dict` VALUES ('1381', '199', 'diqu', '溧水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320117');
INSERT INTO `mh_dict` VALUES ('1382', '199', 'diqu', '高淳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320118');
INSERT INTO `mh_dict` VALUES ('1383', '200', 'diqu', '崇安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320202');
INSERT INTO `mh_dict` VALUES ('1384', '200', 'diqu', '南长区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320203');
INSERT INTO `mh_dict` VALUES ('1385', '200', 'diqu', '北塘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320204');
INSERT INTO `mh_dict` VALUES ('1386', '200', 'diqu', '锡山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320205');
INSERT INTO `mh_dict` VALUES ('1387', '200', 'diqu', '惠山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320206');
INSERT INTO `mh_dict` VALUES ('1388', '200', 'diqu', '滨湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320211');
INSERT INTO `mh_dict` VALUES ('1389', '200', 'diqu', '江阴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320281');
INSERT INTO `mh_dict` VALUES ('1390', '200', 'diqu', '宜兴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320282');
INSERT INTO `mh_dict` VALUES ('1391', '201', 'diqu', '鼓楼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320302');
INSERT INTO `mh_dict` VALUES ('1392', '201', 'diqu', '云龙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320303');
INSERT INTO `mh_dict` VALUES ('1393', '201', 'diqu', '贾汪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320305');
INSERT INTO `mh_dict` VALUES ('1394', '201', 'diqu', '泉山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320311');
INSERT INTO `mh_dict` VALUES ('1395', '201', 'diqu', '铜山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320312');
INSERT INTO `mh_dict` VALUES ('1396', '201', 'diqu', '丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320321');
INSERT INTO `mh_dict` VALUES ('1397', '201', 'diqu', '沛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320322');
INSERT INTO `mh_dict` VALUES ('1398', '201', 'diqu', '睢宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320324');
INSERT INTO `mh_dict` VALUES ('1399', '201', 'diqu', '新沂市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320381');
INSERT INTO `mh_dict` VALUES ('1400', '201', 'diqu', '邳州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320382');
INSERT INTO `mh_dict` VALUES ('1401', '202', 'diqu', '天宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320402');
INSERT INTO `mh_dict` VALUES ('1402', '202', 'diqu', '钟楼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320404');
INSERT INTO `mh_dict` VALUES ('1403', '202', 'diqu', '戚墅堰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320405');
INSERT INTO `mh_dict` VALUES ('1404', '202', 'diqu', '新北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320411');
INSERT INTO `mh_dict` VALUES ('1405', '202', 'diqu', '武进区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320412');
INSERT INTO `mh_dict` VALUES ('1406', '202', 'diqu', '溧阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320481');
INSERT INTO `mh_dict` VALUES ('1407', '202', 'diqu', '金坛市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320482');
INSERT INTO `mh_dict` VALUES ('1408', '203', 'diqu', '虎丘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320505');
INSERT INTO `mh_dict` VALUES ('1409', '203', 'diqu', '吴中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320506');
INSERT INTO `mh_dict` VALUES ('1410', '203', 'diqu', '相城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320507');
INSERT INTO `mh_dict` VALUES ('1411', '203', 'diqu', '姑苏区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320508');
INSERT INTO `mh_dict` VALUES ('1412', '203', 'diqu', '吴江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320509');
INSERT INTO `mh_dict` VALUES ('1413', '203', 'diqu', '常熟市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320581');
INSERT INTO `mh_dict` VALUES ('1414', '203', 'diqu', '张家港市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320582');
INSERT INTO `mh_dict` VALUES ('1415', '203', 'diqu', '昆山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320583');
INSERT INTO `mh_dict` VALUES ('1416', '203', 'diqu', '太仓市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320585');
INSERT INTO `mh_dict` VALUES ('1417', '204', 'diqu', '崇川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320602');
INSERT INTO `mh_dict` VALUES ('1418', '204', 'diqu', '港闸区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320611');
INSERT INTO `mh_dict` VALUES ('1419', '204', 'diqu', '通州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320612');
INSERT INTO `mh_dict` VALUES ('1420', '204', 'diqu', '海安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320621');
INSERT INTO `mh_dict` VALUES ('1421', '204', 'diqu', '如东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320623');
INSERT INTO `mh_dict` VALUES ('1422', '204', 'diqu', '启东市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320681');
INSERT INTO `mh_dict` VALUES ('1423', '204', 'diqu', '如皋市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320682');
INSERT INTO `mh_dict` VALUES ('1424', '204', 'diqu', '海门市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320684');
INSERT INTO `mh_dict` VALUES ('1425', '205', 'diqu', '连云区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320703');
INSERT INTO `mh_dict` VALUES ('1426', '205', 'diqu', '海州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320706');
INSERT INTO `mh_dict` VALUES ('1427', '205', 'diqu', '赣榆区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320707');
INSERT INTO `mh_dict` VALUES ('1428', '205', 'diqu', '东海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320722');
INSERT INTO `mh_dict` VALUES ('1429', '205', 'diqu', '灌云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320723');
INSERT INTO `mh_dict` VALUES ('1430', '205', 'diqu', '灌南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320724');
INSERT INTO `mh_dict` VALUES ('1431', '206', 'diqu', '清河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320802');
INSERT INTO `mh_dict` VALUES ('1432', '206', 'diqu', '淮安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320803');
INSERT INTO `mh_dict` VALUES ('1433', '206', 'diqu', '淮阴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320804');
INSERT INTO `mh_dict` VALUES ('1434', '206', 'diqu', '清浦区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320811');
INSERT INTO `mh_dict` VALUES ('1435', '206', 'diqu', '涟水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320826');
INSERT INTO `mh_dict` VALUES ('1436', '206', 'diqu', '洪泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320829');
INSERT INTO `mh_dict` VALUES ('1437', '206', 'diqu', '盱眙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320830');
INSERT INTO `mh_dict` VALUES ('1438', '206', 'diqu', '金湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320831');
INSERT INTO `mh_dict` VALUES ('1439', '207', 'diqu', '亭湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320902');
INSERT INTO `mh_dict` VALUES ('1440', '207', 'diqu', '盐都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320903');
INSERT INTO `mh_dict` VALUES ('1441', '207', 'diqu', '响水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320921');
INSERT INTO `mh_dict` VALUES ('1442', '207', 'diqu', '滨海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320922');
INSERT INTO `mh_dict` VALUES ('1443', '207', 'diqu', '阜宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320923');
INSERT INTO `mh_dict` VALUES ('1444', '207', 'diqu', '射阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320924');
INSERT INTO `mh_dict` VALUES ('1445', '207', 'diqu', '建湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320925');
INSERT INTO `mh_dict` VALUES ('1446', '207', 'diqu', '东台市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320981');
INSERT INTO `mh_dict` VALUES ('1447', '207', 'diqu', '大丰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '320982');
INSERT INTO `mh_dict` VALUES ('1448', '208', 'diqu', '广陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321002');
INSERT INTO `mh_dict` VALUES ('1449', '208', 'diqu', '邗江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321003');
INSERT INTO `mh_dict` VALUES ('1450', '208', 'diqu', '江都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321012');
INSERT INTO `mh_dict` VALUES ('1451', '208', 'diqu', '宝应县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321023');
INSERT INTO `mh_dict` VALUES ('1452', '208', 'diqu', '仪征市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321081');
INSERT INTO `mh_dict` VALUES ('1453', '208', 'diqu', '高邮市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321084');
INSERT INTO `mh_dict` VALUES ('1454', '209', 'diqu', '京口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321102');
INSERT INTO `mh_dict` VALUES ('1455', '209', 'diqu', '润州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321111');
INSERT INTO `mh_dict` VALUES ('1456', '209', 'diqu', '丹徒区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321112');
INSERT INTO `mh_dict` VALUES ('1457', '209', 'diqu', '丹阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321181');
INSERT INTO `mh_dict` VALUES ('1458', '209', 'diqu', '扬中市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321182');
INSERT INTO `mh_dict` VALUES ('1459', '209', 'diqu', '句容市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321183');
INSERT INTO `mh_dict` VALUES ('1460', '210', 'diqu', '海陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321202');
INSERT INTO `mh_dict` VALUES ('1461', '210', 'diqu', '高港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321203');
INSERT INTO `mh_dict` VALUES ('1462', '210', 'diqu', '姜堰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321204');
INSERT INTO `mh_dict` VALUES ('1463', '210', 'diqu', '兴化市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321281');
INSERT INTO `mh_dict` VALUES ('1464', '210', 'diqu', '靖江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321282');
INSERT INTO `mh_dict` VALUES ('1465', '210', 'diqu', '泰兴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321283');
INSERT INTO `mh_dict` VALUES ('1466', '211', 'diqu', '宿城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321302');
INSERT INTO `mh_dict` VALUES ('1467', '211', 'diqu', '宿豫区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321311');
INSERT INTO `mh_dict` VALUES ('1468', '211', 'diqu', '沭阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321322');
INSERT INTO `mh_dict` VALUES ('1469', '211', 'diqu', '泗阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321323');
INSERT INTO `mh_dict` VALUES ('1470', '211', 'diqu', '泗洪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '321324');
INSERT INTO `mh_dict` VALUES ('1471', '212', 'diqu', '上城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330102');
INSERT INTO `mh_dict` VALUES ('1472', '212', 'diqu', '下城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330103');
INSERT INTO `mh_dict` VALUES ('1473', '212', 'diqu', '江干区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330104');
INSERT INTO `mh_dict` VALUES ('1474', '212', 'diqu', '拱墅区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330105');
INSERT INTO `mh_dict` VALUES ('1475', '212', 'diqu', '西湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330106');
INSERT INTO `mh_dict` VALUES ('1476', '212', 'diqu', '滨江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330108');
INSERT INTO `mh_dict` VALUES ('1477', '212', 'diqu', '萧山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330109');
INSERT INTO `mh_dict` VALUES ('1478', '212', 'diqu', '余杭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330110');
INSERT INTO `mh_dict` VALUES ('1479', '212', 'diqu', '桐庐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330122');
INSERT INTO `mh_dict` VALUES ('1480', '212', 'diqu', '淳安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330127');
INSERT INTO `mh_dict` VALUES ('1481', '212', 'diqu', '建德市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330182');
INSERT INTO `mh_dict` VALUES ('1482', '212', 'diqu', '富阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330183');
INSERT INTO `mh_dict` VALUES ('1483', '212', 'diqu', '临安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330185');
INSERT INTO `mh_dict` VALUES ('1484', '213', 'diqu', '海曙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330203');
INSERT INTO `mh_dict` VALUES ('1485', '213', 'diqu', '江东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330204');
INSERT INTO `mh_dict` VALUES ('1486', '213', 'diqu', '江北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330205');
INSERT INTO `mh_dict` VALUES ('1487', '213', 'diqu', '北仑区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330206');
INSERT INTO `mh_dict` VALUES ('1488', '213', 'diqu', '镇海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330211');
INSERT INTO `mh_dict` VALUES ('1489', '213', 'diqu', '鄞州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330212');
INSERT INTO `mh_dict` VALUES ('1490', '213', 'diqu', '象山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330225');
INSERT INTO `mh_dict` VALUES ('1491', '213', 'diqu', '宁海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330226');
INSERT INTO `mh_dict` VALUES ('1492', '213', 'diqu', '余姚市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330281');
INSERT INTO `mh_dict` VALUES ('1493', '213', 'diqu', '慈溪市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330282');
INSERT INTO `mh_dict` VALUES ('1494', '213', 'diqu', '奉化市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330283');
INSERT INTO `mh_dict` VALUES ('1495', '214', 'diqu', '鹿城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330302');
INSERT INTO `mh_dict` VALUES ('1496', '214', 'diqu', '龙湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330303');
INSERT INTO `mh_dict` VALUES ('1497', '214', 'diqu', '瓯海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330304');
INSERT INTO `mh_dict` VALUES ('1498', '214', 'diqu', '洞头县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330322');
INSERT INTO `mh_dict` VALUES ('1499', '214', 'diqu', '永嘉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330324');
INSERT INTO `mh_dict` VALUES ('1500', '214', 'diqu', '平阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330326');
INSERT INTO `mh_dict` VALUES ('1501', '214', 'diqu', '苍南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330327');
INSERT INTO `mh_dict` VALUES ('1502', '214', 'diqu', '文成县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330328');
INSERT INTO `mh_dict` VALUES ('1503', '214', 'diqu', '泰顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330329');
INSERT INTO `mh_dict` VALUES ('1504', '214', 'diqu', '瑞安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330381');
INSERT INTO `mh_dict` VALUES ('1505', '214', 'diqu', '乐清市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330382');
INSERT INTO `mh_dict` VALUES ('1506', '215', 'diqu', '南湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330402');
INSERT INTO `mh_dict` VALUES ('1507', '215', 'diqu', '秀洲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330411');
INSERT INTO `mh_dict` VALUES ('1508', '215', 'diqu', '嘉善县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330421');
INSERT INTO `mh_dict` VALUES ('1509', '215', 'diqu', '海盐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330424');
INSERT INTO `mh_dict` VALUES ('1510', '215', 'diqu', '海宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330481');
INSERT INTO `mh_dict` VALUES ('1511', '215', 'diqu', '平湖市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330482');
INSERT INTO `mh_dict` VALUES ('1512', '215', 'diqu', '桐乡市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330483');
INSERT INTO `mh_dict` VALUES ('1513', '216', 'diqu', '吴兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330502');
INSERT INTO `mh_dict` VALUES ('1514', '216', 'diqu', '南浔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330503');
INSERT INTO `mh_dict` VALUES ('1515', '216', 'diqu', '德清县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330521');
INSERT INTO `mh_dict` VALUES ('1516', '216', 'diqu', '长兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330522');
INSERT INTO `mh_dict` VALUES ('1517', '216', 'diqu', '安吉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330523');
INSERT INTO `mh_dict` VALUES ('1518', '217', 'diqu', '越城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330602');
INSERT INTO `mh_dict` VALUES ('1519', '217', 'diqu', '柯桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330603');
INSERT INTO `mh_dict` VALUES ('1520', '217', 'diqu', '上虞区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330604');
INSERT INTO `mh_dict` VALUES ('1521', '217', 'diqu', '新昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330624');
INSERT INTO `mh_dict` VALUES ('1522', '217', 'diqu', '诸暨市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330681');
INSERT INTO `mh_dict` VALUES ('1523', '217', 'diqu', '嵊州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330683');
INSERT INTO `mh_dict` VALUES ('1524', '218', 'diqu', '婺城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330702');
INSERT INTO `mh_dict` VALUES ('1525', '218', 'diqu', '金东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330703');
INSERT INTO `mh_dict` VALUES ('1526', '218', 'diqu', '武义县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330723');
INSERT INTO `mh_dict` VALUES ('1527', '218', 'diqu', '浦江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330726');
INSERT INTO `mh_dict` VALUES ('1528', '218', 'diqu', '磐安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330727');
INSERT INTO `mh_dict` VALUES ('1529', '218', 'diqu', '兰溪市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330781');
INSERT INTO `mh_dict` VALUES ('1530', '218', 'diqu', '义乌市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330782');
INSERT INTO `mh_dict` VALUES ('1531', '218', 'diqu', '东阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330783');
INSERT INTO `mh_dict` VALUES ('1532', '218', 'diqu', '永康市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330784');
INSERT INTO `mh_dict` VALUES ('1533', '219', 'diqu', '柯城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330802');
INSERT INTO `mh_dict` VALUES ('1534', '219', 'diqu', '衢江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330803');
INSERT INTO `mh_dict` VALUES ('1535', '219', 'diqu', '常山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330822');
INSERT INTO `mh_dict` VALUES ('1536', '219', 'diqu', '开化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330824');
INSERT INTO `mh_dict` VALUES ('1537', '219', 'diqu', '龙游县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330825');
INSERT INTO `mh_dict` VALUES ('1538', '219', 'diqu', '江山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330881');
INSERT INTO `mh_dict` VALUES ('1539', '220', 'diqu', '定海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330902');
INSERT INTO `mh_dict` VALUES ('1540', '220', 'diqu', '普陀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330903');
INSERT INTO `mh_dict` VALUES ('1541', '220', 'diqu', '岱山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330921');
INSERT INTO `mh_dict` VALUES ('1542', '220', 'diqu', '嵊泗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '330922');
INSERT INTO `mh_dict` VALUES ('1543', '221', 'diqu', '椒江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331002');
INSERT INTO `mh_dict` VALUES ('1544', '221', 'diqu', '黄岩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331003');
INSERT INTO `mh_dict` VALUES ('1545', '221', 'diqu', '路桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331004');
INSERT INTO `mh_dict` VALUES ('1546', '221', 'diqu', '玉环县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331021');
INSERT INTO `mh_dict` VALUES ('1547', '221', 'diqu', '三门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331022');
INSERT INTO `mh_dict` VALUES ('1548', '221', 'diqu', '天台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331023');
INSERT INTO `mh_dict` VALUES ('1549', '221', 'diqu', '仙居县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331024');
INSERT INTO `mh_dict` VALUES ('1550', '221', 'diqu', '温岭市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331081');
INSERT INTO `mh_dict` VALUES ('1551', '221', 'diqu', '临海市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331082');
INSERT INTO `mh_dict` VALUES ('1552', '222', 'diqu', '莲都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331102');
INSERT INTO `mh_dict` VALUES ('1553', '222', 'diqu', '青田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331121');
INSERT INTO `mh_dict` VALUES ('1554', '222', 'diqu', '缙云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331122');
INSERT INTO `mh_dict` VALUES ('1555', '222', 'diqu', '遂昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331123');
INSERT INTO `mh_dict` VALUES ('1556', '222', 'diqu', '松阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331124');
INSERT INTO `mh_dict` VALUES ('1557', '222', 'diqu', '云和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331125');
INSERT INTO `mh_dict` VALUES ('1558', '222', 'diqu', '庆元县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331126');
INSERT INTO `mh_dict` VALUES ('1559', '222', 'diqu', '景宁畲族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331127');
INSERT INTO `mh_dict` VALUES ('1560', '222', 'diqu', '龙泉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331181');
INSERT INTO `mh_dict` VALUES ('1561', '223', 'diqu', '金塘岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331201');
INSERT INTO `mh_dict` VALUES ('1562', '223', 'diqu', '六横岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331202');
INSERT INTO `mh_dict` VALUES ('1563', '223', 'diqu', '衢山岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331203');
INSERT INTO `mh_dict` VALUES ('1564', '223', 'diqu', '舟山本岛西北部', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331204');
INSERT INTO `mh_dict` VALUES ('1565', '223', 'diqu', '岱山岛西南部', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331205');
INSERT INTO `mh_dict` VALUES ('1566', '223', 'diqu', '泗礁岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331206');
INSERT INTO `mh_dict` VALUES ('1567', '223', 'diqu', '朱家尖岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331207');
INSERT INTO `mh_dict` VALUES ('1568', '223', 'diqu', '洋山岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331208');
INSERT INTO `mh_dict` VALUES ('1569', '223', 'diqu', '长涂岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331209');
INSERT INTO `mh_dict` VALUES ('1570', '223', 'diqu', '虾峙岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '331210');
INSERT INTO `mh_dict` VALUES ('1571', '224', 'diqu', '瑶海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340102');
INSERT INTO `mh_dict` VALUES ('1572', '224', 'diqu', '庐阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340103');
INSERT INTO `mh_dict` VALUES ('1573', '224', 'diqu', '蜀山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340104');
INSERT INTO `mh_dict` VALUES ('1574', '224', 'diqu', '包河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340111');
INSERT INTO `mh_dict` VALUES ('1575', '224', 'diqu', '长丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340121');
INSERT INTO `mh_dict` VALUES ('1576', '224', 'diqu', '肥东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340122');
INSERT INTO `mh_dict` VALUES ('1577', '224', 'diqu', '肥西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340123');
INSERT INTO `mh_dict` VALUES ('1578', '224', 'diqu', '庐江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340124');
INSERT INTO `mh_dict` VALUES ('1579', '224', 'diqu', '巢湖市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340181');
INSERT INTO `mh_dict` VALUES ('1580', '225', 'diqu', '镜湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340202');
INSERT INTO `mh_dict` VALUES ('1581', '225', 'diqu', '弋江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340203');
INSERT INTO `mh_dict` VALUES ('1582', '225', 'diqu', '鸠江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340207');
INSERT INTO `mh_dict` VALUES ('1583', '225', 'diqu', '三山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340208');
INSERT INTO `mh_dict` VALUES ('1584', '225', 'diqu', '芜湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340221');
INSERT INTO `mh_dict` VALUES ('1585', '225', 'diqu', '繁昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340222');
INSERT INTO `mh_dict` VALUES ('1586', '225', 'diqu', '南陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340223');
INSERT INTO `mh_dict` VALUES ('1587', '225', 'diqu', '无为县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340225');
INSERT INTO `mh_dict` VALUES ('1588', '226', 'diqu', '龙子湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340302');
INSERT INTO `mh_dict` VALUES ('1589', '226', 'diqu', '蚌山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340303');
INSERT INTO `mh_dict` VALUES ('1590', '226', 'diqu', '禹会区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340304');
INSERT INTO `mh_dict` VALUES ('1591', '226', 'diqu', '淮上区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340311');
INSERT INTO `mh_dict` VALUES ('1592', '226', 'diqu', '怀远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340321');
INSERT INTO `mh_dict` VALUES ('1593', '226', 'diqu', '五河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340322');
INSERT INTO `mh_dict` VALUES ('1594', '226', 'diqu', '固镇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340323');
INSERT INTO `mh_dict` VALUES ('1595', '227', 'diqu', '大通区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340402');
INSERT INTO `mh_dict` VALUES ('1596', '227', 'diqu', '田家庵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340403');
INSERT INTO `mh_dict` VALUES ('1597', '227', 'diqu', '谢家集区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340404');
INSERT INTO `mh_dict` VALUES ('1598', '227', 'diqu', '八公山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340405');
INSERT INTO `mh_dict` VALUES ('1599', '227', 'diqu', '潘集区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340406');
INSERT INTO `mh_dict` VALUES ('1600', '227', 'diqu', '凤台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340421');
INSERT INTO `mh_dict` VALUES ('1601', '228', 'diqu', '花山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340503');
INSERT INTO `mh_dict` VALUES ('1602', '228', 'diqu', '雨山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340504');
INSERT INTO `mh_dict` VALUES ('1603', '228', 'diqu', '博望区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340506');
INSERT INTO `mh_dict` VALUES ('1604', '228', 'diqu', '当涂县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340521');
INSERT INTO `mh_dict` VALUES ('1605', '228', 'diqu', '含山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340522');
INSERT INTO `mh_dict` VALUES ('1606', '228', 'diqu', '和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340523');
INSERT INTO `mh_dict` VALUES ('1607', '229', 'diqu', '杜集区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340602');
INSERT INTO `mh_dict` VALUES ('1608', '229', 'diqu', '相山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340603');
INSERT INTO `mh_dict` VALUES ('1609', '229', 'diqu', '烈山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340604');
INSERT INTO `mh_dict` VALUES ('1610', '229', 'diqu', '濉溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340621');
INSERT INTO `mh_dict` VALUES ('1611', '230', 'diqu', '铜官山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340702');
INSERT INTO `mh_dict` VALUES ('1612', '230', 'diqu', '狮子山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340703');
INSERT INTO `mh_dict` VALUES ('1613', '230', 'diqu', '郊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340711');
INSERT INTO `mh_dict` VALUES ('1614', '230', 'diqu', '铜陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340721');
INSERT INTO `mh_dict` VALUES ('1615', '231', 'diqu', '迎江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340802');
INSERT INTO `mh_dict` VALUES ('1616', '231', 'diqu', '大观区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340803');
INSERT INTO `mh_dict` VALUES ('1617', '231', 'diqu', '宜秀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340811');
INSERT INTO `mh_dict` VALUES ('1618', '231', 'diqu', '怀宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340822');
INSERT INTO `mh_dict` VALUES ('1619', '231', 'diqu', '枞阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340823');
INSERT INTO `mh_dict` VALUES ('1620', '231', 'diqu', '潜山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340824');
INSERT INTO `mh_dict` VALUES ('1621', '231', 'diqu', '太湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340825');
INSERT INTO `mh_dict` VALUES ('1622', '231', 'diqu', '宿松县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340826');
INSERT INTO `mh_dict` VALUES ('1623', '231', 'diqu', '望江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340827');
INSERT INTO `mh_dict` VALUES ('1624', '231', 'diqu', '岳西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340828');
INSERT INTO `mh_dict` VALUES ('1625', '231', 'diqu', '桐城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '340881');
INSERT INTO `mh_dict` VALUES ('1626', '232', 'diqu', '屯溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341002');
INSERT INTO `mh_dict` VALUES ('1627', '232', 'diqu', '黄山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341003');
INSERT INTO `mh_dict` VALUES ('1628', '232', 'diqu', '徽州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341004');
INSERT INTO `mh_dict` VALUES ('1629', '232', 'diqu', '歙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341021');
INSERT INTO `mh_dict` VALUES ('1630', '232', 'diqu', '休宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341022');
INSERT INTO `mh_dict` VALUES ('1631', '232', 'diqu', '黟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341023');
INSERT INTO `mh_dict` VALUES ('1632', '232', 'diqu', '祁门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341024');
INSERT INTO `mh_dict` VALUES ('1633', '233', 'diqu', '琅琊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341102');
INSERT INTO `mh_dict` VALUES ('1634', '233', 'diqu', '南谯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341103');
INSERT INTO `mh_dict` VALUES ('1635', '233', 'diqu', '来安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341122');
INSERT INTO `mh_dict` VALUES ('1636', '233', 'diqu', '全椒县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341124');
INSERT INTO `mh_dict` VALUES ('1637', '233', 'diqu', '定远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341125');
INSERT INTO `mh_dict` VALUES ('1638', '233', 'diqu', '凤阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341126');
INSERT INTO `mh_dict` VALUES ('1639', '233', 'diqu', '天长市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341181');
INSERT INTO `mh_dict` VALUES ('1640', '233', 'diqu', '明光市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341182');
INSERT INTO `mh_dict` VALUES ('1641', '234', 'diqu', '颍州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341202');
INSERT INTO `mh_dict` VALUES ('1642', '234', 'diqu', '颍东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341203');
INSERT INTO `mh_dict` VALUES ('1643', '234', 'diqu', '颍泉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341204');
INSERT INTO `mh_dict` VALUES ('1644', '234', 'diqu', '临泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341221');
INSERT INTO `mh_dict` VALUES ('1645', '234', 'diqu', '太和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341222');
INSERT INTO `mh_dict` VALUES ('1646', '234', 'diqu', '阜南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341225');
INSERT INTO `mh_dict` VALUES ('1647', '234', 'diqu', '颍上县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341226');
INSERT INTO `mh_dict` VALUES ('1648', '234', 'diqu', '界首市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341282');
INSERT INTO `mh_dict` VALUES ('1649', '235', 'diqu', '埇桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341302');
INSERT INTO `mh_dict` VALUES ('1650', '235', 'diqu', '砀山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341321');
INSERT INTO `mh_dict` VALUES ('1651', '235', 'diqu', '萧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341322');
INSERT INTO `mh_dict` VALUES ('1652', '235', 'diqu', '灵璧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341323');
INSERT INTO `mh_dict` VALUES ('1653', '235', 'diqu', '泗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341324');
INSERT INTO `mh_dict` VALUES ('1654', '236', 'diqu', '金安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341502');
INSERT INTO `mh_dict` VALUES ('1655', '236', 'diqu', '裕安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341503');
INSERT INTO `mh_dict` VALUES ('1656', '236', 'diqu', '寿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341521');
INSERT INTO `mh_dict` VALUES ('1657', '236', 'diqu', '霍邱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341522');
INSERT INTO `mh_dict` VALUES ('1658', '236', 'diqu', '舒城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341523');
INSERT INTO `mh_dict` VALUES ('1659', '236', 'diqu', '金寨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341524');
INSERT INTO `mh_dict` VALUES ('1660', '236', 'diqu', '霍山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341525');
INSERT INTO `mh_dict` VALUES ('1661', '237', 'diqu', '谯城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341602');
INSERT INTO `mh_dict` VALUES ('1662', '237', 'diqu', '涡阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341621');
INSERT INTO `mh_dict` VALUES ('1663', '237', 'diqu', '蒙城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341622');
INSERT INTO `mh_dict` VALUES ('1664', '237', 'diqu', '利辛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341623');
INSERT INTO `mh_dict` VALUES ('1665', '238', 'diqu', '贵池区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341702');
INSERT INTO `mh_dict` VALUES ('1666', '238', 'diqu', '东至县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341721');
INSERT INTO `mh_dict` VALUES ('1667', '238', 'diqu', '石台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341722');
INSERT INTO `mh_dict` VALUES ('1668', '238', 'diqu', '青阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341723');
INSERT INTO `mh_dict` VALUES ('1669', '239', 'diqu', '宣州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341802');
INSERT INTO `mh_dict` VALUES ('1670', '239', 'diqu', '郎溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341821');
INSERT INTO `mh_dict` VALUES ('1671', '239', 'diqu', '广德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341822');
INSERT INTO `mh_dict` VALUES ('1672', '239', 'diqu', '泾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341823');
INSERT INTO `mh_dict` VALUES ('1673', '239', 'diqu', '绩溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341824');
INSERT INTO `mh_dict` VALUES ('1674', '239', 'diqu', '旌德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341825');
INSERT INTO `mh_dict` VALUES ('1675', '239', 'diqu', '宁国市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '341881');
INSERT INTO `mh_dict` VALUES ('1676', '240', 'diqu', '鼓楼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350102');
INSERT INTO `mh_dict` VALUES ('1677', '240', 'diqu', '台江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350103');
INSERT INTO `mh_dict` VALUES ('1678', '240', 'diqu', '仓山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350104');
INSERT INTO `mh_dict` VALUES ('1679', '240', 'diqu', '马尾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350105');
INSERT INTO `mh_dict` VALUES ('1680', '240', 'diqu', '晋安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350111');
INSERT INTO `mh_dict` VALUES ('1681', '240', 'diqu', '闽侯县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350121');
INSERT INTO `mh_dict` VALUES ('1682', '240', 'diqu', '连江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350122');
INSERT INTO `mh_dict` VALUES ('1683', '240', 'diqu', '罗源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350123');
INSERT INTO `mh_dict` VALUES ('1684', '240', 'diqu', '闽清县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350124');
INSERT INTO `mh_dict` VALUES ('1685', '240', 'diqu', '永泰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350125');
INSERT INTO `mh_dict` VALUES ('1686', '240', 'diqu', '平潭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350128');
INSERT INTO `mh_dict` VALUES ('1687', '240', 'diqu', '福清市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350181');
INSERT INTO `mh_dict` VALUES ('1688', '240', 'diqu', '长乐市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350182');
INSERT INTO `mh_dict` VALUES ('1689', '241', 'diqu', '思明区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350203');
INSERT INTO `mh_dict` VALUES ('1690', '241', 'diqu', '海沧区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350205');
INSERT INTO `mh_dict` VALUES ('1691', '241', 'diqu', '湖里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350206');
INSERT INTO `mh_dict` VALUES ('1692', '241', 'diqu', '集美区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350211');
INSERT INTO `mh_dict` VALUES ('1693', '241', 'diqu', '同安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350212');
INSERT INTO `mh_dict` VALUES ('1694', '241', 'diqu', '翔安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350213');
INSERT INTO `mh_dict` VALUES ('1695', '242', 'diqu', '城厢区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350302');
INSERT INTO `mh_dict` VALUES ('1696', '242', 'diqu', '涵江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350303');
INSERT INTO `mh_dict` VALUES ('1697', '242', 'diqu', '荔城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350304');
INSERT INTO `mh_dict` VALUES ('1698', '242', 'diqu', '秀屿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350305');
INSERT INTO `mh_dict` VALUES ('1699', '242', 'diqu', '仙游县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350322');
INSERT INTO `mh_dict` VALUES ('1700', '243', 'diqu', '梅列区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350402');
INSERT INTO `mh_dict` VALUES ('1701', '243', 'diqu', '三元区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350403');
INSERT INTO `mh_dict` VALUES ('1702', '243', 'diqu', '明溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350421');
INSERT INTO `mh_dict` VALUES ('1703', '243', 'diqu', '清流县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350423');
INSERT INTO `mh_dict` VALUES ('1704', '243', 'diqu', '宁化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350424');
INSERT INTO `mh_dict` VALUES ('1705', '243', 'diqu', '大田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350425');
INSERT INTO `mh_dict` VALUES ('1706', '243', 'diqu', '尤溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350426');
INSERT INTO `mh_dict` VALUES ('1707', '243', 'diqu', '沙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350427');
INSERT INTO `mh_dict` VALUES ('1708', '243', 'diqu', '将乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350428');
INSERT INTO `mh_dict` VALUES ('1709', '243', 'diqu', '泰宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350429');
INSERT INTO `mh_dict` VALUES ('1710', '243', 'diqu', '建宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350430');
INSERT INTO `mh_dict` VALUES ('1711', '243', 'diqu', '永安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350481');
INSERT INTO `mh_dict` VALUES ('1712', '244', 'diqu', '鲤城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350502');
INSERT INTO `mh_dict` VALUES ('1713', '244', 'diqu', '丰泽区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350503');
INSERT INTO `mh_dict` VALUES ('1714', '244', 'diqu', '洛江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350504');
INSERT INTO `mh_dict` VALUES ('1715', '244', 'diqu', '泉港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350505');
INSERT INTO `mh_dict` VALUES ('1716', '244', 'diqu', '惠安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350521');
INSERT INTO `mh_dict` VALUES ('1717', '244', 'diqu', '安溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350524');
INSERT INTO `mh_dict` VALUES ('1718', '244', 'diqu', '永春县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350525');
INSERT INTO `mh_dict` VALUES ('1719', '244', 'diqu', '德化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350526');
INSERT INTO `mh_dict` VALUES ('1720', '244', 'diqu', '金门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350527');
INSERT INTO `mh_dict` VALUES ('1721', '244', 'diqu', '石狮市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350581');
INSERT INTO `mh_dict` VALUES ('1722', '244', 'diqu', '晋江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350582');
INSERT INTO `mh_dict` VALUES ('1723', '244', 'diqu', '南安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350583');
INSERT INTO `mh_dict` VALUES ('1724', '245', 'diqu', '芗城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350602');
INSERT INTO `mh_dict` VALUES ('1725', '245', 'diqu', '龙文区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350603');
INSERT INTO `mh_dict` VALUES ('1726', '245', 'diqu', '云霄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350622');
INSERT INTO `mh_dict` VALUES ('1727', '245', 'diqu', '漳浦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350623');
INSERT INTO `mh_dict` VALUES ('1728', '245', 'diqu', '诏安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350624');
INSERT INTO `mh_dict` VALUES ('1729', '245', 'diqu', '长泰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350625');
INSERT INTO `mh_dict` VALUES ('1730', '245', 'diqu', '东山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350626');
INSERT INTO `mh_dict` VALUES ('1731', '245', 'diqu', '南靖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350627');
INSERT INTO `mh_dict` VALUES ('1732', '245', 'diqu', '平和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350628');
INSERT INTO `mh_dict` VALUES ('1733', '245', 'diqu', '华安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350629');
INSERT INTO `mh_dict` VALUES ('1734', '245', 'diqu', '龙海市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350681');
INSERT INTO `mh_dict` VALUES ('1735', '246', 'diqu', '延平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350702');
INSERT INTO `mh_dict` VALUES ('1736', '246', 'diqu', '建阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350703');
INSERT INTO `mh_dict` VALUES ('1737', '246', 'diqu', '顺昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350721');
INSERT INTO `mh_dict` VALUES ('1738', '246', 'diqu', '浦城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350722');
INSERT INTO `mh_dict` VALUES ('1739', '246', 'diqu', '光泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350723');
INSERT INTO `mh_dict` VALUES ('1740', '246', 'diqu', '松溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350724');
INSERT INTO `mh_dict` VALUES ('1741', '246', 'diqu', '政和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350725');
INSERT INTO `mh_dict` VALUES ('1742', '246', 'diqu', '邵武市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350781');
INSERT INTO `mh_dict` VALUES ('1743', '246', 'diqu', '武夷山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350782');
INSERT INTO `mh_dict` VALUES ('1744', '246', 'diqu', '建瓯市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350783');
INSERT INTO `mh_dict` VALUES ('1745', '247', 'diqu', '新罗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350802');
INSERT INTO `mh_dict` VALUES ('1746', '247', 'diqu', '长汀县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350821');
INSERT INTO `mh_dict` VALUES ('1747', '247', 'diqu', '永定区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350822');
INSERT INTO `mh_dict` VALUES ('1748', '247', 'diqu', '上杭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350823');
INSERT INTO `mh_dict` VALUES ('1749', '247', 'diqu', '武平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350824');
INSERT INTO `mh_dict` VALUES ('1750', '247', 'diqu', '连城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350825');
INSERT INTO `mh_dict` VALUES ('1751', '247', 'diqu', '漳平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350881');
INSERT INTO `mh_dict` VALUES ('1752', '248', 'diqu', '蕉城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350902');
INSERT INTO `mh_dict` VALUES ('1753', '248', 'diqu', '霞浦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350921');
INSERT INTO `mh_dict` VALUES ('1754', '248', 'diqu', '古田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350922');
INSERT INTO `mh_dict` VALUES ('1755', '248', 'diqu', '屏南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350923');
INSERT INTO `mh_dict` VALUES ('1756', '248', 'diqu', '寿宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350924');
INSERT INTO `mh_dict` VALUES ('1757', '248', 'diqu', '周宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350925');
INSERT INTO `mh_dict` VALUES ('1758', '248', 'diqu', '柘荣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350926');
INSERT INTO `mh_dict` VALUES ('1759', '248', 'diqu', '福安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350981');
INSERT INTO `mh_dict` VALUES ('1760', '248', 'diqu', '福鼎市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '350982');
INSERT INTO `mh_dict` VALUES ('1761', '249', 'diqu', '东湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360102');
INSERT INTO `mh_dict` VALUES ('1762', '249', 'diqu', '西湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360103');
INSERT INTO `mh_dict` VALUES ('1763', '249', 'diqu', '青云谱区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360104');
INSERT INTO `mh_dict` VALUES ('1764', '249', 'diqu', '湾里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360105');
INSERT INTO `mh_dict` VALUES ('1765', '249', 'diqu', '青山湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360111');
INSERT INTO `mh_dict` VALUES ('1766', '249', 'diqu', '南昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360121');
INSERT INTO `mh_dict` VALUES ('1767', '249', 'diqu', '新建县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360122');
INSERT INTO `mh_dict` VALUES ('1768', '249', 'diqu', '安义县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360123');
INSERT INTO `mh_dict` VALUES ('1769', '249', 'diqu', '进贤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360124');
INSERT INTO `mh_dict` VALUES ('1770', '250', 'diqu', '昌江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360202');
INSERT INTO `mh_dict` VALUES ('1771', '250', 'diqu', '珠山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360203');
INSERT INTO `mh_dict` VALUES ('1772', '250', 'diqu', '浮梁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360222');
INSERT INTO `mh_dict` VALUES ('1773', '250', 'diqu', '乐平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360281');
INSERT INTO `mh_dict` VALUES ('1774', '251', 'diqu', '安源区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360302');
INSERT INTO `mh_dict` VALUES ('1775', '251', 'diqu', '湘东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360313');
INSERT INTO `mh_dict` VALUES ('1776', '251', 'diqu', '莲花县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360321');
INSERT INTO `mh_dict` VALUES ('1777', '251', 'diqu', '上栗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360322');
INSERT INTO `mh_dict` VALUES ('1778', '251', 'diqu', '芦溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360323');
INSERT INTO `mh_dict` VALUES ('1779', '252', 'diqu', '庐山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360402');
INSERT INTO `mh_dict` VALUES ('1780', '252', 'diqu', '浔阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360403');
INSERT INTO `mh_dict` VALUES ('1781', '252', 'diqu', '九江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360421');
INSERT INTO `mh_dict` VALUES ('1782', '252', 'diqu', '武宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360423');
INSERT INTO `mh_dict` VALUES ('1783', '252', 'diqu', '修水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360424');
INSERT INTO `mh_dict` VALUES ('1784', '252', 'diqu', '永修县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360425');
INSERT INTO `mh_dict` VALUES ('1785', '252', 'diqu', '德安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360426');
INSERT INTO `mh_dict` VALUES ('1786', '252', 'diqu', '星子县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360427');
INSERT INTO `mh_dict` VALUES ('1787', '252', 'diqu', '都昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360428');
INSERT INTO `mh_dict` VALUES ('1788', '252', 'diqu', '湖口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360429');
INSERT INTO `mh_dict` VALUES ('1789', '252', 'diqu', '彭泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360430');
INSERT INTO `mh_dict` VALUES ('1790', '252', 'diqu', '瑞昌市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360481');
INSERT INTO `mh_dict` VALUES ('1791', '252', 'diqu', '共青城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360482');
INSERT INTO `mh_dict` VALUES ('1792', '253', 'diqu', '渝水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360502');
INSERT INTO `mh_dict` VALUES ('1793', '253', 'diqu', '分宜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360521');
INSERT INTO `mh_dict` VALUES ('1794', '254', 'diqu', '月湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360602');
INSERT INTO `mh_dict` VALUES ('1795', '254', 'diqu', '余江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360622');
INSERT INTO `mh_dict` VALUES ('1796', '254', 'diqu', '贵溪市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360681');
INSERT INTO `mh_dict` VALUES ('1797', '255', 'diqu', '章贡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360702');
INSERT INTO `mh_dict` VALUES ('1798', '255', 'diqu', '南康区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360703');
INSERT INTO `mh_dict` VALUES ('1799', '255', 'diqu', '赣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360721');
INSERT INTO `mh_dict` VALUES ('1800', '255', 'diqu', '信丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360722');
INSERT INTO `mh_dict` VALUES ('1801', '255', 'diqu', '大余县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360723');
INSERT INTO `mh_dict` VALUES ('1802', '255', 'diqu', '上犹县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360724');
INSERT INTO `mh_dict` VALUES ('1803', '255', 'diqu', '崇义县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360725');
INSERT INTO `mh_dict` VALUES ('1804', '255', 'diqu', '安远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360726');
INSERT INTO `mh_dict` VALUES ('1805', '255', 'diqu', '龙南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360727');
INSERT INTO `mh_dict` VALUES ('1806', '255', 'diqu', '定南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360728');
INSERT INTO `mh_dict` VALUES ('1807', '255', 'diqu', '全南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360729');
INSERT INTO `mh_dict` VALUES ('1808', '255', 'diqu', '宁都县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360730');
INSERT INTO `mh_dict` VALUES ('1809', '255', 'diqu', '于都县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360731');
INSERT INTO `mh_dict` VALUES ('1810', '255', 'diqu', '兴国县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360732');
INSERT INTO `mh_dict` VALUES ('1811', '255', 'diqu', '会昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360733');
INSERT INTO `mh_dict` VALUES ('1812', '255', 'diqu', '寻乌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360734');
INSERT INTO `mh_dict` VALUES ('1813', '255', 'diqu', '石城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360735');
INSERT INTO `mh_dict` VALUES ('1814', '255', 'diqu', '瑞金市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360781');
INSERT INTO `mh_dict` VALUES ('1815', '256', 'diqu', '吉州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360802');
INSERT INTO `mh_dict` VALUES ('1816', '256', 'diqu', '青原区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360803');
INSERT INTO `mh_dict` VALUES ('1817', '256', 'diqu', '吉安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360821');
INSERT INTO `mh_dict` VALUES ('1818', '256', 'diqu', '吉水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360822');
INSERT INTO `mh_dict` VALUES ('1819', '256', 'diqu', '峡江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360823');
INSERT INTO `mh_dict` VALUES ('1820', '256', 'diqu', '新干县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360824');
INSERT INTO `mh_dict` VALUES ('1821', '256', 'diqu', '永丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360825');
INSERT INTO `mh_dict` VALUES ('1822', '256', 'diqu', '泰和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360826');
INSERT INTO `mh_dict` VALUES ('1823', '256', 'diqu', '遂川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360827');
INSERT INTO `mh_dict` VALUES ('1824', '256', 'diqu', '万安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360828');
INSERT INTO `mh_dict` VALUES ('1825', '256', 'diqu', '安福县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360829');
INSERT INTO `mh_dict` VALUES ('1826', '256', 'diqu', '永新县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360830');
INSERT INTO `mh_dict` VALUES ('1827', '256', 'diqu', '井冈山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360881');
INSERT INTO `mh_dict` VALUES ('1828', '257', 'diqu', '袁州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360902');
INSERT INTO `mh_dict` VALUES ('1829', '257', 'diqu', '奉新县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360921');
INSERT INTO `mh_dict` VALUES ('1830', '257', 'diqu', '万载县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360922');
INSERT INTO `mh_dict` VALUES ('1831', '257', 'diqu', '上高县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360923');
INSERT INTO `mh_dict` VALUES ('1832', '257', 'diqu', '宜丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360924');
INSERT INTO `mh_dict` VALUES ('1833', '257', 'diqu', '靖安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360925');
INSERT INTO `mh_dict` VALUES ('1834', '257', 'diqu', '铜鼓县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360926');
INSERT INTO `mh_dict` VALUES ('1835', '257', 'diqu', '丰城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360981');
INSERT INTO `mh_dict` VALUES ('1836', '257', 'diqu', '樟树市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360982');
INSERT INTO `mh_dict` VALUES ('1837', '257', 'diqu', '高安市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '360983');
INSERT INTO `mh_dict` VALUES ('1838', '258', 'diqu', '临川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361002');
INSERT INTO `mh_dict` VALUES ('1839', '258', 'diqu', '南城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361021');
INSERT INTO `mh_dict` VALUES ('1840', '258', 'diqu', '黎川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361022');
INSERT INTO `mh_dict` VALUES ('1841', '258', 'diqu', '南丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361023');
INSERT INTO `mh_dict` VALUES ('1842', '258', 'diqu', '崇仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361024');
INSERT INTO `mh_dict` VALUES ('1843', '258', 'diqu', '乐安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361025');
INSERT INTO `mh_dict` VALUES ('1844', '258', 'diqu', '宜黄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361026');
INSERT INTO `mh_dict` VALUES ('1845', '258', 'diqu', '金溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361027');
INSERT INTO `mh_dict` VALUES ('1846', '258', 'diqu', '资溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361028');
INSERT INTO `mh_dict` VALUES ('1847', '258', 'diqu', '东乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361029');
INSERT INTO `mh_dict` VALUES ('1848', '258', 'diqu', '广昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361030');
INSERT INTO `mh_dict` VALUES ('1849', '259', 'diqu', '信州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361102');
INSERT INTO `mh_dict` VALUES ('1850', '259', 'diqu', '上饶县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361121');
INSERT INTO `mh_dict` VALUES ('1851', '259', 'diqu', '广丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361122');
INSERT INTO `mh_dict` VALUES ('1852', '259', 'diqu', '玉山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361123');
INSERT INTO `mh_dict` VALUES ('1853', '259', 'diqu', '铅山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361124');
INSERT INTO `mh_dict` VALUES ('1854', '259', 'diqu', '横峰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361125');
INSERT INTO `mh_dict` VALUES ('1855', '259', 'diqu', '弋阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361126');
INSERT INTO `mh_dict` VALUES ('1856', '259', 'diqu', '余干县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361127');
INSERT INTO `mh_dict` VALUES ('1857', '259', 'diqu', '鄱阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361128');
INSERT INTO `mh_dict` VALUES ('1858', '259', 'diqu', '万年县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361129');
INSERT INTO `mh_dict` VALUES ('1859', '259', 'diqu', '婺源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361130');
INSERT INTO `mh_dict` VALUES ('1860', '259', 'diqu', '德兴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '361181');
INSERT INTO `mh_dict` VALUES ('1861', '260', 'diqu', '历下区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370102');
INSERT INTO `mh_dict` VALUES ('1862', '260', 'diqu', '市中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370103');
INSERT INTO `mh_dict` VALUES ('1863', '260', 'diqu', '槐荫区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370104');
INSERT INTO `mh_dict` VALUES ('1864', '260', 'diqu', '天桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370105');
INSERT INTO `mh_dict` VALUES ('1865', '260', 'diqu', '历城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370112');
INSERT INTO `mh_dict` VALUES ('1866', '260', 'diqu', '长清区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370113');
INSERT INTO `mh_dict` VALUES ('1867', '260', 'diqu', '平阴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370124');
INSERT INTO `mh_dict` VALUES ('1868', '260', 'diqu', '济阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370125');
INSERT INTO `mh_dict` VALUES ('1869', '260', 'diqu', '商河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370126');
INSERT INTO `mh_dict` VALUES ('1870', '260', 'diqu', '章丘市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370181');
INSERT INTO `mh_dict` VALUES ('1871', '261', 'diqu', '市南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370202');
INSERT INTO `mh_dict` VALUES ('1872', '261', 'diqu', '市北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370203');
INSERT INTO `mh_dict` VALUES ('1873', '261', 'diqu', '黄岛区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370211');
INSERT INTO `mh_dict` VALUES ('1874', '261', 'diqu', '崂山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370212');
INSERT INTO `mh_dict` VALUES ('1875', '261', 'diqu', '李沧区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370213');
INSERT INTO `mh_dict` VALUES ('1876', '261', 'diqu', '城阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370214');
INSERT INTO `mh_dict` VALUES ('1877', '261', 'diqu', '胶州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370281');
INSERT INTO `mh_dict` VALUES ('1878', '261', 'diqu', '即墨市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370282');
INSERT INTO `mh_dict` VALUES ('1879', '261', 'diqu', '平度市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370283');
INSERT INTO `mh_dict` VALUES ('1880', '261', 'diqu', '莱西市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370285');
INSERT INTO `mh_dict` VALUES ('1881', '261', 'diqu', '西海岸新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370286');
INSERT INTO `mh_dict` VALUES ('1882', '262', 'diqu', '淄川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370302');
INSERT INTO `mh_dict` VALUES ('1883', '262', 'diqu', '张店区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370303');
INSERT INTO `mh_dict` VALUES ('1884', '262', 'diqu', '博山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370304');
INSERT INTO `mh_dict` VALUES ('1885', '262', 'diqu', '临淄区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370305');
INSERT INTO `mh_dict` VALUES ('1886', '262', 'diqu', '周村区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370306');
INSERT INTO `mh_dict` VALUES ('1887', '262', 'diqu', '桓台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370321');
INSERT INTO `mh_dict` VALUES ('1888', '262', 'diqu', '高青县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370322');
INSERT INTO `mh_dict` VALUES ('1889', '262', 'diqu', '沂源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370323');
INSERT INTO `mh_dict` VALUES ('1890', '263', 'diqu', '市中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370402');
INSERT INTO `mh_dict` VALUES ('1891', '263', 'diqu', '薛城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370403');
INSERT INTO `mh_dict` VALUES ('1892', '263', 'diqu', '峄城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370404');
INSERT INTO `mh_dict` VALUES ('1893', '263', 'diqu', '台儿庄区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370405');
INSERT INTO `mh_dict` VALUES ('1894', '263', 'diqu', '山亭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370406');
INSERT INTO `mh_dict` VALUES ('1895', '263', 'diqu', '滕州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370481');
INSERT INTO `mh_dict` VALUES ('1896', '264', 'diqu', '东营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370502');
INSERT INTO `mh_dict` VALUES ('1897', '264', 'diqu', '河口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370503');
INSERT INTO `mh_dict` VALUES ('1898', '264', 'diqu', '垦利县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370521');
INSERT INTO `mh_dict` VALUES ('1899', '264', 'diqu', '利津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370522');
INSERT INTO `mh_dict` VALUES ('1900', '264', 'diqu', '广饶县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370523');
INSERT INTO `mh_dict` VALUES ('1901', '265', 'diqu', '芝罘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370602');
INSERT INTO `mh_dict` VALUES ('1902', '265', 'diqu', '福山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370611');
INSERT INTO `mh_dict` VALUES ('1903', '265', 'diqu', '牟平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370612');
INSERT INTO `mh_dict` VALUES ('1904', '265', 'diqu', '莱山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370613');
INSERT INTO `mh_dict` VALUES ('1905', '265', 'diqu', '长岛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370634');
INSERT INTO `mh_dict` VALUES ('1906', '265', 'diqu', '龙口市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370681');
INSERT INTO `mh_dict` VALUES ('1907', '265', 'diqu', '莱阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370682');
INSERT INTO `mh_dict` VALUES ('1908', '265', 'diqu', '莱州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370683');
INSERT INTO `mh_dict` VALUES ('1909', '265', 'diqu', '蓬莱市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370684');
INSERT INTO `mh_dict` VALUES ('1910', '265', 'diqu', '招远市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370685');
INSERT INTO `mh_dict` VALUES ('1911', '265', 'diqu', '栖霞市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370686');
INSERT INTO `mh_dict` VALUES ('1912', '265', 'diqu', '海阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370687');
INSERT INTO `mh_dict` VALUES ('1913', '266', 'diqu', '潍城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370702');
INSERT INTO `mh_dict` VALUES ('1914', '266', 'diqu', '寒亭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370703');
INSERT INTO `mh_dict` VALUES ('1915', '266', 'diqu', '坊子区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370704');
INSERT INTO `mh_dict` VALUES ('1916', '266', 'diqu', '奎文区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370705');
INSERT INTO `mh_dict` VALUES ('1917', '266', 'diqu', '临朐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370724');
INSERT INTO `mh_dict` VALUES ('1918', '266', 'diqu', '昌乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370725');
INSERT INTO `mh_dict` VALUES ('1919', '266', 'diqu', '青州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370781');
INSERT INTO `mh_dict` VALUES ('1920', '266', 'diqu', '诸城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370782');
INSERT INTO `mh_dict` VALUES ('1921', '266', 'diqu', '寿光市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370783');
INSERT INTO `mh_dict` VALUES ('1922', '266', 'diqu', '安丘市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370784');
INSERT INTO `mh_dict` VALUES ('1923', '266', 'diqu', '高密市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370785');
INSERT INTO `mh_dict` VALUES ('1924', '266', 'diqu', '昌邑市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370786');
INSERT INTO `mh_dict` VALUES ('1925', '267', 'diqu', '任城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370811');
INSERT INTO `mh_dict` VALUES ('1926', '267', 'diqu', '兖州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370812');
INSERT INTO `mh_dict` VALUES ('1927', '267', 'diqu', '微山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370826');
INSERT INTO `mh_dict` VALUES ('1928', '267', 'diqu', '鱼台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370827');
INSERT INTO `mh_dict` VALUES ('1929', '267', 'diqu', '金乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370828');
INSERT INTO `mh_dict` VALUES ('1930', '267', 'diqu', '嘉祥县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370829');
INSERT INTO `mh_dict` VALUES ('1931', '267', 'diqu', '汶上县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370830');
INSERT INTO `mh_dict` VALUES ('1932', '267', 'diqu', '泗水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370831');
INSERT INTO `mh_dict` VALUES ('1933', '267', 'diqu', '梁山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370832');
INSERT INTO `mh_dict` VALUES ('1934', '267', 'diqu', '曲阜市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370881');
INSERT INTO `mh_dict` VALUES ('1935', '267', 'diqu', '邹城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370883');
INSERT INTO `mh_dict` VALUES ('1936', '268', 'diqu', '泰山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370902');
INSERT INTO `mh_dict` VALUES ('1937', '268', 'diqu', '岱岳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370911');
INSERT INTO `mh_dict` VALUES ('1938', '268', 'diqu', '宁阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370921');
INSERT INTO `mh_dict` VALUES ('1939', '268', 'diqu', '东平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370923');
INSERT INTO `mh_dict` VALUES ('1940', '268', 'diqu', '新泰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370982');
INSERT INTO `mh_dict` VALUES ('1941', '268', 'diqu', '肥城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '370983');
INSERT INTO `mh_dict` VALUES ('1942', '269', 'diqu', '环翠区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371002');
INSERT INTO `mh_dict` VALUES ('1943', '269', 'diqu', '文登区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371003');
INSERT INTO `mh_dict` VALUES ('1944', '269', 'diqu', '荣成市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371082');
INSERT INTO `mh_dict` VALUES ('1945', '269', 'diqu', '乳山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371083');
INSERT INTO `mh_dict` VALUES ('1946', '270', 'diqu', '东港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371102');
INSERT INTO `mh_dict` VALUES ('1947', '270', 'diqu', '岚山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371103');
INSERT INTO `mh_dict` VALUES ('1948', '270', 'diqu', '五莲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371121');
INSERT INTO `mh_dict` VALUES ('1949', '270', 'diqu', '莒县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371122');
INSERT INTO `mh_dict` VALUES ('1950', '271', 'diqu', '莱城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371202');
INSERT INTO `mh_dict` VALUES ('1951', '271', 'diqu', '钢城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371203');
INSERT INTO `mh_dict` VALUES ('1952', '272', 'diqu', '兰山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371302');
INSERT INTO `mh_dict` VALUES ('1953', '272', 'diqu', '罗庄区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371311');
INSERT INTO `mh_dict` VALUES ('1954', '272', 'diqu', '河东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371312');
INSERT INTO `mh_dict` VALUES ('1955', '272', 'diqu', '沂南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371321');
INSERT INTO `mh_dict` VALUES ('1956', '272', 'diqu', '郯城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371322');
INSERT INTO `mh_dict` VALUES ('1957', '272', 'diqu', '沂水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371323');
INSERT INTO `mh_dict` VALUES ('1958', '272', 'diqu', '兰陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371324');
INSERT INTO `mh_dict` VALUES ('1959', '272', 'diqu', '费县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371325');
INSERT INTO `mh_dict` VALUES ('1960', '272', 'diqu', '平邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371326');
INSERT INTO `mh_dict` VALUES ('1961', '272', 'diqu', '莒南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371327');
INSERT INTO `mh_dict` VALUES ('1962', '272', 'diqu', '蒙阴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371328');
INSERT INTO `mh_dict` VALUES ('1963', '272', 'diqu', '临沭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371329');
INSERT INTO `mh_dict` VALUES ('1964', '273', 'diqu', '德城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371402');
INSERT INTO `mh_dict` VALUES ('1965', '273', 'diqu', '陵城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371403');
INSERT INTO `mh_dict` VALUES ('1966', '273', 'diqu', '宁津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371422');
INSERT INTO `mh_dict` VALUES ('1967', '273', 'diqu', '庆云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371423');
INSERT INTO `mh_dict` VALUES ('1968', '273', 'diqu', '临邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371424');
INSERT INTO `mh_dict` VALUES ('1969', '273', 'diqu', '齐河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371425');
INSERT INTO `mh_dict` VALUES ('1970', '273', 'diqu', '平原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371426');
INSERT INTO `mh_dict` VALUES ('1971', '273', 'diqu', '夏津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371427');
INSERT INTO `mh_dict` VALUES ('1972', '273', 'diqu', '武城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371428');
INSERT INTO `mh_dict` VALUES ('1973', '273', 'diqu', '乐陵市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371481');
INSERT INTO `mh_dict` VALUES ('1974', '273', 'diqu', '禹城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371482');
INSERT INTO `mh_dict` VALUES ('1975', '274', 'diqu', '东昌府区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371502');
INSERT INTO `mh_dict` VALUES ('1976', '274', 'diqu', '阳谷县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371521');
INSERT INTO `mh_dict` VALUES ('1977', '274', 'diqu', '莘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371522');
INSERT INTO `mh_dict` VALUES ('1978', '274', 'diqu', '茌平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371523');
INSERT INTO `mh_dict` VALUES ('1979', '274', 'diqu', '东阿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371524');
INSERT INTO `mh_dict` VALUES ('1980', '274', 'diqu', '冠县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371525');
INSERT INTO `mh_dict` VALUES ('1981', '274', 'diqu', '高唐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371526');
INSERT INTO `mh_dict` VALUES ('1982', '274', 'diqu', '临清市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371581');
INSERT INTO `mh_dict` VALUES ('1983', '275', 'diqu', '滨城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371602');
INSERT INTO `mh_dict` VALUES ('1984', '275', 'diqu', '沾化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371603');
INSERT INTO `mh_dict` VALUES ('1985', '275', 'diqu', '惠民县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371621');
INSERT INTO `mh_dict` VALUES ('1986', '275', 'diqu', '阳信县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371622');
INSERT INTO `mh_dict` VALUES ('1987', '275', 'diqu', '无棣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371623');
INSERT INTO `mh_dict` VALUES ('1988', '275', 'diqu', '博兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371625');
INSERT INTO `mh_dict` VALUES ('1989', '275', 'diqu', '邹平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371626');
INSERT INTO `mh_dict` VALUES ('1990', '275', 'diqu', '北海新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371627');
INSERT INTO `mh_dict` VALUES ('1991', '276', 'diqu', '牡丹区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371702');
INSERT INTO `mh_dict` VALUES ('1992', '276', 'diqu', '曹县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371721');
INSERT INTO `mh_dict` VALUES ('1993', '276', 'diqu', '单县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371722');
INSERT INTO `mh_dict` VALUES ('1994', '276', 'diqu', '成武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371723');
INSERT INTO `mh_dict` VALUES ('1995', '276', 'diqu', '巨野县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371724');
INSERT INTO `mh_dict` VALUES ('1996', '276', 'diqu', '郓城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371725');
INSERT INTO `mh_dict` VALUES ('1997', '276', 'diqu', '鄄城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371726');
INSERT INTO `mh_dict` VALUES ('1998', '276', 'diqu', '定陶县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371727');
INSERT INTO `mh_dict` VALUES ('1999', '276', 'diqu', '东明县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '371728');
INSERT INTO `mh_dict` VALUES ('2000', '277', 'diqu', '中原区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410102');
INSERT INTO `mh_dict` VALUES ('2001', '277', 'diqu', '二七区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410103');
INSERT INTO `mh_dict` VALUES ('2002', '277', 'diqu', '管城回族区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410104');
INSERT INTO `mh_dict` VALUES ('2003', '277', 'diqu', '金水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410105');
INSERT INTO `mh_dict` VALUES ('2004', '277', 'diqu', '上街区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410106');
INSERT INTO `mh_dict` VALUES ('2005', '277', 'diqu', '惠济区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410108');
INSERT INTO `mh_dict` VALUES ('2006', '277', 'diqu', '中牟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410122');
INSERT INTO `mh_dict` VALUES ('2007', '277', 'diqu', '巩义市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410181');
INSERT INTO `mh_dict` VALUES ('2008', '277', 'diqu', '荥阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410182');
INSERT INTO `mh_dict` VALUES ('2009', '277', 'diqu', '新密市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410183');
INSERT INTO `mh_dict` VALUES ('2010', '277', 'diqu', '新郑市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410184');
INSERT INTO `mh_dict` VALUES ('2011', '277', 'diqu', '登封市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410185');
INSERT INTO `mh_dict` VALUES ('2012', '278', 'diqu', '龙亭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410202');
INSERT INTO `mh_dict` VALUES ('2013', '278', 'diqu', '顺河回族区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410203');
INSERT INTO `mh_dict` VALUES ('2014', '278', 'diqu', '鼓楼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410204');
INSERT INTO `mh_dict` VALUES ('2015', '278', 'diqu', '禹王台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410205');
INSERT INTO `mh_dict` VALUES ('2016', '278', 'diqu', '祥符区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410212');
INSERT INTO `mh_dict` VALUES ('2017', '278', 'diqu', '杞县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410221');
INSERT INTO `mh_dict` VALUES ('2018', '278', 'diqu', '通许县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410222');
INSERT INTO `mh_dict` VALUES ('2019', '278', 'diqu', '尉氏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410223');
INSERT INTO `mh_dict` VALUES ('2020', '278', 'diqu', '兰考县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410225');
INSERT INTO `mh_dict` VALUES ('2021', '279', 'diqu', '老城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410302');
INSERT INTO `mh_dict` VALUES ('2022', '279', 'diqu', '西工区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410303');
INSERT INTO `mh_dict` VALUES ('2023', '279', 'diqu', '瀍河回族区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410304');
INSERT INTO `mh_dict` VALUES ('2024', '279', 'diqu', '涧西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410305');
INSERT INTO `mh_dict` VALUES ('2025', '279', 'diqu', '吉利区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410306');
INSERT INTO `mh_dict` VALUES ('2026', '279', 'diqu', '洛龙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410311');
INSERT INTO `mh_dict` VALUES ('2027', '279', 'diqu', '孟津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410322');
INSERT INTO `mh_dict` VALUES ('2028', '279', 'diqu', '新安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410323');
INSERT INTO `mh_dict` VALUES ('2029', '279', 'diqu', '栾川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410324');
INSERT INTO `mh_dict` VALUES ('2030', '279', 'diqu', '嵩县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410325');
INSERT INTO `mh_dict` VALUES ('2031', '279', 'diqu', '汝阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410326');
INSERT INTO `mh_dict` VALUES ('2032', '279', 'diqu', '宜阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410327');
INSERT INTO `mh_dict` VALUES ('2033', '279', 'diqu', '洛宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410328');
INSERT INTO `mh_dict` VALUES ('2034', '279', 'diqu', '伊川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410329');
INSERT INTO `mh_dict` VALUES ('2035', '279', 'diqu', '偃师市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410381');
INSERT INTO `mh_dict` VALUES ('2036', '280', 'diqu', '新华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410402');
INSERT INTO `mh_dict` VALUES ('2037', '280', 'diqu', '卫东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410403');
INSERT INTO `mh_dict` VALUES ('2038', '280', 'diqu', '石龙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410404');
INSERT INTO `mh_dict` VALUES ('2039', '280', 'diqu', '湛河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410411');
INSERT INTO `mh_dict` VALUES ('2040', '280', 'diqu', '宝丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410421');
INSERT INTO `mh_dict` VALUES ('2041', '280', 'diqu', '叶县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410422');
INSERT INTO `mh_dict` VALUES ('2042', '280', 'diqu', '鲁山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410423');
INSERT INTO `mh_dict` VALUES ('2043', '280', 'diqu', '郏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410425');
INSERT INTO `mh_dict` VALUES ('2044', '280', 'diqu', '舞钢市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410481');
INSERT INTO `mh_dict` VALUES ('2045', '280', 'diqu', '汝州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410482');
INSERT INTO `mh_dict` VALUES ('2046', '281', 'diqu', '文峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410502');
INSERT INTO `mh_dict` VALUES ('2047', '281', 'diqu', '北关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410503');
INSERT INTO `mh_dict` VALUES ('2048', '281', 'diqu', '殷都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410505');
INSERT INTO `mh_dict` VALUES ('2049', '281', 'diqu', '龙安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410506');
INSERT INTO `mh_dict` VALUES ('2050', '281', 'diqu', '安阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410522');
INSERT INTO `mh_dict` VALUES ('2051', '281', 'diqu', '汤阴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410523');
INSERT INTO `mh_dict` VALUES ('2052', '281', 'diqu', '滑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410526');
INSERT INTO `mh_dict` VALUES ('2053', '281', 'diqu', '内黄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410527');
INSERT INTO `mh_dict` VALUES ('2054', '281', 'diqu', '林州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410581');
INSERT INTO `mh_dict` VALUES ('2055', '282', 'diqu', '鹤山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410602');
INSERT INTO `mh_dict` VALUES ('2056', '282', 'diqu', '山城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410603');
INSERT INTO `mh_dict` VALUES ('2057', '282', 'diqu', '淇滨区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410611');
INSERT INTO `mh_dict` VALUES ('2058', '282', 'diqu', '浚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410621');
INSERT INTO `mh_dict` VALUES ('2059', '282', 'diqu', '淇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410622');
INSERT INTO `mh_dict` VALUES ('2060', '283', 'diqu', '红旗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410702');
INSERT INTO `mh_dict` VALUES ('2061', '283', 'diqu', '卫滨区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410703');
INSERT INTO `mh_dict` VALUES ('2062', '283', 'diqu', '凤泉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410704');
INSERT INTO `mh_dict` VALUES ('2063', '283', 'diqu', '牧野区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410711');
INSERT INTO `mh_dict` VALUES ('2064', '283', 'diqu', '新乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410721');
INSERT INTO `mh_dict` VALUES ('2065', '283', 'diqu', '获嘉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410724');
INSERT INTO `mh_dict` VALUES ('2066', '283', 'diqu', '原阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410725');
INSERT INTO `mh_dict` VALUES ('2067', '283', 'diqu', '延津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410726');
INSERT INTO `mh_dict` VALUES ('2068', '283', 'diqu', '封丘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410727');
INSERT INTO `mh_dict` VALUES ('2069', '283', 'diqu', '长垣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410728');
INSERT INTO `mh_dict` VALUES ('2070', '283', 'diqu', '卫辉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410781');
INSERT INTO `mh_dict` VALUES ('2071', '283', 'diqu', '辉县市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410782');
INSERT INTO `mh_dict` VALUES ('2072', '284', 'diqu', '解放区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410802');
INSERT INTO `mh_dict` VALUES ('2073', '284', 'diqu', '中站区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410803');
INSERT INTO `mh_dict` VALUES ('2074', '284', 'diqu', '马村区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410804');
INSERT INTO `mh_dict` VALUES ('2075', '284', 'diqu', '山阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410811');
INSERT INTO `mh_dict` VALUES ('2076', '284', 'diqu', '修武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410821');
INSERT INTO `mh_dict` VALUES ('2077', '284', 'diqu', '博爱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410822');
INSERT INTO `mh_dict` VALUES ('2078', '284', 'diqu', '武陟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410823');
INSERT INTO `mh_dict` VALUES ('2079', '284', 'diqu', '温县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410825');
INSERT INTO `mh_dict` VALUES ('2080', '284', 'diqu', '沁阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410882');
INSERT INTO `mh_dict` VALUES ('2081', '284', 'diqu', '孟州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410883');
INSERT INTO `mh_dict` VALUES ('2082', '285', 'diqu', '华龙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410902');
INSERT INTO `mh_dict` VALUES ('2083', '285', 'diqu', '清丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410922');
INSERT INTO `mh_dict` VALUES ('2084', '285', 'diqu', '南乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410923');
INSERT INTO `mh_dict` VALUES ('2085', '285', 'diqu', '范县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410926');
INSERT INTO `mh_dict` VALUES ('2086', '285', 'diqu', '台前县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410927');
INSERT INTO `mh_dict` VALUES ('2087', '285', 'diqu', '濮阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '410928');
INSERT INTO `mh_dict` VALUES ('2088', '286', 'diqu', '魏都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411002');
INSERT INTO `mh_dict` VALUES ('2089', '286', 'diqu', '许昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411023');
INSERT INTO `mh_dict` VALUES ('2090', '286', 'diqu', '鄢陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411024');
INSERT INTO `mh_dict` VALUES ('2091', '286', 'diqu', '襄城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411025');
INSERT INTO `mh_dict` VALUES ('2092', '286', 'diqu', '禹州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411081');
INSERT INTO `mh_dict` VALUES ('2093', '286', 'diqu', '长葛市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411082');
INSERT INTO `mh_dict` VALUES ('2094', '287', 'diqu', '源汇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411102');
INSERT INTO `mh_dict` VALUES ('2095', '287', 'diqu', '郾城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411103');
INSERT INTO `mh_dict` VALUES ('2096', '287', 'diqu', '召陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411104');
INSERT INTO `mh_dict` VALUES ('2097', '287', 'diqu', '舞阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411121');
INSERT INTO `mh_dict` VALUES ('2098', '287', 'diqu', '临颍县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411122');
INSERT INTO `mh_dict` VALUES ('2099', '288', 'diqu', '湖滨区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411202');
INSERT INTO `mh_dict` VALUES ('2100', '288', 'diqu', '渑池县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411221');
INSERT INTO `mh_dict` VALUES ('2101', '288', 'diqu', '陕县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411222');
INSERT INTO `mh_dict` VALUES ('2102', '288', 'diqu', '卢氏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411224');
INSERT INTO `mh_dict` VALUES ('2103', '288', 'diqu', '义马市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411281');
INSERT INTO `mh_dict` VALUES ('2104', '288', 'diqu', '灵宝市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411282');
INSERT INTO `mh_dict` VALUES ('2105', '289', 'diqu', '宛城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411302');
INSERT INTO `mh_dict` VALUES ('2106', '289', 'diqu', '卧龙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411303');
INSERT INTO `mh_dict` VALUES ('2107', '289', 'diqu', '南召县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411321');
INSERT INTO `mh_dict` VALUES ('2108', '289', 'diqu', '方城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411322');
INSERT INTO `mh_dict` VALUES ('2109', '289', 'diqu', '西峡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411323');
INSERT INTO `mh_dict` VALUES ('2110', '289', 'diqu', '镇平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411324');
INSERT INTO `mh_dict` VALUES ('2111', '289', 'diqu', '内乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411325');
INSERT INTO `mh_dict` VALUES ('2112', '289', 'diqu', '淅川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411326');
INSERT INTO `mh_dict` VALUES ('2113', '289', 'diqu', '社旗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411327');
INSERT INTO `mh_dict` VALUES ('2114', '289', 'diqu', '唐河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411328');
INSERT INTO `mh_dict` VALUES ('2115', '289', 'diqu', '新野县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411329');
INSERT INTO `mh_dict` VALUES ('2116', '289', 'diqu', '桐柏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411330');
INSERT INTO `mh_dict` VALUES ('2117', '289', 'diqu', '邓州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411381');
INSERT INTO `mh_dict` VALUES ('2118', '290', 'diqu', '梁园区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411402');
INSERT INTO `mh_dict` VALUES ('2119', '290', 'diqu', '睢阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411403');
INSERT INTO `mh_dict` VALUES ('2120', '290', 'diqu', '民权县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411421');
INSERT INTO `mh_dict` VALUES ('2121', '290', 'diqu', '睢县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411422');
INSERT INTO `mh_dict` VALUES ('2122', '290', 'diqu', '宁陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411423');
INSERT INTO `mh_dict` VALUES ('2123', '290', 'diqu', '柘城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411424');
INSERT INTO `mh_dict` VALUES ('2124', '290', 'diqu', '虞城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411425');
INSERT INTO `mh_dict` VALUES ('2125', '290', 'diqu', '夏邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411426');
INSERT INTO `mh_dict` VALUES ('2126', '290', 'diqu', '永城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411481');
INSERT INTO `mh_dict` VALUES ('2127', '291', 'diqu', '浉河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411502');
INSERT INTO `mh_dict` VALUES ('2128', '291', 'diqu', '平桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411503');
INSERT INTO `mh_dict` VALUES ('2129', '291', 'diqu', '罗山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411521');
INSERT INTO `mh_dict` VALUES ('2130', '291', 'diqu', '光山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411522');
INSERT INTO `mh_dict` VALUES ('2131', '291', 'diqu', '新县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411523');
INSERT INTO `mh_dict` VALUES ('2132', '291', 'diqu', '商城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411524');
INSERT INTO `mh_dict` VALUES ('2133', '291', 'diqu', '固始县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411525');
INSERT INTO `mh_dict` VALUES ('2134', '291', 'diqu', '潢川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411526');
INSERT INTO `mh_dict` VALUES ('2135', '291', 'diqu', '淮滨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411527');
INSERT INTO `mh_dict` VALUES ('2136', '291', 'diqu', '息县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411528');
INSERT INTO `mh_dict` VALUES ('2137', '292', 'diqu', '川汇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411602');
INSERT INTO `mh_dict` VALUES ('2138', '292', 'diqu', '扶沟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411621');
INSERT INTO `mh_dict` VALUES ('2139', '292', 'diqu', '西华县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411622');
INSERT INTO `mh_dict` VALUES ('2140', '292', 'diqu', '商水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411623');
INSERT INTO `mh_dict` VALUES ('2141', '292', 'diqu', '沈丘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411624');
INSERT INTO `mh_dict` VALUES ('2142', '292', 'diqu', '郸城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411625');
INSERT INTO `mh_dict` VALUES ('2143', '292', 'diqu', '淮阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411626');
INSERT INTO `mh_dict` VALUES ('2144', '292', 'diqu', '太康县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411627');
INSERT INTO `mh_dict` VALUES ('2145', '292', 'diqu', '鹿邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411628');
INSERT INTO `mh_dict` VALUES ('2146', '292', 'diqu', '项城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411681');
INSERT INTO `mh_dict` VALUES ('2147', '293', 'diqu', '驿城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411702');
INSERT INTO `mh_dict` VALUES ('2148', '293', 'diqu', '西平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411721');
INSERT INTO `mh_dict` VALUES ('2149', '293', 'diqu', '上蔡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411722');
INSERT INTO `mh_dict` VALUES ('2150', '293', 'diqu', '平舆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411723');
INSERT INTO `mh_dict` VALUES ('2151', '293', 'diqu', '正阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411724');
INSERT INTO `mh_dict` VALUES ('2152', '293', 'diqu', '确山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411725');
INSERT INTO `mh_dict` VALUES ('2153', '293', 'diqu', '泌阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411726');
INSERT INTO `mh_dict` VALUES ('2154', '293', 'diqu', '汝南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411727');
INSERT INTO `mh_dict` VALUES ('2155', '293', 'diqu', '遂平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411728');
INSERT INTO `mh_dict` VALUES ('2156', '293', 'diqu', '新蔡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '411729');
INSERT INTO `mh_dict` VALUES ('2157', '294', 'diqu', '济源市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '419001');
INSERT INTO `mh_dict` VALUES ('2158', '295', 'diqu', '江岸区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420102');
INSERT INTO `mh_dict` VALUES ('2159', '295', 'diqu', '江汉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420103');
INSERT INTO `mh_dict` VALUES ('2160', '295', 'diqu', '硚口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420104');
INSERT INTO `mh_dict` VALUES ('2161', '295', 'diqu', '汉阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420105');
INSERT INTO `mh_dict` VALUES ('2162', '295', 'diqu', '武昌区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420106');
INSERT INTO `mh_dict` VALUES ('2163', '295', 'diqu', '青山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420107');
INSERT INTO `mh_dict` VALUES ('2164', '295', 'diqu', '洪山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420111');
INSERT INTO `mh_dict` VALUES ('2165', '295', 'diqu', '东西湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420112');
INSERT INTO `mh_dict` VALUES ('2166', '295', 'diqu', '汉南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420113');
INSERT INTO `mh_dict` VALUES ('2167', '295', 'diqu', '蔡甸区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420114');
INSERT INTO `mh_dict` VALUES ('2168', '295', 'diqu', '江夏区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420115');
INSERT INTO `mh_dict` VALUES ('2169', '295', 'diqu', '黄陂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420116');
INSERT INTO `mh_dict` VALUES ('2170', '295', 'diqu', '新洲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420117');
INSERT INTO `mh_dict` VALUES ('2171', '296', 'diqu', '黄石港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420202');
INSERT INTO `mh_dict` VALUES ('2172', '296', 'diqu', '西塞山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420203');
INSERT INTO `mh_dict` VALUES ('2173', '296', 'diqu', '下陆区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420204');
INSERT INTO `mh_dict` VALUES ('2174', '296', 'diqu', '铁山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420205');
INSERT INTO `mh_dict` VALUES ('2175', '296', 'diqu', '阳新县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420222');
INSERT INTO `mh_dict` VALUES ('2176', '296', 'diqu', '大冶市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420281');
INSERT INTO `mh_dict` VALUES ('2177', '297', 'diqu', '茅箭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420302');
INSERT INTO `mh_dict` VALUES ('2178', '297', 'diqu', '张湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420303');
INSERT INTO `mh_dict` VALUES ('2179', '297', 'diqu', '郧阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420304');
INSERT INTO `mh_dict` VALUES ('2180', '297', 'diqu', '郧西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420322');
INSERT INTO `mh_dict` VALUES ('2181', '297', 'diqu', '竹山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420323');
INSERT INTO `mh_dict` VALUES ('2182', '297', 'diqu', '竹溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420324');
INSERT INTO `mh_dict` VALUES ('2183', '297', 'diqu', '房县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420325');
INSERT INTO `mh_dict` VALUES ('2184', '297', 'diqu', '丹江口市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420381');
INSERT INTO `mh_dict` VALUES ('2185', '298', 'diqu', '西陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420502');
INSERT INTO `mh_dict` VALUES ('2186', '298', 'diqu', '伍家岗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420503');
INSERT INTO `mh_dict` VALUES ('2187', '298', 'diqu', '点军区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420504');
INSERT INTO `mh_dict` VALUES ('2188', '298', 'diqu', '猇亭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420505');
INSERT INTO `mh_dict` VALUES ('2189', '298', 'diqu', '夷陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420506');
INSERT INTO `mh_dict` VALUES ('2190', '298', 'diqu', '远安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420525');
INSERT INTO `mh_dict` VALUES ('2191', '298', 'diqu', '兴山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420526');
INSERT INTO `mh_dict` VALUES ('2192', '298', 'diqu', '秭归县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420527');
INSERT INTO `mh_dict` VALUES ('2193', '298', 'diqu', '长阳土家族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420528');
INSERT INTO `mh_dict` VALUES ('2194', '298', 'diqu', '五峰土家族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420529');
INSERT INTO `mh_dict` VALUES ('2195', '298', 'diqu', '宜都市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420581');
INSERT INTO `mh_dict` VALUES ('2196', '298', 'diqu', '当阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420582');
INSERT INTO `mh_dict` VALUES ('2197', '298', 'diqu', '枝江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420583');
INSERT INTO `mh_dict` VALUES ('2198', '299', 'diqu', '襄城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420602');
INSERT INTO `mh_dict` VALUES ('2199', '299', 'diqu', '樊城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420606');
INSERT INTO `mh_dict` VALUES ('2200', '299', 'diqu', '襄州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420607');
INSERT INTO `mh_dict` VALUES ('2201', '299', 'diqu', '南漳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420624');
INSERT INTO `mh_dict` VALUES ('2202', '299', 'diqu', '谷城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420625');
INSERT INTO `mh_dict` VALUES ('2203', '299', 'diqu', '保康县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420626');
INSERT INTO `mh_dict` VALUES ('2204', '299', 'diqu', '老河口市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420682');
INSERT INTO `mh_dict` VALUES ('2205', '299', 'diqu', '枣阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420683');
INSERT INTO `mh_dict` VALUES ('2206', '299', 'diqu', '宜城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420684');
INSERT INTO `mh_dict` VALUES ('2207', '300', 'diqu', '梁子湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420702');
INSERT INTO `mh_dict` VALUES ('2208', '300', 'diqu', '华容区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420703');
INSERT INTO `mh_dict` VALUES ('2209', '300', 'diqu', '鄂城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420704');
INSERT INTO `mh_dict` VALUES ('2210', '301', 'diqu', '东宝区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420802');
INSERT INTO `mh_dict` VALUES ('2211', '301', 'diqu', '掇刀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420804');
INSERT INTO `mh_dict` VALUES ('2212', '301', 'diqu', '京山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420821');
INSERT INTO `mh_dict` VALUES ('2213', '301', 'diqu', '沙洋县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420822');
INSERT INTO `mh_dict` VALUES ('2214', '301', 'diqu', '钟祥市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420881');
INSERT INTO `mh_dict` VALUES ('2215', '302', 'diqu', '孝南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420902');
INSERT INTO `mh_dict` VALUES ('2216', '302', 'diqu', '孝昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420921');
INSERT INTO `mh_dict` VALUES ('2217', '302', 'diqu', '大悟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420922');
INSERT INTO `mh_dict` VALUES ('2218', '302', 'diqu', '云梦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420923');
INSERT INTO `mh_dict` VALUES ('2219', '302', 'diqu', '应城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420981');
INSERT INTO `mh_dict` VALUES ('2220', '302', 'diqu', '安陆市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420982');
INSERT INTO `mh_dict` VALUES ('2221', '302', 'diqu', '汉川市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '420984');
INSERT INTO `mh_dict` VALUES ('2222', '303', 'diqu', '沙市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421002');
INSERT INTO `mh_dict` VALUES ('2223', '303', 'diqu', '荆州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421003');
INSERT INTO `mh_dict` VALUES ('2224', '303', 'diqu', '公安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421022');
INSERT INTO `mh_dict` VALUES ('2225', '303', 'diqu', '监利县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421023');
INSERT INTO `mh_dict` VALUES ('2226', '303', 'diqu', '江陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421024');
INSERT INTO `mh_dict` VALUES ('2227', '303', 'diqu', '石首市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421081');
INSERT INTO `mh_dict` VALUES ('2228', '303', 'diqu', '洪湖市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421083');
INSERT INTO `mh_dict` VALUES ('2229', '303', 'diqu', '松滋市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421087');
INSERT INTO `mh_dict` VALUES ('2230', '304', 'diqu', '黄州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421102');
INSERT INTO `mh_dict` VALUES ('2231', '304', 'diqu', '团风县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421121');
INSERT INTO `mh_dict` VALUES ('2232', '304', 'diqu', '红安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421122');
INSERT INTO `mh_dict` VALUES ('2233', '304', 'diqu', '罗田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421123');
INSERT INTO `mh_dict` VALUES ('2234', '304', 'diqu', '英山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421124');
INSERT INTO `mh_dict` VALUES ('2235', '304', 'diqu', '浠水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421125');
INSERT INTO `mh_dict` VALUES ('2236', '304', 'diqu', '蕲春县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421126');
INSERT INTO `mh_dict` VALUES ('2237', '304', 'diqu', '黄梅县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421127');
INSERT INTO `mh_dict` VALUES ('2238', '304', 'diqu', '麻城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421181');
INSERT INTO `mh_dict` VALUES ('2239', '304', 'diqu', '武穴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421182');
INSERT INTO `mh_dict` VALUES ('2240', '305', 'diqu', '咸安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421202');
INSERT INTO `mh_dict` VALUES ('2241', '305', 'diqu', '嘉鱼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421221');
INSERT INTO `mh_dict` VALUES ('2242', '305', 'diqu', '通城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421222');
INSERT INTO `mh_dict` VALUES ('2243', '305', 'diqu', '崇阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421223');
INSERT INTO `mh_dict` VALUES ('2244', '305', 'diqu', '通山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421224');
INSERT INTO `mh_dict` VALUES ('2245', '305', 'diqu', '赤壁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421281');
INSERT INTO `mh_dict` VALUES ('2246', '306', 'diqu', '曾都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421303');
INSERT INTO `mh_dict` VALUES ('2247', '306', 'diqu', '随县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421321');
INSERT INTO `mh_dict` VALUES ('2248', '306', 'diqu', '广水市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '421381');
INSERT INTO `mh_dict` VALUES ('2249', '307', 'diqu', '恩施市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422801');
INSERT INTO `mh_dict` VALUES ('2250', '307', 'diqu', '利川市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422802');
INSERT INTO `mh_dict` VALUES ('2251', '307', 'diqu', '建始县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422822');
INSERT INTO `mh_dict` VALUES ('2252', '307', 'diqu', '巴东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422823');
INSERT INTO `mh_dict` VALUES ('2253', '307', 'diqu', '宣恩县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422825');
INSERT INTO `mh_dict` VALUES ('2254', '307', 'diqu', '咸丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422826');
INSERT INTO `mh_dict` VALUES ('2255', '307', 'diqu', '来凤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422827');
INSERT INTO `mh_dict` VALUES ('2256', '307', 'diqu', '鹤峰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '422828');
INSERT INTO `mh_dict` VALUES ('2257', '308', 'diqu', '仙桃市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '429004');
INSERT INTO `mh_dict` VALUES ('2258', '308', 'diqu', '潜江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '429005');
INSERT INTO `mh_dict` VALUES ('2259', '308', 'diqu', '天门市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '429006');
INSERT INTO `mh_dict` VALUES ('2260', '308', 'diqu', '神农架林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '429021');
INSERT INTO `mh_dict` VALUES ('2261', '309', 'diqu', '芙蓉区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430102');
INSERT INTO `mh_dict` VALUES ('2262', '309', 'diqu', '天心区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430103');
INSERT INTO `mh_dict` VALUES ('2263', '309', 'diqu', '岳麓区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430104');
INSERT INTO `mh_dict` VALUES ('2264', '309', 'diqu', '开福区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430105');
INSERT INTO `mh_dict` VALUES ('2265', '309', 'diqu', '雨花区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430111');
INSERT INTO `mh_dict` VALUES ('2266', '309', 'diqu', '望城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430112');
INSERT INTO `mh_dict` VALUES ('2267', '309', 'diqu', '长沙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430121');
INSERT INTO `mh_dict` VALUES ('2268', '309', 'diqu', '宁乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430124');
INSERT INTO `mh_dict` VALUES ('2269', '309', 'diqu', '浏阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430181');
INSERT INTO `mh_dict` VALUES ('2270', '310', 'diqu', '荷塘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430202');
INSERT INTO `mh_dict` VALUES ('2271', '310', 'diqu', '芦淞区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430203');
INSERT INTO `mh_dict` VALUES ('2272', '310', 'diqu', '石峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430204');
INSERT INTO `mh_dict` VALUES ('2273', '310', 'diqu', '天元区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430211');
INSERT INTO `mh_dict` VALUES ('2274', '310', 'diqu', '株洲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430221');
INSERT INTO `mh_dict` VALUES ('2275', '310', 'diqu', '攸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430223');
INSERT INTO `mh_dict` VALUES ('2276', '310', 'diqu', '茶陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430224');
INSERT INTO `mh_dict` VALUES ('2277', '310', 'diqu', '炎陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430225');
INSERT INTO `mh_dict` VALUES ('2278', '310', 'diqu', '醴陵市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430281');
INSERT INTO `mh_dict` VALUES ('2279', '311', 'diqu', '雨湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430302');
INSERT INTO `mh_dict` VALUES ('2280', '311', 'diqu', '岳塘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430304');
INSERT INTO `mh_dict` VALUES ('2281', '311', 'diqu', '湘潭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430321');
INSERT INTO `mh_dict` VALUES ('2282', '311', 'diqu', '湘乡市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430381');
INSERT INTO `mh_dict` VALUES ('2283', '311', 'diqu', '韶山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430382');
INSERT INTO `mh_dict` VALUES ('2284', '312', 'diqu', '珠晖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430405');
INSERT INTO `mh_dict` VALUES ('2285', '312', 'diqu', '雁峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430406');
INSERT INTO `mh_dict` VALUES ('2286', '312', 'diqu', '石鼓区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430407');
INSERT INTO `mh_dict` VALUES ('2287', '312', 'diqu', '蒸湘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430408');
INSERT INTO `mh_dict` VALUES ('2288', '312', 'diqu', '南岳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430412');
INSERT INTO `mh_dict` VALUES ('2289', '312', 'diqu', '衡阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430421');
INSERT INTO `mh_dict` VALUES ('2290', '312', 'diqu', '衡南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430422');
INSERT INTO `mh_dict` VALUES ('2291', '312', 'diqu', '衡山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430423');
INSERT INTO `mh_dict` VALUES ('2292', '312', 'diqu', '衡东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430424');
INSERT INTO `mh_dict` VALUES ('2293', '312', 'diqu', '祁东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430426');
INSERT INTO `mh_dict` VALUES ('2294', '312', 'diqu', '耒阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430481');
INSERT INTO `mh_dict` VALUES ('2295', '312', 'diqu', '常宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430482');
INSERT INTO `mh_dict` VALUES ('2296', '313', 'diqu', '双清区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430502');
INSERT INTO `mh_dict` VALUES ('2297', '313', 'diqu', '大祥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430503');
INSERT INTO `mh_dict` VALUES ('2298', '313', 'diqu', '北塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430511');
INSERT INTO `mh_dict` VALUES ('2299', '313', 'diqu', '邵东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430521');
INSERT INTO `mh_dict` VALUES ('2300', '313', 'diqu', '新邵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430522');
INSERT INTO `mh_dict` VALUES ('2301', '313', 'diqu', '邵阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430523');
INSERT INTO `mh_dict` VALUES ('2302', '313', 'diqu', '隆回县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430524');
INSERT INTO `mh_dict` VALUES ('2303', '313', 'diqu', '洞口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430525');
INSERT INTO `mh_dict` VALUES ('2304', '313', 'diqu', '绥宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430527');
INSERT INTO `mh_dict` VALUES ('2305', '313', 'diqu', '新宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430528');
INSERT INTO `mh_dict` VALUES ('2306', '313', 'diqu', '城步苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430529');
INSERT INTO `mh_dict` VALUES ('2307', '313', 'diqu', '武冈市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430581');
INSERT INTO `mh_dict` VALUES ('2308', '314', 'diqu', '岳阳楼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430602');
INSERT INTO `mh_dict` VALUES ('2309', '314', 'diqu', '云溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430603');
INSERT INTO `mh_dict` VALUES ('2310', '314', 'diqu', '君山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430611');
INSERT INTO `mh_dict` VALUES ('2311', '314', 'diqu', '岳阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430621');
INSERT INTO `mh_dict` VALUES ('2312', '314', 'diqu', '华容县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430623');
INSERT INTO `mh_dict` VALUES ('2313', '314', 'diqu', '湘阴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430624');
INSERT INTO `mh_dict` VALUES ('2314', '314', 'diqu', '平江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430626');
INSERT INTO `mh_dict` VALUES ('2315', '314', 'diqu', '汨罗市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430681');
INSERT INTO `mh_dict` VALUES ('2316', '314', 'diqu', '临湘市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430682');
INSERT INTO `mh_dict` VALUES ('2317', '315', 'diqu', '武陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430702');
INSERT INTO `mh_dict` VALUES ('2318', '315', 'diqu', '鼎城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430703');
INSERT INTO `mh_dict` VALUES ('2319', '315', 'diqu', '安乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430721');
INSERT INTO `mh_dict` VALUES ('2320', '315', 'diqu', '汉寿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430722');
INSERT INTO `mh_dict` VALUES ('2321', '315', 'diqu', '澧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430723');
INSERT INTO `mh_dict` VALUES ('2322', '315', 'diqu', '临澧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430724');
INSERT INTO `mh_dict` VALUES ('2323', '315', 'diqu', '桃源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430725');
INSERT INTO `mh_dict` VALUES ('2324', '315', 'diqu', '石门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430726');
INSERT INTO `mh_dict` VALUES ('2325', '315', 'diqu', '津市市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430781');
INSERT INTO `mh_dict` VALUES ('2326', '316', 'diqu', '永定区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430802');
INSERT INTO `mh_dict` VALUES ('2327', '316', 'diqu', '武陵源区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430811');
INSERT INTO `mh_dict` VALUES ('2328', '316', 'diqu', '慈利县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430821');
INSERT INTO `mh_dict` VALUES ('2329', '316', 'diqu', '桑植县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430822');
INSERT INTO `mh_dict` VALUES ('2330', '317', 'diqu', '资阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430902');
INSERT INTO `mh_dict` VALUES ('2331', '317', 'diqu', '赫山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430903');
INSERT INTO `mh_dict` VALUES ('2332', '317', 'diqu', '南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430921');
INSERT INTO `mh_dict` VALUES ('2333', '317', 'diqu', '桃江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430922');
INSERT INTO `mh_dict` VALUES ('2334', '317', 'diqu', '安化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430923');
INSERT INTO `mh_dict` VALUES ('2335', '317', 'diqu', '沅江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '430981');
INSERT INTO `mh_dict` VALUES ('2336', '318', 'diqu', '北湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431002');
INSERT INTO `mh_dict` VALUES ('2337', '318', 'diqu', '苏仙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431003');
INSERT INTO `mh_dict` VALUES ('2338', '318', 'diqu', '桂阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431021');
INSERT INTO `mh_dict` VALUES ('2339', '318', 'diqu', '宜章县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431022');
INSERT INTO `mh_dict` VALUES ('2340', '318', 'diqu', '永兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431023');
INSERT INTO `mh_dict` VALUES ('2341', '318', 'diqu', '嘉禾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431024');
INSERT INTO `mh_dict` VALUES ('2342', '318', 'diqu', '临武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431025');
INSERT INTO `mh_dict` VALUES ('2343', '318', 'diqu', '汝城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431026');
INSERT INTO `mh_dict` VALUES ('2344', '318', 'diqu', '桂东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431027');
INSERT INTO `mh_dict` VALUES ('2345', '318', 'diqu', '安仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431028');
INSERT INTO `mh_dict` VALUES ('2346', '318', 'diqu', '资兴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431081');
INSERT INTO `mh_dict` VALUES ('2347', '319', 'diqu', '零陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431102');
INSERT INTO `mh_dict` VALUES ('2348', '319', 'diqu', '冷水滩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431103');
INSERT INTO `mh_dict` VALUES ('2349', '319', 'diqu', '祁阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431121');
INSERT INTO `mh_dict` VALUES ('2350', '319', 'diqu', '东安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431122');
INSERT INTO `mh_dict` VALUES ('2351', '319', 'diqu', '双牌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431123');
INSERT INTO `mh_dict` VALUES ('2352', '319', 'diqu', '道县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431124');
INSERT INTO `mh_dict` VALUES ('2353', '319', 'diqu', '江永县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431125');
INSERT INTO `mh_dict` VALUES ('2354', '319', 'diqu', '宁远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431126');
INSERT INTO `mh_dict` VALUES ('2355', '319', 'diqu', '蓝山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431127');
INSERT INTO `mh_dict` VALUES ('2356', '319', 'diqu', '新田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431128');
INSERT INTO `mh_dict` VALUES ('2357', '319', 'diqu', '江华瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431129');
INSERT INTO `mh_dict` VALUES ('2358', '320', 'diqu', '鹤城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431202');
INSERT INTO `mh_dict` VALUES ('2359', '320', 'diqu', '中方县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431221');
INSERT INTO `mh_dict` VALUES ('2360', '320', 'diqu', '沅陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431222');
INSERT INTO `mh_dict` VALUES ('2361', '320', 'diqu', '辰溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431223');
INSERT INTO `mh_dict` VALUES ('2362', '320', 'diqu', '溆浦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431224');
INSERT INTO `mh_dict` VALUES ('2363', '320', 'diqu', '会同县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431225');
INSERT INTO `mh_dict` VALUES ('2364', '320', 'diqu', '麻阳苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431226');
INSERT INTO `mh_dict` VALUES ('2365', '320', 'diqu', '新晃侗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431227');
INSERT INTO `mh_dict` VALUES ('2366', '320', 'diqu', '芷江侗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431228');
INSERT INTO `mh_dict` VALUES ('2367', '320', 'diqu', '靖州苗族侗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431229');
INSERT INTO `mh_dict` VALUES ('2368', '320', 'diqu', '通道侗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431230');
INSERT INTO `mh_dict` VALUES ('2369', '320', 'diqu', '洪江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431281');
INSERT INTO `mh_dict` VALUES ('2370', '321', 'diqu', '娄星区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431302');
INSERT INTO `mh_dict` VALUES ('2371', '321', 'diqu', '双峰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431321');
INSERT INTO `mh_dict` VALUES ('2372', '321', 'diqu', '新化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431322');
INSERT INTO `mh_dict` VALUES ('2373', '321', 'diqu', '冷水江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431381');
INSERT INTO `mh_dict` VALUES ('2374', '321', 'diqu', '涟源市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '431382');
INSERT INTO `mh_dict` VALUES ('2375', '322', 'diqu', '吉首市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433101');
INSERT INTO `mh_dict` VALUES ('2376', '322', 'diqu', '泸溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433122');
INSERT INTO `mh_dict` VALUES ('2377', '322', 'diqu', '凤凰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433123');
INSERT INTO `mh_dict` VALUES ('2378', '322', 'diqu', '花垣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433124');
INSERT INTO `mh_dict` VALUES ('2379', '322', 'diqu', '保靖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433125');
INSERT INTO `mh_dict` VALUES ('2380', '322', 'diqu', '古丈县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433126');
INSERT INTO `mh_dict` VALUES ('2381', '322', 'diqu', '永顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433127');
INSERT INTO `mh_dict` VALUES ('2382', '322', 'diqu', '龙山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '433130');
INSERT INTO `mh_dict` VALUES ('2383', '323', 'diqu', '荔湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440103');
INSERT INTO `mh_dict` VALUES ('2384', '323', 'diqu', '越秀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440104');
INSERT INTO `mh_dict` VALUES ('2385', '323', 'diqu', '海珠区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440105');
INSERT INTO `mh_dict` VALUES ('2386', '323', 'diqu', '天河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440106');
INSERT INTO `mh_dict` VALUES ('2387', '323', 'diqu', '白云区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440111');
INSERT INTO `mh_dict` VALUES ('2388', '323', 'diqu', '黄埔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440112');
INSERT INTO `mh_dict` VALUES ('2389', '323', 'diqu', '番禺区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440113');
INSERT INTO `mh_dict` VALUES ('2390', '323', 'diqu', '花都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440114');
INSERT INTO `mh_dict` VALUES ('2391', '323', 'diqu', '南沙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440115');
INSERT INTO `mh_dict` VALUES ('2392', '323', 'diqu', '从化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440117');
INSERT INTO `mh_dict` VALUES ('2393', '323', 'diqu', '增城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440118');
INSERT INTO `mh_dict` VALUES ('2394', '324', 'diqu', '武江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440203');
INSERT INTO `mh_dict` VALUES ('2395', '324', 'diqu', '浈江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440204');
INSERT INTO `mh_dict` VALUES ('2396', '324', 'diqu', '曲江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440205');
INSERT INTO `mh_dict` VALUES ('2397', '324', 'diqu', '始兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440222');
INSERT INTO `mh_dict` VALUES ('2398', '324', 'diqu', '仁化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440224');
INSERT INTO `mh_dict` VALUES ('2399', '324', 'diqu', '翁源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440229');
INSERT INTO `mh_dict` VALUES ('2400', '324', 'diqu', '乳源瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440232');
INSERT INTO `mh_dict` VALUES ('2401', '324', 'diqu', '新丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440233');
INSERT INTO `mh_dict` VALUES ('2402', '324', 'diqu', '乐昌市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440281');
INSERT INTO `mh_dict` VALUES ('2403', '324', 'diqu', '南雄市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440282');
INSERT INTO `mh_dict` VALUES ('2404', '325', 'diqu', '罗湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440303');
INSERT INTO `mh_dict` VALUES ('2405', '325', 'diqu', '福田区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440304');
INSERT INTO `mh_dict` VALUES ('2406', '325', 'diqu', '南山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440305');
INSERT INTO `mh_dict` VALUES ('2407', '325', 'diqu', '宝安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440306');
INSERT INTO `mh_dict` VALUES ('2408', '325', 'diqu', '龙岗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440307');
INSERT INTO `mh_dict` VALUES ('2409', '325', 'diqu', '盐田区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440308');
INSERT INTO `mh_dict` VALUES ('2410', '325', 'diqu', '光明新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440309');
INSERT INTO `mh_dict` VALUES ('2411', '325', 'diqu', '坪山新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440310');
INSERT INTO `mh_dict` VALUES ('2412', '325', 'diqu', '大鹏新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440311');
INSERT INTO `mh_dict` VALUES ('2413', '325', 'diqu', '龙华新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440312');
INSERT INTO `mh_dict` VALUES ('2414', '326', 'diqu', '香洲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440402');
INSERT INTO `mh_dict` VALUES ('2415', '326', 'diqu', '斗门区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440403');
INSERT INTO `mh_dict` VALUES ('2416', '326', 'diqu', '金湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440404');
INSERT INTO `mh_dict` VALUES ('2417', '327', 'diqu', '龙湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440507');
INSERT INTO `mh_dict` VALUES ('2418', '327', 'diqu', '金平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440511');
INSERT INTO `mh_dict` VALUES ('2419', '327', 'diqu', '濠江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440512');
INSERT INTO `mh_dict` VALUES ('2420', '327', 'diqu', '潮阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440513');
INSERT INTO `mh_dict` VALUES ('2421', '327', 'diqu', '潮南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440514');
INSERT INTO `mh_dict` VALUES ('2422', '327', 'diqu', '澄海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440515');
INSERT INTO `mh_dict` VALUES ('2423', '327', 'diqu', '南澳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440523');
INSERT INTO `mh_dict` VALUES ('2424', '328', 'diqu', '禅城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440604');
INSERT INTO `mh_dict` VALUES ('2425', '328', 'diqu', '南海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440605');
INSERT INTO `mh_dict` VALUES ('2426', '328', 'diqu', '顺德区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440606');
INSERT INTO `mh_dict` VALUES ('2427', '328', 'diqu', '三水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440607');
INSERT INTO `mh_dict` VALUES ('2428', '328', 'diqu', '高明区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440608');
INSERT INTO `mh_dict` VALUES ('2429', '329', 'diqu', '蓬江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440703');
INSERT INTO `mh_dict` VALUES ('2430', '329', 'diqu', '江海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440704');
INSERT INTO `mh_dict` VALUES ('2431', '329', 'diqu', '新会区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440705');
INSERT INTO `mh_dict` VALUES ('2432', '329', 'diqu', '台山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440781');
INSERT INTO `mh_dict` VALUES ('2433', '329', 'diqu', '开平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440783');
INSERT INTO `mh_dict` VALUES ('2434', '329', 'diqu', '鹤山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440784');
INSERT INTO `mh_dict` VALUES ('2435', '329', 'diqu', '恩平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440785');
INSERT INTO `mh_dict` VALUES ('2436', '330', 'diqu', '赤坎区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440802');
INSERT INTO `mh_dict` VALUES ('2437', '330', 'diqu', '霞山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440803');
INSERT INTO `mh_dict` VALUES ('2438', '330', 'diqu', '坡头区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440804');
INSERT INTO `mh_dict` VALUES ('2439', '330', 'diqu', '麻章区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440811');
INSERT INTO `mh_dict` VALUES ('2440', '330', 'diqu', '遂溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440823');
INSERT INTO `mh_dict` VALUES ('2441', '330', 'diqu', '徐闻县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440825');
INSERT INTO `mh_dict` VALUES ('2442', '330', 'diqu', '廉江市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440881');
INSERT INTO `mh_dict` VALUES ('2443', '330', 'diqu', '雷州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440882');
INSERT INTO `mh_dict` VALUES ('2444', '330', 'diqu', '吴川市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440883');
INSERT INTO `mh_dict` VALUES ('2445', '331', 'diqu', '茂南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440902');
INSERT INTO `mh_dict` VALUES ('2446', '331', 'diqu', '电白区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440904');
INSERT INTO `mh_dict` VALUES ('2447', '331', 'diqu', '高州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440981');
INSERT INTO `mh_dict` VALUES ('2448', '331', 'diqu', '化州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440982');
INSERT INTO `mh_dict` VALUES ('2449', '331', 'diqu', '信宜市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '440983');
INSERT INTO `mh_dict` VALUES ('2450', '332', 'diqu', '端州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441202');
INSERT INTO `mh_dict` VALUES ('2451', '332', 'diqu', '鼎湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441203');
INSERT INTO `mh_dict` VALUES ('2452', '332', 'diqu', '广宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441223');
INSERT INTO `mh_dict` VALUES ('2453', '332', 'diqu', '怀集县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441224');
INSERT INTO `mh_dict` VALUES ('2454', '332', 'diqu', '封开县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441225');
INSERT INTO `mh_dict` VALUES ('2455', '332', 'diqu', '德庆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441226');
INSERT INTO `mh_dict` VALUES ('2456', '332', 'diqu', '高要市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441283');
INSERT INTO `mh_dict` VALUES ('2457', '332', 'diqu', '四会市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441284');
INSERT INTO `mh_dict` VALUES ('2458', '333', 'diqu', '惠城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441302');
INSERT INTO `mh_dict` VALUES ('2459', '333', 'diqu', '惠阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441303');
INSERT INTO `mh_dict` VALUES ('2460', '333', 'diqu', '博罗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441322');
INSERT INTO `mh_dict` VALUES ('2461', '333', 'diqu', '惠东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441323');
INSERT INTO `mh_dict` VALUES ('2462', '333', 'diqu', '龙门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441324');
INSERT INTO `mh_dict` VALUES ('2463', '334', 'diqu', '梅江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441402');
INSERT INTO `mh_dict` VALUES ('2464', '334', 'diqu', '梅县区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441403');
INSERT INTO `mh_dict` VALUES ('2465', '334', 'diqu', '大埔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441422');
INSERT INTO `mh_dict` VALUES ('2466', '334', 'diqu', '丰顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441423');
INSERT INTO `mh_dict` VALUES ('2467', '334', 'diqu', '五华县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441424');
INSERT INTO `mh_dict` VALUES ('2468', '334', 'diqu', '平远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441426');
INSERT INTO `mh_dict` VALUES ('2469', '334', 'diqu', '蕉岭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441427');
INSERT INTO `mh_dict` VALUES ('2470', '334', 'diqu', '兴宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441481');
INSERT INTO `mh_dict` VALUES ('2471', '335', 'diqu', '城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441502');
INSERT INTO `mh_dict` VALUES ('2472', '335', 'diqu', '海丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441521');
INSERT INTO `mh_dict` VALUES ('2473', '335', 'diqu', '陆河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441523');
INSERT INTO `mh_dict` VALUES ('2474', '335', 'diqu', '陆丰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441581');
INSERT INTO `mh_dict` VALUES ('2475', '336', 'diqu', '源城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441602');
INSERT INTO `mh_dict` VALUES ('2476', '336', 'diqu', '紫金县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441621');
INSERT INTO `mh_dict` VALUES ('2477', '336', 'diqu', '龙川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441622');
INSERT INTO `mh_dict` VALUES ('2478', '336', 'diqu', '连平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441623');
INSERT INTO `mh_dict` VALUES ('2479', '336', 'diqu', '和平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441624');
INSERT INTO `mh_dict` VALUES ('2480', '336', 'diqu', '东源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441625');
INSERT INTO `mh_dict` VALUES ('2481', '337', 'diqu', '江城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441702');
INSERT INTO `mh_dict` VALUES ('2482', '337', 'diqu', '阳东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441704');
INSERT INTO `mh_dict` VALUES ('2483', '337', 'diqu', '阳西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441721');
INSERT INTO `mh_dict` VALUES ('2484', '337', 'diqu', '阳春市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441781');
INSERT INTO `mh_dict` VALUES ('2485', '338', 'diqu', '清城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441802');
INSERT INTO `mh_dict` VALUES ('2486', '338', 'diqu', '清新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441803');
INSERT INTO `mh_dict` VALUES ('2487', '338', 'diqu', '佛冈县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441821');
INSERT INTO `mh_dict` VALUES ('2488', '338', 'diqu', '阳山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441823');
INSERT INTO `mh_dict` VALUES ('2489', '338', 'diqu', '连山壮族瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441825');
INSERT INTO `mh_dict` VALUES ('2490', '338', 'diqu', '连南瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441826');
INSERT INTO `mh_dict` VALUES ('2491', '338', 'diqu', '英德市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441881');
INSERT INTO `mh_dict` VALUES ('2492', '338', 'diqu', '连州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441882');
INSERT INTO `mh_dict` VALUES ('2493', '339', 'diqu', '莞城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441901');
INSERT INTO `mh_dict` VALUES ('2494', '339', 'diqu', '南城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441902');
INSERT INTO `mh_dict` VALUES ('2495', '339', 'diqu', '万江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441904');
INSERT INTO `mh_dict` VALUES ('2496', '339', 'diqu', '石碣镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441905');
INSERT INTO `mh_dict` VALUES ('2497', '339', 'diqu', '石龙镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441906');
INSERT INTO `mh_dict` VALUES ('2498', '339', 'diqu', '茶山镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441907');
INSERT INTO `mh_dict` VALUES ('2499', '339', 'diqu', '石排镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441908');
INSERT INTO `mh_dict` VALUES ('2500', '339', 'diqu', '企石镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441909');
INSERT INTO `mh_dict` VALUES ('2501', '339', 'diqu', '横沥镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441910');
INSERT INTO `mh_dict` VALUES ('2502', '339', 'diqu', '桥头镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441911');
INSERT INTO `mh_dict` VALUES ('2503', '339', 'diqu', '谢岗镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441912');
INSERT INTO `mh_dict` VALUES ('2504', '339', 'diqu', '东坑镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441913');
INSERT INTO `mh_dict` VALUES ('2505', '339', 'diqu', '常平镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441914');
INSERT INTO `mh_dict` VALUES ('2506', '339', 'diqu', '寮步镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441915');
INSERT INTO `mh_dict` VALUES ('2507', '339', 'diqu', '大朗镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441916');
INSERT INTO `mh_dict` VALUES ('2508', '339', 'diqu', '麻涌镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441917');
INSERT INTO `mh_dict` VALUES ('2509', '339', 'diqu', '中堂镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441918');
INSERT INTO `mh_dict` VALUES ('2510', '339', 'diqu', '高埗镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441919');
INSERT INTO `mh_dict` VALUES ('2511', '339', 'diqu', '樟木头镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441920');
INSERT INTO `mh_dict` VALUES ('2512', '339', 'diqu', '大岭山镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441921');
INSERT INTO `mh_dict` VALUES ('2513', '339', 'diqu', '望牛墩镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441922');
INSERT INTO `mh_dict` VALUES ('2514', '339', 'diqu', '黄江镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441923');
INSERT INTO `mh_dict` VALUES ('2515', '339', 'diqu', '洪梅镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441924');
INSERT INTO `mh_dict` VALUES ('2516', '339', 'diqu', '清溪镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441925');
INSERT INTO `mh_dict` VALUES ('2517', '339', 'diqu', '沙田镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441926');
INSERT INTO `mh_dict` VALUES ('2518', '339', 'diqu', '道滘镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441927');
INSERT INTO `mh_dict` VALUES ('2519', '339', 'diqu', '塘厦镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441928');
INSERT INTO `mh_dict` VALUES ('2520', '339', 'diqu', '虎门镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441929');
INSERT INTO `mh_dict` VALUES ('2521', '339', 'diqu', '厚街镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441930');
INSERT INTO `mh_dict` VALUES ('2522', '339', 'diqu', '凤岗镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441931');
INSERT INTO `mh_dict` VALUES ('2523', '339', 'diqu', '长安镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '441932');
INSERT INTO `mh_dict` VALUES ('2524', '340', 'diqu', '石岐区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442001');
INSERT INTO `mh_dict` VALUES ('2525', '340', 'diqu', '南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442004');
INSERT INTO `mh_dict` VALUES ('2526', '340', 'diqu', '五桂山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442005');
INSERT INTO `mh_dict` VALUES ('2527', '340', 'diqu', '火炬开发区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442006');
INSERT INTO `mh_dict` VALUES ('2528', '340', 'diqu', '黄圃镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442007');
INSERT INTO `mh_dict` VALUES ('2529', '340', 'diqu', '南头镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442008');
INSERT INTO `mh_dict` VALUES ('2530', '340', 'diqu', '东凤镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442009');
INSERT INTO `mh_dict` VALUES ('2531', '340', 'diqu', '阜沙镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442010');
INSERT INTO `mh_dict` VALUES ('2532', '340', 'diqu', '小榄镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442011');
INSERT INTO `mh_dict` VALUES ('2533', '340', 'diqu', '东升镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442012');
INSERT INTO `mh_dict` VALUES ('2534', '340', 'diqu', '古镇镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442013');
INSERT INTO `mh_dict` VALUES ('2535', '340', 'diqu', '横栏镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442014');
INSERT INTO `mh_dict` VALUES ('2536', '340', 'diqu', '三角镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442015');
INSERT INTO `mh_dict` VALUES ('2537', '340', 'diqu', '民众镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442016');
INSERT INTO `mh_dict` VALUES ('2538', '340', 'diqu', '南朗镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442017');
INSERT INTO `mh_dict` VALUES ('2539', '340', 'diqu', '港口镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442018');
INSERT INTO `mh_dict` VALUES ('2540', '340', 'diqu', '大涌镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442019');
INSERT INTO `mh_dict` VALUES ('2541', '340', 'diqu', '沙溪镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442020');
INSERT INTO `mh_dict` VALUES ('2542', '340', 'diqu', '三乡镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442021');
INSERT INTO `mh_dict` VALUES ('2543', '340', 'diqu', '板芙镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442022');
INSERT INTO `mh_dict` VALUES ('2544', '340', 'diqu', '神湾镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442023');
INSERT INTO `mh_dict` VALUES ('2545', '340', 'diqu', '坦洲镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '442024');
INSERT INTO `mh_dict` VALUES ('2546', '341', 'diqu', '湘桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445102');
INSERT INTO `mh_dict` VALUES ('2547', '341', 'diqu', '潮安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445103');
INSERT INTO `mh_dict` VALUES ('2548', '341', 'diqu', '饶平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445122');
INSERT INTO `mh_dict` VALUES ('2549', '342', 'diqu', '榕城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445202');
INSERT INTO `mh_dict` VALUES ('2550', '342', 'diqu', '揭东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445203');
INSERT INTO `mh_dict` VALUES ('2551', '342', 'diqu', '揭西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445222');
INSERT INTO `mh_dict` VALUES ('2552', '342', 'diqu', '惠来县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445224');
INSERT INTO `mh_dict` VALUES ('2553', '342', 'diqu', '普宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445281');
INSERT INTO `mh_dict` VALUES ('2554', '343', 'diqu', '云城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445302');
INSERT INTO `mh_dict` VALUES ('2555', '343', 'diqu', '云安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445303');
INSERT INTO `mh_dict` VALUES ('2556', '343', 'diqu', '新兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445321');
INSERT INTO `mh_dict` VALUES ('2557', '343', 'diqu', '郁南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445322');
INSERT INTO `mh_dict` VALUES ('2558', '343', 'diqu', '罗定市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '445381');
INSERT INTO `mh_dict` VALUES ('2559', '344', 'diqu', '兴宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450102');
INSERT INTO `mh_dict` VALUES ('2560', '344', 'diqu', '青秀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450103');
INSERT INTO `mh_dict` VALUES ('2561', '344', 'diqu', '江南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450105');
INSERT INTO `mh_dict` VALUES ('2562', '344', 'diqu', '西乡塘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450107');
INSERT INTO `mh_dict` VALUES ('2563', '344', 'diqu', '良庆区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450108');
INSERT INTO `mh_dict` VALUES ('2564', '344', 'diqu', '邕宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450109');
INSERT INTO `mh_dict` VALUES ('2565', '344', 'diqu', '武鸣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450122');
INSERT INTO `mh_dict` VALUES ('2566', '344', 'diqu', '隆安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450123');
INSERT INTO `mh_dict` VALUES ('2567', '344', 'diqu', '马山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450124');
INSERT INTO `mh_dict` VALUES ('2568', '344', 'diqu', '上林县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450125');
INSERT INTO `mh_dict` VALUES ('2569', '344', 'diqu', '宾阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450126');
INSERT INTO `mh_dict` VALUES ('2570', '344', 'diqu', '横县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450127');
INSERT INTO `mh_dict` VALUES ('2571', '344', 'diqu', '埌东新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450128');
INSERT INTO `mh_dict` VALUES ('2572', '345', 'diqu', '城中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450202');
INSERT INTO `mh_dict` VALUES ('2573', '345', 'diqu', '鱼峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450203');
INSERT INTO `mh_dict` VALUES ('2574', '345', 'diqu', '柳南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450204');
INSERT INTO `mh_dict` VALUES ('2575', '345', 'diqu', '柳北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450205');
INSERT INTO `mh_dict` VALUES ('2576', '345', 'diqu', '柳江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450221');
INSERT INTO `mh_dict` VALUES ('2577', '345', 'diqu', '柳城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450222');
INSERT INTO `mh_dict` VALUES ('2578', '345', 'diqu', '鹿寨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450223');
INSERT INTO `mh_dict` VALUES ('2579', '345', 'diqu', '融安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450224');
INSERT INTO `mh_dict` VALUES ('2580', '345', 'diqu', '融水苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450225');
INSERT INTO `mh_dict` VALUES ('2581', '345', 'diqu', '三江侗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450226');
INSERT INTO `mh_dict` VALUES ('2582', '345', 'diqu', '柳东新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450227');
INSERT INTO `mh_dict` VALUES ('2583', '346', 'diqu', '秀峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450302');
INSERT INTO `mh_dict` VALUES ('2584', '346', 'diqu', '叠彩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450303');
INSERT INTO `mh_dict` VALUES ('2585', '346', 'diqu', '象山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450304');
INSERT INTO `mh_dict` VALUES ('2586', '346', 'diqu', '七星区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450305');
INSERT INTO `mh_dict` VALUES ('2587', '346', 'diqu', '雁山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450311');
INSERT INTO `mh_dict` VALUES ('2588', '346', 'diqu', '临桂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450312');
INSERT INTO `mh_dict` VALUES ('2589', '346', 'diqu', '阳朔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450321');
INSERT INTO `mh_dict` VALUES ('2590', '346', 'diqu', '灵川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450323');
INSERT INTO `mh_dict` VALUES ('2591', '346', 'diqu', '全州县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450324');
INSERT INTO `mh_dict` VALUES ('2592', '346', 'diqu', '兴安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450325');
INSERT INTO `mh_dict` VALUES ('2593', '346', 'diqu', '永福县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450326');
INSERT INTO `mh_dict` VALUES ('2594', '346', 'diqu', '灌阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450327');
INSERT INTO `mh_dict` VALUES ('2595', '346', 'diqu', '龙胜各族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450328');
INSERT INTO `mh_dict` VALUES ('2596', '346', 'diqu', '资源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450329');
INSERT INTO `mh_dict` VALUES ('2597', '346', 'diqu', '平乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450330');
INSERT INTO `mh_dict` VALUES ('2598', '346', 'diqu', '荔浦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450331');
INSERT INTO `mh_dict` VALUES ('2599', '346', 'diqu', '恭城瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450332');
INSERT INTO `mh_dict` VALUES ('2600', '347', 'diqu', '万秀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450403');
INSERT INTO `mh_dict` VALUES ('2601', '347', 'diqu', '长洲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450405');
INSERT INTO `mh_dict` VALUES ('2602', '347', 'diqu', '龙圩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450406');
INSERT INTO `mh_dict` VALUES ('2603', '347', 'diqu', '苍梧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450421');
INSERT INTO `mh_dict` VALUES ('2604', '347', 'diqu', '藤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450422');
INSERT INTO `mh_dict` VALUES ('2605', '347', 'diqu', '蒙山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450423');
INSERT INTO `mh_dict` VALUES ('2606', '347', 'diqu', '岑溪市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450481');
INSERT INTO `mh_dict` VALUES ('2607', '348', 'diqu', '海城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450502');
INSERT INTO `mh_dict` VALUES ('2608', '348', 'diqu', '银海区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450503');
INSERT INTO `mh_dict` VALUES ('2609', '348', 'diqu', '铁山港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450512');
INSERT INTO `mh_dict` VALUES ('2610', '348', 'diqu', '合浦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450521');
INSERT INTO `mh_dict` VALUES ('2611', '349', 'diqu', '港口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450602');
INSERT INTO `mh_dict` VALUES ('2612', '349', 'diqu', '防城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450603');
INSERT INTO `mh_dict` VALUES ('2613', '349', 'diqu', '上思县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450621');
INSERT INTO `mh_dict` VALUES ('2614', '349', 'diqu', '东兴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450681');
INSERT INTO `mh_dict` VALUES ('2615', '350', 'diqu', '钦南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450702');
INSERT INTO `mh_dict` VALUES ('2616', '350', 'diqu', '钦北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450703');
INSERT INTO `mh_dict` VALUES ('2617', '350', 'diqu', '灵山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450721');
INSERT INTO `mh_dict` VALUES ('2618', '350', 'diqu', '浦北县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450722');
INSERT INTO `mh_dict` VALUES ('2619', '351', 'diqu', '港北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450802');
INSERT INTO `mh_dict` VALUES ('2620', '351', 'diqu', '港南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450803');
INSERT INTO `mh_dict` VALUES ('2621', '351', 'diqu', '覃塘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450804');
INSERT INTO `mh_dict` VALUES ('2622', '351', 'diqu', '平南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450821');
INSERT INTO `mh_dict` VALUES ('2623', '351', 'diqu', '桂平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450881');
INSERT INTO `mh_dict` VALUES ('2624', '352', 'diqu', '玉州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450902');
INSERT INTO `mh_dict` VALUES ('2625', '352', 'diqu', '福绵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450903');
INSERT INTO `mh_dict` VALUES ('2626', '352', 'diqu', '玉东新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450904');
INSERT INTO `mh_dict` VALUES ('2627', '352', 'diqu', '容县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450921');
INSERT INTO `mh_dict` VALUES ('2628', '352', 'diqu', '陆川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450922');
INSERT INTO `mh_dict` VALUES ('2629', '352', 'diqu', '博白县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450923');
INSERT INTO `mh_dict` VALUES ('2630', '352', 'diqu', '兴业县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450924');
INSERT INTO `mh_dict` VALUES ('2631', '352', 'diqu', '北流市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '450981');
INSERT INTO `mh_dict` VALUES ('2632', '353', 'diqu', '右江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451002');
INSERT INTO `mh_dict` VALUES ('2633', '353', 'diqu', '田阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451021');
INSERT INTO `mh_dict` VALUES ('2634', '353', 'diqu', '田东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451022');
INSERT INTO `mh_dict` VALUES ('2635', '353', 'diqu', '平果县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451023');
INSERT INTO `mh_dict` VALUES ('2636', '353', 'diqu', '德保县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451024');
INSERT INTO `mh_dict` VALUES ('2637', '353', 'diqu', '靖西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451025');
INSERT INTO `mh_dict` VALUES ('2638', '353', 'diqu', '那坡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451026');
INSERT INTO `mh_dict` VALUES ('2639', '353', 'diqu', '凌云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451027');
INSERT INTO `mh_dict` VALUES ('2640', '353', 'diqu', '乐业县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451028');
INSERT INTO `mh_dict` VALUES ('2641', '353', 'diqu', '田林县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451029');
INSERT INTO `mh_dict` VALUES ('2642', '353', 'diqu', '西林县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451030');
INSERT INTO `mh_dict` VALUES ('2643', '353', 'diqu', '隆林各族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451031');
INSERT INTO `mh_dict` VALUES ('2644', '354', 'diqu', '八步区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451102');
INSERT INTO `mh_dict` VALUES ('2645', '354', 'diqu', '昭平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451121');
INSERT INTO `mh_dict` VALUES ('2646', '354', 'diqu', '钟山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451122');
INSERT INTO `mh_dict` VALUES ('2647', '354', 'diqu', '富川瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451123');
INSERT INTO `mh_dict` VALUES ('2648', '354', 'diqu', '平桂管理区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451124');
INSERT INTO `mh_dict` VALUES ('2649', '355', 'diqu', '金城江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451202');
INSERT INTO `mh_dict` VALUES ('2650', '355', 'diqu', '南丹县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451221');
INSERT INTO `mh_dict` VALUES ('2651', '355', 'diqu', '天峨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451222');
INSERT INTO `mh_dict` VALUES ('2652', '355', 'diqu', '凤山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451223');
INSERT INTO `mh_dict` VALUES ('2653', '355', 'diqu', '东兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451224');
INSERT INTO `mh_dict` VALUES ('2654', '355', 'diqu', '罗城仫佬族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451225');
INSERT INTO `mh_dict` VALUES ('2655', '355', 'diqu', '环江毛南族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451226');
INSERT INTO `mh_dict` VALUES ('2656', '355', 'diqu', '巴马瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451227');
INSERT INTO `mh_dict` VALUES ('2657', '355', 'diqu', '都安瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451228');
INSERT INTO `mh_dict` VALUES ('2658', '355', 'diqu', '大化瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451229');
INSERT INTO `mh_dict` VALUES ('2659', '355', 'diqu', '宜州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451281');
INSERT INTO `mh_dict` VALUES ('2660', '356', 'diqu', '兴宾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451302');
INSERT INTO `mh_dict` VALUES ('2661', '356', 'diqu', '忻城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451321');
INSERT INTO `mh_dict` VALUES ('2662', '356', 'diqu', '象州县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451322');
INSERT INTO `mh_dict` VALUES ('2663', '356', 'diqu', '武宣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451323');
INSERT INTO `mh_dict` VALUES ('2664', '356', 'diqu', '金秀瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451324');
INSERT INTO `mh_dict` VALUES ('2665', '356', 'diqu', '合山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451381');
INSERT INTO `mh_dict` VALUES ('2666', '357', 'diqu', '江州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451402');
INSERT INTO `mh_dict` VALUES ('2667', '357', 'diqu', '扶绥县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451421');
INSERT INTO `mh_dict` VALUES ('2668', '357', 'diqu', '宁明县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451422');
INSERT INTO `mh_dict` VALUES ('2669', '357', 'diqu', '龙州县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451423');
INSERT INTO `mh_dict` VALUES ('2670', '357', 'diqu', '大新县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451424');
INSERT INTO `mh_dict` VALUES ('2671', '357', 'diqu', '天等县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451425');
INSERT INTO `mh_dict` VALUES ('2672', '357', 'diqu', '凭祥市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '451481');
INSERT INTO `mh_dict` VALUES ('2673', '358', 'diqu', '秀英区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460105');
INSERT INTO `mh_dict` VALUES ('2674', '358', 'diqu', '龙华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460106');
INSERT INTO `mh_dict` VALUES ('2675', '358', 'diqu', '琼山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460107');
INSERT INTO `mh_dict` VALUES ('2676', '358', 'diqu', '美兰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460108');
INSERT INTO `mh_dict` VALUES ('2677', '359', 'diqu', '海棠区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460202');
INSERT INTO `mh_dict` VALUES ('2678', '359', 'diqu', '吉阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460203');
INSERT INTO `mh_dict` VALUES ('2679', '359', 'diqu', '天涯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460204');
INSERT INTO `mh_dict` VALUES ('2680', '359', 'diqu', '崖州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460205');
INSERT INTO `mh_dict` VALUES ('2681', '360', 'diqu', '西沙群岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460321');
INSERT INTO `mh_dict` VALUES ('2682', '360', 'diqu', '南沙群岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460322');
INSERT INTO `mh_dict` VALUES ('2683', '360', 'diqu', '中沙群岛', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '460323');
INSERT INTO `mh_dict` VALUES ('2684', '361', 'diqu', '五指山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469001');
INSERT INTO `mh_dict` VALUES ('2685', '361', 'diqu', '琼海市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469002');
INSERT INTO `mh_dict` VALUES ('2686', '361', 'diqu', '儋州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469003');
INSERT INTO `mh_dict` VALUES ('2687', '361', 'diqu', '文昌市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469005');
INSERT INTO `mh_dict` VALUES ('2688', '361', 'diqu', '万宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469006');
INSERT INTO `mh_dict` VALUES ('2689', '361', 'diqu', '东方市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469007');
INSERT INTO `mh_dict` VALUES ('2690', '361', 'diqu', '定安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469021');
INSERT INTO `mh_dict` VALUES ('2691', '361', 'diqu', '屯昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469022');
INSERT INTO `mh_dict` VALUES ('2692', '361', 'diqu', '澄迈县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469023');
INSERT INTO `mh_dict` VALUES ('2693', '361', 'diqu', '临高县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469024');
INSERT INTO `mh_dict` VALUES ('2694', '361', 'diqu', '白沙黎族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469025');
INSERT INTO `mh_dict` VALUES ('2695', '361', 'diqu', '昌江黎族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469026');
INSERT INTO `mh_dict` VALUES ('2696', '361', 'diqu', '乐东黎族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469027');
INSERT INTO `mh_dict` VALUES ('2697', '361', 'diqu', '陵水黎族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469028');
INSERT INTO `mh_dict` VALUES ('2698', '361', 'diqu', '保亭黎族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469029');
INSERT INTO `mh_dict` VALUES ('2699', '361', 'diqu', '琼中黎族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '469030');
INSERT INTO `mh_dict` VALUES ('2700', '362', 'diqu', '万州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500101');
INSERT INTO `mh_dict` VALUES ('2701', '362', 'diqu', '涪陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500102');
INSERT INTO `mh_dict` VALUES ('2702', '362', 'diqu', '渝中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500103');
INSERT INTO `mh_dict` VALUES ('2703', '362', 'diqu', '大渡口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500104');
INSERT INTO `mh_dict` VALUES ('2704', '362', 'diqu', '江北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500105');
INSERT INTO `mh_dict` VALUES ('2705', '362', 'diqu', '沙坪坝区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500106');
INSERT INTO `mh_dict` VALUES ('2706', '362', 'diqu', '九龙坡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500107');
INSERT INTO `mh_dict` VALUES ('2707', '362', 'diqu', '南岸区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500108');
INSERT INTO `mh_dict` VALUES ('2708', '362', 'diqu', '北碚区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500109');
INSERT INTO `mh_dict` VALUES ('2709', '362', 'diqu', '綦江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500110');
INSERT INTO `mh_dict` VALUES ('2710', '362', 'diqu', '大足区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500111');
INSERT INTO `mh_dict` VALUES ('2711', '362', 'diqu', '渝北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500112');
INSERT INTO `mh_dict` VALUES ('2712', '362', 'diqu', '巴南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500113');
INSERT INTO `mh_dict` VALUES ('2713', '362', 'diqu', '黔江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500114');
INSERT INTO `mh_dict` VALUES ('2714', '362', 'diqu', '长寿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500115');
INSERT INTO `mh_dict` VALUES ('2715', '362', 'diqu', '江津区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500116');
INSERT INTO `mh_dict` VALUES ('2716', '362', 'diqu', '合川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500117');
INSERT INTO `mh_dict` VALUES ('2717', '362', 'diqu', '永川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500118');
INSERT INTO `mh_dict` VALUES ('2718', '362', 'diqu', '南川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500119');
INSERT INTO `mh_dict` VALUES ('2719', '362', 'diqu', '璧山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500120');
INSERT INTO `mh_dict` VALUES ('2720', '362', 'diqu', '铜梁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500151');
INSERT INTO `mh_dict` VALUES ('2721', '362', 'diqu', '潼南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500223');
INSERT INTO `mh_dict` VALUES ('2722', '362', 'diqu', '荣昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500226');
INSERT INTO `mh_dict` VALUES ('2723', '362', 'diqu', '梁平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500228');
INSERT INTO `mh_dict` VALUES ('2724', '362', 'diqu', '城口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500229');
INSERT INTO `mh_dict` VALUES ('2725', '362', 'diqu', '丰都县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500230');
INSERT INTO `mh_dict` VALUES ('2726', '362', 'diqu', '垫江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500231');
INSERT INTO `mh_dict` VALUES ('2727', '362', 'diqu', '武隆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500232');
INSERT INTO `mh_dict` VALUES ('2728', '362', 'diqu', '忠县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500233');
INSERT INTO `mh_dict` VALUES ('2729', '362', 'diqu', '开县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500234');
INSERT INTO `mh_dict` VALUES ('2730', '362', 'diqu', '云阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500235');
INSERT INTO `mh_dict` VALUES ('2731', '362', 'diqu', '奉节县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500236');
INSERT INTO `mh_dict` VALUES ('2732', '362', 'diqu', '巫山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500237');
INSERT INTO `mh_dict` VALUES ('2733', '362', 'diqu', '巫溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500238');
INSERT INTO `mh_dict` VALUES ('2734', '362', 'diqu', '石柱土家族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500240');
INSERT INTO `mh_dict` VALUES ('2735', '362', 'diqu', '秀山土家族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500241');
INSERT INTO `mh_dict` VALUES ('2736', '362', 'diqu', '酉阳土家族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500242');
INSERT INTO `mh_dict` VALUES ('2737', '362', 'diqu', '彭水苗族土家族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500243');
INSERT INTO `mh_dict` VALUES ('2738', '363', 'diqu', '北部新区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500301');
INSERT INTO `mh_dict` VALUES ('2739', '363', 'diqu', '保税港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500302');
INSERT INTO `mh_dict` VALUES ('2740', '363', 'diqu', '工业园区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '500303');
INSERT INTO `mh_dict` VALUES ('2741', '364', 'diqu', '锦江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510104');
INSERT INTO `mh_dict` VALUES ('2742', '364', 'diqu', '青羊区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510105');
INSERT INTO `mh_dict` VALUES ('2743', '364', 'diqu', '金牛区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510106');
INSERT INTO `mh_dict` VALUES ('2744', '364', 'diqu', '武侯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510107');
INSERT INTO `mh_dict` VALUES ('2745', '364', 'diqu', '成华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510108');
INSERT INTO `mh_dict` VALUES ('2746', '364', 'diqu', '龙泉驿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510112');
INSERT INTO `mh_dict` VALUES ('2747', '364', 'diqu', '青白江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510113');
INSERT INTO `mh_dict` VALUES ('2748', '364', 'diqu', '新都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510114');
INSERT INTO `mh_dict` VALUES ('2749', '364', 'diqu', '温江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510115');
INSERT INTO `mh_dict` VALUES ('2750', '364', 'diqu', '金堂县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510121');
INSERT INTO `mh_dict` VALUES ('2751', '364', 'diqu', '双流县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510122');
INSERT INTO `mh_dict` VALUES ('2752', '364', 'diqu', '郫县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510124');
INSERT INTO `mh_dict` VALUES ('2753', '364', 'diqu', '大邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510129');
INSERT INTO `mh_dict` VALUES ('2754', '364', 'diqu', '蒲江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510131');
INSERT INTO `mh_dict` VALUES ('2755', '364', 'diqu', '新津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510132');
INSERT INTO `mh_dict` VALUES ('2756', '364', 'diqu', '都江堰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510181');
INSERT INTO `mh_dict` VALUES ('2757', '364', 'diqu', '彭州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510182');
INSERT INTO `mh_dict` VALUES ('2758', '364', 'diqu', '邛崃市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510183');
INSERT INTO `mh_dict` VALUES ('2759', '364', 'diqu', '崇州市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510184');
INSERT INTO `mh_dict` VALUES ('2760', '365', 'diqu', '自流井区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510302');
INSERT INTO `mh_dict` VALUES ('2761', '365', 'diqu', '贡井区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510303');
INSERT INTO `mh_dict` VALUES ('2762', '365', 'diqu', '大安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510304');
INSERT INTO `mh_dict` VALUES ('2763', '365', 'diqu', '沿滩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510311');
INSERT INTO `mh_dict` VALUES ('2764', '365', 'diqu', '荣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510321');
INSERT INTO `mh_dict` VALUES ('2765', '365', 'diqu', '富顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510322');
INSERT INTO `mh_dict` VALUES ('2766', '366', 'diqu', '东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510402');
INSERT INTO `mh_dict` VALUES ('2767', '366', 'diqu', '西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510403');
INSERT INTO `mh_dict` VALUES ('2768', '366', 'diqu', '仁和区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510411');
INSERT INTO `mh_dict` VALUES ('2769', '366', 'diqu', '米易县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510421');
INSERT INTO `mh_dict` VALUES ('2770', '366', 'diqu', '盐边县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510422');
INSERT INTO `mh_dict` VALUES ('2771', '367', 'diqu', '江阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510502');
INSERT INTO `mh_dict` VALUES ('2772', '367', 'diqu', '纳溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510503');
INSERT INTO `mh_dict` VALUES ('2773', '367', 'diqu', '龙马潭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510504');
INSERT INTO `mh_dict` VALUES ('2774', '367', 'diqu', '泸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510521');
INSERT INTO `mh_dict` VALUES ('2775', '367', 'diqu', '合江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510522');
INSERT INTO `mh_dict` VALUES ('2776', '367', 'diqu', '叙永县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510524');
INSERT INTO `mh_dict` VALUES ('2777', '367', 'diqu', '古蔺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510525');
INSERT INTO `mh_dict` VALUES ('2778', '368', 'diqu', '旌阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510603');
INSERT INTO `mh_dict` VALUES ('2779', '368', 'diqu', '中江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510623');
INSERT INTO `mh_dict` VALUES ('2780', '368', 'diqu', '罗江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510626');
INSERT INTO `mh_dict` VALUES ('2781', '368', 'diqu', '广汉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510681');
INSERT INTO `mh_dict` VALUES ('2782', '368', 'diqu', '什邡市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510682');
INSERT INTO `mh_dict` VALUES ('2783', '368', 'diqu', '绵竹市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510683');
INSERT INTO `mh_dict` VALUES ('2784', '369', 'diqu', '涪城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510703');
INSERT INTO `mh_dict` VALUES ('2785', '369', 'diqu', '游仙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510704');
INSERT INTO `mh_dict` VALUES ('2786', '369', 'diqu', '三台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510722');
INSERT INTO `mh_dict` VALUES ('2787', '369', 'diqu', '盐亭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510723');
INSERT INTO `mh_dict` VALUES ('2788', '369', 'diqu', '安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510724');
INSERT INTO `mh_dict` VALUES ('2789', '369', 'diqu', '梓潼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510725');
INSERT INTO `mh_dict` VALUES ('2790', '369', 'diqu', '北川羌族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510726');
INSERT INTO `mh_dict` VALUES ('2791', '369', 'diqu', '平武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510727');
INSERT INTO `mh_dict` VALUES ('2792', '369', 'diqu', '江油市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510781');
INSERT INTO `mh_dict` VALUES ('2793', '370', 'diqu', '利州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510802');
INSERT INTO `mh_dict` VALUES ('2794', '370', 'diqu', '昭化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510811');
INSERT INTO `mh_dict` VALUES ('2795', '370', 'diqu', '朝天区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510812');
INSERT INTO `mh_dict` VALUES ('2796', '370', 'diqu', '旺苍县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510821');
INSERT INTO `mh_dict` VALUES ('2797', '370', 'diqu', '青川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510822');
INSERT INTO `mh_dict` VALUES ('2798', '370', 'diqu', '剑阁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510823');
INSERT INTO `mh_dict` VALUES ('2799', '370', 'diqu', '苍溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510824');
INSERT INTO `mh_dict` VALUES ('2800', '371', 'diqu', '船山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510903');
INSERT INTO `mh_dict` VALUES ('2801', '371', 'diqu', '安居区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510904');
INSERT INTO `mh_dict` VALUES ('2802', '371', 'diqu', '蓬溪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510921');
INSERT INTO `mh_dict` VALUES ('2803', '371', 'diqu', '射洪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510922');
INSERT INTO `mh_dict` VALUES ('2804', '371', 'diqu', '大英县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '510923');
INSERT INTO `mh_dict` VALUES ('2805', '372', 'diqu', '市中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511002');
INSERT INTO `mh_dict` VALUES ('2806', '372', 'diqu', '东兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511011');
INSERT INTO `mh_dict` VALUES ('2807', '372', 'diqu', '威远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511024');
INSERT INTO `mh_dict` VALUES ('2808', '372', 'diqu', '资中县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511025');
INSERT INTO `mh_dict` VALUES ('2809', '372', 'diqu', '隆昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511028');
INSERT INTO `mh_dict` VALUES ('2810', '373', 'diqu', '市中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511102');
INSERT INTO `mh_dict` VALUES ('2811', '373', 'diqu', '沙湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511111');
INSERT INTO `mh_dict` VALUES ('2812', '373', 'diqu', '五通桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511112');
INSERT INTO `mh_dict` VALUES ('2813', '373', 'diqu', '金口河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511113');
INSERT INTO `mh_dict` VALUES ('2814', '373', 'diqu', '犍为县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511123');
INSERT INTO `mh_dict` VALUES ('2815', '373', 'diqu', '井研县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511124');
INSERT INTO `mh_dict` VALUES ('2816', '373', 'diqu', '夹江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511126');
INSERT INTO `mh_dict` VALUES ('2817', '373', 'diqu', '沐川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511129');
INSERT INTO `mh_dict` VALUES ('2818', '373', 'diqu', '峨边彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511132');
INSERT INTO `mh_dict` VALUES ('2819', '373', 'diqu', '马边彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511133');
INSERT INTO `mh_dict` VALUES ('2820', '373', 'diqu', '峨眉山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511181');
INSERT INTO `mh_dict` VALUES ('2821', '374', 'diqu', '顺庆区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511302');
INSERT INTO `mh_dict` VALUES ('2822', '374', 'diqu', '高坪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511303');
INSERT INTO `mh_dict` VALUES ('2823', '374', 'diqu', '嘉陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511304');
INSERT INTO `mh_dict` VALUES ('2824', '374', 'diqu', '南部县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511321');
INSERT INTO `mh_dict` VALUES ('2825', '374', 'diqu', '营山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511322');
INSERT INTO `mh_dict` VALUES ('2826', '374', 'diqu', '蓬安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511323');
INSERT INTO `mh_dict` VALUES ('2827', '374', 'diqu', '仪陇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511324');
INSERT INTO `mh_dict` VALUES ('2828', '374', 'diqu', '西充县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511325');
INSERT INTO `mh_dict` VALUES ('2829', '374', 'diqu', '阆中市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511381');
INSERT INTO `mh_dict` VALUES ('2830', '375', 'diqu', '东坡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511402');
INSERT INTO `mh_dict` VALUES ('2831', '375', 'diqu', '彭山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511403');
INSERT INTO `mh_dict` VALUES ('2832', '375', 'diqu', '仁寿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511421');
INSERT INTO `mh_dict` VALUES ('2833', '375', 'diqu', '洪雅县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511423');
INSERT INTO `mh_dict` VALUES ('2834', '375', 'diqu', '丹棱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511424');
INSERT INTO `mh_dict` VALUES ('2835', '375', 'diqu', '青神县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511425');
INSERT INTO `mh_dict` VALUES ('2836', '376', 'diqu', '翠屏区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511502');
INSERT INTO `mh_dict` VALUES ('2837', '376', 'diqu', '南溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511503');
INSERT INTO `mh_dict` VALUES ('2838', '376', 'diqu', '宜宾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511521');
INSERT INTO `mh_dict` VALUES ('2839', '376', 'diqu', '江安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511523');
INSERT INTO `mh_dict` VALUES ('2840', '376', 'diqu', '长宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511524');
INSERT INTO `mh_dict` VALUES ('2841', '376', 'diqu', '高县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511525');
INSERT INTO `mh_dict` VALUES ('2842', '376', 'diqu', '珙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511526');
INSERT INTO `mh_dict` VALUES ('2843', '376', 'diqu', '筠连县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511527');
INSERT INTO `mh_dict` VALUES ('2844', '376', 'diqu', '兴文县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511528');
INSERT INTO `mh_dict` VALUES ('2845', '376', 'diqu', '屏山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511529');
INSERT INTO `mh_dict` VALUES ('2846', '377', 'diqu', '广安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511602');
INSERT INTO `mh_dict` VALUES ('2847', '377', 'diqu', '前锋区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511603');
INSERT INTO `mh_dict` VALUES ('2848', '377', 'diqu', '岳池县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511621');
INSERT INTO `mh_dict` VALUES ('2849', '377', 'diqu', '武胜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511622');
INSERT INTO `mh_dict` VALUES ('2850', '377', 'diqu', '邻水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511623');
INSERT INTO `mh_dict` VALUES ('2851', '377', 'diqu', '华蓥市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511681');
INSERT INTO `mh_dict` VALUES ('2852', '378', 'diqu', '通川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511702');
INSERT INTO `mh_dict` VALUES ('2853', '378', 'diqu', '达川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511703');
INSERT INTO `mh_dict` VALUES ('2854', '378', 'diqu', '宣汉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511722');
INSERT INTO `mh_dict` VALUES ('2855', '378', 'diqu', '开江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511723');
INSERT INTO `mh_dict` VALUES ('2856', '378', 'diqu', '大竹县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511724');
INSERT INTO `mh_dict` VALUES ('2857', '378', 'diqu', '渠县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511725');
INSERT INTO `mh_dict` VALUES ('2858', '378', 'diqu', '万源市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511781');
INSERT INTO `mh_dict` VALUES ('2859', '379', 'diqu', '雨城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511802');
INSERT INTO `mh_dict` VALUES ('2860', '379', 'diqu', '名山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511803');
INSERT INTO `mh_dict` VALUES ('2861', '379', 'diqu', '荥经县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511822');
INSERT INTO `mh_dict` VALUES ('2862', '379', 'diqu', '汉源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511823');
INSERT INTO `mh_dict` VALUES ('2863', '379', 'diqu', '石棉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511824');
INSERT INTO `mh_dict` VALUES ('2864', '379', 'diqu', '天全县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511825');
INSERT INTO `mh_dict` VALUES ('2865', '379', 'diqu', '芦山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511826');
INSERT INTO `mh_dict` VALUES ('2866', '379', 'diqu', '宝兴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511827');
INSERT INTO `mh_dict` VALUES ('2867', '380', 'diqu', '巴州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511902');
INSERT INTO `mh_dict` VALUES ('2868', '380', 'diqu', '恩阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511903');
INSERT INTO `mh_dict` VALUES ('2869', '380', 'diqu', '通江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511921');
INSERT INTO `mh_dict` VALUES ('2870', '380', 'diqu', '南江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511922');
INSERT INTO `mh_dict` VALUES ('2871', '380', 'diqu', '平昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '511923');
INSERT INTO `mh_dict` VALUES ('2872', '381', 'diqu', '雁江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '512002');
INSERT INTO `mh_dict` VALUES ('2873', '381', 'diqu', '安岳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '512021');
INSERT INTO `mh_dict` VALUES ('2874', '381', 'diqu', '乐至县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '512022');
INSERT INTO `mh_dict` VALUES ('2875', '381', 'diqu', '简阳市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '512081');
INSERT INTO `mh_dict` VALUES ('2876', '382', 'diqu', '汶川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513221');
INSERT INTO `mh_dict` VALUES ('2877', '382', 'diqu', '理县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513222');
INSERT INTO `mh_dict` VALUES ('2878', '382', 'diqu', '茂县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513223');
INSERT INTO `mh_dict` VALUES ('2879', '382', 'diqu', '松潘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513224');
INSERT INTO `mh_dict` VALUES ('2880', '382', 'diqu', '九寨沟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513225');
INSERT INTO `mh_dict` VALUES ('2881', '382', 'diqu', '金川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513226');
INSERT INTO `mh_dict` VALUES ('2882', '382', 'diqu', '小金县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513227');
INSERT INTO `mh_dict` VALUES ('2883', '382', 'diqu', '黑水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513228');
INSERT INTO `mh_dict` VALUES ('2884', '382', 'diqu', '马尔康县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513229');
INSERT INTO `mh_dict` VALUES ('2885', '382', 'diqu', '壤塘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513230');
INSERT INTO `mh_dict` VALUES ('2886', '382', 'diqu', '阿坝县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513231');
INSERT INTO `mh_dict` VALUES ('2887', '382', 'diqu', '若尔盖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513232');
INSERT INTO `mh_dict` VALUES ('2888', '382', 'diqu', '红原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513233');
INSERT INTO `mh_dict` VALUES ('2889', '383', 'diqu', '康定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513321');
INSERT INTO `mh_dict` VALUES ('2890', '383', 'diqu', '泸定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513322');
INSERT INTO `mh_dict` VALUES ('2891', '383', 'diqu', '丹巴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513323');
INSERT INTO `mh_dict` VALUES ('2892', '383', 'diqu', '九龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513324');
INSERT INTO `mh_dict` VALUES ('2893', '383', 'diqu', '雅江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513325');
INSERT INTO `mh_dict` VALUES ('2894', '383', 'diqu', '道孚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513326');
INSERT INTO `mh_dict` VALUES ('2895', '383', 'diqu', '炉霍县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513327');
INSERT INTO `mh_dict` VALUES ('2896', '383', 'diqu', '甘孜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513328');
INSERT INTO `mh_dict` VALUES ('2897', '383', 'diqu', '新龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513329');
INSERT INTO `mh_dict` VALUES ('2898', '383', 'diqu', '德格县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513330');
INSERT INTO `mh_dict` VALUES ('2899', '383', 'diqu', '白玉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513331');
INSERT INTO `mh_dict` VALUES ('2900', '383', 'diqu', '石渠县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513332');
INSERT INTO `mh_dict` VALUES ('2901', '383', 'diqu', '色达县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513333');
INSERT INTO `mh_dict` VALUES ('2902', '383', 'diqu', '理塘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513334');
INSERT INTO `mh_dict` VALUES ('2903', '383', 'diqu', '巴塘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513335');
INSERT INTO `mh_dict` VALUES ('2904', '383', 'diqu', '乡城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513336');
INSERT INTO `mh_dict` VALUES ('2905', '383', 'diqu', '稻城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513337');
INSERT INTO `mh_dict` VALUES ('2906', '383', 'diqu', '得荣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513338');
INSERT INTO `mh_dict` VALUES ('2907', '384', 'diqu', '西昌市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513401');
INSERT INTO `mh_dict` VALUES ('2908', '384', 'diqu', '木里藏族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513422');
INSERT INTO `mh_dict` VALUES ('2909', '384', 'diqu', '盐源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513423');
INSERT INTO `mh_dict` VALUES ('2910', '384', 'diqu', '德昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513424');
INSERT INTO `mh_dict` VALUES ('2911', '384', 'diqu', '会理县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513425');
INSERT INTO `mh_dict` VALUES ('2912', '384', 'diqu', '会东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513426');
INSERT INTO `mh_dict` VALUES ('2913', '384', 'diqu', '宁南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513427');
INSERT INTO `mh_dict` VALUES ('2914', '384', 'diqu', '普格县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513428');
INSERT INTO `mh_dict` VALUES ('2915', '384', 'diqu', '布拖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513429');
INSERT INTO `mh_dict` VALUES ('2916', '384', 'diqu', '金阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513430');
INSERT INTO `mh_dict` VALUES ('2917', '384', 'diqu', '昭觉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513431');
INSERT INTO `mh_dict` VALUES ('2918', '384', 'diqu', '喜德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513432');
INSERT INTO `mh_dict` VALUES ('2919', '384', 'diqu', '冕宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513433');
INSERT INTO `mh_dict` VALUES ('2920', '384', 'diqu', '越西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513434');
INSERT INTO `mh_dict` VALUES ('2921', '384', 'diqu', '甘洛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513435');
INSERT INTO `mh_dict` VALUES ('2922', '384', 'diqu', '美姑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513436');
INSERT INTO `mh_dict` VALUES ('2923', '384', 'diqu', '雷波县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '513437');
INSERT INTO `mh_dict` VALUES ('2924', '385', 'diqu', '南明区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520102');
INSERT INTO `mh_dict` VALUES ('2925', '385', 'diqu', '云岩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520103');
INSERT INTO `mh_dict` VALUES ('2926', '385', 'diqu', '花溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520111');
INSERT INTO `mh_dict` VALUES ('2927', '385', 'diqu', '乌当区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520112');
INSERT INTO `mh_dict` VALUES ('2928', '385', 'diqu', '白云区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520113');
INSERT INTO `mh_dict` VALUES ('2929', '385', 'diqu', '观山湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520115');
INSERT INTO `mh_dict` VALUES ('2930', '385', 'diqu', '开阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520121');
INSERT INTO `mh_dict` VALUES ('2931', '385', 'diqu', '息烽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520122');
INSERT INTO `mh_dict` VALUES ('2932', '385', 'diqu', '修文县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520123');
INSERT INTO `mh_dict` VALUES ('2933', '385', 'diqu', '清镇市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520181');
INSERT INTO `mh_dict` VALUES ('2934', '386', 'diqu', '钟山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520201');
INSERT INTO `mh_dict` VALUES ('2935', '386', 'diqu', '六枝特区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520203');
INSERT INTO `mh_dict` VALUES ('2936', '386', 'diqu', '水城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520221');
INSERT INTO `mh_dict` VALUES ('2937', '386', 'diqu', '盘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520222');
INSERT INTO `mh_dict` VALUES ('2938', '387', 'diqu', '红花岗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520302');
INSERT INTO `mh_dict` VALUES ('2939', '387', 'diqu', '汇川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520303');
INSERT INTO `mh_dict` VALUES ('2940', '387', 'diqu', '遵义县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520321');
INSERT INTO `mh_dict` VALUES ('2941', '387', 'diqu', '桐梓县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520322');
INSERT INTO `mh_dict` VALUES ('2942', '387', 'diqu', '绥阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520323');
INSERT INTO `mh_dict` VALUES ('2943', '387', 'diqu', '正安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520324');
INSERT INTO `mh_dict` VALUES ('2944', '387', 'diqu', '道真仡佬族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520325');
INSERT INTO `mh_dict` VALUES ('2945', '387', 'diqu', '务川仡佬族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520326');
INSERT INTO `mh_dict` VALUES ('2946', '387', 'diqu', '凤冈县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520327');
INSERT INTO `mh_dict` VALUES ('2947', '387', 'diqu', '湄潭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520328');
INSERT INTO `mh_dict` VALUES ('2948', '387', 'diqu', '余庆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520329');
INSERT INTO `mh_dict` VALUES ('2949', '387', 'diqu', '习水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520330');
INSERT INTO `mh_dict` VALUES ('2950', '387', 'diqu', '赤水市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520381');
INSERT INTO `mh_dict` VALUES ('2951', '387', 'diqu', '仁怀市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520382');
INSERT INTO `mh_dict` VALUES ('2952', '388', 'diqu', '西秀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520402');
INSERT INTO `mh_dict` VALUES ('2953', '388', 'diqu', '平坝区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520421');
INSERT INTO `mh_dict` VALUES ('2954', '388', 'diqu', '普定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520422');
INSERT INTO `mh_dict` VALUES ('2955', '388', 'diqu', '镇宁布依族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520423');
INSERT INTO `mh_dict` VALUES ('2956', '388', 'diqu', '关岭布依族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520424');
INSERT INTO `mh_dict` VALUES ('2957', '388', 'diqu', '紫云苗族布依族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520425');
INSERT INTO `mh_dict` VALUES ('2958', '389', 'diqu', '七星关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520502');
INSERT INTO `mh_dict` VALUES ('2959', '389', 'diqu', '大方县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520521');
INSERT INTO `mh_dict` VALUES ('2960', '389', 'diqu', '黔西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520522');
INSERT INTO `mh_dict` VALUES ('2961', '389', 'diqu', '金沙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520523');
INSERT INTO `mh_dict` VALUES ('2962', '389', 'diqu', '织金县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520524');
INSERT INTO `mh_dict` VALUES ('2963', '389', 'diqu', '纳雍县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520525');
INSERT INTO `mh_dict` VALUES ('2964', '389', 'diqu', '威宁彝族回族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520526');
INSERT INTO `mh_dict` VALUES ('2965', '389', 'diqu', '赫章县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520527');
INSERT INTO `mh_dict` VALUES ('2966', '390', 'diqu', '碧江区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520602');
INSERT INTO `mh_dict` VALUES ('2967', '390', 'diqu', '万山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520603');
INSERT INTO `mh_dict` VALUES ('2968', '390', 'diqu', '江口县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520621');
INSERT INTO `mh_dict` VALUES ('2969', '390', 'diqu', '玉屏侗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520622');
INSERT INTO `mh_dict` VALUES ('2970', '390', 'diqu', '石阡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520623');
INSERT INTO `mh_dict` VALUES ('2971', '390', 'diqu', '思南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520624');
INSERT INTO `mh_dict` VALUES ('2972', '390', 'diqu', '印江土家族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520625');
INSERT INTO `mh_dict` VALUES ('2973', '390', 'diqu', '德江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520626');
INSERT INTO `mh_dict` VALUES ('2974', '390', 'diqu', '沿河土家族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520627');
INSERT INTO `mh_dict` VALUES ('2975', '390', 'diqu', '松桃苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '520628');
INSERT INTO `mh_dict` VALUES ('2976', '391', 'diqu', '兴义市 ', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522301');
INSERT INTO `mh_dict` VALUES ('2977', '391', 'diqu', '兴仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522322');
INSERT INTO `mh_dict` VALUES ('2978', '391', 'diqu', '普安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522323');
INSERT INTO `mh_dict` VALUES ('2979', '391', 'diqu', '晴隆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522324');
INSERT INTO `mh_dict` VALUES ('2980', '391', 'diqu', '贞丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522325');
INSERT INTO `mh_dict` VALUES ('2981', '391', 'diqu', '望谟县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522326');
INSERT INTO `mh_dict` VALUES ('2982', '391', 'diqu', '册亨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522327');
INSERT INTO `mh_dict` VALUES ('2983', '391', 'diqu', '安龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522328');
INSERT INTO `mh_dict` VALUES ('2984', '392', 'diqu', '凯里市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522601');
INSERT INTO `mh_dict` VALUES ('2985', '392', 'diqu', '黄平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522622');
INSERT INTO `mh_dict` VALUES ('2986', '392', 'diqu', '施秉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522623');
INSERT INTO `mh_dict` VALUES ('2987', '392', 'diqu', '三穗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522624');
INSERT INTO `mh_dict` VALUES ('2988', '392', 'diqu', '镇远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522625');
INSERT INTO `mh_dict` VALUES ('2989', '392', 'diqu', '岑巩县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522626');
INSERT INTO `mh_dict` VALUES ('2990', '392', 'diqu', '天柱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522627');
INSERT INTO `mh_dict` VALUES ('2991', '392', 'diqu', '锦屏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522628');
INSERT INTO `mh_dict` VALUES ('2992', '392', 'diqu', '剑河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522629');
INSERT INTO `mh_dict` VALUES ('2993', '392', 'diqu', '台江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522630');
INSERT INTO `mh_dict` VALUES ('2994', '392', 'diqu', '黎平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522631');
INSERT INTO `mh_dict` VALUES ('2995', '392', 'diqu', '榕江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522632');
INSERT INTO `mh_dict` VALUES ('2996', '392', 'diqu', '从江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522633');
INSERT INTO `mh_dict` VALUES ('2997', '392', 'diqu', '雷山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522634');
INSERT INTO `mh_dict` VALUES ('2998', '392', 'diqu', '麻江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522635');
INSERT INTO `mh_dict` VALUES ('2999', '392', 'diqu', '丹寨县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522636');
INSERT INTO `mh_dict` VALUES ('3000', '393', 'diqu', '都匀市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522701');
INSERT INTO `mh_dict` VALUES ('3001', '393', 'diqu', '福泉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522702');
INSERT INTO `mh_dict` VALUES ('3002', '393', 'diqu', '荔波县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522722');
INSERT INTO `mh_dict` VALUES ('3003', '393', 'diqu', '贵定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522723');
INSERT INTO `mh_dict` VALUES ('3004', '393', 'diqu', '瓮安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522725');
INSERT INTO `mh_dict` VALUES ('3005', '393', 'diqu', '独山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522726');
INSERT INTO `mh_dict` VALUES ('3006', '393', 'diqu', '平塘县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522727');
INSERT INTO `mh_dict` VALUES ('3007', '393', 'diqu', '罗甸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522728');
INSERT INTO `mh_dict` VALUES ('3008', '393', 'diqu', '长顺县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522729');
INSERT INTO `mh_dict` VALUES ('3009', '393', 'diqu', '龙里县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522730');
INSERT INTO `mh_dict` VALUES ('3010', '393', 'diqu', '惠水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522731');
INSERT INTO `mh_dict` VALUES ('3011', '393', 'diqu', '三都水族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '522732');
INSERT INTO `mh_dict` VALUES ('3012', '394', 'diqu', '五华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530102');
INSERT INTO `mh_dict` VALUES ('3013', '394', 'diqu', '盘龙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530103');
INSERT INTO `mh_dict` VALUES ('3014', '394', 'diqu', '官渡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530111');
INSERT INTO `mh_dict` VALUES ('3015', '394', 'diqu', '西山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530112');
INSERT INTO `mh_dict` VALUES ('3016', '394', 'diqu', '东川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530113');
INSERT INTO `mh_dict` VALUES ('3017', '394', 'diqu', '呈贡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530114');
INSERT INTO `mh_dict` VALUES ('3018', '394', 'diqu', '晋宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530122');
INSERT INTO `mh_dict` VALUES ('3019', '394', 'diqu', '富民县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530124');
INSERT INTO `mh_dict` VALUES ('3020', '394', 'diqu', '宜良县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530125');
INSERT INTO `mh_dict` VALUES ('3021', '394', 'diqu', '石林彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530126');
INSERT INTO `mh_dict` VALUES ('3022', '394', 'diqu', '嵩明县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530127');
INSERT INTO `mh_dict` VALUES ('3023', '394', 'diqu', '禄劝彝族苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530128');
INSERT INTO `mh_dict` VALUES ('3024', '394', 'diqu', '寻甸回族彝族自治县 ', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530129');
INSERT INTO `mh_dict` VALUES ('3025', '394', 'diqu', '安宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530181');
INSERT INTO `mh_dict` VALUES ('3026', '395', 'diqu', '麒麟区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530302');
INSERT INTO `mh_dict` VALUES ('3027', '395', 'diqu', '马龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530321');
INSERT INTO `mh_dict` VALUES ('3028', '395', 'diqu', '陆良县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530322');
INSERT INTO `mh_dict` VALUES ('3029', '395', 'diqu', '师宗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530323');
INSERT INTO `mh_dict` VALUES ('3030', '395', 'diqu', '罗平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530324');
INSERT INTO `mh_dict` VALUES ('3031', '395', 'diqu', '富源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530325');
INSERT INTO `mh_dict` VALUES ('3032', '395', 'diqu', '会泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530326');
INSERT INTO `mh_dict` VALUES ('3033', '395', 'diqu', '沾益县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530328');
INSERT INTO `mh_dict` VALUES ('3034', '395', 'diqu', '宣威市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530381');
INSERT INTO `mh_dict` VALUES ('3035', '396', 'diqu', '红塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530402');
INSERT INTO `mh_dict` VALUES ('3036', '396', 'diqu', '江川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530421');
INSERT INTO `mh_dict` VALUES ('3037', '396', 'diqu', '澄江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530422');
INSERT INTO `mh_dict` VALUES ('3038', '396', 'diqu', '通海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530423');
INSERT INTO `mh_dict` VALUES ('3039', '396', 'diqu', '华宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530424');
INSERT INTO `mh_dict` VALUES ('3040', '396', 'diqu', '易门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530425');
INSERT INTO `mh_dict` VALUES ('3041', '396', 'diqu', '峨山彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530426');
INSERT INTO `mh_dict` VALUES ('3042', '396', 'diqu', '新平彝族傣族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530427');
INSERT INTO `mh_dict` VALUES ('3043', '396', 'diqu', '元江哈尼族彝族傣族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530428');
INSERT INTO `mh_dict` VALUES ('3044', '397', 'diqu', '隆阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530502');
INSERT INTO `mh_dict` VALUES ('3045', '397', 'diqu', '施甸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530521');
INSERT INTO `mh_dict` VALUES ('3046', '397', 'diqu', '腾冲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530522');
INSERT INTO `mh_dict` VALUES ('3047', '397', 'diqu', '龙陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530523');
INSERT INTO `mh_dict` VALUES ('3048', '397', 'diqu', '昌宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530524');
INSERT INTO `mh_dict` VALUES ('3049', '398', 'diqu', '昭阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530602');
INSERT INTO `mh_dict` VALUES ('3050', '398', 'diqu', '鲁甸县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530621');
INSERT INTO `mh_dict` VALUES ('3051', '398', 'diqu', '巧家县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530622');
INSERT INTO `mh_dict` VALUES ('3052', '398', 'diqu', '盐津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530623');
INSERT INTO `mh_dict` VALUES ('3053', '398', 'diqu', '大关县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530624');
INSERT INTO `mh_dict` VALUES ('3054', '398', 'diqu', '永善县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530625');
INSERT INTO `mh_dict` VALUES ('3055', '398', 'diqu', '绥江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530626');
INSERT INTO `mh_dict` VALUES ('3056', '398', 'diqu', '镇雄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530627');
INSERT INTO `mh_dict` VALUES ('3057', '398', 'diqu', '彝良县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530628');
INSERT INTO `mh_dict` VALUES ('3058', '398', 'diqu', '威信县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530629');
INSERT INTO `mh_dict` VALUES ('3059', '398', 'diqu', '水富县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530630');
INSERT INTO `mh_dict` VALUES ('3060', '399', 'diqu', '古城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530702');
INSERT INTO `mh_dict` VALUES ('3061', '399', 'diqu', '玉龙纳西族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530721');
INSERT INTO `mh_dict` VALUES ('3062', '399', 'diqu', '永胜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530722');
INSERT INTO `mh_dict` VALUES ('3063', '399', 'diqu', '华坪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530723');
INSERT INTO `mh_dict` VALUES ('3064', '399', 'diqu', '宁蒗彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530724');
INSERT INTO `mh_dict` VALUES ('3065', '400', 'diqu', '思茅区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530802');
INSERT INTO `mh_dict` VALUES ('3066', '400', 'diqu', '宁洱哈尼族彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530821');
INSERT INTO `mh_dict` VALUES ('3067', '400', 'diqu', '墨江哈尼族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530822');
INSERT INTO `mh_dict` VALUES ('3068', '400', 'diqu', '景东彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530823');
INSERT INTO `mh_dict` VALUES ('3069', '400', 'diqu', '景谷傣族彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530824');
INSERT INTO `mh_dict` VALUES ('3070', '400', 'diqu', '镇沅彝族哈尼族拉祜族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530825');
INSERT INTO `mh_dict` VALUES ('3071', '400', 'diqu', '江城哈尼族彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530826');
INSERT INTO `mh_dict` VALUES ('3072', '400', 'diqu', '孟连傣族拉祜族佤族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530827');
INSERT INTO `mh_dict` VALUES ('3073', '400', 'diqu', '澜沧拉祜族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530828');
INSERT INTO `mh_dict` VALUES ('3074', '400', 'diqu', '西盟佤族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530829');
INSERT INTO `mh_dict` VALUES ('3075', '401', 'diqu', '临翔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530902');
INSERT INTO `mh_dict` VALUES ('3076', '401', 'diqu', '凤庆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530921');
INSERT INTO `mh_dict` VALUES ('3077', '401', 'diqu', '云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530922');
INSERT INTO `mh_dict` VALUES ('3078', '401', 'diqu', '永德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530923');
INSERT INTO `mh_dict` VALUES ('3079', '401', 'diqu', '镇康县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530924');
INSERT INTO `mh_dict` VALUES ('3080', '401', 'diqu', '双江拉祜族佤族布朗族傣族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530925');
INSERT INTO `mh_dict` VALUES ('3081', '401', 'diqu', '耿马傣族佤族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530926');
INSERT INTO `mh_dict` VALUES ('3082', '401', 'diqu', '沧源佤族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '530927');
INSERT INTO `mh_dict` VALUES ('3083', '402', 'diqu', '楚雄市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532301');
INSERT INTO `mh_dict` VALUES ('3084', '402', 'diqu', '双柏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532322');
INSERT INTO `mh_dict` VALUES ('3085', '402', 'diqu', '牟定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532323');
INSERT INTO `mh_dict` VALUES ('3086', '402', 'diqu', '南华县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532324');
INSERT INTO `mh_dict` VALUES ('3087', '402', 'diqu', '姚安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532325');
INSERT INTO `mh_dict` VALUES ('3088', '402', 'diqu', '大姚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532326');
INSERT INTO `mh_dict` VALUES ('3089', '402', 'diqu', '永仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532327');
INSERT INTO `mh_dict` VALUES ('3090', '402', 'diqu', '元谋县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532328');
INSERT INTO `mh_dict` VALUES ('3091', '402', 'diqu', '武定县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532329');
INSERT INTO `mh_dict` VALUES ('3092', '402', 'diqu', '禄丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532331');
INSERT INTO `mh_dict` VALUES ('3093', '403', 'diqu', '个旧市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532501');
INSERT INTO `mh_dict` VALUES ('3094', '403', 'diqu', '开远市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532502');
INSERT INTO `mh_dict` VALUES ('3095', '403', 'diqu', '蒙自市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532503');
INSERT INTO `mh_dict` VALUES ('3096', '403', 'diqu', '弥勒市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532504');
INSERT INTO `mh_dict` VALUES ('3097', '403', 'diqu', '屏边苗族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532523');
INSERT INTO `mh_dict` VALUES ('3098', '403', 'diqu', '建水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532524');
INSERT INTO `mh_dict` VALUES ('3099', '403', 'diqu', '石屏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532525');
INSERT INTO `mh_dict` VALUES ('3100', '403', 'diqu', '泸西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532527');
INSERT INTO `mh_dict` VALUES ('3101', '403', 'diqu', '元阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532528');
INSERT INTO `mh_dict` VALUES ('3102', '403', 'diqu', '红河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532529');
INSERT INTO `mh_dict` VALUES ('3103', '403', 'diqu', '金平苗族瑶族傣族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532530');
INSERT INTO `mh_dict` VALUES ('3104', '403', 'diqu', '绿春县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532531');
INSERT INTO `mh_dict` VALUES ('3105', '403', 'diqu', '河口瑶族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532532');
INSERT INTO `mh_dict` VALUES ('3106', '404', 'diqu', '文山市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532601');
INSERT INTO `mh_dict` VALUES ('3107', '404', 'diqu', '砚山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532622');
INSERT INTO `mh_dict` VALUES ('3108', '404', 'diqu', '西畴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532623');
INSERT INTO `mh_dict` VALUES ('3109', '404', 'diqu', '麻栗坡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532624');
INSERT INTO `mh_dict` VALUES ('3110', '404', 'diqu', '马关县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532625');
INSERT INTO `mh_dict` VALUES ('3111', '404', 'diqu', '丘北县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532626');
INSERT INTO `mh_dict` VALUES ('3112', '404', 'diqu', '广南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532627');
INSERT INTO `mh_dict` VALUES ('3113', '404', 'diqu', '富宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532628');
INSERT INTO `mh_dict` VALUES ('3114', '405', 'diqu', '景洪市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532801');
INSERT INTO `mh_dict` VALUES ('3115', '405', 'diqu', '勐海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532822');
INSERT INTO `mh_dict` VALUES ('3116', '405', 'diqu', '勐腊县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532823');
INSERT INTO `mh_dict` VALUES ('3117', '406', 'diqu', '大理市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532901');
INSERT INTO `mh_dict` VALUES ('3118', '406', 'diqu', '漾濞彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532922');
INSERT INTO `mh_dict` VALUES ('3119', '406', 'diqu', '祥云县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532923');
INSERT INTO `mh_dict` VALUES ('3120', '406', 'diqu', '宾川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532924');
INSERT INTO `mh_dict` VALUES ('3121', '406', 'diqu', '弥渡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532925');
INSERT INTO `mh_dict` VALUES ('3122', '406', 'diqu', '南涧彝族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532926');
INSERT INTO `mh_dict` VALUES ('3123', '406', 'diqu', '巍山彝族回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532927');
INSERT INTO `mh_dict` VALUES ('3124', '406', 'diqu', '永平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532928');
INSERT INTO `mh_dict` VALUES ('3125', '406', 'diqu', '云龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532929');
INSERT INTO `mh_dict` VALUES ('3126', '406', 'diqu', '洱源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532930');
INSERT INTO `mh_dict` VALUES ('3127', '406', 'diqu', '剑川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532931');
INSERT INTO `mh_dict` VALUES ('3128', '406', 'diqu', '鹤庆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '532932');
INSERT INTO `mh_dict` VALUES ('3129', '407', 'diqu', '瑞丽市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533102');
INSERT INTO `mh_dict` VALUES ('3130', '407', 'diqu', '芒市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533103');
INSERT INTO `mh_dict` VALUES ('3131', '407', 'diqu', '梁河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533122');
INSERT INTO `mh_dict` VALUES ('3132', '407', 'diqu', '盈江县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533123');
INSERT INTO `mh_dict` VALUES ('3133', '407', 'diqu', '陇川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533124');
INSERT INTO `mh_dict` VALUES ('3134', '408', 'diqu', '泸水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533321');
INSERT INTO `mh_dict` VALUES ('3135', '408', 'diqu', '福贡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533323');
INSERT INTO `mh_dict` VALUES ('3136', '408', 'diqu', '贡山独龙族怒族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533324');
INSERT INTO `mh_dict` VALUES ('3137', '408', 'diqu', '兰坪白族普米族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533325');
INSERT INTO `mh_dict` VALUES ('3138', '409', 'diqu', '香格里拉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533421');
INSERT INTO `mh_dict` VALUES ('3139', '409', 'diqu', '德钦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533422');
INSERT INTO `mh_dict` VALUES ('3140', '409', 'diqu', '维西傈僳族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '533423');
INSERT INTO `mh_dict` VALUES ('3141', '410', 'diqu', '城关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540102');
INSERT INTO `mh_dict` VALUES ('3142', '410', 'diqu', '林周县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540121');
INSERT INTO `mh_dict` VALUES ('3143', '410', 'diqu', '当雄县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540122');
INSERT INTO `mh_dict` VALUES ('3144', '410', 'diqu', '尼木县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540123');
INSERT INTO `mh_dict` VALUES ('3145', '410', 'diqu', '曲水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540124');
INSERT INTO `mh_dict` VALUES ('3146', '410', 'diqu', '堆龙德庆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540125');
INSERT INTO `mh_dict` VALUES ('3147', '410', 'diqu', '达孜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540126');
INSERT INTO `mh_dict` VALUES ('3148', '410', 'diqu', '墨竹工卡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540127');
INSERT INTO `mh_dict` VALUES ('3149', '411', 'diqu', '桑珠孜区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540202');
INSERT INTO `mh_dict` VALUES ('3150', '411', 'diqu', '南木林县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540221');
INSERT INTO `mh_dict` VALUES ('3151', '411', 'diqu', '江孜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540222');
INSERT INTO `mh_dict` VALUES ('3152', '411', 'diqu', '定日县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540223');
INSERT INTO `mh_dict` VALUES ('3153', '411', 'diqu', '萨迦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540224');
INSERT INTO `mh_dict` VALUES ('3154', '411', 'diqu', '拉孜县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540225');
INSERT INTO `mh_dict` VALUES ('3155', '411', 'diqu', '昂仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540226');
INSERT INTO `mh_dict` VALUES ('3156', '411', 'diqu', '谢通门县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540227');
INSERT INTO `mh_dict` VALUES ('3157', '411', 'diqu', '白朗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540228');
INSERT INTO `mh_dict` VALUES ('3158', '411', 'diqu', '仁布县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540229');
INSERT INTO `mh_dict` VALUES ('3159', '411', 'diqu', '康马县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540230');
INSERT INTO `mh_dict` VALUES ('3160', '411', 'diqu', '定结县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540231');
INSERT INTO `mh_dict` VALUES ('3161', '411', 'diqu', '仲巴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540232');
INSERT INTO `mh_dict` VALUES ('3162', '411', 'diqu', '亚东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540233');
INSERT INTO `mh_dict` VALUES ('3163', '411', 'diqu', '吉隆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540234');
INSERT INTO `mh_dict` VALUES ('3164', '411', 'diqu', '聂拉木县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540235');
INSERT INTO `mh_dict` VALUES ('3165', '411', 'diqu', '萨嘎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540236');
INSERT INTO `mh_dict` VALUES ('3166', '411', 'diqu', '岗巴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540237');
INSERT INTO `mh_dict` VALUES ('3167', '412', 'diqu', '卡若区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540302');
INSERT INTO `mh_dict` VALUES ('3168', '412', 'diqu', '江达县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540321');
INSERT INTO `mh_dict` VALUES ('3169', '412', 'diqu', '贡觉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540322');
INSERT INTO `mh_dict` VALUES ('3170', '412', 'diqu', '类乌齐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540323');
INSERT INTO `mh_dict` VALUES ('3171', '412', 'diqu', '丁青县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540324');
INSERT INTO `mh_dict` VALUES ('3172', '412', 'diqu', '察雅县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540325');
INSERT INTO `mh_dict` VALUES ('3173', '412', 'diqu', '八宿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540326');
INSERT INTO `mh_dict` VALUES ('3174', '412', 'diqu', '左贡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540327');
INSERT INTO `mh_dict` VALUES ('3175', '412', 'diqu', '芒康县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540328');
INSERT INTO `mh_dict` VALUES ('3176', '412', 'diqu', '洛隆县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540329');
INSERT INTO `mh_dict` VALUES ('3177', '412', 'diqu', '边坝县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '540330');
INSERT INTO `mh_dict` VALUES ('3178', '413', 'diqu', '乃东县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542221');
INSERT INTO `mh_dict` VALUES ('3179', '413', 'diqu', '扎囊县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542222');
INSERT INTO `mh_dict` VALUES ('3180', '413', 'diqu', '贡嘎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542223');
INSERT INTO `mh_dict` VALUES ('3181', '413', 'diqu', '桑日县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542224');
INSERT INTO `mh_dict` VALUES ('3182', '413', 'diqu', '琼结县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542225');
INSERT INTO `mh_dict` VALUES ('3183', '413', 'diqu', '曲松县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542226');
INSERT INTO `mh_dict` VALUES ('3184', '413', 'diqu', '措美县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542227');
INSERT INTO `mh_dict` VALUES ('3185', '413', 'diqu', '洛扎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542228');
INSERT INTO `mh_dict` VALUES ('3186', '413', 'diqu', '加查县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542229');
INSERT INTO `mh_dict` VALUES ('3187', '413', 'diqu', '隆子县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542231');
INSERT INTO `mh_dict` VALUES ('3188', '413', 'diqu', '错那县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542232');
INSERT INTO `mh_dict` VALUES ('3189', '413', 'diqu', '浪卡子县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542233');
INSERT INTO `mh_dict` VALUES ('3190', '414', 'diqu', '那曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542421');
INSERT INTO `mh_dict` VALUES ('3191', '414', 'diqu', '嘉黎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542422');
INSERT INTO `mh_dict` VALUES ('3192', '414', 'diqu', '比如县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542423');
INSERT INTO `mh_dict` VALUES ('3193', '414', 'diqu', '聂荣县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542424');
INSERT INTO `mh_dict` VALUES ('3194', '414', 'diqu', '安多县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542425');
INSERT INTO `mh_dict` VALUES ('3195', '414', 'diqu', '申扎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542426');
INSERT INTO `mh_dict` VALUES ('3196', '414', 'diqu', '索县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542427');
INSERT INTO `mh_dict` VALUES ('3197', '414', 'diqu', '班戈县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542428');
INSERT INTO `mh_dict` VALUES ('3198', '414', 'diqu', '巴青县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542429');
INSERT INTO `mh_dict` VALUES ('3199', '414', 'diqu', '尼玛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542430');
INSERT INTO `mh_dict` VALUES ('3200', '414', 'diqu', '双湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542431');
INSERT INTO `mh_dict` VALUES ('3201', '415', 'diqu', '普兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542521');
INSERT INTO `mh_dict` VALUES ('3202', '415', 'diqu', '札达县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542522');
INSERT INTO `mh_dict` VALUES ('3203', '415', 'diqu', '噶尔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542523');
INSERT INTO `mh_dict` VALUES ('3204', '415', 'diqu', '日土县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542524');
INSERT INTO `mh_dict` VALUES ('3205', '415', 'diqu', '革吉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542525');
INSERT INTO `mh_dict` VALUES ('3206', '415', 'diqu', '改则县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542526');
INSERT INTO `mh_dict` VALUES ('3207', '415', 'diqu', '措勤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542527');
INSERT INTO `mh_dict` VALUES ('3208', '416', 'diqu', '林芝县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542621');
INSERT INTO `mh_dict` VALUES ('3209', '416', 'diqu', '工布江达县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542622');
INSERT INTO `mh_dict` VALUES ('3210', '416', 'diqu', '米林县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542623');
INSERT INTO `mh_dict` VALUES ('3211', '416', 'diqu', '墨脱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542624');
INSERT INTO `mh_dict` VALUES ('3212', '416', 'diqu', '波密县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542625');
INSERT INTO `mh_dict` VALUES ('3213', '416', 'diqu', '察隅县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542626');
INSERT INTO `mh_dict` VALUES ('3214', '416', 'diqu', '朗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '542627');
INSERT INTO `mh_dict` VALUES ('3215', '417', 'diqu', '新城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610102');
INSERT INTO `mh_dict` VALUES ('3216', '417', 'diqu', '碑林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610103');
INSERT INTO `mh_dict` VALUES ('3217', '417', 'diqu', '莲湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610104');
INSERT INTO `mh_dict` VALUES ('3218', '417', 'diqu', '灞桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610111');
INSERT INTO `mh_dict` VALUES ('3219', '417', 'diqu', '未央区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610112');
INSERT INTO `mh_dict` VALUES ('3220', '417', 'diqu', '雁塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610113');
INSERT INTO `mh_dict` VALUES ('3221', '417', 'diqu', '阎良区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610114');
INSERT INTO `mh_dict` VALUES ('3222', '417', 'diqu', '临潼区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610115');
INSERT INTO `mh_dict` VALUES ('3223', '417', 'diqu', '长安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610116');
INSERT INTO `mh_dict` VALUES ('3224', '417', 'diqu', '蓝田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610122');
INSERT INTO `mh_dict` VALUES ('3225', '417', 'diqu', '周至县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610124');
INSERT INTO `mh_dict` VALUES ('3226', '417', 'diqu', '户县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610125');
INSERT INTO `mh_dict` VALUES ('3227', '417', 'diqu', '高陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610126');
INSERT INTO `mh_dict` VALUES ('3228', '418', 'diqu', '王益区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610202');
INSERT INTO `mh_dict` VALUES ('3229', '418', 'diqu', '印台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610203');
INSERT INTO `mh_dict` VALUES ('3230', '418', 'diqu', '耀州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610204');
INSERT INTO `mh_dict` VALUES ('3231', '418', 'diqu', '宜君县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610222');
INSERT INTO `mh_dict` VALUES ('3232', '419', 'diqu', '渭滨区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610302');
INSERT INTO `mh_dict` VALUES ('3233', '419', 'diqu', '金台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610303');
INSERT INTO `mh_dict` VALUES ('3234', '419', 'diqu', '陈仓区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610304');
INSERT INTO `mh_dict` VALUES ('3235', '419', 'diqu', '凤翔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610322');
INSERT INTO `mh_dict` VALUES ('3236', '419', 'diqu', '岐山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610323');
INSERT INTO `mh_dict` VALUES ('3237', '419', 'diqu', '扶风县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610324');
INSERT INTO `mh_dict` VALUES ('3238', '419', 'diqu', '眉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610326');
INSERT INTO `mh_dict` VALUES ('3239', '419', 'diqu', '陇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610327');
INSERT INTO `mh_dict` VALUES ('3240', '419', 'diqu', '千阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610328');
INSERT INTO `mh_dict` VALUES ('3241', '419', 'diqu', '麟游县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610329');
INSERT INTO `mh_dict` VALUES ('3242', '419', 'diqu', '凤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610330');
INSERT INTO `mh_dict` VALUES ('3243', '419', 'diqu', '太白县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610331');
INSERT INTO `mh_dict` VALUES ('3244', '420', 'diqu', '秦都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610402');
INSERT INTO `mh_dict` VALUES ('3245', '420', 'diqu', '杨陵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610403');
INSERT INTO `mh_dict` VALUES ('3246', '420', 'diqu', '渭城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610404');
INSERT INTO `mh_dict` VALUES ('3247', '420', 'diqu', '三原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610422');
INSERT INTO `mh_dict` VALUES ('3248', '420', 'diqu', '泾阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610423');
INSERT INTO `mh_dict` VALUES ('3249', '420', 'diqu', '乾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610424');
INSERT INTO `mh_dict` VALUES ('3250', '420', 'diqu', '礼泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610425');
INSERT INTO `mh_dict` VALUES ('3251', '420', 'diqu', '永寿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610426');
INSERT INTO `mh_dict` VALUES ('3252', '420', 'diqu', '彬县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610427');
INSERT INTO `mh_dict` VALUES ('3253', '420', 'diqu', '长武县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610428');
INSERT INTO `mh_dict` VALUES ('3254', '420', 'diqu', '旬邑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610429');
INSERT INTO `mh_dict` VALUES ('3255', '420', 'diqu', '淳化县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610430');
INSERT INTO `mh_dict` VALUES ('3256', '420', 'diqu', '武功县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610431');
INSERT INTO `mh_dict` VALUES ('3257', '420', 'diqu', '兴平市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610481');
INSERT INTO `mh_dict` VALUES ('3258', '421', 'diqu', '临渭区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610502');
INSERT INTO `mh_dict` VALUES ('3259', '421', 'diqu', '华县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610521');
INSERT INTO `mh_dict` VALUES ('3260', '421', 'diqu', '潼关县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610522');
INSERT INTO `mh_dict` VALUES ('3261', '421', 'diqu', '大荔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610523');
INSERT INTO `mh_dict` VALUES ('3262', '421', 'diqu', '合阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610524');
INSERT INTO `mh_dict` VALUES ('3263', '421', 'diqu', '澄城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610525');
INSERT INTO `mh_dict` VALUES ('3264', '421', 'diqu', '蒲城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610526');
INSERT INTO `mh_dict` VALUES ('3265', '421', 'diqu', '白水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610527');
INSERT INTO `mh_dict` VALUES ('3266', '421', 'diqu', '富平县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610528');
INSERT INTO `mh_dict` VALUES ('3267', '421', 'diqu', '韩城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610581');
INSERT INTO `mh_dict` VALUES ('3268', '421', 'diqu', '华阴市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610582');
INSERT INTO `mh_dict` VALUES ('3269', '422', 'diqu', '宝塔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610602');
INSERT INTO `mh_dict` VALUES ('3270', '422', 'diqu', '延长县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610621');
INSERT INTO `mh_dict` VALUES ('3271', '422', 'diqu', '延川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610622');
INSERT INTO `mh_dict` VALUES ('3272', '422', 'diqu', '子长县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610623');
INSERT INTO `mh_dict` VALUES ('3273', '422', 'diqu', '安塞县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610624');
INSERT INTO `mh_dict` VALUES ('3274', '422', 'diqu', '志丹县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610625');
INSERT INTO `mh_dict` VALUES ('3275', '422', 'diqu', '吴起县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610626');
INSERT INTO `mh_dict` VALUES ('3276', '422', 'diqu', '甘泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610627');
INSERT INTO `mh_dict` VALUES ('3277', '422', 'diqu', '富县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610628');
INSERT INTO `mh_dict` VALUES ('3278', '422', 'diqu', '洛川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610629');
INSERT INTO `mh_dict` VALUES ('3279', '422', 'diqu', '宜川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610630');
INSERT INTO `mh_dict` VALUES ('3280', '422', 'diqu', '黄龙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610631');
INSERT INTO `mh_dict` VALUES ('3281', '422', 'diqu', '黄陵县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610632');
INSERT INTO `mh_dict` VALUES ('3282', '423', 'diqu', '汉台区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610702');
INSERT INTO `mh_dict` VALUES ('3283', '423', 'diqu', '南郑县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610721');
INSERT INTO `mh_dict` VALUES ('3284', '423', 'diqu', '城固县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610722');
INSERT INTO `mh_dict` VALUES ('3285', '423', 'diqu', '洋县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610723');
INSERT INTO `mh_dict` VALUES ('3286', '423', 'diqu', '西乡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610724');
INSERT INTO `mh_dict` VALUES ('3287', '423', 'diqu', '勉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610725');
INSERT INTO `mh_dict` VALUES ('3288', '423', 'diqu', '宁强县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610726');
INSERT INTO `mh_dict` VALUES ('3289', '423', 'diqu', '略阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610727');
INSERT INTO `mh_dict` VALUES ('3290', '423', 'diqu', '镇巴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610728');
INSERT INTO `mh_dict` VALUES ('3291', '423', 'diqu', '留坝县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610729');
INSERT INTO `mh_dict` VALUES ('3292', '423', 'diqu', '佛坪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610730');
INSERT INTO `mh_dict` VALUES ('3293', '424', 'diqu', '榆阳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610802');
INSERT INTO `mh_dict` VALUES ('3294', '424', 'diqu', '神木县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610821');
INSERT INTO `mh_dict` VALUES ('3295', '424', 'diqu', '府谷县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610822');
INSERT INTO `mh_dict` VALUES ('3296', '424', 'diqu', '横山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610823');
INSERT INTO `mh_dict` VALUES ('3297', '424', 'diqu', '靖边县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610824');
INSERT INTO `mh_dict` VALUES ('3298', '424', 'diqu', '定边县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610825');
INSERT INTO `mh_dict` VALUES ('3299', '424', 'diqu', '绥德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610826');
INSERT INTO `mh_dict` VALUES ('3300', '424', 'diqu', '米脂县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610827');
INSERT INTO `mh_dict` VALUES ('3301', '424', 'diqu', '佳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610828');
INSERT INTO `mh_dict` VALUES ('3302', '424', 'diqu', '吴堡县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610829');
INSERT INTO `mh_dict` VALUES ('3303', '424', 'diqu', '清涧县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610830');
INSERT INTO `mh_dict` VALUES ('3304', '424', 'diqu', '子洲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610831');
INSERT INTO `mh_dict` VALUES ('3305', '425', 'diqu', '汉滨区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610902');
INSERT INTO `mh_dict` VALUES ('3306', '425', 'diqu', '汉阴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610921');
INSERT INTO `mh_dict` VALUES ('3307', '425', 'diqu', '石泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610922');
INSERT INTO `mh_dict` VALUES ('3308', '425', 'diqu', '宁陕县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610923');
INSERT INTO `mh_dict` VALUES ('3309', '425', 'diqu', '紫阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610924');
INSERT INTO `mh_dict` VALUES ('3310', '425', 'diqu', '岚皋县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610925');
INSERT INTO `mh_dict` VALUES ('3311', '425', 'diqu', '平利县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610926');
INSERT INTO `mh_dict` VALUES ('3312', '425', 'diqu', '镇坪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610927');
INSERT INTO `mh_dict` VALUES ('3313', '425', 'diqu', '旬阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610928');
INSERT INTO `mh_dict` VALUES ('3314', '425', 'diqu', '白河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '610929');
INSERT INTO `mh_dict` VALUES ('3315', '426', 'diqu', '商州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611002');
INSERT INTO `mh_dict` VALUES ('3316', '426', 'diqu', '洛南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611021');
INSERT INTO `mh_dict` VALUES ('3317', '426', 'diqu', '丹凤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611022');
INSERT INTO `mh_dict` VALUES ('3318', '426', 'diqu', '商南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611023');
INSERT INTO `mh_dict` VALUES ('3319', '426', 'diqu', '山阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611024');
INSERT INTO `mh_dict` VALUES ('3320', '426', 'diqu', '镇安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611025');
INSERT INTO `mh_dict` VALUES ('3321', '426', 'diqu', '柞水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611026');
INSERT INTO `mh_dict` VALUES ('3322', '427', 'diqu', '空港新城', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611101');
INSERT INTO `mh_dict` VALUES ('3323', '427', 'diqu', '沣东新城', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611102');
INSERT INTO `mh_dict` VALUES ('3324', '427', 'diqu', '秦汉新城', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611103');
INSERT INTO `mh_dict` VALUES ('3325', '427', 'diqu', '沣西新城', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611104');
INSERT INTO `mh_dict` VALUES ('3326', '427', 'diqu', '泾河新城', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '611105');
INSERT INTO `mh_dict` VALUES ('3327', '428', 'diqu', '城关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620102');
INSERT INTO `mh_dict` VALUES ('3328', '428', 'diqu', '七里河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620103');
INSERT INTO `mh_dict` VALUES ('3329', '428', 'diqu', '西固区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620104');
INSERT INTO `mh_dict` VALUES ('3330', '428', 'diqu', '安宁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620105');
INSERT INTO `mh_dict` VALUES ('3331', '428', 'diqu', '红古区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620111');
INSERT INTO `mh_dict` VALUES ('3332', '428', 'diqu', '永登县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620121');
INSERT INTO `mh_dict` VALUES ('3333', '428', 'diqu', '皋兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620122');
INSERT INTO `mh_dict` VALUES ('3334', '428', 'diqu', '榆中县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620123');
INSERT INTO `mh_dict` VALUES ('3335', '429', 'diqu', '雄关区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620201');
INSERT INTO `mh_dict` VALUES ('3336', '429', 'diqu', '长城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620202');
INSERT INTO `mh_dict` VALUES ('3337', '429', 'diqu', '镜铁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620203');
INSERT INTO `mh_dict` VALUES ('3338', '430', 'diqu', '金川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620302');
INSERT INTO `mh_dict` VALUES ('3339', '430', 'diqu', '永昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620321');
INSERT INTO `mh_dict` VALUES ('3340', '431', 'diqu', '白银区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620402');
INSERT INTO `mh_dict` VALUES ('3341', '431', 'diqu', '平川区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620403');
INSERT INTO `mh_dict` VALUES ('3342', '431', 'diqu', '靖远县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620421');
INSERT INTO `mh_dict` VALUES ('3343', '431', 'diqu', '会宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620422');
INSERT INTO `mh_dict` VALUES ('3344', '431', 'diqu', '景泰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620423');
INSERT INTO `mh_dict` VALUES ('3345', '432', 'diqu', '秦州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620502');
INSERT INTO `mh_dict` VALUES ('3346', '432', 'diqu', '麦积区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620503');
INSERT INTO `mh_dict` VALUES ('3347', '432', 'diqu', '清水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620521');
INSERT INTO `mh_dict` VALUES ('3348', '432', 'diqu', '秦安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620522');
INSERT INTO `mh_dict` VALUES ('3349', '432', 'diqu', '甘谷县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620523');
INSERT INTO `mh_dict` VALUES ('3350', '432', 'diqu', '武山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620524');
INSERT INTO `mh_dict` VALUES ('3351', '432', 'diqu', '张家川回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620525');
INSERT INTO `mh_dict` VALUES ('3352', '433', 'diqu', '凉州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620602');
INSERT INTO `mh_dict` VALUES ('3353', '433', 'diqu', '民勤县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620621');
INSERT INTO `mh_dict` VALUES ('3354', '433', 'diqu', '古浪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620622');
INSERT INTO `mh_dict` VALUES ('3355', '433', 'diqu', '天祝藏族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620623');
INSERT INTO `mh_dict` VALUES ('3356', '434', 'diqu', '甘州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620702');
INSERT INTO `mh_dict` VALUES ('3357', '434', 'diqu', '肃南裕固族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620721');
INSERT INTO `mh_dict` VALUES ('3358', '434', 'diqu', '民乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620722');
INSERT INTO `mh_dict` VALUES ('3359', '434', 'diqu', '临泽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620723');
INSERT INTO `mh_dict` VALUES ('3360', '434', 'diqu', '高台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620724');
INSERT INTO `mh_dict` VALUES ('3361', '434', 'diqu', '山丹县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620725');
INSERT INTO `mh_dict` VALUES ('3362', '435', 'diqu', '崆峒区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620802');
INSERT INTO `mh_dict` VALUES ('3363', '435', 'diqu', '泾川县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620821');
INSERT INTO `mh_dict` VALUES ('3364', '435', 'diqu', '灵台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620822');
INSERT INTO `mh_dict` VALUES ('3365', '435', 'diqu', '崇信县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620823');
INSERT INTO `mh_dict` VALUES ('3366', '435', 'diqu', '华亭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620824');
INSERT INTO `mh_dict` VALUES ('3367', '435', 'diqu', '庄浪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620825');
INSERT INTO `mh_dict` VALUES ('3368', '435', 'diqu', '静宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620826');
INSERT INTO `mh_dict` VALUES ('3369', '436', 'diqu', '肃州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620902');
INSERT INTO `mh_dict` VALUES ('3370', '436', 'diqu', '金塔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620921');
INSERT INTO `mh_dict` VALUES ('3371', '436', 'diqu', '瓜州县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620922');
INSERT INTO `mh_dict` VALUES ('3372', '436', 'diqu', '肃北蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620923');
INSERT INTO `mh_dict` VALUES ('3373', '436', 'diqu', '阿克塞哈萨克族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620924');
INSERT INTO `mh_dict` VALUES ('3374', '436', 'diqu', '玉门市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620981');
INSERT INTO `mh_dict` VALUES ('3375', '436', 'diqu', '敦煌市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '620982');
INSERT INTO `mh_dict` VALUES ('3376', '437', 'diqu', '西峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621002');
INSERT INTO `mh_dict` VALUES ('3377', '437', 'diqu', '庆城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621021');
INSERT INTO `mh_dict` VALUES ('3378', '437', 'diqu', '环县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621022');
INSERT INTO `mh_dict` VALUES ('3379', '437', 'diqu', '华池县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621023');
INSERT INTO `mh_dict` VALUES ('3380', '437', 'diqu', '合水县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621024');
INSERT INTO `mh_dict` VALUES ('3381', '437', 'diqu', '正宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621025');
INSERT INTO `mh_dict` VALUES ('3382', '437', 'diqu', '宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621026');
INSERT INTO `mh_dict` VALUES ('3383', '437', 'diqu', '镇原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621027');
INSERT INTO `mh_dict` VALUES ('3384', '438', 'diqu', '安定区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621102');
INSERT INTO `mh_dict` VALUES ('3385', '438', 'diqu', '通渭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621121');
INSERT INTO `mh_dict` VALUES ('3386', '438', 'diqu', '陇西县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621122');
INSERT INTO `mh_dict` VALUES ('3387', '438', 'diqu', '渭源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621123');
INSERT INTO `mh_dict` VALUES ('3388', '438', 'diqu', '临洮县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621124');
INSERT INTO `mh_dict` VALUES ('3389', '438', 'diqu', '漳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621125');
INSERT INTO `mh_dict` VALUES ('3390', '438', 'diqu', '岷县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621126');
INSERT INTO `mh_dict` VALUES ('3391', '439', 'diqu', '武都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621202');
INSERT INTO `mh_dict` VALUES ('3392', '439', 'diqu', '成县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621221');
INSERT INTO `mh_dict` VALUES ('3393', '439', 'diqu', '文县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621222');
INSERT INTO `mh_dict` VALUES ('3394', '439', 'diqu', '宕昌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621223');
INSERT INTO `mh_dict` VALUES ('3395', '439', 'diqu', '康县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621224');
INSERT INTO `mh_dict` VALUES ('3396', '439', 'diqu', '西和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621225');
INSERT INTO `mh_dict` VALUES ('3397', '439', 'diqu', '礼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621226');
INSERT INTO `mh_dict` VALUES ('3398', '439', 'diqu', '徽县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621227');
INSERT INTO `mh_dict` VALUES ('3399', '439', 'diqu', '两当县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '621228');
INSERT INTO `mh_dict` VALUES ('3400', '440', 'diqu', '临夏市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622901');
INSERT INTO `mh_dict` VALUES ('3401', '440', 'diqu', '临夏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622921');
INSERT INTO `mh_dict` VALUES ('3402', '440', 'diqu', '康乐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622922');
INSERT INTO `mh_dict` VALUES ('3403', '440', 'diqu', '永靖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622923');
INSERT INTO `mh_dict` VALUES ('3404', '440', 'diqu', '广河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622924');
INSERT INTO `mh_dict` VALUES ('3405', '440', 'diqu', '和政县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622925');
INSERT INTO `mh_dict` VALUES ('3406', '440', 'diqu', '东乡族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622926');
INSERT INTO `mh_dict` VALUES ('3407', '440', 'diqu', '积石山保安族东乡族撒拉族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '622927');
INSERT INTO `mh_dict` VALUES ('3408', '441', 'diqu', '合作市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623001');
INSERT INTO `mh_dict` VALUES ('3409', '441', 'diqu', '临潭县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623021');
INSERT INTO `mh_dict` VALUES ('3410', '441', 'diqu', '卓尼县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623022');
INSERT INTO `mh_dict` VALUES ('3411', '441', 'diqu', '舟曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623023');
INSERT INTO `mh_dict` VALUES ('3412', '441', 'diqu', '迭部县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623024');
INSERT INTO `mh_dict` VALUES ('3413', '441', 'diqu', '玛曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623025');
INSERT INTO `mh_dict` VALUES ('3414', '441', 'diqu', '碌曲县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623026');
INSERT INTO `mh_dict` VALUES ('3415', '441', 'diqu', '夏河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '623027');
INSERT INTO `mh_dict` VALUES ('3416', '442', 'diqu', '城东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630102');
INSERT INTO `mh_dict` VALUES ('3417', '442', 'diqu', '城中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630103');
INSERT INTO `mh_dict` VALUES ('3418', '442', 'diqu', '城西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630104');
INSERT INTO `mh_dict` VALUES ('3419', '442', 'diqu', '城北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630105');
INSERT INTO `mh_dict` VALUES ('3420', '442', 'diqu', '大通回族土族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630121');
INSERT INTO `mh_dict` VALUES ('3421', '442', 'diqu', '湟中县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630122');
INSERT INTO `mh_dict` VALUES ('3422', '442', 'diqu', '湟源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630123');
INSERT INTO `mh_dict` VALUES ('3423', '443', 'diqu', '乐都区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630202');
INSERT INTO `mh_dict` VALUES ('3424', '443', 'diqu', '平安县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630221');
INSERT INTO `mh_dict` VALUES ('3425', '443', 'diqu', '民和回族土族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630222');
INSERT INTO `mh_dict` VALUES ('3426', '443', 'diqu', '互助土族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630223');
INSERT INTO `mh_dict` VALUES ('3427', '443', 'diqu', '化隆回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630224');
INSERT INTO `mh_dict` VALUES ('3428', '443', 'diqu', '循化撒拉族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '630225');
INSERT INTO `mh_dict` VALUES ('3429', '444', 'diqu', '门源回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632221');
INSERT INTO `mh_dict` VALUES ('3430', '444', 'diqu', '祁连县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632222');
INSERT INTO `mh_dict` VALUES ('3431', '444', 'diqu', '海晏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632223');
INSERT INTO `mh_dict` VALUES ('3432', '444', 'diqu', '刚察县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632224');
INSERT INTO `mh_dict` VALUES ('3433', '445', 'diqu', '同仁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632321');
INSERT INTO `mh_dict` VALUES ('3434', '445', 'diqu', '尖扎县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632322');
INSERT INTO `mh_dict` VALUES ('3435', '445', 'diqu', '泽库县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632323');
INSERT INTO `mh_dict` VALUES ('3436', '445', 'diqu', '河南蒙古族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632324');
INSERT INTO `mh_dict` VALUES ('3437', '446', 'diqu', '共和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632521');
INSERT INTO `mh_dict` VALUES ('3438', '446', 'diqu', '同德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632522');
INSERT INTO `mh_dict` VALUES ('3439', '446', 'diqu', '贵德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632523');
INSERT INTO `mh_dict` VALUES ('3440', '446', 'diqu', '兴海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632524');
INSERT INTO `mh_dict` VALUES ('3441', '446', 'diqu', '贵南县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632525');
INSERT INTO `mh_dict` VALUES ('3442', '447', 'diqu', '玛沁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632621');
INSERT INTO `mh_dict` VALUES ('3443', '447', 'diqu', '班玛县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632622');
INSERT INTO `mh_dict` VALUES ('3444', '447', 'diqu', '甘德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632623');
INSERT INTO `mh_dict` VALUES ('3445', '447', 'diqu', '达日县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632624');
INSERT INTO `mh_dict` VALUES ('3446', '447', 'diqu', '久治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632625');
INSERT INTO `mh_dict` VALUES ('3447', '447', 'diqu', '玛多县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632626');
INSERT INTO `mh_dict` VALUES ('3448', '448', 'diqu', '玉树市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632701');
INSERT INTO `mh_dict` VALUES ('3449', '448', 'diqu', '杂多县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632722');
INSERT INTO `mh_dict` VALUES ('3450', '448', 'diqu', '称多县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632723');
INSERT INTO `mh_dict` VALUES ('3451', '448', 'diqu', '治多县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632724');
INSERT INTO `mh_dict` VALUES ('3452', '448', 'diqu', '囊谦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632725');
INSERT INTO `mh_dict` VALUES ('3453', '448', 'diqu', '曲麻莱县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632726');
INSERT INTO `mh_dict` VALUES ('3454', '449', 'diqu', '格尔木市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632801');
INSERT INTO `mh_dict` VALUES ('3455', '449', 'diqu', '德令哈市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632802');
INSERT INTO `mh_dict` VALUES ('3456', '449', 'diqu', '乌兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632821');
INSERT INTO `mh_dict` VALUES ('3457', '449', 'diqu', '都兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632822');
INSERT INTO `mh_dict` VALUES ('3458', '449', 'diqu', '天峻县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '632823');
INSERT INTO `mh_dict` VALUES ('3459', '450', 'diqu', '兴庆区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640104');
INSERT INTO `mh_dict` VALUES ('3460', '450', 'diqu', '西夏区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640105');
INSERT INTO `mh_dict` VALUES ('3461', '450', 'diqu', '金凤区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640106');
INSERT INTO `mh_dict` VALUES ('3462', '450', 'diqu', '永宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640121');
INSERT INTO `mh_dict` VALUES ('3463', '450', 'diqu', '贺兰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640122');
INSERT INTO `mh_dict` VALUES ('3464', '450', 'diqu', '灵武市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640181');
INSERT INTO `mh_dict` VALUES ('3465', '451', 'diqu', '大武口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640202');
INSERT INTO `mh_dict` VALUES ('3466', '451', 'diqu', '惠农区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640205');
INSERT INTO `mh_dict` VALUES ('3467', '451', 'diqu', '平罗县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640221');
INSERT INTO `mh_dict` VALUES ('3468', '452', 'diqu', '利通区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640302');
INSERT INTO `mh_dict` VALUES ('3469', '452', 'diqu', '红寺堡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640303');
INSERT INTO `mh_dict` VALUES ('3470', '452', 'diqu', '盐池县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640323');
INSERT INTO `mh_dict` VALUES ('3471', '452', 'diqu', '同心县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640324');
INSERT INTO `mh_dict` VALUES ('3472', '452', 'diqu', '青铜峡市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640381');
INSERT INTO `mh_dict` VALUES ('3473', '453', 'diqu', '原州区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640402');
INSERT INTO `mh_dict` VALUES ('3474', '453', 'diqu', '西吉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640422');
INSERT INTO `mh_dict` VALUES ('3475', '453', 'diqu', '隆德县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640423');
INSERT INTO `mh_dict` VALUES ('3476', '453', 'diqu', '泾源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640424');
INSERT INTO `mh_dict` VALUES ('3477', '453', 'diqu', '彭阳县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640425');
INSERT INTO `mh_dict` VALUES ('3478', '454', 'diqu', '沙坡头区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640502');
INSERT INTO `mh_dict` VALUES ('3479', '454', 'diqu', '中宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640521');
INSERT INTO `mh_dict` VALUES ('3480', '454', 'diqu', '海原县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '640522');
INSERT INTO `mh_dict` VALUES ('3481', '455', 'diqu', '天山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650102');
INSERT INTO `mh_dict` VALUES ('3482', '455', 'diqu', '沙依巴克区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650103');
INSERT INTO `mh_dict` VALUES ('3483', '455', 'diqu', '新市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650104');
INSERT INTO `mh_dict` VALUES ('3484', '455', 'diqu', '水磨沟区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650105');
INSERT INTO `mh_dict` VALUES ('3485', '455', 'diqu', '头屯河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650106');
INSERT INTO `mh_dict` VALUES ('3486', '455', 'diqu', '达坂城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650107');
INSERT INTO `mh_dict` VALUES ('3487', '455', 'diqu', '米东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650109');
INSERT INTO `mh_dict` VALUES ('3488', '455', 'diqu', '乌鲁木齐县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650121');
INSERT INTO `mh_dict` VALUES ('3489', '456', 'diqu', '独山子区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650202');
INSERT INTO `mh_dict` VALUES ('3490', '456', 'diqu', '克拉玛依区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650203');
INSERT INTO `mh_dict` VALUES ('3491', '456', 'diqu', '白碱滩区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650204');
INSERT INTO `mh_dict` VALUES ('3492', '456', 'diqu', '乌尔禾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '650205');
INSERT INTO `mh_dict` VALUES ('3493', '457', 'diqu', '吐鲁番市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652101');
INSERT INTO `mh_dict` VALUES ('3494', '457', 'diqu', '鄯善县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652122');
INSERT INTO `mh_dict` VALUES ('3495', '457', 'diqu', '托克逊县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652123');
INSERT INTO `mh_dict` VALUES ('3496', '458', 'diqu', '哈密市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652201');
INSERT INTO `mh_dict` VALUES ('3497', '458', 'diqu', '巴里坤哈萨克自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652222');
INSERT INTO `mh_dict` VALUES ('3498', '458', 'diqu', '伊吾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652223');
INSERT INTO `mh_dict` VALUES ('3499', '459', 'diqu', '昌吉市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652301');
INSERT INTO `mh_dict` VALUES ('3500', '459', 'diqu', '阜康市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652302');
INSERT INTO `mh_dict` VALUES ('3501', '459', 'diqu', '呼图壁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652323');
INSERT INTO `mh_dict` VALUES ('3502', '459', 'diqu', '玛纳斯县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652324');
INSERT INTO `mh_dict` VALUES ('3503', '459', 'diqu', '奇台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652325');
INSERT INTO `mh_dict` VALUES ('3504', '459', 'diqu', '吉木萨尔县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652327');
INSERT INTO `mh_dict` VALUES ('3505', '459', 'diqu', '木垒哈萨克自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652328');
INSERT INTO `mh_dict` VALUES ('3506', '460', 'diqu', '博乐市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652701');
INSERT INTO `mh_dict` VALUES ('3507', '460', 'diqu', '阿拉山口市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652702');
INSERT INTO `mh_dict` VALUES ('3508', '460', 'diqu', '精河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652722');
INSERT INTO `mh_dict` VALUES ('3509', '460', 'diqu', '温泉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652723');
INSERT INTO `mh_dict` VALUES ('3510', '461', 'diqu', '库尔勒市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652801');
INSERT INTO `mh_dict` VALUES ('3511', '461', 'diqu', '轮台县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652822');
INSERT INTO `mh_dict` VALUES ('3512', '461', 'diqu', '尉犁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652823');
INSERT INTO `mh_dict` VALUES ('3513', '461', 'diqu', '若羌县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652824');
INSERT INTO `mh_dict` VALUES ('3514', '461', 'diqu', '且末县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652825');
INSERT INTO `mh_dict` VALUES ('3515', '461', 'diqu', '焉耆回族自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652826');
INSERT INTO `mh_dict` VALUES ('3516', '461', 'diqu', '和静县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652827');
INSERT INTO `mh_dict` VALUES ('3517', '461', 'diqu', '和硕县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652828');
INSERT INTO `mh_dict` VALUES ('3518', '461', 'diqu', '博湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652829');
INSERT INTO `mh_dict` VALUES ('3519', '462', 'diqu', '阿克苏市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652901');
INSERT INTO `mh_dict` VALUES ('3520', '462', 'diqu', '温宿县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652922');
INSERT INTO `mh_dict` VALUES ('3521', '462', 'diqu', '库车县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652923');
INSERT INTO `mh_dict` VALUES ('3522', '462', 'diqu', '沙雅县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652924');
INSERT INTO `mh_dict` VALUES ('3523', '462', 'diqu', '新和县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652925');
INSERT INTO `mh_dict` VALUES ('3524', '462', 'diqu', '拜城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652926');
INSERT INTO `mh_dict` VALUES ('3525', '462', 'diqu', '乌什县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652927');
INSERT INTO `mh_dict` VALUES ('3526', '462', 'diqu', '阿瓦提县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652928');
INSERT INTO `mh_dict` VALUES ('3527', '462', 'diqu', '柯坪县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '652929');
INSERT INTO `mh_dict` VALUES ('3528', '463', 'diqu', '阿图什市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653001');
INSERT INTO `mh_dict` VALUES ('3529', '463', 'diqu', '阿克陶县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653022');
INSERT INTO `mh_dict` VALUES ('3530', '463', 'diqu', '阿合奇县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653023');
INSERT INTO `mh_dict` VALUES ('3531', '463', 'diqu', '乌恰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653024');
INSERT INTO `mh_dict` VALUES ('3532', '464', 'diqu', '喀什市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653101');
INSERT INTO `mh_dict` VALUES ('3533', '464', 'diqu', '疏附县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653121');
INSERT INTO `mh_dict` VALUES ('3534', '464', 'diqu', '疏勒县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653122');
INSERT INTO `mh_dict` VALUES ('3535', '464', 'diqu', '英吉沙县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653123');
INSERT INTO `mh_dict` VALUES ('3536', '464', 'diqu', '泽普县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653124');
INSERT INTO `mh_dict` VALUES ('3537', '464', 'diqu', '莎车县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653125');
INSERT INTO `mh_dict` VALUES ('3538', '464', 'diqu', '叶城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653126');
INSERT INTO `mh_dict` VALUES ('3539', '464', 'diqu', '麦盖提县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653127');
INSERT INTO `mh_dict` VALUES ('3540', '464', 'diqu', '岳普湖县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653128');
INSERT INTO `mh_dict` VALUES ('3541', '464', 'diqu', '伽师县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653129');
INSERT INTO `mh_dict` VALUES ('3542', '464', 'diqu', '巴楚县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653130');
INSERT INTO `mh_dict` VALUES ('3543', '464', 'diqu', '塔什库尔干塔吉克自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653131');
INSERT INTO `mh_dict` VALUES ('3544', '465', 'diqu', '和田市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653201');
INSERT INTO `mh_dict` VALUES ('3545', '465', 'diqu', '和田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653221');
INSERT INTO `mh_dict` VALUES ('3546', '465', 'diqu', '墨玉县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653222');
INSERT INTO `mh_dict` VALUES ('3547', '465', 'diqu', '皮山县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653223');
INSERT INTO `mh_dict` VALUES ('3548', '465', 'diqu', '洛浦县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653224');
INSERT INTO `mh_dict` VALUES ('3549', '465', 'diqu', '策勒县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653225');
INSERT INTO `mh_dict` VALUES ('3550', '465', 'diqu', '于田县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653226');
INSERT INTO `mh_dict` VALUES ('3551', '465', 'diqu', '民丰县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '653227');
INSERT INTO `mh_dict` VALUES ('3552', '466', 'diqu', '伊宁市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654002');
INSERT INTO `mh_dict` VALUES ('3553', '466', 'diqu', '奎屯市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654003');
INSERT INTO `mh_dict` VALUES ('3554', '466', 'diqu', '霍尔果斯市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654004');
INSERT INTO `mh_dict` VALUES ('3555', '466', 'diqu', '伊宁县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654021');
INSERT INTO `mh_dict` VALUES ('3556', '466', 'diqu', '察布查尔锡伯自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654022');
INSERT INTO `mh_dict` VALUES ('3557', '466', 'diqu', '霍城县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654023');
INSERT INTO `mh_dict` VALUES ('3558', '466', 'diqu', '巩留县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654024');
INSERT INTO `mh_dict` VALUES ('3559', '466', 'diqu', '新源县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654025');
INSERT INTO `mh_dict` VALUES ('3560', '466', 'diqu', '昭苏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654026');
INSERT INTO `mh_dict` VALUES ('3561', '466', 'diqu', '特克斯县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654027');
INSERT INTO `mh_dict` VALUES ('3562', '466', 'diqu', '尼勒克县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654028');
INSERT INTO `mh_dict` VALUES ('3563', '467', 'diqu', '塔城市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654201');
INSERT INTO `mh_dict` VALUES ('3564', '467', 'diqu', '乌苏市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654202');
INSERT INTO `mh_dict` VALUES ('3565', '467', 'diqu', '额敏县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654221');
INSERT INTO `mh_dict` VALUES ('3566', '467', 'diqu', '沙湾县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654223');
INSERT INTO `mh_dict` VALUES ('3567', '467', 'diqu', '托里县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654224');
INSERT INTO `mh_dict` VALUES ('3568', '467', 'diqu', '裕民县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654225');
INSERT INTO `mh_dict` VALUES ('3569', '467', 'diqu', '和布克赛尔蒙古自治县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654226');
INSERT INTO `mh_dict` VALUES ('3570', '468', 'diqu', '阿勒泰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654301');
INSERT INTO `mh_dict` VALUES ('3571', '468', 'diqu', '布尔津县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654321');
INSERT INTO `mh_dict` VALUES ('3572', '468', 'diqu', '富蕴县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654322');
INSERT INTO `mh_dict` VALUES ('3573', '468', 'diqu', '福海县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654323');
INSERT INTO `mh_dict` VALUES ('3574', '468', 'diqu', '哈巴河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654324');
INSERT INTO `mh_dict` VALUES ('3575', '468', 'diqu', '青河县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654325');
INSERT INTO `mh_dict` VALUES ('3576', '468', 'diqu', '吉木乃县', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '654326');
INSERT INTO `mh_dict` VALUES ('3577', '469', 'diqu', '石河子市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659001');
INSERT INTO `mh_dict` VALUES ('3578', '469', 'diqu', '阿拉尔市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659002');
INSERT INTO `mh_dict` VALUES ('3579', '469', 'diqu', '图木舒克市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659003');
INSERT INTO `mh_dict` VALUES ('3580', '469', 'diqu', '五家渠市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659004');
INSERT INTO `mh_dict` VALUES ('3581', '469', 'diqu', '北屯市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659005');
INSERT INTO `mh_dict` VALUES ('3582', '469', 'diqu', '铁门关市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659006');
INSERT INTO `mh_dict` VALUES ('3583', '469', 'diqu', '双河市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '659007');
INSERT INTO `mh_dict` VALUES ('3584', '470', 'diqu', '松山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710101');
INSERT INTO `mh_dict` VALUES ('3585', '470', 'diqu', '信义区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710102');
INSERT INTO `mh_dict` VALUES ('3586', '470', 'diqu', '大安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710103');
INSERT INTO `mh_dict` VALUES ('3587', '470', 'diqu', '中山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710104');
INSERT INTO `mh_dict` VALUES ('3588', '470', 'diqu', '中正区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710105');
INSERT INTO `mh_dict` VALUES ('3589', '470', 'diqu', '大同区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710106');
INSERT INTO `mh_dict` VALUES ('3590', '470', 'diqu', '万华区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710107');
INSERT INTO `mh_dict` VALUES ('3591', '470', 'diqu', '文山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710108');
INSERT INTO `mh_dict` VALUES ('3592', '470', 'diqu', '南港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710109');
INSERT INTO `mh_dict` VALUES ('3593', '470', 'diqu', '内湖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710110');
INSERT INTO `mh_dict` VALUES ('3594', '470', 'diqu', '士林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710111');
INSERT INTO `mh_dict` VALUES ('3595', '470', 'diqu', '北投区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710112');
INSERT INTO `mh_dict` VALUES ('3596', '471', 'diqu', '盐埕区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710201');
INSERT INTO `mh_dict` VALUES ('3597', '471', 'diqu', '鼓山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710202');
INSERT INTO `mh_dict` VALUES ('3598', '471', 'diqu', '左营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710203');
INSERT INTO `mh_dict` VALUES ('3599', '471', 'diqu', '楠梓区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710204');
INSERT INTO `mh_dict` VALUES ('3600', '471', 'diqu', '三民区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710205');
INSERT INTO `mh_dict` VALUES ('3601', '471', 'diqu', '新兴区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710206');
INSERT INTO `mh_dict` VALUES ('3602', '471', 'diqu', '前金区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710207');
INSERT INTO `mh_dict` VALUES ('3603', '471', 'diqu', '苓雅区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710208');
INSERT INTO `mh_dict` VALUES ('3604', '471', 'diqu', '前镇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710209');
INSERT INTO `mh_dict` VALUES ('3605', '471', 'diqu', '旗津区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710210');
INSERT INTO `mh_dict` VALUES ('3606', '471', 'diqu', '小港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710211');
INSERT INTO `mh_dict` VALUES ('3607', '471', 'diqu', '凤山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710212');
INSERT INTO `mh_dict` VALUES ('3608', '471', 'diqu', '林园区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710213');
INSERT INTO `mh_dict` VALUES ('3609', '471', 'diqu', '大寮区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710214');
INSERT INTO `mh_dict` VALUES ('3610', '471', 'diqu', '大树区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710215');
INSERT INTO `mh_dict` VALUES ('3611', '471', 'diqu', '大社区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710216');
INSERT INTO `mh_dict` VALUES ('3612', '471', 'diqu', '仁武区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710217');
INSERT INTO `mh_dict` VALUES ('3613', '471', 'diqu', '鸟松区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710218');
INSERT INTO `mh_dict` VALUES ('3614', '471', 'diqu', '冈山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710219');
INSERT INTO `mh_dict` VALUES ('3615', '471', 'diqu', '桥头区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710220');
INSERT INTO `mh_dict` VALUES ('3616', '471', 'diqu', '燕巢区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710221');
INSERT INTO `mh_dict` VALUES ('3617', '471', 'diqu', '田寮区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710222');
INSERT INTO `mh_dict` VALUES ('3618', '471', 'diqu', '阿莲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710223');
INSERT INTO `mh_dict` VALUES ('3619', '471', 'diqu', '路竹区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710224');
INSERT INTO `mh_dict` VALUES ('3620', '471', 'diqu', '湖内区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710225');
INSERT INTO `mh_dict` VALUES ('3621', '471', 'diqu', '茄萣区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710226');
INSERT INTO `mh_dict` VALUES ('3622', '471', 'diqu', '永安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710227');
INSERT INTO `mh_dict` VALUES ('3623', '471', 'diqu', '弥陀区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710228');
INSERT INTO `mh_dict` VALUES ('3624', '471', 'diqu', '梓官区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710229');
INSERT INTO `mh_dict` VALUES ('3625', '471', 'diqu', '旗山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710230');
INSERT INTO `mh_dict` VALUES ('3626', '471', 'diqu', '美浓区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710231');
INSERT INTO `mh_dict` VALUES ('3627', '471', 'diqu', '六龟区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710232');
INSERT INTO `mh_dict` VALUES ('3628', '471', 'diqu', '甲仙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710233');
INSERT INTO `mh_dict` VALUES ('3629', '471', 'diqu', '杉林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710234');
INSERT INTO `mh_dict` VALUES ('3630', '471', 'diqu', '内门区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710235');
INSERT INTO `mh_dict` VALUES ('3631', '471', 'diqu', '茂林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710236');
INSERT INTO `mh_dict` VALUES ('3632', '471', 'diqu', '桃源区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710237');
INSERT INTO `mh_dict` VALUES ('3633', '471', 'diqu', '那玛夏区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710238');
INSERT INTO `mh_dict` VALUES ('3634', '472', 'diqu', '中正区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710301');
INSERT INTO `mh_dict` VALUES ('3635', '472', 'diqu', '七堵区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710302');
INSERT INTO `mh_dict` VALUES ('3636', '472', 'diqu', '暖暖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710303');
INSERT INTO `mh_dict` VALUES ('3637', '472', 'diqu', '仁爱区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710304');
INSERT INTO `mh_dict` VALUES ('3638', '472', 'diqu', '中山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710305');
INSERT INTO `mh_dict` VALUES ('3639', '472', 'diqu', '安乐区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710306');
INSERT INTO `mh_dict` VALUES ('3640', '472', 'diqu', '信义区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710307');
INSERT INTO `mh_dict` VALUES ('3641', '473', 'diqu', '中区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710401');
INSERT INTO `mh_dict` VALUES ('3642', '473', 'diqu', '东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710402');
INSERT INTO `mh_dict` VALUES ('3643', '473', 'diqu', '南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710403');
INSERT INTO `mh_dict` VALUES ('3644', '473', 'diqu', '西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710404');
INSERT INTO `mh_dict` VALUES ('3645', '473', 'diqu', '北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710405');
INSERT INTO `mh_dict` VALUES ('3646', '473', 'diqu', '西屯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710406');
INSERT INTO `mh_dict` VALUES ('3647', '473', 'diqu', '南屯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710407');
INSERT INTO `mh_dict` VALUES ('3648', '473', 'diqu', '北屯区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710408');
INSERT INTO `mh_dict` VALUES ('3649', '473', 'diqu', '丰原区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710409');
INSERT INTO `mh_dict` VALUES ('3650', '473', 'diqu', '东势区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710410');
INSERT INTO `mh_dict` VALUES ('3651', '473', 'diqu', '大甲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710411');
INSERT INTO `mh_dict` VALUES ('3652', '473', 'diqu', '清水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710412');
INSERT INTO `mh_dict` VALUES ('3653', '473', 'diqu', '沙鹿区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710413');
INSERT INTO `mh_dict` VALUES ('3654', '473', 'diqu', '梧栖区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710414');
INSERT INTO `mh_dict` VALUES ('3655', '473', 'diqu', '后里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710415');
INSERT INTO `mh_dict` VALUES ('3656', '473', 'diqu', '神冈区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710416');
INSERT INTO `mh_dict` VALUES ('3657', '473', 'diqu', '潭子区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710417');
INSERT INTO `mh_dict` VALUES ('3658', '473', 'diqu', '大雅区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710418');
INSERT INTO `mh_dict` VALUES ('3659', '473', 'diqu', '新社区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710419');
INSERT INTO `mh_dict` VALUES ('3660', '473', 'diqu', '石冈区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710420');
INSERT INTO `mh_dict` VALUES ('3661', '473', 'diqu', '外埔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710421');
INSERT INTO `mh_dict` VALUES ('3662', '473', 'diqu', '大安区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710422');
INSERT INTO `mh_dict` VALUES ('3663', '473', 'diqu', '乌日区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710423');
INSERT INTO `mh_dict` VALUES ('3664', '473', 'diqu', '大肚区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710424');
INSERT INTO `mh_dict` VALUES ('3665', '473', 'diqu', '龙井区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710425');
INSERT INTO `mh_dict` VALUES ('3666', '473', 'diqu', '雾峰区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710426');
INSERT INTO `mh_dict` VALUES ('3667', '473', 'diqu', '太平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710427');
INSERT INTO `mh_dict` VALUES ('3668', '473', 'diqu', '大里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710428');
INSERT INTO `mh_dict` VALUES ('3669', '473', 'diqu', '和平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710429');
INSERT INTO `mh_dict` VALUES ('3670', '474', 'diqu', '东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710501');
INSERT INTO `mh_dict` VALUES ('3671', '474', 'diqu', '南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710502');
INSERT INTO `mh_dict` VALUES ('3672', '474', 'diqu', '北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710504');
INSERT INTO `mh_dict` VALUES ('3673', '474', 'diqu', '安南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710506');
INSERT INTO `mh_dict` VALUES ('3674', '474', 'diqu', '安平区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710507');
INSERT INTO `mh_dict` VALUES ('3675', '474', 'diqu', '中西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710508');
INSERT INTO `mh_dict` VALUES ('3676', '474', 'diqu', '新营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710509');
INSERT INTO `mh_dict` VALUES ('3677', '474', 'diqu', '盐水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710510');
INSERT INTO `mh_dict` VALUES ('3678', '474', 'diqu', '白河区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710511');
INSERT INTO `mh_dict` VALUES ('3679', '474', 'diqu', '柳营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710512');
INSERT INTO `mh_dict` VALUES ('3680', '474', 'diqu', '后壁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710513');
INSERT INTO `mh_dict` VALUES ('3681', '474', 'diqu', '东山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710514');
INSERT INTO `mh_dict` VALUES ('3682', '474', 'diqu', '麻豆区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710515');
INSERT INTO `mh_dict` VALUES ('3683', '474', 'diqu', '下营区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710516');
INSERT INTO `mh_dict` VALUES ('3684', '474', 'diqu', '六甲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710517');
INSERT INTO `mh_dict` VALUES ('3685', '474', 'diqu', '官田区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710518');
INSERT INTO `mh_dict` VALUES ('3686', '474', 'diqu', '大内区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710519');
INSERT INTO `mh_dict` VALUES ('3687', '474', 'diqu', '佳里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710520');
INSERT INTO `mh_dict` VALUES ('3688', '474', 'diqu', '学甲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710521');
INSERT INTO `mh_dict` VALUES ('3689', '474', 'diqu', '西港区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710522');
INSERT INTO `mh_dict` VALUES ('3690', '474', 'diqu', '七股区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710523');
INSERT INTO `mh_dict` VALUES ('3691', '474', 'diqu', '将军区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710524');
INSERT INTO `mh_dict` VALUES ('3692', '474', 'diqu', '北门区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710525');
INSERT INTO `mh_dict` VALUES ('3693', '474', 'diqu', '新化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710526');
INSERT INTO `mh_dict` VALUES ('3694', '474', 'diqu', '善化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710527');
INSERT INTO `mh_dict` VALUES ('3695', '474', 'diqu', '新市区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710528');
INSERT INTO `mh_dict` VALUES ('3696', '474', 'diqu', '安定区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710529');
INSERT INTO `mh_dict` VALUES ('3697', '474', 'diqu', '山上区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710530');
INSERT INTO `mh_dict` VALUES ('3698', '474', 'diqu', '玉井区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710531');
INSERT INTO `mh_dict` VALUES ('3699', '474', 'diqu', '楠西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710532');
INSERT INTO `mh_dict` VALUES ('3700', '474', 'diqu', '南化区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710533');
INSERT INTO `mh_dict` VALUES ('3701', '474', 'diqu', '左镇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710534');
INSERT INTO `mh_dict` VALUES ('3702', '474', 'diqu', '仁德区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710535');
INSERT INTO `mh_dict` VALUES ('3703', '474', 'diqu', '归仁区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710536');
INSERT INTO `mh_dict` VALUES ('3704', '474', 'diqu', '关庙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710537');
INSERT INTO `mh_dict` VALUES ('3705', '474', 'diqu', '龙崎区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710538');
INSERT INTO `mh_dict` VALUES ('3706', '474', 'diqu', '永康区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710539');
INSERT INTO `mh_dict` VALUES ('3707', '475', 'diqu', '东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710601');
INSERT INTO `mh_dict` VALUES ('3708', '475', 'diqu', '北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710602');
INSERT INTO `mh_dict` VALUES ('3709', '475', 'diqu', '香山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710603');
INSERT INTO `mh_dict` VALUES ('3710', '476', 'diqu', '东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710701');
INSERT INTO `mh_dict` VALUES ('3711', '476', 'diqu', '西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710702');
INSERT INTO `mh_dict` VALUES ('3712', '477', 'diqu', '板桥区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710801');
INSERT INTO `mh_dict` VALUES ('3713', '477', 'diqu', '三重区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710802');
INSERT INTO `mh_dict` VALUES ('3714', '477', 'diqu', '中和区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710803');
INSERT INTO `mh_dict` VALUES ('3715', '477', 'diqu', '永和区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710804');
INSERT INTO `mh_dict` VALUES ('3716', '477', 'diqu', '新庄区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710805');
INSERT INTO `mh_dict` VALUES ('3717', '477', 'diqu', '新店区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710806');
INSERT INTO `mh_dict` VALUES ('3718', '477', 'diqu', '树林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710807');
INSERT INTO `mh_dict` VALUES ('3719', '477', 'diqu', '莺歌区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710808');
INSERT INTO `mh_dict` VALUES ('3720', '477', 'diqu', '三峡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710809');
INSERT INTO `mh_dict` VALUES ('3721', '477', 'diqu', '淡水区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710810');
INSERT INTO `mh_dict` VALUES ('3722', '477', 'diqu', '汐止区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710811');
INSERT INTO `mh_dict` VALUES ('3723', '477', 'diqu', '瑞芳区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710812');
INSERT INTO `mh_dict` VALUES ('3724', '477', 'diqu', '土城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710813');
INSERT INTO `mh_dict` VALUES ('3725', '477', 'diqu', '芦洲区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710814');
INSERT INTO `mh_dict` VALUES ('3726', '477', 'diqu', '五股区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710815');
INSERT INTO `mh_dict` VALUES ('3727', '477', 'diqu', '泰山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710816');
INSERT INTO `mh_dict` VALUES ('3728', '477', 'diqu', '林口区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710817');
INSERT INTO `mh_dict` VALUES ('3729', '477', 'diqu', '深坑区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710818');
INSERT INTO `mh_dict` VALUES ('3730', '477', 'diqu', '石碇区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710819');
INSERT INTO `mh_dict` VALUES ('3731', '477', 'diqu', '坪林区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710820');
INSERT INTO `mh_dict` VALUES ('3732', '477', 'diqu', '三芝区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710821');
INSERT INTO `mh_dict` VALUES ('3733', '477', 'diqu', '石门区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710822');
INSERT INTO `mh_dict` VALUES ('3734', '477', 'diqu', '八里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710823');
INSERT INTO `mh_dict` VALUES ('3735', '477', 'diqu', '平溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710824');
INSERT INTO `mh_dict` VALUES ('3736', '477', 'diqu', '双溪区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710825');
INSERT INTO `mh_dict` VALUES ('3737', '477', 'diqu', '贡寮区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710826');
INSERT INTO `mh_dict` VALUES ('3738', '477', 'diqu', '金山区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710827');
INSERT INTO `mh_dict` VALUES ('3739', '477', 'diqu', '万里区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710828');
INSERT INTO `mh_dict` VALUES ('3740', '477', 'diqu', '乌来区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '710829');
INSERT INTO `mh_dict` VALUES ('3741', '478', 'diqu', '宜兰市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712201');
INSERT INTO `mh_dict` VALUES ('3742', '478', 'diqu', '罗东镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712221');
INSERT INTO `mh_dict` VALUES ('3743', '478', 'diqu', '苏澳镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712222');
INSERT INTO `mh_dict` VALUES ('3744', '478', 'diqu', '头城镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712223');
INSERT INTO `mh_dict` VALUES ('3745', '478', 'diqu', '礁溪乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712224');
INSERT INTO `mh_dict` VALUES ('3746', '478', 'diqu', '壮围乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712225');
INSERT INTO `mh_dict` VALUES ('3747', '478', 'diqu', '员山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712226');
INSERT INTO `mh_dict` VALUES ('3748', '478', 'diqu', '冬山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712227');
INSERT INTO `mh_dict` VALUES ('3749', '478', 'diqu', '五结乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712228');
INSERT INTO `mh_dict` VALUES ('3750', '478', 'diqu', '三星乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712229');
INSERT INTO `mh_dict` VALUES ('3751', '478', 'diqu', '大同乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712230');
INSERT INTO `mh_dict` VALUES ('3752', '478', 'diqu', '南澳乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712231');
INSERT INTO `mh_dict` VALUES ('3753', '479', 'diqu', '桃园市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712301');
INSERT INTO `mh_dict` VALUES ('3754', '479', 'diqu', '中坜市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712302');
INSERT INTO `mh_dict` VALUES ('3755', '479', 'diqu', '平镇市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712303');
INSERT INTO `mh_dict` VALUES ('3756', '479', 'diqu', '八德市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712304');
INSERT INTO `mh_dict` VALUES ('3757', '479', 'diqu', '杨梅市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712305');
INSERT INTO `mh_dict` VALUES ('3758', '479', 'diqu', '芦竹市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712306');
INSERT INTO `mh_dict` VALUES ('3759', '479', 'diqu', '大溪镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712321');
INSERT INTO `mh_dict` VALUES ('3760', '479', 'diqu', '大园乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712324');
INSERT INTO `mh_dict` VALUES ('3761', '479', 'diqu', '龟山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712325');
INSERT INTO `mh_dict` VALUES ('3762', '479', 'diqu', '龙潭乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712327');
INSERT INTO `mh_dict` VALUES ('3763', '479', 'diqu', '新屋乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712329');
INSERT INTO `mh_dict` VALUES ('3764', '479', 'diqu', '观音乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712330');
INSERT INTO `mh_dict` VALUES ('3765', '479', 'diqu', '复兴乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712331');
INSERT INTO `mh_dict` VALUES ('3766', '480', 'diqu', '竹北市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712401');
INSERT INTO `mh_dict` VALUES ('3767', '480', 'diqu', '竹东镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712421');
INSERT INTO `mh_dict` VALUES ('3768', '480', 'diqu', '新埔镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712422');
INSERT INTO `mh_dict` VALUES ('3769', '480', 'diqu', '关西镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712423');
INSERT INTO `mh_dict` VALUES ('3770', '480', 'diqu', '湖口乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712424');
INSERT INTO `mh_dict` VALUES ('3771', '480', 'diqu', '新丰乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712425');
INSERT INTO `mh_dict` VALUES ('3772', '480', 'diqu', '芎林乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712426');
INSERT INTO `mh_dict` VALUES ('3773', '480', 'diqu', '横山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712427');
INSERT INTO `mh_dict` VALUES ('3774', '480', 'diqu', '北埔乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712428');
INSERT INTO `mh_dict` VALUES ('3775', '480', 'diqu', '宝山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712429');
INSERT INTO `mh_dict` VALUES ('3776', '480', 'diqu', '峨眉乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712430');
INSERT INTO `mh_dict` VALUES ('3777', '480', 'diqu', '尖石乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712431');
INSERT INTO `mh_dict` VALUES ('3778', '480', 'diqu', '五峰乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712432');
INSERT INTO `mh_dict` VALUES ('3779', '481', 'diqu', '苗栗市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712501');
INSERT INTO `mh_dict` VALUES ('3780', '481', 'diqu', '苑里镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712521');
INSERT INTO `mh_dict` VALUES ('3781', '481', 'diqu', '通霄镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712522');
INSERT INTO `mh_dict` VALUES ('3782', '481', 'diqu', '竹南镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712523');
INSERT INTO `mh_dict` VALUES ('3783', '481', 'diqu', '头份镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712524');
INSERT INTO `mh_dict` VALUES ('3784', '481', 'diqu', '后龙镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712525');
INSERT INTO `mh_dict` VALUES ('3785', '481', 'diqu', '卓兰镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712526');
INSERT INTO `mh_dict` VALUES ('3786', '481', 'diqu', '大湖乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712527');
INSERT INTO `mh_dict` VALUES ('3787', '481', 'diqu', '公馆乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712528');
INSERT INTO `mh_dict` VALUES ('3788', '481', 'diqu', '铜锣乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712529');
INSERT INTO `mh_dict` VALUES ('3789', '481', 'diqu', '南庄乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712530');
INSERT INTO `mh_dict` VALUES ('3790', '481', 'diqu', '头屋乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712531');
INSERT INTO `mh_dict` VALUES ('3791', '481', 'diqu', '三义乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712532');
INSERT INTO `mh_dict` VALUES ('3792', '481', 'diqu', '西湖乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712533');
INSERT INTO `mh_dict` VALUES ('3793', '481', 'diqu', '造桥乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712534');
INSERT INTO `mh_dict` VALUES ('3794', '481', 'diqu', '三湾乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712535');
INSERT INTO `mh_dict` VALUES ('3795', '481', 'diqu', '狮潭乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712536');
INSERT INTO `mh_dict` VALUES ('3796', '481', 'diqu', '泰安乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712537');
INSERT INTO `mh_dict` VALUES ('3797', '482', 'diqu', '彰化市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712701');
INSERT INTO `mh_dict` VALUES ('3798', '482', 'diqu', '鹿港镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712721');
INSERT INTO `mh_dict` VALUES ('3799', '482', 'diqu', '和美镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712722');
INSERT INTO `mh_dict` VALUES ('3800', '482', 'diqu', '线西乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712723');
INSERT INTO `mh_dict` VALUES ('3801', '482', 'diqu', '伸港乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712724');
INSERT INTO `mh_dict` VALUES ('3802', '482', 'diqu', '福兴乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712725');
INSERT INTO `mh_dict` VALUES ('3803', '482', 'diqu', '秀水乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712726');
INSERT INTO `mh_dict` VALUES ('3804', '482', 'diqu', '花坛乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712727');
INSERT INTO `mh_dict` VALUES ('3805', '482', 'diqu', '芬园乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712728');
INSERT INTO `mh_dict` VALUES ('3806', '482', 'diqu', '员林镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712729');
INSERT INTO `mh_dict` VALUES ('3807', '482', 'diqu', '溪湖镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712730');
INSERT INTO `mh_dict` VALUES ('3808', '482', 'diqu', '田中镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712731');
INSERT INTO `mh_dict` VALUES ('3809', '482', 'diqu', '大村乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712732');
INSERT INTO `mh_dict` VALUES ('3810', '482', 'diqu', '埔盐乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712733');
INSERT INTO `mh_dict` VALUES ('3811', '482', 'diqu', '埔心乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712734');
INSERT INTO `mh_dict` VALUES ('3812', '482', 'diqu', '永靖乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712735');
INSERT INTO `mh_dict` VALUES ('3813', '482', 'diqu', '社头乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712736');
INSERT INTO `mh_dict` VALUES ('3814', '482', 'diqu', '二水乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712737');
INSERT INTO `mh_dict` VALUES ('3815', '482', 'diqu', '北斗镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712738');
INSERT INTO `mh_dict` VALUES ('3816', '482', 'diqu', '二林镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712739');
INSERT INTO `mh_dict` VALUES ('3817', '482', 'diqu', '田尾乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712740');
INSERT INTO `mh_dict` VALUES ('3818', '482', 'diqu', '埤头乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712741');
INSERT INTO `mh_dict` VALUES ('3819', '482', 'diqu', '芳苑乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712742');
INSERT INTO `mh_dict` VALUES ('3820', '482', 'diqu', '大城乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712743');
INSERT INTO `mh_dict` VALUES ('3821', '482', 'diqu', '竹塘乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712744');
INSERT INTO `mh_dict` VALUES ('3822', '482', 'diqu', '溪州乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712745');
INSERT INTO `mh_dict` VALUES ('3823', '483', 'diqu', '南投市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712801');
INSERT INTO `mh_dict` VALUES ('3824', '483', 'diqu', '埔里镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712821');
INSERT INTO `mh_dict` VALUES ('3825', '483', 'diqu', '草屯镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712822');
INSERT INTO `mh_dict` VALUES ('3826', '483', 'diqu', '竹山镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712823');
INSERT INTO `mh_dict` VALUES ('3827', '483', 'diqu', '集集镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712824');
INSERT INTO `mh_dict` VALUES ('3828', '483', 'diqu', '名间乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712825');
INSERT INTO `mh_dict` VALUES ('3829', '483', 'diqu', '鹿谷乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712826');
INSERT INTO `mh_dict` VALUES ('3830', '483', 'diqu', '中寮乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712827');
INSERT INTO `mh_dict` VALUES ('3831', '483', 'diqu', '鱼池乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712828');
INSERT INTO `mh_dict` VALUES ('3832', '483', 'diqu', '国姓乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712829');
INSERT INTO `mh_dict` VALUES ('3833', '483', 'diqu', '水里乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712830');
INSERT INTO `mh_dict` VALUES ('3834', '483', 'diqu', '信义乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712831');
INSERT INTO `mh_dict` VALUES ('3835', '483', 'diqu', '仁爱乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712832');
INSERT INTO `mh_dict` VALUES ('3836', '484', 'diqu', '斗六市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712901');
INSERT INTO `mh_dict` VALUES ('3837', '484', 'diqu', '斗南镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712921');
INSERT INTO `mh_dict` VALUES ('3838', '484', 'diqu', '虎尾镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712922');
INSERT INTO `mh_dict` VALUES ('3839', '484', 'diqu', '西螺镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712923');
INSERT INTO `mh_dict` VALUES ('3840', '484', 'diqu', '土库镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712924');
INSERT INTO `mh_dict` VALUES ('3841', '484', 'diqu', '北港镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712925');
INSERT INTO `mh_dict` VALUES ('3842', '484', 'diqu', '古坑乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712926');
INSERT INTO `mh_dict` VALUES ('3843', '484', 'diqu', '大埤乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712927');
INSERT INTO `mh_dict` VALUES ('3844', '484', 'diqu', '莿桐乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712928');
INSERT INTO `mh_dict` VALUES ('3845', '484', 'diqu', '林内乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712929');
INSERT INTO `mh_dict` VALUES ('3846', '484', 'diqu', '二仑乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712930');
INSERT INTO `mh_dict` VALUES ('3847', '484', 'diqu', '仑背乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712931');
INSERT INTO `mh_dict` VALUES ('3848', '484', 'diqu', '麦寮乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712932');
INSERT INTO `mh_dict` VALUES ('3849', '484', 'diqu', '东势乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712933');
INSERT INTO `mh_dict` VALUES ('3850', '484', 'diqu', '褒忠乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712934');
INSERT INTO `mh_dict` VALUES ('3851', '484', 'diqu', '台西乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712935');
INSERT INTO `mh_dict` VALUES ('3852', '484', 'diqu', '元长乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712936');
INSERT INTO `mh_dict` VALUES ('3853', '484', 'diqu', '四湖乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712937');
INSERT INTO `mh_dict` VALUES ('3854', '484', 'diqu', '口湖乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712938');
INSERT INTO `mh_dict` VALUES ('3855', '484', 'diqu', '水林乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '712939');
INSERT INTO `mh_dict` VALUES ('3856', '485', 'diqu', '太保市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713001');
INSERT INTO `mh_dict` VALUES ('3857', '485', 'diqu', '朴子市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713002');
INSERT INTO `mh_dict` VALUES ('3858', '485', 'diqu', '布袋镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713023');
INSERT INTO `mh_dict` VALUES ('3859', '485', 'diqu', '大林镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713024');
INSERT INTO `mh_dict` VALUES ('3860', '485', 'diqu', '民雄乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713025');
INSERT INTO `mh_dict` VALUES ('3861', '485', 'diqu', '溪口乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713026');
INSERT INTO `mh_dict` VALUES ('3862', '485', 'diqu', '新港乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713027');
INSERT INTO `mh_dict` VALUES ('3863', '485', 'diqu', '六脚乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713028');
INSERT INTO `mh_dict` VALUES ('3864', '485', 'diqu', '东石乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713029');
INSERT INTO `mh_dict` VALUES ('3865', '485', 'diqu', '义竹乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713030');
INSERT INTO `mh_dict` VALUES ('3866', '485', 'diqu', '鹿草乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713031');
INSERT INTO `mh_dict` VALUES ('3867', '485', 'diqu', '水上乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713032');
INSERT INTO `mh_dict` VALUES ('3868', '485', 'diqu', '中埔乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713033');
INSERT INTO `mh_dict` VALUES ('3869', '485', 'diqu', '竹崎乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713034');
INSERT INTO `mh_dict` VALUES ('3870', '485', 'diqu', '梅山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713035');
INSERT INTO `mh_dict` VALUES ('3871', '485', 'diqu', '番路乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713036');
INSERT INTO `mh_dict` VALUES ('3872', '485', 'diqu', '大埔乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713037');
INSERT INTO `mh_dict` VALUES ('3873', '485', 'diqu', '阿里山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713038');
INSERT INTO `mh_dict` VALUES ('3874', '486', 'diqu', '屏东市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713301');
INSERT INTO `mh_dict` VALUES ('3875', '486', 'diqu', '潮州镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713321');
INSERT INTO `mh_dict` VALUES ('3876', '486', 'diqu', '东港镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713322');
INSERT INTO `mh_dict` VALUES ('3877', '486', 'diqu', '恒春镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713323');
INSERT INTO `mh_dict` VALUES ('3878', '486', 'diqu', '万丹乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713324');
INSERT INTO `mh_dict` VALUES ('3879', '486', 'diqu', '长治乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713325');
INSERT INTO `mh_dict` VALUES ('3880', '486', 'diqu', '麟洛乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713326');
INSERT INTO `mh_dict` VALUES ('3881', '486', 'diqu', '九如乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713327');
INSERT INTO `mh_dict` VALUES ('3882', '486', 'diqu', '里港乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713328');
INSERT INTO `mh_dict` VALUES ('3883', '486', 'diqu', '盐埔乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713329');
INSERT INTO `mh_dict` VALUES ('3884', '486', 'diqu', '高树乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713330');
INSERT INTO `mh_dict` VALUES ('3885', '486', 'diqu', '万峦乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713331');
INSERT INTO `mh_dict` VALUES ('3886', '486', 'diqu', '内埔乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713332');
INSERT INTO `mh_dict` VALUES ('3887', '486', 'diqu', '竹田乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713333');
INSERT INTO `mh_dict` VALUES ('3888', '486', 'diqu', '新埤乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713334');
INSERT INTO `mh_dict` VALUES ('3889', '486', 'diqu', '枋寮乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713335');
INSERT INTO `mh_dict` VALUES ('3890', '486', 'diqu', '新园乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713336');
INSERT INTO `mh_dict` VALUES ('3891', '486', 'diqu', '崁顶乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713337');
INSERT INTO `mh_dict` VALUES ('3892', '486', 'diqu', '林边乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713338');
INSERT INTO `mh_dict` VALUES ('3893', '486', 'diqu', '南州乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713339');
INSERT INTO `mh_dict` VALUES ('3894', '486', 'diqu', '佳冬乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713340');
INSERT INTO `mh_dict` VALUES ('3895', '486', 'diqu', '琉球乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713341');
INSERT INTO `mh_dict` VALUES ('3896', '486', 'diqu', '车城乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713342');
INSERT INTO `mh_dict` VALUES ('3897', '486', 'diqu', '满州乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713343');
INSERT INTO `mh_dict` VALUES ('3898', '486', 'diqu', '枋山乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713344');
INSERT INTO `mh_dict` VALUES ('3899', '486', 'diqu', '三地门乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713345');
INSERT INTO `mh_dict` VALUES ('3900', '486', 'diqu', '雾台乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713346');
INSERT INTO `mh_dict` VALUES ('3901', '486', 'diqu', '玛家乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713347');
INSERT INTO `mh_dict` VALUES ('3902', '486', 'diqu', '泰武乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713348');
INSERT INTO `mh_dict` VALUES ('3903', '486', 'diqu', '来义乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713349');
INSERT INTO `mh_dict` VALUES ('3904', '486', 'diqu', '春日乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713350');
INSERT INTO `mh_dict` VALUES ('3905', '486', 'diqu', '狮子乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713351');
INSERT INTO `mh_dict` VALUES ('3906', '486', 'diqu', '牡丹乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713352');
INSERT INTO `mh_dict` VALUES ('3907', '487', 'diqu', '台东市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713401');
INSERT INTO `mh_dict` VALUES ('3908', '487', 'diqu', '成功镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713421');
INSERT INTO `mh_dict` VALUES ('3909', '487', 'diqu', '关山镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713422');
INSERT INTO `mh_dict` VALUES ('3910', '487', 'diqu', '卑南乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713423');
INSERT INTO `mh_dict` VALUES ('3911', '487', 'diqu', '鹿野乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713424');
INSERT INTO `mh_dict` VALUES ('3912', '487', 'diqu', '池上乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713425');
INSERT INTO `mh_dict` VALUES ('3913', '487', 'diqu', '东河乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713426');
INSERT INTO `mh_dict` VALUES ('3914', '487', 'diqu', '长滨乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713427');
INSERT INTO `mh_dict` VALUES ('3915', '487', 'diqu', '太麻里乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713428');
INSERT INTO `mh_dict` VALUES ('3916', '487', 'diqu', '大武乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713429');
INSERT INTO `mh_dict` VALUES ('3917', '487', 'diqu', '绿岛乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713430');
INSERT INTO `mh_dict` VALUES ('3918', '487', 'diqu', '海端乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713431');
INSERT INTO `mh_dict` VALUES ('3919', '487', 'diqu', '延平乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713432');
INSERT INTO `mh_dict` VALUES ('3920', '487', 'diqu', '金峰乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713433');
INSERT INTO `mh_dict` VALUES ('3921', '487', 'diqu', '达仁乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713434');
INSERT INTO `mh_dict` VALUES ('3922', '487', 'diqu', '兰屿乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713435');
INSERT INTO `mh_dict` VALUES ('3923', '488', 'diqu', '花莲市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713501');
INSERT INTO `mh_dict` VALUES ('3924', '488', 'diqu', '凤林镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713521');
INSERT INTO `mh_dict` VALUES ('3925', '488', 'diqu', '玉里镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713522');
INSERT INTO `mh_dict` VALUES ('3926', '488', 'diqu', '新城乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713523');
INSERT INTO `mh_dict` VALUES ('3927', '488', 'diqu', '吉安乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713524');
INSERT INTO `mh_dict` VALUES ('3928', '488', 'diqu', '寿丰乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713525');
INSERT INTO `mh_dict` VALUES ('3929', '488', 'diqu', '光复乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713526');
INSERT INTO `mh_dict` VALUES ('3930', '488', 'diqu', '丰滨乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713527');
INSERT INTO `mh_dict` VALUES ('3931', '488', 'diqu', '瑞穗乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713528');
INSERT INTO `mh_dict` VALUES ('3932', '488', 'diqu', '富里乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713529');
INSERT INTO `mh_dict` VALUES ('3933', '488', 'diqu', '秀林乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713530');
INSERT INTO `mh_dict` VALUES ('3934', '488', 'diqu', '万荣乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713531');
INSERT INTO `mh_dict` VALUES ('3935', '488', 'diqu', '卓溪乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713532');
INSERT INTO `mh_dict` VALUES ('3936', '489', 'diqu', '马公市', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713601');
INSERT INTO `mh_dict` VALUES ('3937', '489', 'diqu', '湖西乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713621');
INSERT INTO `mh_dict` VALUES ('3938', '489', 'diqu', '白沙乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713622');
INSERT INTO `mh_dict` VALUES ('3939', '489', 'diqu', '西屿乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713623');
INSERT INTO `mh_dict` VALUES ('3940', '489', 'diqu', '望安乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713624');
INSERT INTO `mh_dict` VALUES ('3941', '489', 'diqu', '七美乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713625');
INSERT INTO `mh_dict` VALUES ('3942', '490', 'diqu', '金城镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713701');
INSERT INTO `mh_dict` VALUES ('3943', '490', 'diqu', '金湖镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713702');
INSERT INTO `mh_dict` VALUES ('3944', '490', 'diqu', '金沙镇', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713703');
INSERT INTO `mh_dict` VALUES ('3945', '490', 'diqu', '金宁乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713704');
INSERT INTO `mh_dict` VALUES ('3946', '490', 'diqu', '烈屿乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713705');
INSERT INTO `mh_dict` VALUES ('3947', '490', 'diqu', '乌丘乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713706');
INSERT INTO `mh_dict` VALUES ('3948', '491', 'diqu', '南竿乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713801');
INSERT INTO `mh_dict` VALUES ('3949', '491', 'diqu', '北竿乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713802');
INSERT INTO `mh_dict` VALUES ('3950', '491', 'diqu', '莒光乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713803');
INSERT INTO `mh_dict` VALUES ('3951', '491', 'diqu', '东引乡', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '713804');
INSERT INTO `mh_dict` VALUES ('3952', '492', 'diqu', '中西区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810101');
INSERT INTO `mh_dict` VALUES ('3953', '492', 'diqu', '湾仔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810102');
INSERT INTO `mh_dict` VALUES ('3954', '492', 'diqu', '东区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810103');
INSERT INTO `mh_dict` VALUES ('3955', '492', 'diqu', '南区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810104');
INSERT INTO `mh_dict` VALUES ('3956', '493', 'diqu', '油尖旺区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810201');
INSERT INTO `mh_dict` VALUES ('3957', '493', 'diqu', '深水埗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810202');
INSERT INTO `mh_dict` VALUES ('3958', '493', 'diqu', '九龙城区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810203');
INSERT INTO `mh_dict` VALUES ('3959', '493', 'diqu', '黄大仙区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810204');
INSERT INTO `mh_dict` VALUES ('3960', '493', 'diqu', '观塘区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810205');
INSERT INTO `mh_dict` VALUES ('3961', '494', 'diqu', '荃湾区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810301');
INSERT INTO `mh_dict` VALUES ('3962', '494', 'diqu', '屯门区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810302');
INSERT INTO `mh_dict` VALUES ('3963', '494', 'diqu', '元朗区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810303');
INSERT INTO `mh_dict` VALUES ('3964', '494', 'diqu', '北区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810304');
INSERT INTO `mh_dict` VALUES ('3965', '494', 'diqu', '大埔区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810305');
INSERT INTO `mh_dict` VALUES ('3966', '494', 'diqu', '西贡区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810306');
INSERT INTO `mh_dict` VALUES ('3967', '494', 'diqu', '沙田区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810307');
INSERT INTO `mh_dict` VALUES ('3968', '494', 'diqu', '葵青区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810308');
INSERT INTO `mh_dict` VALUES ('3969', '494', 'diqu', '离岛区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '810309');
INSERT INTO `mh_dict` VALUES ('3970', '495', 'diqu', '花地玛堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820101');
INSERT INTO `mh_dict` VALUES ('3971', '495', 'diqu', '圣安多尼堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820102');
INSERT INTO `mh_dict` VALUES ('3972', '495', 'diqu', '大堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820103');
INSERT INTO `mh_dict` VALUES ('3973', '495', 'diqu', '望德堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820104');
INSERT INTO `mh_dict` VALUES ('3974', '495', 'diqu', '风顺堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820105');
INSERT INTO `mh_dict` VALUES ('3975', '496', 'diqu', '嘉模堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820201');
INSERT INTO `mh_dict` VALUES ('3976', '497', 'diqu', '圣方济各堂区', '地区', '1', '2019-02-23 18:09:22', '1', 'admin', null, null, null, '820301');
INSERT INTO `mh_dict` VALUES ('3977', '54', 'caiwuleibieout', '按揭/房租', '财务类别(支出)', '1', '2019-02-24 22:11:00', '1', 'admin', null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='财务信息记录表';

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
INSERT INTO `mh_finance` VALUES ('19', '1', '1', '100.00', '37', '2019-02-04 00:00:00', '过年给的红包', '1', '2019-02-04 16:34:29', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('20', '1', '1', '7100.00', '33', '2019-02-04 00:00:00', '正常发工资', '1', '2019-02-04 16:45:17', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('21', '1', '1', '7000.00', '33', '2019-02-04 00:00:00', '又发工资了', '1', '2019-02-04 16:45:49', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('22', '1', '0', '12.50', '31', '2019-02-04 00:00:00', '买菜买菜', '1', '2019-02-04 17:04:29', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('23', '1', '1', '150.00', '37', '2019-02-04 00:00:00', '又给了个红包', '1', '2019-02-04 17:05:23', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('29', '1', '0', '102.10', '31', '2019-02-17 00:00:00', '华联超市购物', '1', '2019-02-17 21:51:59', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('30', '1', '0', '31.50', '31', '2019-02-22 00:00:00', '晚饭', '1', '2019-02-22 22:30:27', '1', 'admin', null, null, null);
INSERT INTO `mh_finance` VALUES ('31', '1', '0', '89.00', '31', '2019-02-24 00:00:00', '晚饭, 吃的火锅', '1', '2019-02-24 20:50:41', '1', 'admin', null, null, null);

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
  `groupid` int(8) DEFAULT NULL COMMENT '用户组主键',
  `hcode` varchar(100) DEFAULT NULL COMMENT '使用加密后的字符串生成',
  `community` varchar(50) DEFAULT NULL COMMENT '小区名称',
  `hname` varchar(50) DEFAULT NULL COMMENT '家庭昵称(比如超级无敌五好家庭)',
  `address` varchar(300) DEFAULT NULL COMMENT '小区所在的详细地址(几号楼等...)',
  `living` int(4) DEFAULT NULL COMMENT '启用标志, 当时是否正在使用',
  `province` int(8) DEFAULT NULL COMMENT '省',
  `city` int(8) DEFAULT NULL COMMENT '市',
  `area` int(8) DEFAULT NULL COMMENT '区县',
  `begintime` datetime DEFAULT NULL COMMENT '开始入住的时间',
  `endtime` datetime DEFAULT NULL COMMENT '离开的时间',
  `status` int(4) DEFAULT NULL COMMENT '有效标志',
  `createtime` datetime DEFAULT NULL COMMENT '创建日期',
  `creator` int(8) DEFAULT NULL COMMENT '创建人',
  `createname` varchar(50) DEFAULT NULL COMMENT '创建人名称',
  `updatetime` datetime DEFAULT NULL COMMENT '修改日期',
  `updator` int(8) DEFAULT NULL COMMENT '修改人',
  `updatename` varchar(50) DEFAULT NULL COMMENT '修改人名称',
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='记录住房和租房信息的';

-- ----------------------------
-- Records of mh_homes
-- ----------------------------
INSERT INTO `mh_homes` VALUES ('1', '17', null, '名仕城', '汉企临时根据地', '名仕城4号楼702', '0', '76', '262', '1883', '2017-11-05 00:00:00', '2018-07-01 00:00:00', '1', '2019-02-24 11:47:04', '1', 'admin', '2019-02-24 18:03:11', '1', 'admin');
INSERT INTO `mh_homes` VALUES ('2', '17', null, '盛福家园', '革命根据地', '盛福家园北区23号楼1单元401', '1', '76', '260', '1865', '2018-07-25 00:00:00', null, '1', '2019-02-24 15:24:15', '1', 'admin', '2019-02-24 18:03:47', '1', 'admin');
INSERT INTO `mh_homes` VALUES ('3', '17', null, '忘了', '', '', '0', '76', '262', '1883', '2016-05-01 00:00:00', '2017-05-01 00:00:00', '1', '2019-02-24 18:08:41', '1', 'admin', null, null, null);
INSERT INTO `mh_homes` VALUES ('4', '17', null, '故宫', '小分队', '北京故宫大雄宝殿', '0', '62', '125', '638', '2012-06-20 00:00:00', '2014-08-24 00:00:00', '1', '2019-02-24 21:00:18', '1', 'admin', null, null, null);
INSERT INTO `mh_homes` VALUES ('5', '19', null, '齐盛花园', '小萝卜', '大师傅赶得上告诉人家给你所想的v白色的受到广泛和手感还是人工湖如果', '1', '67', '165', '1100', '2019-02-24 00:00:00', '2019-11-14 00:00:00', '1', '2019-02-24 21:04:00', '15', 'xiaozi', null, null, null);

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
  `groupid` int(8) DEFAULT NULL COMMENT '该用户组下的所有用户都能看到',
  `ptype` int(8) DEFAULT NULL COMMENT '关联字典表mh_dict中diccode为caiwuleibieout的主键是28, 29, 30, 45, 55',
  `cash` double(10,2) DEFAULT NULL COMMENT '多少钱',
  `prodate` datetime DEFAULT NULL COMMENT '发生日期',
  `transfer` int(4) DEFAULT NULL COMMENT '1:转账; 2:现金',
  `userid` int(8) DEFAULT NULL COMMENT '缴费人',
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

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
INSERT INTO `mh_menu` VALUES ('9', '7', '家庭留言本', '', 'fa fa-rocket', '4', '0', '1', null, null, null, '2019-02-23 10:33:46', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('10', '0', '大事记', '', 'fa fa-tags', '4', '0', '1', null, null, null, '2018-12-23 12:54:53', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('11', '0', '财政信息', '', 'fa fa-database', '5', '1', '1', null, null, null, '2019-01-09 22:47:52', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('12', '11', '收入记录', '/finance/in', 'fa fa-wheelchair', '2', '0', '1', null, null, null, '2019-01-28 22:08:33', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('13', '11', '支出记录', '/finance/out', 'fa fa-wheelchair-alt', '3', '0', '1', null, null, null, '2019-01-28 22:08:41', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('14', '11', '统计视图', '/finance/view', 'fa fa-line-chart', '1', '0', '1', null, null, null, '2019-01-28 22:44:57', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('15', '0', '旅行计划', '', 'fa fa-train', '6', '1', '1', null, null, null, '2018-12-23 12:54:56', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('16', '15', '旅行记录', '', 'fa fa-map', '2', '0', '1', null, null, null, '2018-12-23 13:11:42', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('17', '15', '旅行日记', '', 'fa fa-file-text', '1', '0', '1', null, null, null, '2018-12-23 13:11:38', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('18', '0', '我的奏折', '', 'fa fa-black-tie', '7', '0', '1', null, null, null, '2019-01-07 13:39:46', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('19', '0', '系统设置', '', 'fa fa-gears', '8', '1', '1', null, null, null, '2019-02-09 11:13:42', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('20', '19', '菜单管理', '/mhmenu/list', 'fa fa-list', '3', '0', '1', null, null, null, '2019-02-09 11:24:49', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('21', '19', '用户管理', '/mhusers/list', 'fa fa-grav', '1', '0', '1', null, null, null, '2018-12-24 22:23:38', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('23', '19', '流程定义', '', 'fa fa-ravelry', '5', '0', '1', null, null, null, '2018-12-24 22:25:08', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('31', '19', '字典管理', '/dict/list', 'fa fa-paper-plane', '4', '0', '1', null, null, null, '2019-01-03 23:22:35', '1', 'zhaodashuai');
INSERT INTO `mh_menu` VALUES ('32', '19', '测试页面', '/mh/test', 'fa fa-ambulance', '6', '0', '0', null, null, null, null, null, null);
INSERT INTO `mh_menu` VALUES ('43', '7', '租住房费用', '/outlay/list', 'fa fa-cny', '2', '0', '1', '2019-01-26 21:04:36', '1', 'admin', '2019-02-22 23:08:04', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('48', '19', '用户组管理', '/group/list', 'fa fa-users', '2', '0', '1', '2019-02-09 08:42:31', '1', 'admin', '2019-02-09 11:14:05', '1', 'admin');
INSERT INTO `mh_menu` VALUES ('51', '17', '新的菜单', null, 'fa fa-circle', null, '0', '0', '2019-02-17 22:08:01', '1', 'admin', null, null, null);
INSERT INTO `mh_menu` VALUES ('52', '7', '历史地址', '/homes/index', 'fa fa-heart', '3', '0', '1', '2019-02-23 10:33:08', '1', 'admin', '2019-02-23 11:10:58', '1', 'admin');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='系统用户表';

-- ----------------------------
-- Records of mh_users
-- ----------------------------
INSERT INTO `mh_users` VALUES ('1', 'admin', '87D9BB400C0634691F0E3BAAF1E2FD0D', '赵大帅', null, '1', '17', '1', '1', '2018-12-06 23:10:46', '0', 'GOD', '2018-12-16 14:37:26', '1', 'zhaodashuai');
INSERT INTO `mh_users` VALUES ('13', 'xiaohuang', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小黄', null, '0', '21', '0', '1', '2019-01-06 23:00:42', '1', 'zhaodashuai', '2019-02-09 20:39:00', '1', 'admin');
INSERT INTO `mh_users` VALUES ('14', 'xiaolv', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小绿', null, '0', '18', '1', '1', '2019-01-06 23:01:11', '1', 'zhaodashuai', '2019-02-09 14:25:18', '1', 'admin');
INSERT INTO `mh_users` VALUES ('15', 'xiaozi', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小紫', null, '0', '19', '1', '1', '2019-01-06 23:02:22', '1', 'admin', '2019-02-09 14:25:08', '1', 'admin');
INSERT INTO `mh_users` VALUES ('16', 'xiaohong', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小红', null, '0', '18', '0', '1', '2019-01-07 15:24:30', '1', 'admin', '2019-02-09 14:25:04', '1', 'admin');
INSERT INTO `mh_users` VALUES ('17', 'xiaocheng2', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小橙', null, '0', '17', '0', '1', '2019-01-07 15:24:45', '1', 'admin', '2019-02-09 14:25:00', '1', 'admin');
INSERT INTO `mh_users` VALUES ('18', 'xiaoqing', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小青', null, '0', null, '1', '0', '2019-01-07 15:24:58', '1', 'admin', '2019-01-27 19:44:17', '1', 'admin');
INSERT INTO `mh_users` VALUES ('19', 'xiaolan', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小兰', null, '0', '19', '1', '1', '2019-01-07 15:25:07', '1', 'admin', '2019-02-24 21:05:14', '1', 'admin');
INSERT INTO `mh_users` VALUES ('20', 'xiaoshi', '87D9BB400C0634691F0E3BAAF1E2FD0D', '小屎', null, '0', '17', '1', '1', '2019-01-07 15:25:32', '1', 'admin', '2019-02-09 14:23:48', '1', 'admin');
INSERT INTO `mh_users` VALUES ('21', 'Android', '87D9BB400C0634691F0E3BAAF1E2FD0D', '安卓', null, '0', '20', '0', '1', '2019-01-25 21:37:01', '1', 'admin', '2019-02-09 14:24:56', '1', 'admin');
INSERT INTO `mh_users` VALUES ('22', 'zhifou', '87D9BB400C0634691F0E3BAAF1E2FD0D', '知否', null, '0', '18', '1', '1', '2019-01-27 19:43:58', '1', 'admin', '2019-02-09 14:02:50', '1', 'admin');
INSERT INTO `mh_users` VALUES ('24', 'baimuda', '87D9BB400C0634691F0E3BAAF1E2FD0D', '百慕大', null, '0', '20', '1', '1', '2019-01-28 23:09:26', '1', 'admin', '2019-02-09 14:24:51', '1', 'admin');
INSERT INTO `mh_users` VALUES ('25', 'wangxh', '87D9BB400C0634691F0E3BAAF1E2FD0D', '王献涵', null, '0', '17', '1', '1', '2019-02-09 14:25:51', '1', 'admin', null, null, null);
INSERT INTO `mh_users` VALUES ('26', 'wangxh2', '87D9BB400C0634691F0E3BAAF1E2FD0D', '王献涵2', null, '0', '17', '1', '0', '2019-02-09 14:28:20', '1', 'admin', '2019-02-09 14:28:24', '1', 'admin');

-- ----------------------------
-- Table structure for mh_users_group
-- ----------------------------
DROP TABLE IF EXISTS `mh_users_group`;
CREATE TABLE `mh_users_group` (
  `ids` int(8) NOT NULL AUTO_INCREMENT,
  `master` int(8) DEFAULT NULL COMMENT '户主',
  `groupcode` varchar(300) DEFAULT NULL COMMENT '群组编号',
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='记录一个家庭用户群体';

-- ----------------------------
-- Records of mh_users_group
-- ----------------------------
INSERT INTO `mh_users_group` VALUES ('17', '1', 'uLSz8NXfwarDyw==', '复仇者联盟', null, '1', '2019-02-09 13:46:52', '1', 'admin', '2019-02-22 22:35:51', '1', 'admin');
INSERT INTO `mh_users_group` VALUES ('18', '14', 'yMzV38nxueo=', '忍者神龟', null, '1', '2019-02-09 13:46:58', '1', 'admin', '2019-02-09 20:53:39', '1', 'admin');
INSERT INTO `mh_users_group` VALUES ('19', '15', 'tuvh0sXJ', '峨嵋派', null, '1', '2019-02-09 13:47:04', '1', 'admin', '2019-02-09 21:10:56', '1', 'admin');
INSERT INTO `mh_users_group` VALUES ('20', '24', 'v8a1z8q10enK0g==', '科迪实验室', null, '1', '2019-02-09 13:47:15', '1', 'admin', '2019-02-09 21:09:48', '1', 'admin');
INSERT INTO `mh_users_group` VALUES ('21', '13', 'sNTM7Lui', '霸天虎', null, '1', '2019-02-09 20:38:25', '1', 'admin', '2019-02-09 20:49:29', '1', 'admin');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='用户菜单表';

-- ----------------------------
-- Records of mh_user_menu
-- ----------------------------
INSERT INTO `mh_user_menu` VALUES ('1', '25', '7', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('2', '25', '8', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('3', '25', '9', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('6', '25', '43', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('7', '25', '1', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('8', '25', '3', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('9', '25', '4', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('10', '25', '5', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('11', '25', '6', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('12', '25', '48', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('13', '25', '19', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('14', '25', '20', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('15', '25', '21', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('16', '25', '23', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('17', '25', '31', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('18', '25', '52', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('19', '15', '52', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('20', '15', '7', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('21', '19', '52', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('22', '19', '7', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('23', '19', '8', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('24', '19', '9', null, null, null, null, null, null);
INSERT INTO `mh_user_menu` VALUES ('25', '19', '43', null, null, null, null, null, null);

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
