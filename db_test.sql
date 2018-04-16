/*
Navicat MySQL Data Transfer

Source Server         : local_MySQL
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : db_test

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2018-04-16 18:48:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='市级信息';

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '石家庄', '河北');
INSERT INTO `city` VALUES ('2', '邯郸', '河北');

-- ----------------------------
-- Table structure for t_country
-- ----------------------------
DROP TABLE IF EXISTS `t_country`;
CREATE TABLE `t_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `country_name` varchar(255) DEFAULT NULL COMMENT '名称',
  `country_code` varchar(255) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COMMENT='国家信息';

-- ----------------------------
-- Records of t_country
-- ----------------------------
INSERT INTO `t_country` VALUES ('1', 'Angola', 'AO');
INSERT INTO `t_country` VALUES ('2', 'Afghanistan', 'AF');
INSERT INTO `t_country` VALUES ('3', 'Albania', 'AL');
INSERT INTO `t_country` VALUES ('4', 'Algeria', 'DZ');
INSERT INTO `t_country` VALUES ('5', 'Andorra', 'AD');
INSERT INTO `t_country` VALUES ('6', 'Anguilla', 'AI');
INSERT INTO `t_country` VALUES ('7', 'Antigua and Barbuda', 'AG');
INSERT INTO `t_country` VALUES ('8', 'Argentina', 'AR');
INSERT INTO `t_country` VALUES ('9', 'Armenia', 'AM');
INSERT INTO `t_country` VALUES ('10', 'Australia', 'AU');
INSERT INTO `t_country` VALUES ('11', 'Austria', 'AT');
INSERT INTO `t_country` VALUES ('12', 'Azerbaijan', 'AZ');
INSERT INTO `t_country` VALUES ('13', 'Bahamas', 'BS');
INSERT INTO `t_country` VALUES ('14', 'Bahrain', 'BH');
INSERT INTO `t_country` VALUES ('15', 'Bangladesh', 'BD');
INSERT INTO `t_country` VALUES ('16', 'Barbados', 'BB');
INSERT INTO `t_country` VALUES ('17', 'Belarus', 'BY');
INSERT INTO `t_country` VALUES ('18', 'Belgium', 'BE');
INSERT INTO `t_country` VALUES ('19', 'Belize', 'BZ');
INSERT INTO `t_country` VALUES ('20', 'Benin', 'BJ');
INSERT INTO `t_country` VALUES ('21', 'Bermuda Is.', 'BM');
INSERT INTO `t_country` VALUES ('22', 'Bolivia', 'BO');
INSERT INTO `t_country` VALUES ('23', 'Botswana', 'BW');
INSERT INTO `t_country` VALUES ('24', 'Brazil', 'BR');
INSERT INTO `t_country` VALUES ('25', 'Brunei', 'BN');
INSERT INTO `t_country` VALUES ('26', 'Bulgaria', 'BG');
INSERT INTO `t_country` VALUES ('27', 'Burkina-faso', 'BF');
INSERT INTO `t_country` VALUES ('28', 'Burma', 'MM');
INSERT INTO `t_country` VALUES ('29', 'Burundi', 'BI');
INSERT INTO `t_country` VALUES ('30', 'Cameroon', 'CM');
INSERT INTO `t_country` VALUES ('31', 'Canada', 'CA');
INSERT INTO `t_country` VALUES ('32', 'Central African Republic', 'CF');
INSERT INTO `t_country` VALUES ('33', 'Chad', 'TD');
INSERT INTO `t_country` VALUES ('34', 'Chile', 'CL');
INSERT INTO `t_country` VALUES ('35', 'China', 'CN');
INSERT INTO `t_country` VALUES ('36', 'Colombia', 'CO');
INSERT INTO `t_country` VALUES ('37', 'Congo', 'CG');
INSERT INTO `t_country` VALUES ('38', 'Cook Is.', 'CK');
INSERT INTO `t_country` VALUES ('39', 'Costa Rica', 'CR');
INSERT INTO `t_country` VALUES ('40', 'Cuba', 'CU');
INSERT INTO `t_country` VALUES ('41', 'Cyprus', 'CY');
INSERT INTO `t_country` VALUES ('42', 'Czech Republic', 'CZ');
INSERT INTO `t_country` VALUES ('43', 'Denmark', 'DK');
INSERT INTO `t_country` VALUES ('44', 'Djibouti', 'DJ');
INSERT INTO `t_country` VALUES ('45', 'Dominica Rep.', 'DO');
INSERT INTO `t_country` VALUES ('46', 'Ecuador', 'EC');
INSERT INTO `t_country` VALUES ('47', 'Egypt', 'EG');
INSERT INTO `t_country` VALUES ('48', 'EI Salvador', 'SV');
INSERT INTO `t_country` VALUES ('49', 'Estonia', 'EE');
INSERT INTO `t_country` VALUES ('50', 'Ethiopia', 'ET');
INSERT INTO `t_country` VALUES ('51', 'Fiji', 'FJ');
INSERT INTO `t_country` VALUES ('52', 'Finland', 'FI');
INSERT INTO `t_country` VALUES ('53', 'France', 'FR');
INSERT INTO `t_country` VALUES ('54', 'French Guiana', 'GF');
INSERT INTO `t_country` VALUES ('55', 'Gabon', 'GA');
INSERT INTO `t_country` VALUES ('56', 'Gambia', 'GM');
INSERT INTO `t_country` VALUES ('57', 'Georgia', 'GE');
INSERT INTO `t_country` VALUES ('58', 'Germany', 'DE');
INSERT INTO `t_country` VALUES ('59', 'Ghana', 'GH');
INSERT INTO `t_country` VALUES ('60', 'Gibraltar', 'GI');
INSERT INTO `t_country` VALUES ('61', 'Greece', 'GR');
INSERT INTO `t_country` VALUES ('62', 'Grenada', 'GD');
INSERT INTO `t_country` VALUES ('63', 'Guam', 'GU');
INSERT INTO `t_country` VALUES ('64', 'Guatemala', 'GT');
INSERT INTO `t_country` VALUES ('65', 'Guinea', 'GN');
INSERT INTO `t_country` VALUES ('66', 'Guyana', 'GY');
INSERT INTO `t_country` VALUES ('67', 'Haiti', 'HT');
INSERT INTO `t_country` VALUES ('68', 'Honduras', 'HN');
INSERT INTO `t_country` VALUES ('69', 'Hongkong', 'HK');
INSERT INTO `t_country` VALUES ('70', 'Hungary', 'HU');
INSERT INTO `t_country` VALUES ('71', 'Iceland', 'IS');
INSERT INTO `t_country` VALUES ('72', 'India', 'IN');
INSERT INTO `t_country` VALUES ('73', 'Indonesia', 'ID');
INSERT INTO `t_country` VALUES ('74', 'Iran', 'IR');
INSERT INTO `t_country` VALUES ('75', 'Iraq', 'IQ');
INSERT INTO `t_country` VALUES ('76', 'Ireland', 'IE');
INSERT INTO `t_country` VALUES ('77', 'Israel', 'IL');
INSERT INTO `t_country` VALUES ('78', 'Italy', 'IT');
INSERT INTO `t_country` VALUES ('79', 'Jamaica', 'JM');
INSERT INTO `t_country` VALUES ('80', 'Japan', 'JP');
INSERT INTO `t_country` VALUES ('81', 'Jordan', 'JO');
INSERT INTO `t_country` VALUES ('82', 'Kampuchea (Cambodia )', 'KH');
INSERT INTO `t_country` VALUES ('83', 'Kazakstan', 'KZ');
INSERT INTO `t_country` VALUES ('84', 'Kenya', 'KE');
INSERT INTO `t_country` VALUES ('85', 'Korea', 'KR');
INSERT INTO `t_country` VALUES ('86', 'Kuwait', 'KW');
INSERT INTO `t_country` VALUES ('87', 'Kyrgyzstan', 'KG');
INSERT INTO `t_country` VALUES ('88', 'Laos', 'LA');
INSERT INTO `t_country` VALUES ('89', 'Latvia', 'LV');
INSERT INTO `t_country` VALUES ('90', 'Lebanon', 'LB');
INSERT INTO `t_country` VALUES ('91', 'Lesotho', 'LS');
INSERT INTO `t_country` VALUES ('92', 'Liberia', 'LR');
INSERT INTO `t_country` VALUES ('93', 'Libya', 'LY');
INSERT INTO `t_country` VALUES ('94', 'Liechtenstein', 'LI');
INSERT INTO `t_country` VALUES ('95', 'Lithuania', 'LT');
INSERT INTO `t_country` VALUES ('96', 'Luxembourg', 'LU');
INSERT INTO `t_country` VALUES ('97', 'Macao', 'MO');
INSERT INTO `t_country` VALUES ('98', 'Madagascar', 'MG');
INSERT INTO `t_country` VALUES ('99', 'Malawi', 'MW');
INSERT INTO `t_country` VALUES ('100', 'Malaysia', 'MY');
INSERT INTO `t_country` VALUES ('101', 'Maldives', 'MV');
INSERT INTO `t_country` VALUES ('102', 'Mali', 'ML');
INSERT INTO `t_country` VALUES ('103', 'Malta', 'MT');
INSERT INTO `t_country` VALUES ('104', 'Mauritius', 'MU');
INSERT INTO `t_country` VALUES ('105', 'Mexico', 'MX');
INSERT INTO `t_country` VALUES ('106', 'Moldova, Republic of', 'MD');
INSERT INTO `t_country` VALUES ('107', 'Monaco', 'MC');
INSERT INTO `t_country` VALUES ('108', 'Mongolia', 'MN');
INSERT INTO `t_country` VALUES ('109', 'Montserrat Is', 'MS');
INSERT INTO `t_country` VALUES ('110', 'Morocco', 'MA');
INSERT INTO `t_country` VALUES ('111', 'Mozambique', 'MZ');
INSERT INTO `t_country` VALUES ('112', 'Namibia', 'NA');
INSERT INTO `t_country` VALUES ('113', 'Nauru', 'NR');
INSERT INTO `t_country` VALUES ('114', 'Nepal', 'NP');
INSERT INTO `t_country` VALUES ('115', 'Netherlands', 'NL');
INSERT INTO `t_country` VALUES ('116', 'New Zealand', 'NZ');
INSERT INTO `t_country` VALUES ('117', 'Nicaragua', 'NI');
INSERT INTO `t_country` VALUES ('118', 'Niger', 'NE');
INSERT INTO `t_country` VALUES ('119', 'Nigeria', 'NG');
INSERT INTO `t_country` VALUES ('120', 'North Korea', 'KP');
INSERT INTO `t_country` VALUES ('121', 'Norway', 'NO');
INSERT INTO `t_country` VALUES ('122', 'Oman', 'OM');
INSERT INTO `t_country` VALUES ('123', 'Pakistan', 'PK');
INSERT INTO `t_country` VALUES ('124', 'Panama', 'PA');
INSERT INTO `t_country` VALUES ('125', 'Papua New Cuinea', 'PG');
INSERT INTO `t_country` VALUES ('126', 'Paraguay', 'PY');
INSERT INTO `t_country` VALUES ('127', 'Peru', 'PE');
INSERT INTO `t_country` VALUES ('128', 'Philippines', 'PH');
INSERT INTO `t_country` VALUES ('129', 'Poland', 'PL');
INSERT INTO `t_country` VALUES ('130', 'French Polynesia', 'PF');
INSERT INTO `t_country` VALUES ('131', 'Portugal', 'PT');
INSERT INTO `t_country` VALUES ('132', 'Puerto Rico', 'PR');
INSERT INTO `t_country` VALUES ('133', 'Qatar', 'QA');
INSERT INTO `t_country` VALUES ('134', 'Romania', 'RO');
INSERT INTO `t_country` VALUES ('135', 'Russia', 'RU');
INSERT INTO `t_country` VALUES ('136', 'Saint Lueia', 'LC');
INSERT INTO `t_country` VALUES ('137', 'Saint Vincent', 'VC');
INSERT INTO `t_country` VALUES ('138', 'San Marino', 'SM');
INSERT INTO `t_country` VALUES ('139', 'Sao Tome and Principe', 'ST');
INSERT INTO `t_country` VALUES ('140', 'Saudi Arabia', 'SA');
INSERT INTO `t_country` VALUES ('141', 'Senegal', 'SN');
INSERT INTO `t_country` VALUES ('142', 'Seychelles', 'SC');
INSERT INTO `t_country` VALUES ('143', 'Sierra Leone', 'SL');
INSERT INTO `t_country` VALUES ('144', 'Singapore', 'SG');
INSERT INTO `t_country` VALUES ('145', 'Slovakia', 'SK');
INSERT INTO `t_country` VALUES ('146', 'Slovenia', 'SI');
INSERT INTO `t_country` VALUES ('147', 'Solomon Is', 'SB');
INSERT INTO `t_country` VALUES ('148', 'Somali', 'SO');
INSERT INTO `t_country` VALUES ('149', 'South Africa', 'ZA');
INSERT INTO `t_country` VALUES ('150', 'Spain', 'ES');
INSERT INTO `t_country` VALUES ('151', 'Sri Lanka', 'LK');
INSERT INTO `t_country` VALUES ('152', 'St.Lucia', 'LC');
INSERT INTO `t_country` VALUES ('153', 'St.Vincent', 'VC');
INSERT INTO `t_country` VALUES ('154', 'Sudan', 'SD');
INSERT INTO `t_country` VALUES ('155', 'Suriname', 'SR');
INSERT INTO `t_country` VALUES ('156', 'Swaziland', 'SZ');
INSERT INTO `t_country` VALUES ('157', 'Sweden', 'SE');
INSERT INTO `t_country` VALUES ('158', 'Switzerland', 'CH');
INSERT INTO `t_country` VALUES ('159', 'Syria', 'SY');
INSERT INTO `t_country` VALUES ('160', 'Taiwan', 'TW');
INSERT INTO `t_country` VALUES ('161', 'Tajikstan', 'TJ');
INSERT INTO `t_country` VALUES ('162', 'Tanzania', 'TZ');
INSERT INTO `t_country` VALUES ('163', 'Thailand', 'TH');
INSERT INTO `t_country` VALUES ('164', 'Togo', 'TG');
INSERT INTO `t_country` VALUES ('165', 'Tonga', 'TO');
INSERT INTO `t_country` VALUES ('166', 'Trinidad and Tobago', 'TT');
INSERT INTO `t_country` VALUES ('167', 'Tunisia', 'TN');
INSERT INTO `t_country` VALUES ('168', 'Turkey', 'TR');
INSERT INTO `t_country` VALUES ('169', 'Turkmenistan', 'TM');
INSERT INTO `t_country` VALUES ('170', 'Uganda', 'UG');
INSERT INTO `t_country` VALUES ('171', 'Ukraine', 'UA');
INSERT INTO `t_country` VALUES ('172', 'United Arab Emirates', 'AE');
INSERT INTO `t_country` VALUES ('173', 'United Kiongdom', 'GB');
INSERT INTO `t_country` VALUES ('174', 'United States of America', 'US');
INSERT INTO `t_country` VALUES ('175', 'Uruguay', 'UY');
INSERT INTO `t_country` VALUES ('176', 'Uzbekistan', 'UZ');
INSERT INTO `t_country` VALUES ('177', 'Venezuela', 'VE');
INSERT INTO `t_country` VALUES ('178', 'Vietnam', 'VN');
INSERT INTO `t_country` VALUES ('179', 'Yemen', 'YE');
INSERT INTO `t_country` VALUES ('180', 'Yugoslavia', 'YU');
INSERT INTO `t_country` VALUES ('181', 'Zimbabwe', 'ZW');
INSERT INTO `t_country` VALUES ('182', 'Zaire', 'ZR');
INSERT INTO `t_country` VALUES ('183', 'Zambia', 'ZM');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '显示名',
  `menu_type` int(3) DEFAULT '0' COMMENT '菜单类型[0-文件夹;1-主题;2-按钮]',
  `P_id` bigint(20) NOT NULL COMMENT '父ID',
  `icon_skin` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '图标',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'URL',
  `is_open` int(1) DEFAULT '0' COMMENT '是否打开[0-false;1-true]',
  `no_check` int(1) DEFAULT '1' COMMENT '未审核[0-false;1-true]',
  `is_checked` int(1) DEFAULT '0' COMMENT '选中[0-false;1-true]',
  `notes` varchar(512) COLLATE utf8_unicode_ci DEFAULT '' COMMENT '备注',
  `status` int(1) DEFAULT '1' COMMENT '状态[0-失效;1-生效]',
  `weight` int(3) DEFAULT NULL COMMENT '权重[值越大排名越后]',
  `chk_disabled` int(1) DEFAULT NULL,
  `ext_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '扩展字段',
  `ext_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '扩展字段',
  `ext_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '扩展字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '数据概览', '0', '0', 'icon-1', '#', '0', '1', '0', '', '1', '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('2', '图表展示', '0', '1', 'icon-2', '#', '0', '1', '0', '', '1', '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('3', '手环的相关统计', '1', '2', 'icon-3', '/board/3', '0', '1', '0', '', '1', '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('4', '设备相关', '1', '2', 'icon-4', '/board/4', '0', '1', '0', '', '1', '2', null, null, null, null);
INSERT INTO `t_menu` VALUES ('5', '车辆相关', '1', '2', 'icon-5', '/board/5', '0', '1', '0', '', '1', '3', null, null, null, null);
INSERT INTO `t_menu` VALUES ('6', '添加图表', '2', '3', 'icon-6', '/board/3/6', '0', '1', '0', '', '1', '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('7', '修改图表', '2', '3', 'icon-7', '/board/3/7', '0', '1', '0', '', '1', '2', null, null, null, null);
INSERT INTO `t_menu` VALUES ('8', '删除图表', '2', '3', 'icon-8', '/board/3/8', '0', '1', '0', '', '1', '3', null, null, null, null);
INSERT INTO `t_menu` VALUES ('9', '实时展示', '0', '1', 'icon-9', '#', '0', '1', '0', '', '1', '2', null, null, null, null);
INSERT INTO `t_menu` VALUES ('10', '天气相关', '1', '9', 'icon-10', '/board/10', '0', '1', '0', '', '1', '1', null, null, null, null);
INSERT INTO `t_menu` VALUES ('11', '光电相关', '1', '9', 'icon-11', '/board/11', '0', '1', '0', '', '1', '2', null, null, null, null);
INSERT INTO `t_menu` VALUES ('12', '测试', '0', '1', '', '', '0', '1', '0', '', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'tom_1', '', 'tom_1@123.com', '2018-01-22 15:08:49');
INSERT INTO `t_user` VALUES ('2', 'tom_2', '', 'tom_2@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('3', 'tom_3', '', 'tom_3@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('4', 'tom_4', '', 'tom_4@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('5', 'tom_5', '', 'tom_5@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('6', 'tom_6', '', 'tom_6@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('7', 'tom_7', '', 'tom_7@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('8', 'tom_8', '', 'tom_8@123.com', '2018-01-22 15:08:50');
INSERT INTO `t_user` VALUES ('9', 'tom_9', '', 'tom_9@123.com', '2018-01-22 15:08:50');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `usertype` varchar(2) DEFAULT NULL COMMENT '用户类型',
  `enabled` int(2) DEFAULT NULL COMMENT '是否可用',
  `realname` varchar(32) DEFAULT NULL COMMENT '真实姓名',
  `qq` varchar(14) DEFAULT NULL COMMENT 'QQ',
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'test1', '12345678', '1', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('2', 'test2', 'aaaa', '2', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('3', 'test3', 'bbbb', '1', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('4', 'test4', 'cccc', '2', null, null, null, null, null);
INSERT INTO `user_info` VALUES ('5', 'test5', 'dddd', '1', null, null, null, null, null);
