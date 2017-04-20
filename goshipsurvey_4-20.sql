/*
Navicat MySQL Data Transfer

Source Server         : wang
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : goshipsurvey

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-04-20 17:47:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS `databasechangelog`;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of databasechangelog
-- ----------------------------

-- ----------------------------
-- Table structure for databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS `databasechangeloglock`;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of databasechangeloglock
-- ----------------------------
INSERT INTO `databasechangeloglock` VALUES ('1', '\0', null, null);

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL COMMENT '子菜单名称',
  `button_name` varchar(64) NOT NULL COMMENT '按钮名称',
  `button_url` varchar(255) NOT NULL COMMENT '按钮路径',
  `del_flag` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('1', '2', '新增菜单/子菜单', 'right/addMenu', '0');
INSERT INTO `sys_button` VALUES ('2', '2', '修改菜单/子菜单', 'right/editMenu', '0');
INSERT INTO `sys_button` VALUES ('3', '2', '删除菜单/子菜单', 'right/deleteMenu', '0');
INSERT INTO `sys_button` VALUES ('4', '2', '批量删除菜单/子菜单', 'right/batchDeleteMenu', '0');
INSERT INTO `sys_button` VALUES ('5', '2', '子菜单信息', 'right/subMenu', '0');
INSERT INTO `sys_button` VALUES ('6', '2', '权限信息', 'right/button', '0');
INSERT INTO `sys_button` VALUES ('7', '2', '新增权限', 'right/addBtn', '0');
INSERT INTO `sys_button` VALUES ('8', '2', '修改权限', 'right/editBtn', '0');
INSERT INTO `sys_button` VALUES ('9', '2', '删除权限', 'right/deleteBtn', '0');
INSERT INTO `sys_button` VALUES ('10', '2', '批量删除权限', 'right/batchDeleteBtn', '0');
INSERT INTO `sys_button` VALUES ('11', '3', '新增', 'user/add', '0');
INSERT INTO `sys_button` VALUES ('12', '3', '修改', 'user/edit', '0');
INSERT INTO `sys_button` VALUES ('13', '3', '删除', 'user/delete', '0');
INSERT INTO `sys_button` VALUES ('14', '3', '批量删除', 'user/batchDelete', '0');
INSERT INTO `sys_button` VALUES ('15', '3', '授权', 'user/editRole', '0');
INSERT INTO `sys_button` VALUES ('16', '4', '新增', 'role/add', '0');
INSERT INTO `sys_button` VALUES ('17', '4', '修改', 'role/edit', '0');
INSERT INTO `sys_button` VALUES ('18', '4', '删除', 'role/delete', '0');
INSERT INTO `sys_button` VALUES ('19', '4', '批量删除', 'role/batchDelete', '0');
INSERT INTO `sys_button` VALUES ('20', '4', '编辑权限', 'role/editRight', '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(64) NOT NULL COMMENT '菜单名称',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单URL',
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID',
  `menu_order` int(11) DEFAULT NULL COMMENT '菜单顺序',
  `menu_icon` varchar(128) DEFAULT NULL COMMENT '菜单图标',
  `menu_type` int(11) DEFAULT NULL COMMENT '菜单类型 资源类型：1-分类； 2-菜单',
  `removable` int(11) NOT NULL DEFAULT '1',
  `description` varchar(255) DEFAULT NULL,
  `del_flag` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统配置', '#', '0', '80', 'fa fa-cog', '1', '0', '系统配置', '0');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', 'right', '1', '41', '', '2', '1', '权限管理', '0');
INSERT INTO `sys_menu` VALUES ('3', '用户管理', 'user', '1', '42', '', '2', '1', '用户管理', '0');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', 'role', '1', '43', '', '2', '1', '角色管理', '0');
INSERT INTO `sys_menu` VALUES ('91', 'My record', 'op/record', '0', '10', 'fa fa-info', '1', '1', 'My record(op用)', '0');
INSERT INTO `sys_menu` VALUES ('92', 'Scheduled inspections', 'op/inspection', '0', '30', 'fa fa-clock-o', '1', '1', 'Scheduled inspections(op用)', '0');
INSERT INTO `sys_menu` VALUES ('93', 'Quotations', 'op/quotation', '0', '20', 'fa fa-ship', '1', '1', 'Quotations(op用)', '0');
INSERT INTO `sys_menu` VALUES ('94', 'My inspection Record', 'surveyor/record', '0', '50', 'fa fa-info', '1', '1', 'My inspection Record(surveyor用)', '0');
INSERT INTO `sys_menu` VALUES ('95', 'Available vessels', 'surveyor/quotation', '0', '60', 'fa fa-ship', '1', '1', 'Available(surveyor用)', '0');
INSERT INTO `sys_menu` VALUES ('96', 'Apply survey', 'surveyor/inspection', '0', '70', 'fa fa-clock-o', '1', '1', 'Apply survey(surveyor用)', '0');
INSERT INTO `sys_menu` VALUES ('106', '账号设置', 'account', '1', '45', null, '2', '1', '账号设置', '0');
INSERT INTO `sys_menu` VALUES ('107', '公司资料', 'company/edit', '1', '46', null, '2', '1', '公司资料', '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '部门名称',
  `parent_id` char(32) NOT NULL COMMENT '父部门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_office
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) NOT NULL COMMENT '角色名称',
  `removable` int(3) NOT NULL DEFAULT '0' COMMENT '可被删除 0=不行 1=可以',
  `allocatable` int(3) DEFAULT '1' COMMENT '可被分配 0=不行 1=可以',
  `description` varchar(255) DEFAULT NULL,
  `del_flag` int(3) NOT NULL DEFAULT '1' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '0', '1', '系统管理员', '0');
INSERT INTO `sys_role` VALUES ('3', '测试', '1', '1', '测试', '0');
INSERT INTO `sys_role` VALUES ('4', '试用', '1', '1', '无需登录,仅可试用', '0');
INSERT INTO `sys_role` VALUES ('5', 'op', '1', '1', 'op', '0');
INSERT INTO `sys_role` VALUES ('6', 'surveyor/personal', '1', '1', '', '0');
INSERT INTO `sys_role` VALUES ('7', 'surveyor/company', '1', '1', '', '0');

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `resource_id` int(11) NOT NULL DEFAULT '0',
  `resource_type` int(3) NOT NULL DEFAULT '0' COMMENT '资源类型：1-分类； 2-菜单；3-按钮',
  PRIMARY KEY (`id`),
  KEY `role_id_idx` (`role_id`),
  KEY `resource_id_idx` (`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1465 DEFAULT CHARSET=utf8 COMMENT='权限和资源（菜单+按钮）';

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('1', '1', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('2', '1', '2', '2');
INSERT INTO `sys_role_resource` VALUES ('3', '1', '3', '2');
INSERT INTO `sys_role_resource` VALUES ('4', '1', '4', '2');
INSERT INTO `sys_role_resource` VALUES ('5', '1', '91', '1');
INSERT INTO `sys_role_resource` VALUES ('6', '1', '92', '1');
INSERT INTO `sys_role_resource` VALUES ('7', '1', '93', '1');
INSERT INTO `sys_role_resource` VALUES ('8', '1', '94', '1');
INSERT INTO `sys_role_resource` VALUES ('9', '1', '95', '1');
INSERT INTO `sys_role_resource` VALUES ('10', '1', '96', '1');
INSERT INTO `sys_role_resource` VALUES ('11', '1', '97', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `login_name` varchar(64) NOT NULL COMMENT '登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `type` int(4) DEFAULT NULL,
  `style_id` int(11) DEFAULT NULL,
  `office_id` varchar(30) DEFAULT NULL COMMENT '部门Id',
  `company_id` int(11) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL COMMENT 'IP',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `identification` varchar(64) DEFAULT NULL COMMENT '身份证',
  `head_img_url` varchar(200) DEFAULT NULL COMMENT '头像图片地址',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `description` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `ship_type` varchar(64) DEFAULT NULL COMMENT '可验船型',
  `inspection_date_from` datetime DEFAULT NULL,
  `inspection_date_to` datetime DEFAULT NULL,
  `point` double DEFAULT '0' COMMENT '评分',
  `email_status` int(4) DEFAULT NULL,
  `email_code` varchar(225) DEFAULT NULL,
  `email_time` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(11) DEFAULT NULL COMMENT '创建者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(11) DEFAULT NULL COMMENT '更新者',
  `del_flag` int(2) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '223ce7b851123353479d85757fbbf4e320d1e251', null, '4', null, '7', '0:0:0:0:0:0:0:1', '1234', '123', null, null, null, '2017-04-20 17:28:12', '123', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('3', 'luzhen', 'luzhen', '18d5907164eddc5f29f39732c8eb4254e6082f10', null, '2', null, '1', null, '601590910@qq.com', null, null, null, null, '2017-04-11 15:44:43', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('13', 'test', 'test', '5455853ae173f593de4671245ef54aacd80d3bb6', null, null, null, '7', null, '1061147291@qq.com', null, null, null, null, '2017-04-14 01:47:44', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('57', 'Wulei', 'wulei', '97907acf7416e3c70553d2d93a38843182547299', null, null, null, '59', null, 'wulei@zhijieqd.com', '13708988637', null, null, null, '2017-04-13 10:16:10', 'whimstar', null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户和角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '3', '1');
INSERT INTO `sys_user_role` VALUES ('3', '13', '3');
INSERT INTO `sys_user_role` VALUES ('4', '57', '3');

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公司id',
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `legal_person` varchar(45) DEFAULT NULL COMMENT '公司法人',
  `tel` varchar(45) DEFAULT NULL COMMENT '公司电话',
  `fax` varchar(45) DEFAULT NULL COMMENT '公司传真',
  `website` varchar(100) DEFAULT NULL COMMENT '公司网址',
  `address` varchar(500) DEFAULT NULL COMMENT '公司地址',
  `postal_code` varchar(45) DEFAULT NULL COMMENT '邮政编码',
  `contact_name` varchar(45) DEFAULT NULL COMMENT '联系姓名',
  `contact_tel` varchar(45) DEFAULT NULL COMMENT '详细方式',
  `logo` varchar(45) DEFAULT NULL COMMENT '公司Logo',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `email` varchar(45) DEFAULT NULL COMMENT '公司邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '上海东曦船务有限公司', '刘小姐', '023-68100000', '021-65426650', 'http://www.cosic.com.cn', '', '2010000', '张小姐', '13600001234', 'go/upload-images/xpWEhdbMMH.jpg', null, '', null, null, '0', '601590910@qq.com');
INSERT INTO `t_company` VALUES ('7', '上海外高桥造船有限公司', '', '', '', '', '上海东方明珠', '', '', '', '', null, '', null, null, '0', '');
INSERT INTO `t_company` VALUES ('8', 'testCompany', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('33', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('34', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('35', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('36', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('37', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('38', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('39', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('40', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('41', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('42', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('43', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('44', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('45', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('46', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('47', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('48', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('49', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('50', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('51', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('52', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('53', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('54', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('55', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('56', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('57', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);
INSERT INTO `t_company` VALUES ('58', '测试公司', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `des` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', 'shipType', '1', 'Bulker', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('2', 'shipType', '2', 'Tanker', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('3', 'shipType', '3', 'Gas', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('4', 'shipType', '4', 'Chemical', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('5', 'shipType', '5', 'Container', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('6', 'shipType', '6', 'Multi_Purpose', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('7', 'shipType', '7', 'Ro-Ro/PCC', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('8', 'shipType', '8', 'Reefer', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('9', 'inspectionType', '1', 'on hire', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('10', 'inspectionType', '2', 'off hire', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('11', 'inspectionType', '3', 'condition', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_inspection
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection`;
CREATE TABLE `t_inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) DEFAULT NULL COMMENT '询价信息id',
  `inspection_status` int(4) DEFAULT NULL,
  `inspection_type` int(4) DEFAULT NULL,
  `delivery_by` varchar(64) DEFAULT NULL,
  `accepted_by` varchar(64) DEFAULT NULL,
  `ship_particulars` text,
  `port_agency` text,
  `report` varchar(255) DEFAULT NULL,
  `point` double DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inspection
-- ----------------------------
INSERT INTO `t_inspection` VALUES ('1', '4', '0', null, null, null, null, null, null, null, null, '2017-04-20 14:42:50', 'admin', '2017-04-20 14:42:50', 'admin', '0');
INSERT INTO `t_inspection` VALUES ('2', '6', '0', null, null, null, null, null, null, null, null, '2017-04-20 17:45:00', 'admin', '2017-04-20 17:45:00', 'admin', '0');

-- ----------------------------
-- Table structure for t_quotation
-- ----------------------------
DROP TABLE IF EXISTS `t_quotation`;
CREATE TABLE `t_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `op_id` int(11) DEFAULT NULL,
  `op_name` varchar(64) DEFAULT NULL,
  `ship_id` int(11) DEFAULT NULL,
  `ship_name` varchar(64) DEFAULT NULL,
  `imo` varchar(64) DEFAULT NULL,
  `ship_type` int(4) DEFAULT NULL COMMENT '船类型',
  `inspection_type` int(4) DEFAULT NULL COMMENT '船检类型',
  `port_id` int(11) DEFAULT NULL COMMENT '港口id',
  `port_name` varchar(64) DEFAULT NULL COMMENT '港口名称',
  `date_from` date DEFAULT NULL COMMENT '检查起始日期',
  `date_to` date DEFAULT NULL COMMENT '检查终止日期',
  `total_price` double DEFAULT NULL COMMENT '价格',
  `quotation_status` int(4) DEFAULT NULL COMMENT '检查状态',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_quotation
-- ----------------------------
INSERT INTO `t_quotation` VALUES ('3', '1', 'admin', '26481', 'Zaabeel', '9058957', '2', '1', null, null, '2017-04-26', '2017-04-26', null, '1', '2017-04-19 17:20:03', 'admin', '2017-04-20 17:45:11', 'admin', '0');
INSERT INTO `t_quotation` VALUES ('4', '1', 'admin', '3604', 'Giuseppe Mauro Rizzo', '9448580', '1', '3', null, null, '2017-04-25', '2017-04-25', null, '2', '2017-04-19 17:21:56', 'admin', '2017-04-20 11:37:01', 'admin', '0');
INSERT INTO `t_quotation` VALUES ('6', '1', 'admin', '10846', 'Yutai Breeze', '9541631', '1', '3', null, null, '2017-04-27', '2017-04-27', null, '2', '2017-04-19 17:59:51', 'admin', '2017-04-20 15:18:53', 'admin', '0');

-- ----------------------------
-- Table structure for t_quotation_application
-- ----------------------------
DROP TABLE IF EXISTS `t_quotation_application`;
CREATE TABLE `t_quotation_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) DEFAULT NULL COMMENT '询价单id',
  `user_id` int(11) DEFAULT NULL COMMENT '申请者的id',
  `application_status` int(4) DEFAULT NULL COMMENT '申请状态(成功 失败 申请中)',
  `total_price` double(10,0) DEFAULT NULL COMMENT '申请价格',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_quotation_application
-- ----------------------------
INSERT INTO `t_quotation_application` VALUES ('1', '4', '1', '1', '400', null, null, null, null, '0');
INSERT INTO `t_quotation_application` VALUES ('2', '4', '3', '2', '500', null, null, null, null, '0');
INSERT INTO `t_quotation_application` VALUES ('11', '6', '1', '1', '11', '2017-04-20 17:44:14', 'admin', '2017-04-20 17:44:14', 'admin', '0');

-- ----------------------------
-- Table structure for t_style
-- ----------------------------
DROP TABLE IF EXISTS `t_style`;
CREATE TABLE `t_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '风格id',
  `des` varchar(30) DEFAULT NULL COMMENT '描述',
  `color` varchar(30) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_style
-- ----------------------------
INSERT INTO `t_style` VALUES ('1', 'default', 'dark', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('2', 'blue', 'blue', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('3', 'darkblue', 'blue-dark', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('4', 'grey', 'grey', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('5', 'light', 'white', null, null, null, null, '0');
INSERT INTO `t_style` VALUES ('6', 'light2', 'grey-cararra', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_surveyor_info
-- ----------------------------
DROP TABLE IF EXISTS `t_surveyor_info`;
CREATE TABLE `t_surveyor_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inspection_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `passport` varchar(255) DEFAULT NULL,
  `loi` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_surveyor_info
-- ----------------------------

-- ----------------------------
-- Table structure for t_upload_file
-- ----------------------------
DROP TABLE IF EXISTS `t_upload_file`;
CREATE TABLE `t_upload_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belong_id` int(11) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `oss` varchar(255) DEFAULT NULL,
  `suffix` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_upload_file
-- ----------------------------
