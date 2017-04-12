/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : go

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-03-16 15:56:36
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
INSERT INTO `databasechangelog` VALUES ('15950097942-001', 'WangShun', 'src/main/resources/changelog.xml', '2017-01-20 18:08:43', '1', 'EXECUTED', '7:8c9d2dcf821c9cb4f7ea5506967568bf', 'addColumn tableName=sys_user', '', null, '3.5.3', null, null, '4906922107');
INSERT INTO `databasechangelog` VALUES ('15950097942-002', 'WangShun', 'src/main/resources/changelog.xml', '2017-01-20 18:25:53', '2', 'EXECUTED', '7:cadf4500b8903664980db191b6cf5c76', 'sql', '', null, '3.5.3', null, null, '4907953654');
INSERT INTO `databasechangelog` VALUES ('15950097942-003', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-06 09:44:27', '3', 'EXECUTED', '7:f1c4e3941d7812821879aeeb2e88b1ec', 'sql', '', null, '3.5.3', null, null, '6345467392');
INSERT INTO `databasechangelog` VALUES ('15950097942-004', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-06 09:44:27', '4', 'EXECUTED', '7:6f50631b2628966e7876addf59d1d002', 'sql', '', null, '3.5.3', null, null, '6345467392');
INSERT INTO `databasechangelog` VALUES ('15950097942-005', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-06 09:44:27', '5', 'EXECUTED', '7:e2ff4cb0eb561d55445a0198ee2af072', 'sql', '', null, '3.5.3', null, null, '6345467392');
INSERT INTO `databasechangelog` VALUES ('17317309132-001', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-07 15:31:24', '6', 'EXECUTED', '7:912a34a33ff4db5522b5132c1d497138', 'sql', '', null, '3.5.3', null, null, '6452684121');
INSERT INTO `databasechangelog` VALUES ('17317309132-002', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-08 15:49:01', '7', 'EXECUTED', '7:b6a7f328311cb3dd4fbb072fba56a171', 'sql', '', null, '3.5.3', null, null, '6540141255');
INSERT INTO `databasechangelog` VALUES ('15950097942-006', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-09 12:18:23', '8', 'EXECUTED', '7:07c1731b9d0f95987ca721fbe9068d96', 'sql', '', null, '3.5.3', null, null, '6613902277');
INSERT INTO `databasechangelog` VALUES ('17317309132-003', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-09 12:28:18', '9', 'EXECUTED', '7:94c468585077cc538a533d06e9904c12', 'sql', '', null, '3.5.3', null, null, '6614497679');
INSERT INTO `databasechangelog` VALUES ('17317309132-005', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-10 12:05:22', '10', 'EXECUTED', '7:a1b142e2823af82a8bbe7bf1cb9868ac', 'sql', '', null, '3.5.3', null, null, '6699521249');
INSERT INTO `databasechangelog` VALUES ('17317309132-006', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-10 14:17:45', '11', 'EXECUTED', '7:cf18da8d347f01233de3f54bda722bfb', 'sql', '', null, '3.5.3', null, null, '6707464354');
INSERT INTO `databasechangelog` VALUES ('17317309132-007', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-10 16:28:11', '12', 'EXECUTED', '7:45ef4080c14b2097d8379b5898951868', 'sql', '', null, '3.5.3', null, null, '6715290391');
INSERT INTO `databasechangelog` VALUES ('17317309132-008', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-14 11:45:55', '13', 'EXECUTED', '7:a50ef9f4156d4bbf4db7829f4a1ceb96', 'sql', '', null, '3.5.3', null, null, '7043954747');
INSERT INTO `databasechangelog` VALUES ('17317309132-009', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-14 11:54:40', '14', 'EXECUTED', '7:b220dd794f437390c3789fa22ab71e5f', 'sql', '', null, '3.5.3', null, null, '7044473814');
INSERT INTO `databasechangelog` VALUES ('17317309132-010', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-14 18:00:07', '15', 'EXECUTED', '7:35e8a932f205b63afa3d8f88667bf22a', 'sql', '', null, '3.5.3', null, null, '7066406823');
INSERT INTO `databasechangelog` VALUES ('17317309132-011', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-16 12:22:21', '16', 'EXECUTED', '7:dc2863cd2e446b543dbbcd8e1989a3a3', 'sql', '', null, '3.5.3', null, null, '7218940075');
INSERT INTO `databasechangelog` VALUES ('17317309132-012', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-16 14:37:58', '17', 'EXECUTED', '7:d45ab74007989c6788deaf2fa4a4ac6d', 'sql', '', null, '3.5.3', null, null, '7227077758');
INSERT INTO `databasechangelog` VALUES ('17317309132-013', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-16 14:40:37', '18', 'EXECUTED', '7:2c0795fb04a50e3a1d8fc0f50be058b7', 'sql', '', null, '3.5.3', null, null, '7227234589');
INSERT INTO `databasechangelog` VALUES ('17317309132-014', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-16 16:16:43', '19', 'EXECUTED', '7:8a4689a542b81cd8956cc1097b94997f', 'sql', '', null, '3.5.3', null, null, '7233002206');
INSERT INTO `databasechangelog` VALUES ('15950097942-007', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-16 16:31:56', '20', 'EXECUTED', '7:faaa859f871b8342c5babc8d19485c82', 'sql', '', null, '3.5.3', null, null, '7233915309');
INSERT INTO `databasechangelog` VALUES ('15950097942-009', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-17 10:00:05', '21', 'EXECUTED', '7:f2025cc09067ccfb36a057fa6be747b3', 'sql', '', null, '3.5.3', null, null, '7296803890');
INSERT INTO `databasechangelog` VALUES ('15950097942-010', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-17 15:56:17', '22', 'EXECUTED', '7:fd0d4bee57a98a248091430f7db06b14', 'sql', '', null, '3.5.3', null, null, '7318175158');
INSERT INTO `databasechangelog` VALUES ('17317309132-015', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-17 15:58:44', '23', 'EXECUTED', '7:cb7d26d1c7aaf2208f4728b7e433feb8', 'sql', '', null, '3.5.3', null, null, '7318322728');
INSERT INTO `databasechangelog` VALUES ('17317309132-016', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-20 10:36:30', '24', 'EXECUTED', '7:cfd6b8a9aaad7976675aec1cdedb599b', 'sql', '', null, '3.5.3', null, null, '7558188080');
INSERT INTO `databasechangelog` VALUES ('17317309132-017', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-20 12:17:47', '25', 'EXECUTED', '7:6dee5fd6a60ecb950012402f260cae1b', 'sql', '', null, '3.5.3', null, null, '7564266976');
INSERT INTO `databasechangelog` VALUES ('17317309132-018', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-20 12:24:22', '26', 'EXECUTED', '7:89d59d86367c6866c39f124bcdd680bc', 'sql', '', null, '3.5.3', null, null, '7564662012');
INSERT INTO `databasechangelog` VALUES ('17317309132-019', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-20 16:11:44', '27', 'EXECUTED', '7:86880a783e266f4ddac4e1eb5b81a011', 'sql', '', null, '3.5.3', null, null, '7578303619');
INSERT INTO `databasechangelog` VALUES ('17317309132-020', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-21 12:13:14', '28', 'EXECUTED', '7:b00dc4c218843eac15f845cd8172faca', 'sql', '', null, '3.5.3', null, null, '7650394189');
INSERT INTO `databasechangelog` VALUES ('17317309132-021', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-21 12:17:41', '29', 'EXECUTED', '7:b309bb1ba392c42a710e02c3e2e033d8', 'sql', '', null, '3.5.3', null, null, '7650661132');
INSERT INTO `databasechangelog` VALUES ('17317309132-022', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-21 12:37:43', '30', 'EXECUTED', '7:8d6683c270f5b7368c4602474ecf20b1', 'sql', '', null, '3.5.3', null, null, '7651862300');
INSERT INTO `databasechangelog` VALUES ('15950097942-011', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-22 10:53:26', '31', 'EXECUTED', '7:f20f3f762a1090acf276f7a256c0bb63', 'sql', '', null, '3.5.3', null, null, '7732004695');
INSERT INTO `databasechangelog` VALUES ('17317309132-023', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-22 10:53:27', '32', 'EXECUTED', '7:d5e31f372d22f67ea67c4a4758236436', 'sql', '', null, '3.5.3', null, null, '7732004695');
INSERT INTO `databasechangelog` VALUES ('17317309132-024', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-22 14:53:04', '33', 'EXECUTED', '7:51693a056160dc645269dfde157b8866', 'sql', '', null, '3.5.3', null, null, '7746384246');
INSERT INTO `databasechangelog` VALUES ('17317309132-025', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-22 18:00:38', '34', 'EXECUTED', '7:14fda4b2bca969dfc2c9196c28f8a8d4', 'sql', '', null, '3.5.3', null, null, '7757638645');
INSERT INTO `databasechangelog` VALUES ('15950097942-012', 'WangShun', 'src/main/resources/changelog.xml', '2017-02-23 14:23:45', '35', 'EXECUTED', '7:7d8bba04561c40f2726eaf94bf7f170a', 'sql', '', null, '3.5.3', null, null, '7831025541');
INSERT INTO `databasechangelog` VALUES ('17317309132-026', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-23 14:32:41', '36', 'EXECUTED', '7:a28c1e61f0dee330c38f8a3dc6a21c4f', 'sql', '', null, '3.5.3', null, null, '7831559756');
INSERT INTO `databasechangelog` VALUES ('17317309132-027', 'LuZhen', 'src/main/resources/changelog.xml', '2017-02-28 17:40:40', '37', 'EXECUTED', '7:ebf7be28127d7bf9324baa01d85a6c92', 'sql', '', null, '3.5.3', null, null, '8274838266');
INSERT INTO `databasechangelog` VALUES ('17317309132-028', 'LuZhen', 'src/main/resources/changelog.xml', '2017-03-03 11:55:22', '38', 'EXECUTED', '7:ff159c810f51015d0ab5ebe20a268b71', 'sql', '', null, '3.5.3', null, null, '8513321502');
INSERT INTO `databasechangelog` VALUES ('17317309132-029', 'LuZhen', 'src/main/resources/changelog.xml', '2017-03-08 14:17:36', '39', 'EXECUTED', '7:634bf695895992132ef54978c5301606', 'sql', '', null, '3.5.3', null, null, '8953854975');
INSERT INTO `databasechangelog` VALUES ('15950097942-013', 'WangShun', 'src/main/resources/changelog.xml', '2017-03-09 12:14:20', '40', 'EXECUTED', '7:597d4fa13b39203b59875f9bbc10d33c', 'sql', '', null, '3.5.3', null, null, '9032860660');
INSERT INTO `databasechangelog` VALUES ('17317309132-030', 'LuZhen', 'src/main/resources/changelog.xml', '2017-03-09 15:36:40', '41', 'EXECUTED', '7:8a4ab64fbf38c248d8f6a1ebd0f0d805', 'sql', '', null, '3.5.3', null, null, '9044998977');

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

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
INSERT INTO `sys_button` VALUES ('35', '101', '新增船舶', 'ship/addBtn', '0');
INSERT INTO `sys_button` VALUES ('36', '106', '更改样式', 'account/editStyle', '0');
INSERT INTO `sys_button` VALUES ('37', '106', '更改个人姓名', 'account/editName', '0');
INSERT INTO `sys_button` VALUES ('38', '106', '更改密码', 'account/editPassword', '0');
INSERT INTO `sys_button` VALUES ('39', '106', '更改手机号码', 'account/editPhone', '0');
INSERT INTO `sys_button` VALUES ('40', '106', '更改电子邮箱', 'account/editEmail', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统配置', '#', '0', '40', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_40.png', '1', '0', '系统配置', '0');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', 'right', '1', '41', '', '2', '1', '权限管理', '0');
INSERT INTO `sys_menu` VALUES ('3', '用户管理', 'user', '1', '42', '', '2', '1', '用户管理', '0');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', 'role', '1', '43', '', '2', '1', '角色管理', '0');
INSERT INTO `sys_menu` VALUES ('93', '维修进度', '#', '0', '30', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_30.png', '1', '1', '维修进度', '0');
INSERT INTO `sys_menu` VALUES ('100', '维修工程管理', 'repairProg', '93', '31', null, '2', '1', '维修工程管理', '0');
INSERT INTO `sys_menu` VALUES ('101', '基础信息', '#', '0', '10', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_10.png', '1', '1', '基础信息', '0');
INSERT INTO `sys_menu` VALUES ('102', '船舶信息', 'ship', '101', '11', null, '2', '1', '船舶信息', '0');
INSERT INTO `sys_menu` VALUES ('103', '船厂信息', 'shipyard', '101', '12', null, '2', '1', '船厂信息', '0');
INSERT INTO `sys_menu` VALUES ('104', '公司信息', 'company', '101', '13', null, '2', '1', '公司信息', '0');
INSERT INTO `sys_menu` VALUES ('105', '维修进度汇报', 'progress', '93', '32', null, '2', '1', '维修进度汇报', '0');
INSERT INTO `sys_menu` VALUES ('106', '账号设置', 'account', '1', '45', null, '2', '1', '账号设置', '0');
INSERT INTO `sys_menu` VALUES ('107', '公司资料', 'company/edit', '1', '46', null, '2', '1', '公司资料', '0');
INSERT INTO `sys_menu` VALUES ('108', '维修工程单', '#', '0', '20', 'http://windyeel.oss-cn-shanghai.aliyuncs.com/go/sys/nav_20.png', '1', '1', '维修工程单', '0');
INSERT INTO `sys_menu` VALUES ('109', '维修工程单', 'repairSpec', '108', '21', null, '2', '1', '维修工程单', '0');
INSERT INTO `sys_menu` VALUES ('110', '工程单询价', 'enquiry', '108', '23', null, '2', '1', '工程单询价', '0');
INSERT INTO `sys_menu` VALUES ('111', '工程单比价', 'compare', '108', '24', null, '2', '1', '工程单比价', '0');
INSERT INTO `sys_menu` VALUES ('112', '维修范本单', 'modelDetail', '108', '22', null, '2', '1', '维修范本单', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '0', '1', '系统管理员', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8 COMMENT='权限和资源（菜单+按钮）';

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('374', '1', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('375', '1', '2', '2');
INSERT INTO `sys_role_resource` VALUES ('376', '1', '3', '2');
INSERT INTO `sys_role_resource` VALUES ('377', '1', '4', '2');
INSERT INTO `sys_role_resource` VALUES ('379', '1', '93', '1');
INSERT INTO `sys_role_resource` VALUES ('380', '1', '100', '2');
INSERT INTO `sys_role_resource` VALUES ('381', '1', '101', '1');
INSERT INTO `sys_role_resource` VALUES ('382', '1', '102', '2');
INSERT INTO `sys_role_resource` VALUES ('383', '1', '103', '2');
INSERT INTO `sys_role_resource` VALUES ('384', '1', '104', '2');
INSERT INTO `sys_role_resource` VALUES ('385', '1', '105', '2');
INSERT INTO `sys_role_resource` VALUES ('386', '1', '106', '2');
INSERT INTO `sys_role_resource` VALUES ('387', '1', '107', '2');
INSERT INTO `sys_role_resource` VALUES ('388', '1', '108', '1');
INSERT INTO `sys_role_resource` VALUES ('389', '1', '109', '2');
INSERT INTO `sys_role_resource` VALUES ('390', '1', '110', '2');
INSERT INTO `sys_role_resource` VALUES ('391', '1', '111', '2');
INSERT INTO `sys_role_resource` VALUES ('392', '1', '112', '2');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(64) NOT NULL COMMENT '登录名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `ip` varchar(32) DEFAULT NULL COMMENT 'IP',
  `del_flag` varchar(32) DEFAULT NULL COMMENT '状态',
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(32) DEFAULT NULL,
  `identification` varchar(64) DEFAULT NULL COMMENT '身份证',
  `public` varchar(64) DEFAULT NULL COMMENT '是否公开',
  `score` int(11) DEFAULT '0' COMMENT '积分',
  `type` varchar(64) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` int(11) DEFAULT NULL COMMENT '创建者',
  `update_by` int(11) DEFAULT NULL COMMENT '更新者',
  `office_id` varchar(30) DEFAULT NULL COMMENT '部门Id',
  `open_id` varchar(200) DEFAULT NULL COMMENT 'openId',
  `prefer` varchar(64) DEFAULT NULL COMMENT '偏好',
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `head_img_url` varchar(200) DEFAULT NULL COMMENT '头像图片地址',
  `style_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `email_status` int(11) DEFAULT NULL COMMENT '邮箱验证状态',
  `email_time` datetime DEFAULT NULL COMMENT '邮箱验证开始时间',
  `email_code` varchar(200) DEFAULT NULL COMMENT '邮箱验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'admin', '2017-01-20 10:34:39', '0:0:0:0:0:0:0:1', '0', '123', '1234', '123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sys_user` VALUES ('3', 'luzhen', '18d5907164eddc5f29f39732c8eb4254e6082f10', 'luzhen', '2017-03-16 14:17:26', null, null, null, '601590910@qq.com', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', '1', '1', '2017-02-06 09:37:23', '724defcb1555caef02f730ea71a663af');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户和角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '3', '1');

-- ----------------------------
-- Table structure for t_berth_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_berth_detail`;
CREATE TABLE `t_berth_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '泊位信息id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `loa` int(11) DEFAULT NULL COMMENT '总长',
  `draft` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL COMMENT '能力',
  `cranes` varchar(45) DEFAULT NULL COMMENT '起重机',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_berth_detail
-- ----------------------------
INSERT INTO `t_berth_detail` VALUES ('1', '2', '221', '10', '100000', '32TX1', null, null, null, null, '0');
INSERT INTO `t_berth_detail` VALUES ('2', '2', '264', '10', '150000', '40TX2', null, null, null, null, '0');
INSERT INTO `t_berth_detail` VALUES ('3', '2', '200', '7', '100000', '32Tx1', null, null, null, null, '0');
INSERT INTO `t_berth_detail` VALUES ('4', '2', '204', '10', '80000', '40TX1,32TX1', null, null, null, null, '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '上海东曦船务有限公司', '刘小姐', '023-68100000', '021-65426650', 'http://www.cosic.com.cn', 'USA White House', '2010000', '张小姐', '13600001234', 'go/upload-images/xpWEhdbMMH.jpg', null, '', null, null, '0', '601590910@qq.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dict
-- ----------------------------
INSERT INTO `t_dict` VALUES ('1', '维修部位', '1', '甲板', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('2', '维修部位', '2', '机舱', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('3', '维修部位', '3', '泵舱', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('4', '维修部位', '4', '机舱棚', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('5', '维修部位', '5', '压载舱', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('6', '维修部位', '6', '驾驶室', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('7', '维修部位', '7', '舵机舱', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('8', '维修部位', '8', '集控室', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('9', '维修部位', '9', '货控室', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('10', '维修部位', '10', '艏楼区域', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('11', '维修部位', '11', '罗经甲板', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('12', '维修部位', '12', '上建', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('13', '维修部位', '13', '船艉', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('14', '维修部位', '14', '其他请填', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('15', '修理工艺', '1', '动火', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('16', '修理工艺', '2', '脚手架', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('17', '修理工艺', '3', '吊车运输', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('18', '修理工艺', '4', '功能测试', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('19', '修理工艺', '5', '化学清洗', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('20', '修理工艺', '6', '船厂提供螺栓螺母及垫片等材料', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('21', '修理工艺', '7', '补漆', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('22', '修理工艺', '8', '提供照明', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('23', '修理工艺', '9', '清舱除气', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('24', '修理工艺', '10', '拆装花钢板地格栅', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('25', '修理工艺', '11', '布置安全通道', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('26', '修理工艺', '12', '需船厂提供维修场地', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('27', '修理工艺', '13', '清洁', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('28', '修理工艺', '14', '提供通风', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('29', '修理工艺', '15', '压力测试', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('30', '修理工艺', '16', '拆装栏杆等铁舾件', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('31', '修理工艺', '17', '船东提供材料', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('32', '修理工艺', '18', '其它请填', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('33', '维修类型', '1', '临时维修', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('34', '维修类型', '2', '坞检', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('35', '维修类型', '3', '特检', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('36', '维修类型', '4', '改造', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('37', '维修工程大类', '1', '通用服务', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('38', '维修工程大类', '2', '坞修工程', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('39', '维修工程大类', '3', '船体工程', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('40', '维修工程大类', '4', '机械工程', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('41', '维修工程大类', '5', '电气工程', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('42', '维修工程大类', '6', '冷藏设备', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('43', '维修工程大类', '7', '特种设备', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('44', '维修工程大类', '8', '其他', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_enquiry
-- ----------------------------
DROP TABLE IF EXISTS `t_enquiry`;
CREATE TABLE `t_enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '询价id',
  `title` varchar(45) DEFAULT NULL COMMENT '询价标题',
  `supplier` varchar(45) DEFAULT NULL COMMENT '供应商',
  `quote_date` date DEFAULT NULL COMMENT '报价日期',
  `quote_totle_price` varchar(45) DEFAULT NULL COMMENT '报价总额',
  `other_price` varchar(45) DEFAULT NULL COMMENT '其他费用',
  `discount` varchar(45) DEFAULT NULL COMMENT '折扣率',
  `payment` varchar(45) DEFAULT NULL COMMENT '支付方式',
  `invoice_type` varchar(45) DEFAULT NULL COMMENT '发票类型',
  `t_repair_spec_id` int(11) DEFAULT NULL COMMENT '维修工程单的id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_enquiry
-- ----------------------------

-- ----------------------------
-- Table structure for t_facility_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_facility_detail`;
CREATE TABLE `t_facility_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '起重机信息id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `type` varchar(45) DEFAULT NULL COMMENT '类型',
  `capacity` int(11) DEFAULT NULL COMMENT '能力',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `unit` varchar(10) DEFAULT NULL COMMENT '单元',
  `faci_category` varchar(45) DEFAULT NULL COMMENT '设施类型',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_facility_detail
-- ----------------------------
INSERT INTO `t_facility_detail` VALUES ('1', '2', 'Gantry crane', '600', '', '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('2', '2', 'Floating crane', '150', null, '2', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('3', '2', 'Floating crane', '63', null, '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('4', '2', 'Floating crane', '60', null, '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('5', '2', 'Floating crane', '50', null, '1', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('6', '2', 'Mobile crane', '30', null, '2', 'Cranes Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('7', '2', null, '4600', null, '1', 'Tugboats Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('8', '2', null, '4000', null, '2', 'Tugboats Details', null, null, null, null, '0');
INSERT INTO `t_facility_detail` VALUES ('9', '2', 'Cherry Picker', null, '40sets', null, 'Others', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_general_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_general_detail`;
CREATE TABLE `t_general_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一般信息的id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `item` varchar(45) DEFAULT NULL COMMENT '项目',
  `item_category` varchar(45) DEFAULT NULL COMMENT '项目类型',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_general_detail
-- ----------------------------
INSERT INTO `t_general_detail` VALUES ('1', '2', 'Bulker', 'Convemsion Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('2', '2', 'Container', 'Convemsion Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('3', '2', 'Tanker', 'Convemsion Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('4', '2', 'Gas Carrier', 'Repairing Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('5', '2', 'Offshore', 'Repairing Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('6', '2', 'Cruise', 'Repairing Projects', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('7', '2', 'Other', 'Major Clients', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('8', '2', 'Offshore', 'Major Clients', null, null, null, null, '0');
INSERT INTO `t_general_detail` VALUES ('9', '2', 'BW Offshore', 'Major Clients', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_memo_media
-- ----------------------------
DROP TABLE IF EXISTS `t_memo_media`;
CREATE TABLE `t_memo_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `report_detail_memo_id` int(11) DEFAULT NULL COMMENT 'memo id',
  `type` varchar(45) DEFAULT NULL COMMENT '媒体类型 ,0为图片，1为语音',
  `record_time` int(11) DEFAULT NULL COMMENT '录音时间',
  `Oss` varchar(45) DEFAULT NULL COMMENT '阿里云路径',
  `S3` varchar(45) DEFAULT NULL COMMENT '亚马孙路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_memo_media
-- ----------------------------

-- ----------------------------
-- Table structure for t_param
-- ----------------------------
DROP TABLE IF EXISTS `t_param`;
CREATE TABLE `t_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数id',
  `param_code` varchar(45) DEFAULT NULL,
  `item_code` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL COMMENT '参数名称',
  `unit` varchar(45) DEFAULT NULL COMMENT '参数单位',
  `type` varchar(45) DEFAULT NULL COMMENT '参数的类型',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `update_date` date DEFAULT NULL COMMENT '修改者',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `model_id` int(11) DEFAULT NULL COMMENT '红本id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_param
-- ----------------------------
INSERT INTO `t_param` VALUES ('1', '1', '1.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('2', '2', '1.2.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('3', '2', '1.2.2', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('4', '3', '1.3.1', '接、拆电缆', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('5', '4', '1.3.2', '租用频率转换器', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('6', '5', '1.3.3', '供应交流电', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('7', '6', '1.4.1', '接、拆管路', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('8', '7', '1.4.2', '供水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('9', '8', '1.5.1', '接、拆管路', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('10', '9', '1.5.2', '自岸供淡水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('11', '10', '1.5.3', '用驳船供淡水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('12', '11', '1.6.1', '接、拆管路', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('13', '12', '1.6.2', '供水费（海水/江水）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('14', '13', '1.6.3', '用船厂泵浦排船上压载水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('15', '14', '1.7.1', '接拆蒸汽管路', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('16', '15', '1.7.2', '供蒸汽', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('17', '16', '1.8.1', '接、拆管路', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('18', '17', '1.8.2', '供压缩空气', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('19', '18', '1.9', '供通风设施费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('20', '19', '1.10.1', '安装', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('21', '20', '1.10.2', '维持', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('22', '21', '1.11.1', 'A型：搭架型，按平地脚手架计', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('23', '22', '1.11.2', 'B型：架子型，按照HSE要求，架与架之间需要连接的，连接部分按A型计', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('24', '23', '1.12', '人孔洞安全围栏费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('25', '24', '1.13', 'CO2释放系统切断和恢复费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('26', '25', '1.14', '船方自带分包商的安全培训费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('27', '26', '1.15.1', '油船', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('28', '27', '1.15.2', '化学品船', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('29', '28', '1.15.3', 'LPG船', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('30', '29', '1.15.4', '以上3种船型以后的测爆', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('31', '30', '1.15.5', '其他船舶', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('32', '31', '1.15.6', '其他船舶以后的测爆', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('33', '32', '1.16', '作业舱室的测氧和有毒有害气体检测费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('34', '33', '1.17.1', '设置消防器材', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('35', '34', '1.17.2', '接、拆消防水管路', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('36', '35', '1.17.3', '维持水压力', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('37', '36', '1.17.4', '消防员值班', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('38', '37', '1.18', '环保防尘布置费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('39', '38', '1.19', '水域防污染物资配备费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('40', '39', '1.20', '码头试车安全监护费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('41', '40', '1.21', '船舶试航安全监护费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('42', '41', '1.22', '劳动保护和员工安全防护措施费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('43', '42', '1.23.1', '污油泥', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('44', '43', '1.23.2', '污油水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('45', '44', '1.23.3', '剩水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('46', '45', '1.24.1', '厂方清除生活垃圾处理费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('47', '46', '1.24.2', '生活垃圾接收证明', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('48', '47', '1.25', '非船厂施工区域的完工清洁费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('49', '48', '1.26', '保安费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('50', '49', '1.27.1', '提供手机及本地服务', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('51', '50', '1.27.2', '提供座机及本地服务', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('52', '51', '1.27.3', '国内、国际长途费用及上网服务', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('53', '52', '1.28.1', '30吨', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('54', '53', '1.28.2', '50吨', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('55', '54', '1.28.3', '50吨以上', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('56', '55', '1.29', '高架车租用费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('57', '56', '1.30', '设置临时疏水管费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('58', '57', '1.31', '船舶系泊舷梯拆装费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('59', '58', '1.32', '船舶进出厂及进出坞引水费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('60', '59', '1.33', '点工费', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('61', '60', '2.1.1', '注册总吨', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('62', '61', '2.1.1', '首尾2天', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('63', '62', '2.1.1', '有无浮船坞', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('64', '60', '2.1.2', '注册总吨', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('65', '62', '2.1.2', '有无浮船坞', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('66', '63', '2.1.2', '其他每天', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('67', '64', '2.2.1.1', '艉轴直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('68', '65', '2.2.1.1', '艉轴类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('69', '64', '2.2.2.1', '艉轴直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('70', '64', '2.2.3.1', '艉轴直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('71', '66', '2.2.3.1', '叶桨数量', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('72', '67', '2.3.1.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('73', '68', '2.3.1.1', '检查间隙', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('74', '67', '2.3.1.2', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('75', '69', '2.3.1.2', '更换填料', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('76', '67', '2.3.2.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('77', '70', '2.3.2.1', 'LMPLEX型舵、悬挂舵、AEG型舵', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('78', '67', '2.3.3.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('79', '71', '2.3.3.1', '穿心舵杆型', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('80', '72', '2.3.4', '舵叶的空气压力试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('81', '73', '2.3.4', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('82', '74', '2.4.1.1', '海底阀箱维护保养', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('83', '67', '2.4.1.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('84', '75', '2.4.2.1', '重量', '千克', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('85', '76', '2.4.2.1', '类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('86', '77', '2.4.3.1', '拆装、新塘水泥', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('87', '78', '2.4.3.2', '船底塞密性试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('88', '79', '2.4.4.1', '公称通径', ' 毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('89', '80', '2.4.4.1', '海底阀类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('90', '81', '3.1.1.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('91', '82', '3.1.2.1', '高压水冲洗（压力不小于200巴）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('92', '83', '3.1.2.2', '淡水冲洗', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('93', '84', '3.1.2.3', '去除少量油污', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('94', '85', '3.1.3.1', '船底和水线', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('95', '86', '3.1.3.1', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('96', '87', '3.1.3.1', '类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('97', '88', '3.1.3.2', '干舷', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('98', '86', '3.1.3.2', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('99', '87', '3.1.3.2', '类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('100', '89', '3.1.3.3', '甲板', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('101', '86', '3.1.3.3', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('102', '87', '3.1.3.3', '类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('103', '90', '3.1.3.4', '货舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('104', '86', '3.1.3.4', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('105', '87', '3.1.3.4', '类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('106', '85', '3.1.4.1', '船底和水线', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('107', '91', '3.1.4.1', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('108', '88', '3.1.4.2', '干舷', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('109', '91', '3.1.4.2', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('110', '89', '3.1.4.3', '甲板', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('111', '91', '3.1.4.3', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('112', '90', '3.1.4.4', '货舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('113', '91', '3.1.4.4', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('114', '85', '3.1.5.1', '船底和水线', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('115', '92', '3.1.5.1', '级别', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('116', '88', '3.1.5.2', '干舷', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('117', '92', '3.1.5.2', '级别', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('118', '89', '3.1.5.3', '甲板', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('119', '92', '3.1.5.3', '级别', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('120', '90', '3.1.5.4', '货舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('121', '92', '3.1.5.4', '级别', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('122', '93', '3.1.6.1', '甲板', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('123', '94', '3.1.6.1', '除锈方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('124', '95', '3.1.6.2', '生活区', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('125', '94', '3.1.6.2', '除锈方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('126', '96', '3.1.6.3', '压载舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('127', '94', '3.1.6.3', '除锈方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('128', '239', '3.1.7.1', '舷外', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('129', '97', '3.1.7.1', '在货舱、柜等内部部位是否困难', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('130', '239', '3.1.7.2', '舷外', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('131', '98', '3.1.7.2', '液压车作业', '小时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('132', '99', '3.1.7.3', '货舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('133', '97', '3.1.7.3', '在货舱、柜等内部部位是否困难', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('134', '99', '3.1.7.4', '货舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('135', '98', '3.1.7.4', '液压车作业', '小时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('136', '100', '3.1.7.5', '机舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('137', '97', '3.1.7.5', '在货舱、柜等内部部位是否困难', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('138', '100', '3.1.7.6', '机舱', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('139', '98', '3.1.7.6', '液压车作业', '小时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('140', '101', '3.1.7.7', '塔式脚手架', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('141', '97', '3.1.7.7', '在货舱、柜等内部部位是否困难', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('142', '101', '3.1.7.8', '塔式脚手架', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('143', '98', '3.1.7.8', '液压车作业', '小时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('144', '102', '3.2.1.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('145', '103', '3.2.2.1', '锚链直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('146', '104', '3.2.2.1', '工程', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('147', '102', '3.2.3.1', '注册总吨', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('148', '105', '3.2.3.1', '冲洗', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('149', '106', '3.3.1.1', '钢材重量', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('150', '107', '3.3.1.1', '厚度', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('151', '108', '3.3.1.1', '换新', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('152', '109', '3.3.1.1', '部位', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('153', '110', '3.3.1.1', '钢板性质', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('154', '111', '3.3.1.1', '堆焊', '立方厘米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('155', '112', '3.3.2.1', '数量', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('156', '113', '3.3.3.1', '板厚', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('157', '114', '3.3.3.1', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('158', '115', '3.3.4.1', '栏杆换新（管材32~40毫米）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('159', '116', '3.3.4.2', '栏杆换新（棒材20毫米）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('160', '117', '3.3.4.3', '支柱换新', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('161', '118', '3.3.4.4', '现场校正', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('162', '119', '3.3.5.1.2', '舱盖板拆装进厂包括铰链销拆装清洁测量', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('163', '120', '3.3.5.1.3', '开关舱试验（配合船方）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('164', '121', '3.3.5.1.4', '舱盖冲水试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('165', '122', '3.3.5.1.6', '船供密封填料换新', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('166', '123', '3.3.5.1.7', '密封填料槽除锈', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('167', '124', '3.3.5.2.1', '密封橡皮条换新、除锈油漆', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('168', '125', '3.3.5.2.2', '冲水试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('169', '126', '3.3.5.3.1', '拆装人孔盖', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('170', '127', '3.3.5.3.2', '密封垫换新（含拆装）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('171', '128', '3.4.1.1', '舱容', '立方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('172', '128', '3.4.1.2', '舱容', '立方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('173', '128', '3.4.1.3', '舱容', '立方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('174', '129', '3.4.1.3', '类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('175', '130', '3.4.2.1', '油泥', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('176', '131', '3.4.2.2', '污油水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('177', '132', '3.4.2.3', '污水', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('178', '133', '3.4.2.4', '剩水（重量≤100吨）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('179', '134', '3.4.2.5', '剩水（重量＞100吨）', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('180', '135', '3.4.3', '涂水泥浆', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('181', '136', '3.4.4.1', '采用海水试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('182', '137', '3.4.4.2', '采用淡水试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('183', '138', '3.5.1.1', '安全负荷', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('184', '138', '3.5.2.1.1', '安全负荷', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('185', '138', '3.5.2.2.1', '安全负荷', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('186', '139', '3.5.3.1.1', '安全负荷', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('187', '140', '3.5.3.1.1', '双吊杆吊重试验', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('188', '141', '3.5.3.2.1', '安全负荷', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('189', '142', '3.6.1.1', '拆装进厂', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('190', '143', '3.6.1.2', '舷梯压重试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('191', '144', '3.7.1.1', '救生艇拆装进厂', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('192', '145', '3.7.1.2', '吊艇钢丝拆装', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('193', '146', '3.7.1.3', '救生艇架检查，运动部件加油', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('194', '147', '3.7.1.4', '救生艇系统压重试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('195', '148', '3.8.1.1', '二氧化碳管路用压缩空气吹通试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('196', '149', '3.8.1.2', '二氧化碳钢瓶原地称重做记录', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('197', '150', '3.8.1.3', '二氧化碳释放系统的切断和恢复', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('198', '151', '3.9.1.1', '舱室天花板', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('199', '152', '3.9.1.2', '舱室壁板', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('200', '153', '3.9.1.3', '保温材料', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('201', '154', '3.9.1.4', '通风管', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('202', '155', '3.9.1.5', '布风器', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('203', '156', '4.1.1.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('204', '156', '4.1.2.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('205', '156', '4.1.3.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('206', '156', '4.1.4.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('207', '156', '4.1.5.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('208', '156', '4.1.6.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('209', '156', '4.1.7.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('210', '156', '4.1.8.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('211', '157', '4.1.8.1', '主轴承', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('212', '158', '4.1.8.1', '上盖检查', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('213', '156', '4.1.8.2', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('214', '159', '4.1.8.2', '十字头轴承', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('215', '156', '4.1.8.3', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('216', '160', '4.1.8.3', '曲柄销轴承', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('217', '156', '4.1.9.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('218', '161', '4.1.9.1', '排气阀', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('219', '156', '4.1.9.2', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('220', '162', '4.1.9.2', '试验阀', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('221', '156', '4.1.9.3', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('222', '163', '4.1.9.3', '启动阀', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('223', '156', '4.1.9.4', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('224', '164', '4.1.9.4', '安全阀', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('225', '165', '4.1.10.1', '６缸机', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('226', '166', '4.1.10.1', '挡差', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('227', '167', '4.1.10.2', '８缸机', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('228', '166', '4.1.10.2', '挡差', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('229', '168', '4.2.1.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('230', '169', '4.2.1.1', '现场修理', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('231', '168', '4.2.1.2', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('232', '170', '4.2.1.2', '车间修理', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('233', '168', '4.2.2.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('234', '168', '4.2.3.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('235', '171', '4.2.3.1', '曲柄销轴承', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('236', '168', '4.2.3.2', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('237', '172', '4.2.3.2', '主轴承', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('238', '168', '4.2.4.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('239', '168', '4.2.5.1', '缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('240', '173', '4.3.1.1', '热交换面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('241', '173', '4.3.2.1', '热交换面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('242', '174', '4.3.2.1', '清洗', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('243', '175', '4.3.3', '刷洗', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('244', '240', '4.4.1.1.1', '单筒', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('245', '176', '4.4.1.1.1', '修理和试验', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('246', '177', '4.4.1.1.2', '双筒', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('247', '176', '4.4.1.1.2', '修理和试验', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('248', '178', '4.4.1.2', '锅炉燃烧器拆装', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('249', '179', '4.4.1.3', '耐火材料', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('250', '180', '4.4.1.4', '锅炉隔热层', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('251', '181', '4.4.1.5.1', '加热面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('252', '182', '4.4.1.5.1', '淡水冲洗、检查', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('253', '183', '4.4.1.5.1', '锅炉', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('254', '181', '4.4.1.5.2', '加热面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('255', '184', '4.4.1.5.2', '水压试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('256', '183', '4.4.1.5.2', '锅炉', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('257', '185', '4.4.1.6.1', '蒸发量', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('258', '182', '4.4.1.6.1', '淡水冲洗、检查', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('259', '183', '4.4.1.6.1', '锅炉', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('260', '185', '4.4.1.6.2', '蒸发量', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('261', '184', '4.4.1.6.2', '水压试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('262', '183', '4.4.1.6.2', '锅炉', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('263', '186', '4.4.1.7.1', '加热面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('264', '182', '4.4.1.7.1', '淡水冲洗、检查', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('265', '186', '4.4.1.7.2', '加热面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('266', '184', '4.4.1.7.2', '水压试验', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('267', '187', '4.4.2.1', '公称通径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('268', '188', '4.4.2.1', '球阀', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('269', '189', '4.4.2.1', '修理', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('270', '187', '4.4.2.2', '公称通径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('271', '190', '4.4.2.2', '考克', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('272', '189', '4.4.2.2', '修理', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('273', '191', '4.5.1.1', '公称通径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('274', '192', '4.5.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('275', '193', '4.5.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('276', '194', '4.5.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('277', '195', '4.5.2.1', '公称通径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('278', '196', '4.5.2.1', '包扎方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('279', '197', '4.5.2.1', '管子位置', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('280', '198', '4.6.1.1', '公称通径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('281', '199', '4.6.1.1', '修理', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('282', '200', '4.6.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('283', '201', '4.7.1.1', '排量', '立方米/时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('284', '202', '4.7.1.1', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('285', '203', '4.7.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('286', '204', '4.7.2.1', '排量', '立方米/时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('287', '205', '4.7.2.1', '泵', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('288', '206', '4.7.3.1', '吸入口', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('289', '207', '4.7.3.1', '杆泵', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('290', '208', '4.8.1.1', '低压缸径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('291', '209', '4.9.1.1', '额定起重量', '吨', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('292', '210', '4.9.1.1', '修理', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('293', '211', '4.10.1.1', '绞盘直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('294', '212', '4.10.1.1', '方式', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('295', '210', '4.10.1.1', '修理', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('296', '213', '4.11.1.1', '锚链直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('297', '210', '4.11.1.1', '修理', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('298', '214', '5.1.1.1', '功率', '千瓦   ', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('299', '215', '5.1.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('300', '216', '5.2.1.1', '功率', '千瓦   ', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('301', '217', '5.2.1.1', '电机拆装', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('302', '218', '5.3.1.1', '单台发电机功率', '千瓦   ', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('303', '219', '5.4.1.1', '开关', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('304', '220', '5.4.1.1', '数量', '只', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('305', '221', '5.5.1.1', '主配电板清洁检查，所有接线螺栓紧固', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('306', '222', '5.6.1.1', '仪表名称', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('307', '223', '5.7.1.1', '托盘电缆', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('308', '224', '5.7.1.1', '直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('309', '225', '5.7.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('310', '226', '5.7.1.1', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('311', '227', '5.7.1.2', '电缆管电缆      ', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('312', '224', '5.7.1.2', '直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('313', '225', '5.7.1.2', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('314', '226', '5.7.1.2', '', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('315', '228', '6.1.1.1', '压缩机额定排量', '立方米/时', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('316', '229', '6.1.1.1', '修理类型', '', 'select', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('317', '230', '6.2', '冷藏货舱隔热层换新', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('318', '231', '6.3.1.1', '热交换面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('319', '231', '6.4.1.1', '热交换面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('320', '231', '6.5.1.1', '热交换面积', '平方米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('321', '232', '7.1.1.1', '带宽', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('322', '233', '7.1.1.1', '主体架', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('323', '232', '7.1.1.2', '带宽', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('324', '234', '7.1.1.2', '无毒带', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('325', '232', '7.1.1.3', '带宽', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('326', '235', '7.1.1.3', '主、从传动辊', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('327', '232', '7.1.1.4', '带宽', '', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('328', '236', '7.1.1.4', '支承辊', '', '', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('329', '237', '7.2.1.1', '机轴直径', '毫米', 'text', null, null, null, null, '0', '1');
INSERT INTO `t_param` VALUES ('330', '238', '7.3.1.1', '门尺寸', '', '', null, null, null, null, null, null);
INSERT INTO `t_param` VALUES ('331', '239被用掉', '', '', '', '', null, null, null, null, null, null);
INSERT INTO `t_param` VALUES ('332', '240被用掉', '', '', '', '', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_param_value_variable
-- ----------------------------
DROP TABLE IF EXISTS `t_param_value_variable`;
CREATE TABLE `t_param_value_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数可变值id',
  `param_code` varchar(45) DEFAULT NULL,
  `param_val_variable` varchar(45) DEFAULT NULL COMMENT '参数可选值',
  `create_by` varchar(45) DEFAULT NULL COMMENT '建立者',
  `create_date` date DEFAULT NULL COMMENT '建立时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `model_id` int(11) DEFAULT NULL COMMENT '红本id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=634 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_param_value_variable
-- ----------------------------
INSERT INTO `t_param_value_variable` VALUES ('1', '1', '0~5000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('2', '1', '5001~10000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('3', '1', '10001~20000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('4', '1', '20001~30000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('5', '1', '30001~40000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('6', '1', '40001~50000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('7', '1', '50001~60000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('8', '1', '60001~80000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('9', '1', '80001~100000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('10', '1', '100001~120000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('11', '1', '120001~150000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('12', '1', '150000~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('13', '2', '0~5000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('14', '2', '5001~10000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('15', '2', '10001~20000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('16', '2', '20001~30000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('17', '2', '30001~40000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('18', '2', '40001~50000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('19', '2', '50001~60000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('20', '2', '60001~80000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('21', '2', '80001~100000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('22', '2', '100001~120000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('23', '2', '120001~150000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('24', '2', '150000~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('25', '3', '接、拆电缆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('26', '4', '租用频率转换器', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('27', '5', '供应交流电', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('28', '6', '接、拆管路', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('29', '7', '供水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('30', '8', '接、拆管路', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('31', '9', '自岸供淡水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('32', '10', '用驳船供淡水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('33', '11', '接、拆管路', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('34', '12', '供水费（海水/江水）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('35', '13', '用船厂泵浦排船上压载水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('36', '14', '接拆蒸汽管路', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('37', '15', '供蒸汽', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('38', '16', '接、拆管路', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('39', '17', '供压缩空气', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('40', '18', '供通风设施费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('41', '19', '安装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('42', '20', '维持', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('43', '21', 'A型：搭架型，按平地脚手架计', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('44', '22', 'B型：架子型，按照HSE要求，架与架之间需要连接的，连接部分按A型计', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('45', '23', '人孔洞安全围栏费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('46', '24', 'CO2释放系统切断和恢复费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('47', '25', '船方自带分包商的安全培训费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('48', '26', '油船', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('49', '27', '化学品船', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('50', '28', 'LPG船', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('51', '29', '以上3种船型以后的测爆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('52', '30', '其他船舶', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('53', '31', '其他船舶以后的测爆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('54', '32', '作业舱室的测氧和有毒有害气体检测费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('55', '33', '设置消防器材', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('56', '34', '接、拆消防水管路', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('57', '35', '维持水压力', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('58', '36', '消防员值班', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('59', '37', '环保防尘布置费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('60', '38', '水域防污染物资配备费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('61', '39', '码头试车安全监护费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('62', '40', '船舶试航安全监护费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('63', '41', '劳动保护和员工安全防护措施费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('64', '42', '污油泥', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('65', '43', '污油水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('66', '44', '剩水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('67', '45', '厂方清除生活垃圾处理费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('68', '46', '生活垃圾接收证明', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('69', '47', '非船厂施工区域的完工清洁费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('70', '48', '保安费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('71', '49', '提供手机及本地服务', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('72', '50', '提供座机及本地服务', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('73', '51', '国内、国际长途费用及上网服务', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('74', '52', '30吨', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('75', '53', '50吨', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('76', '54', '50吨以上', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('77', '55', '高架车租用费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('78', '56', '设置临时疏水管费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('79', '57', '船舶系泊舷梯拆装费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('80', '58', '船舶进出厂及进出坞引水费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('81', '59', '点工费', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('82', '60', '0~5000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('83', '60', '5001~7500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('84', '60', '7501~10000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('85', '60', '10001~15000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('86', '60', '15001~20000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('87', '60', '20001~25000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('88', '60', '25001~30000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('89', '60', '30001~35000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('90', '60', '35001~40000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('91', '60', '40001~45000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('92', '60', '45001~50000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('93', '60', '50001~55000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('94', '60', '60001~65000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('95', '60', '65001~70000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('96', '60', '70001~75000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('97', '60', '75001~80000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('98', '60', '80001~90000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('99', '60', '95001~100000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('100', '60', '100001~120000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('101', '60', '120001~140000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('102', '60', '140001~160000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('103', '61', '首尾2天', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('104', '62', '有浮船坞', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('105', '62', '无浮船坞', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('106', '63', '其他每天', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('107', '64', '0~400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('108', '64', '401~450', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('109', '64', '451~500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('110', '64', '501~550', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('111', '64', '551~600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('112', '64', '601~650', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('113', '64', '651~700', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('114', '64', '701~750', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('115', '64', '751~800', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('116', '64', '800~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('117', '65', '常规型', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('118', '65', '油润滑型', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('119', '66', '4叶桨', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('120', '66', '5叶桨', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('121', '66', '6叶桨', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('122', '67', '0~5000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('123', '67', '5001~10000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('124', '67', '10001~20000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('125', '67', '20001~30000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('126', '67', '35001~40000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('127', '67', '40001~50000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('128', '67', '50001~60000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('129', '67', '60001~70000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('130', '67', '70001~80000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('131', '67', '80000~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('132', '68', '检查间隙', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('133', '69', '更换填料', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('134', '70', 'LMPLEX型舵、悬挂舵、AEG型舵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('135', '71', '穿心舵杆型', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('136', '72', '舵叶的空气压力试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('137', '73', '0~30000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('138', '73', '30001~60000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('139', '73', '60001~100000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('140', '73', '100000~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('141', '74', '海底阀箱维护保养', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('142', '75', '重量', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('143', '76', '双层底内，压载舱内', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('144', '76', '螺栓型', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('145', '77', '拆装、新塘水泥', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('146', '78', '船底塞密性试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('147', '79', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('148', '79', '32', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('149', '79', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('150', '79', '65', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('151', '79', '80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('152', '79', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('153', '79', '125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('154', '79', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('155', '79', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('156', '79', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('157', '79', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('158', '79', '350', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('159', '79', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('160', '79', '450', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('161', '79', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('162', '79', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('163', '80', '球型或角型阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('164', '80', '闸阀、防浪阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('165', '81', '0~10000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('166', '81', '10001~20000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('167', '81', '20001~40000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('168', '81', '40001~60000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('169', '81', '60001~80000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('170', '81', '80001~100000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('171', '81', '100001~150000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('172', '81', '150001~180000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('173', '81', '180001~300000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('174', '81', '300001~400000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('175', '82', '高压水冲洗（压力不小于200巴）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('176', '83', '淡水冲洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('177', '84', '去除少量油污', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('178', '85', '船底和水线', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('179', '86', '补漆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('180', '86', '统漆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('181', '87', '沥青漆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('182', '87', '环氧漆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('183', '87', 'SPC膜厚75微米', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('184', '88', '干舷', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('185', '89', '甲板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('186', '90', '货舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('187', '91', '铲刷', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('188', '91', '拷铲', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('189', '92', '喷砂SA2.5级', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('190', '92', '喷砂SA2级', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('191', '92', '扫砂SA1级', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('192', '93', '甲板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('193', '94', '超高压水除锈2000巴', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('194', '94', '补油漆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('195', '94', '统涂', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('196', '95', '生活区', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('197', '96', '压载舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('198', '239', '舷外', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('199', '97', '困难', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('200', '97', '非困难', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('201', '98', '', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('202', '99', '货舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('203', '100', '机舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('204', '101', '塔式脚手架', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('205', '102', '0~5000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('206', '102', '5001~7500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('207', '102', '7501~10000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('208', '102', '10001~15000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('209', '102', '15001~20000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('210', '102', '20001~25000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('211', '102', '25001~30000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('212', '102', '30001~35000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('213', '102', '35001~40000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('214', '102', '40001~50000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('215', '102', '50001~60000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('216', '102', '60001~70000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('217', '102', '70001~80000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('218', '102', '80000~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('219', '103', '0~19', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('220', '103', '20~30', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('221', '103', '31~40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('222', '103', '41~50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('223', '103', '51~62', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('224', '103', '63~70', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('225', '103', '71~80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('226', '103', '81~90', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('227', '103', '91~100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('228', '103', '101~110', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('229', '103', '111~120', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('230', '104', 'A工程', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('231', '104', 'B工程', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('232', '104', 'C工程', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('233', '104', 'D工程', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('234', '105', '仅冲洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('235', '105', '不冲洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('236', '106', '0~1', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('237', '106', '1~5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('238', '106', '5~10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('239', '106', '10~100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('240', '106', '100~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('241', '108', '拆装校正换新', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('242', '108', '原地校正换新', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('243', '108', '复补换新', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('244', '109', '机舱、泵舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('245', '109', '双层底、艏艉尖舱、深水舱、边水舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('246', '109', '油舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('247', '109', '船底板、舱底板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('248', '109', '艏艉龙骨板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('249', '109', '球鼻艏', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('250', '109', '尾部流线型板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('251', '109', '锚链筒', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('252', '109', '波型舱壁板和舱盖', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('253', '110', '单曲率板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('254', '110', '双曲率板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('255', '110', '高强度抗拉钢板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('256', '110', '特种钢板（包括D级板、E级板、型材）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('257', '110', '平直型钢肋骨', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('258', '112', '0~500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('259', '112', '500~1000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('260', '112', '1000~5000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('261', '112', '5000~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('262', '113', '0~10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('263', '113', '11~16', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('264', '113', '17~25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('265', '113', '25~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('266', '114', '开式', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('267', '114', '闭式', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('268', '115', '栏杆换新（管材32~40毫米）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('269', '116', '栏杆换新（棒材20毫米）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('270', '117', '支柱换新', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('271', '118', '现场校正', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('272', '119', '舱盖板拆装进厂包括铰链销拆装清洁测量', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('273', '120', '开关舱试验（配合船方）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('274', '121', '舱盖冲水试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('275', '122', '船供密封填料换新', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('276', '123', '密封填料槽除锈', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('277', '124', '密封橡皮条换新、除锈油漆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('278', '125', '冲水试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('279', '126', '拆装人孔盖', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('280', '127', '密封垫换新（含拆装）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('281', '128', '0~100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('282', '128', '100~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('283', '129', '轻油', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('284', '129', '重油', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('285', '130', '油泥', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('286', '131', '污油水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('287', '132', '污水', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('288', '133', '剩水（重量≤100吨）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('289', '134', '剩水（重量＞100吨）', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('290', '135', '涂水泥浆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('291', '136', '采用海水试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('292', '137', '采用淡水试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('293', '138', '5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('294', '138', '10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('295', '138', '15', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('296', '139', '2', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('297', '139', '10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('298', '139', '15', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('299', '140', '是', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('300', '140', '否', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('301', '141', '5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('302', '141', '10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('303', '141', '15', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('304', '141', '20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('305', '142', '拆装进厂', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('306', '143', '舷梯压重试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('307', '144', '救生艇拆装进厂', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('308', '145', '吊艇钢丝拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('309', '146', '救生艇架检查，运动部件加油', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('310', '147', '救生艇系统压重试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('311', '148', '二氧化碳管路用压缩空气吹通试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('312', '149', '二氧化碳钢瓶原地称重做记录', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('313', '150', '二氧化碳释放系统的切断和恢复', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('314', '151', '舱室天花板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('315', '152', '舱室壁板', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('316', '153', '保温材料', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('317', '154', '通风管', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('318', '155', '布风器', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('319', '156', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('320', '156', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('321', '156', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('322', '156', '700', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('323', '156', '800', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('324', '156', '900', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('325', '156', '1000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('326', '157', '悬挂式主轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('327', '157', '非悬挂式主轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('328', '158', '仅打开上盖检查', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('329', '158', '不打开上盖检查', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('330', '159', '十字头轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('331', '160', '曲柄销轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('332', '161', '排气阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('333', '162', '试验阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('334', '163', '启动阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('335', '164', '安全阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('336', '165', '６缸机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('337', '167', '８缸机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('338', '166', '仅测量拐挡差', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('339', '166', '非仅测量拐挡差', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('340', '168', '230', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('341', '168', '260', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('342', '168', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('343', '169', '现场修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('344', '170', '车间修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('345', '171', '曲柄销轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('346', '172', '悬挂式主轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('347', '172', '非悬挂式主轴承', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('348', '173', '0~20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('349', '173', '21~50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('350', '173', '51~80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('351', '173', '81~150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('352', '173', '151~220', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('353', '174', '超声波清洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('354', '174', '非超声波清洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('355', '175', '运车间解体刷洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('356', '175', '非运车间解体刷洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('357', '240', '单筒', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('358', '176', '进车间', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('359', '176', '不进车间', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('360', '177', '双筒', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('361', '178', '锅炉燃烧器拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('362', '179', '耐火材料', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('363', '180', '锅炉隔热层', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('364', '181', '32', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('365', '181', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('366', '181', '70', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('367', '181', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('368', '181', '120', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('369', '181', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('370', '182', '水冲洗、检查', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('371', '183', '组合锅炉', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('372', '183', '非组合锅炉', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('373', '184', '水压试验', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('374', '185', '20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('375', '185', '30', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('376', '185', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('377', '185', '60', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('378', '186', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('379', '186', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('380', '186', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('381', '186', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('382', '186', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('383', '187', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('384', '187', '32', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('385', '187', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('386', '187', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('387', '187', '65', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('388', '187', '80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('389', '187', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('390', '187', '125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('391', '187', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('392', '187', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('393', '187', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('394', '188', '球阀', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('395', '189', '进车间修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('396', '189', '不进车间修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('397', '190', '考克', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('398', '191', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('399', '191', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('400', '191', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('401', '191', '65', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('402', '191', '80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('403', '191', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('404', '191', '125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('405', '191', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('406', '191', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('407', '191', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('408', '191', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('409', '191', '350', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('410', '191', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('411', '192', 'SCH40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('412', '192', 'SCH60', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('413', '192', 'SCH80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('414', '193', 'DN300mm以下', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('415', '193', 'DN300mm以上', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('416', '194', '热镀锌', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('417', '194', '酸洗处理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('418', '195', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('419', '195', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('420', '195', '75', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('421', '195', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('422', '195', '125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('423', '195', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('424', '195', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('425', '195', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('426', '195', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('427', '195', '350', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('428', '195', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('429', '196', '绝缘包扎', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('430', '196', '白铁皮包扎', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('431', '197', '机舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('432', '197', '泵舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('433', '197', '双层底', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('434', '198', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('435', '198', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('436', '198', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('437', '198', '65', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('438', '198', '80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('439', '198', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('440', '198', '125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('441', '198', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('442', '198', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('443', '198', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('444', '198', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('445', '198', '350', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('446', '198', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('447', '198', '450', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('448', '198', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('449', '198', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('450', '199', '进车间修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('451', '199', '就地拆检', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('452', '200', '机舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('453', '200', '泵舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('454', '200', '双底层', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('455', '200', '隔离舱', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('456', '200', '管弄', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('457', '200', '密闭舱室', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('458', '201', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('459', '201', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('460', '201', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('461', '201', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('462', '201', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('463', '201', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('464', '201', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('465', '201', '700', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('466', '201', '800', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('467', '201', '900', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('468', '201', '1000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('469', '201', '1200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('470', '201', '1500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('471', '201', '1800', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('472', '201', '2000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('473', '201', '2200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('474', '201', '2300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('475', '202', '立式', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('476', '202', '卧式', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('477', '203', '货油泵离心泵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('478', '203', '双级泵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('479', '204', '2', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('480', '204', '5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('481', '204', '10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('482', '204', '15', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('483', '204', '20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('484', '204', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('485', '204', '30', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('486', '204', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('487', '204', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('488', '204', '60', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('489', '205', '双级泵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('490', '205', '非双级泵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('491', '206', '25', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('492', '206', '32', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('493', '206', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('494', '206', '65', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('495', '206', '80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('496', '206', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('497', '206', '125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('498', '206', '150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('499', '206', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('500', '206', '250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('501', '206', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('502', '206', '350', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('503', '206', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('504', '207', '双螺杆泵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('505', '207', '三螺杆泵', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('506', '208', '50~75', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('507', '208', '76~100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('508', '208', '101~125', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('509', '208', '126~150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('510', '208', '151~200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('511', '208', '201~250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('512', '208', '251~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('513', '209', '5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('514', '209', '10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('515', '209', '15', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('516', '210', '拆装运车间修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('517', '210', '非拆装运车间修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('518', '211', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('519', '211', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('520', '211', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('521', '211', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('522', '211', '700', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('523', '211', '800', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('524', '212', '立式', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('525', '212', '我式', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('526', '213', '35', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('527', '213', '38', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('528', '213', '44', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('529', '213', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('530', '213', '57', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('531', '213', '63', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('532', '213', '70', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('533', '213', '76', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('534', '213', '83', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('535', '213', '89', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('536', '214', '0.5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('537', '214', '1', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('538', '214', '2', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('539', '214', '3', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('540', '214', '4', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('541', '214', '5.5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('542', '214', '7.5', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('543', '214', '10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('544', '214', '15', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('545', '214', '20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('546', '214', '30', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('547', '214', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('548', '214', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('549', '214', '60', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('550', '214', '75', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('551', '215', '变速电机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('552', '215', '风机电机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('553', '215', '化学清洗', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('554', '215', '双速电机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('555', '215', '三速电机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('556', '215', '单速电机', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('557', '215', '单纯电机拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('558', '216', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('559', '216', '200', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('560', '216', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('561', '216', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('562', '216', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('563', '216', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('564', '216', '800', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('565', '216', '1000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('566', '216', '', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('567', '217', '单纯电机拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('568', '217', '非单纯电机拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('569', '218', '100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('570', '218', '300', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('571', '218', '500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('572', '218', '700', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('573', '218', '1000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('574', '219', '带分级卸载开关', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('575', '219', '未带分级卸载开关', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('576', '220', '1', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('577', '220', '2', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('578', '220', '3', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('579', '221', '主配电板清洁检查，所有接线螺栓紧固', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('580', '222', '电流表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('581', '222', '电压表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('582', '222', '功率表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('583', '222', '频率表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('584', '222', '整步表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('585', '222', '转数指示表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('586', '222', '万用表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('587', '222', '兆欧表', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('590', '223', '托盘电缆', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('591', '224', '20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('592', '224', '30', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('593', '224', '40', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('594', '224', '50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('596', '225', '主干电缆拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('597', '225', '非主干电缆拆装', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('598', '226', '高空（离甲板5米以上）及舱底作业', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('599', '226', '非高空（离甲板5米以上）及舱底作业', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('600', '227', '电缆管电缆      ', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('601', '228', '0~30', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('602', '228', '21~50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('603', '228', '61~100', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('604', '228', '101~150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('605', '228', '151~250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('606', '228', '251~400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('607', '228', '401~600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('608', '228', '601~1000', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('609', '228', '1001~1500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('610', '228', '1501~2500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('611', '229', '压缩机修理', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('612', '229', '氮气检漏', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('613', '229', '系统氮气检漏', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('614', '230', '冷藏货舱隔热层换新', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('615', '231', '0~20', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('616', '231', '21~50', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('617', '231', '51~80', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('618', '231', '81~150', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('619', '231', '151~220', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('620', '232', '400', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('621', '232', '600', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('622', '232', '900', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('623', '233', '主体架', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('624', '234', '无毒带', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('625', '235', '主、从传动辊', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('626', '236', '支承辊', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('627', '237', '0~250', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('628', '237', '251~500', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('629', '237', '501~', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('630', '238', '0~10', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('631', '238', '11~16', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('632', '238', '17~23', null, null, null, null, '0', '1');
INSERT INTO `t_param_value_variable` VALUES ('633', '238', '24~', null, null, null, null, '0', '1');

-- ----------------------------
-- Table structure for t_price
-- ----------------------------
DROP TABLE IF EXISTS `t_price`;
CREATE TABLE `t_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '价格表id',
  `param1` varchar(45) DEFAULT NULL COMMENT '参数1',
  `param2` varchar(45) DEFAULT NULL COMMENT '参数2',
  `param3` varchar(45) DEFAULT NULL COMMENT '参数3',
  `param4` varchar(45) DEFAULT NULL COMMENT '参数4',
  `param5` varchar(45) DEFAULT NULL COMMENT '参数5',
  `param6` varchar(45) DEFAULT NULL COMMENT '参数6',
  `param7` varchar(45) DEFAULT NULL COMMENT '参数7',
  `param8` varchar(45) DEFAULT NULL COMMENT '参数8',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_price
-- ----------------------------

-- ----------------------------
-- Table structure for t_private_shipyard
-- ----------------------------
DROP TABLE IF EXISTS `t_private_shipyard`;
CREATE TABLE `t_private_shipyard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '船东关联的船厂的id',
  `name` varchar(45) DEFAULT NULL,
  `group_company` varchar(45) DEFAULT NULL COMMENT '集团公司',
  `country` varchar(45) DEFAULT NULL COMMENT '国家',
  `city` varchar(45) DEFAULT NULL COMMENT '城市',
  `location` varchar(45) DEFAULT NULL COMMENT '位置',
  `tel` varchar(45) DEFAULT NULL COMMENT '电话',
  `email` varchar(45) DEFAULT NULL COMMENT '邮箱',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂的id',
  `contact_name` varchar(45) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_private_shipyard
-- ----------------------------
INSERT INTO `t_private_shipyard` VALUES ('1', 'COSCO DaLian', 'COSCO', '中国', '辽宁沈阳', '', '17317309132', '601590910@qq.com', null, '', null, null, '0', '1', '1', '张三', '');
INSERT INTO `t_private_shipyard` VALUES ('2', 'COSCO(Nantong) Shipyard Co.,Ltd', 'COSCO	', 'China', 'Central China', 'Nantong,Jiangsu Province', '(86)-21-58600111', '601590910@qq.com', null, null, null, null, '0', '1', '2', 'zhenLu', null);
INSERT INTO `t_private_shipyard` VALUES ('3', '上海 船务', null, null, null, null, null, null, null, null, null, null, '0', '1', null, '李四', null);
INSERT INTO `t_private_shipyard` VALUES ('29', '岙洋船务', '中远', 'China', '上海', '上海', '17317309132', '601590910@qq.com', null, null, null, null, '0', '1', null, 'luzhen', '');
INSERT INTO `t_private_shipyard` VALUES ('30', '上海外高桥造船有限公司', 'CSSC', '中国', '上海', '浦东新区', '123456', 'qwe@163.com', null, null, null, null, '1', '1', null, '1234567', 'go/upload-images/SXJs3FEmCt.jpg');
INSERT INTO `t_private_shipyard` VALUES ('31', 'ss', '', '', '', '', '121212', '1211', null, null, null, null, '0', '1', null, '21121', '');

-- ----------------------------
-- Table structure for t_repair_model
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_model`;
CREATE TABLE `t_repair_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修红本id',
  `name` varchar(100) DEFAULT NULL,
  `des` varchar(500) DEFAULT NULL COMMENT '维修类型',
  `version` varchar(30) DEFAULT NULL COMMENT '红本版本号',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_model
-- ----------------------------
INSERT INTO `t_repair_model` VALUES ('1', null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_repair_model_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_model_detail`;
CREATE TABLE `t_repair_model_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修工程范本的id',
  `ship_name` varchar(45) DEFAULT NULL COMMENT '船名',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `catagory` varchar(45) DEFAULT NULL COMMENT '项目分类',
  `pro_order_no` varchar(45) DEFAULT NULL COMMENT '项目单号',
  `pro_name` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `pro_desc` text COMMENT '项目描述',
  `faci_name` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_type` varchar(45) DEFAULT NULL COMMENT '设备类型',
  `faci_src` varchar(45) DEFAULT NULL COMMENT '厂家/国家',
  `faci_no` varchar(45) DEFAULT NULL COMMENT '设备信息：序列号',
  `faci_param` varchar(200) DEFAULT NULL COMMENT '设备信息：相关参数',
  `repair_position` varchar(45) DEFAULT NULL COMMENT '维修部位',
  `repair_position_desc` text COMMENT '维修详细位置',
  `damage` varchar(500) DEFAULT NULL COMMENT '损坏程度',
  `repair_tech` varchar(300) DEFAULT NULL COMMENT '修理工艺',
  `repair_tech_desc` varchar(500) DEFAULT NULL COMMENT '详细修理工艺',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `img` varchar(80) DEFAULT NULL COMMENT '图片或是图纸',
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_model_detail
-- ----------------------------
INSERT INTO `t_repair_model_detail` VALUES ('2', 'sdf', '', 'dsfd', '', 'sdf', 'dsf', '', '', '', '', '', null, '', '', '17,21,24,25,28', '', null, null, null, null, '1', '', '1');
INSERT INTO `t_repair_model_detail` VALUES ('3', '岙洋', '2.1.1', '坞检', '', '维修详细', '', '', '', '', '', '', null, '', '', '1,3,5,15', 'sdfds', null, '', null, null, '0', '', '1');
INSERT INTO `t_repair_model_detail` VALUES ('4', 'sdfds', 'dsf', 'dsf', 'dsfds', 'dsfd', 'dsfds', '', '', '', '', '', null, '', '', '3,4,8', '', null, '', null, null, '0', '', '1');
INSERT INTO `t_repair_model_detail` VALUES ('5', 'efsdf', 'dsfds', 'fsd', 'sdfd', 'sdf', 'dsfsdf', 'sadf', 'sdf', 'sdf', 'sdf', '', '2,3,6,7,14', '', '', '3,7,14', '', null, '', null, null, '0', '', '1');
INSERT INTO `t_repair_model_detail` VALUES ('6', '岙洋11', 'dsfds', 'fsd', 'sdfd', '加一块', 'dsfsdf', 'sadf', 'sdf', 'sdf', 'sdf', '', '2,3,6,7,14', '', '', '2,6,10,14,其它请填', '', null, '', null, null, '1', '', '1');
INSERT INTO `t_repair_model_detail` VALUES ('7', '岙洋11', 'dsfds', 'fsd', 'sdfd', 'OSSCS', 'dsfsdf', 'sadf', 'sdf', 'sdf', 'sdf', '', '2,3,6,7,14', '', '', '2,3,6,7,10,11,14,15', '', null, '', null, null, '0', '', '1');

-- ----------------------------
-- Table structure for t_repair_model_detail_req
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_model_detail_req`;
CREATE TABLE `t_repair_model_detail_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '修理要求/和材料规格的id',
  `des` varchar(500) DEFAULT NULL COMMENT '要求描述/和材料规格',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `repair_model_detail_id` int(11) DEFAULT NULL COMMENT '维修范本id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_model_detail_req
-- ----------------------------
INSERT INTO `t_repair_model_detail_req` VALUES ('29', 'dsf', 'df', '22', '3', null, null, null, null, null);
INSERT INTO `t_repair_model_detail_req` VALUES ('33', 'ewr', 'ewr', '33', '4', null, null, null, null, null);
INSERT INTO `t_repair_model_detail_req` VALUES ('34', 'er', 'er', '22', '4', null, null, null, null, null);
INSERT INTO `t_repair_model_detail_req` VALUES ('35', 'ewrewrew', 'ewr', '45', '4', null, null, null, null, null);
INSERT INTO `t_repair_model_detail_req` VALUES ('237', 'dd', 'w', '22', '7', null, null, null, null, null);
INSERT INTO `t_repair_model_detail_req` VALUES ('238', 'dd', 'w', '22', '7', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_repair_model_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_model_item`;
CREATE TABLE `t_repair_model_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修红本项目id',
  `catagory` varchar(45) DEFAULT NULL COMMENT '''维修项目类型''',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `content` text COMMENT '维修类容',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `info` text COMMENT '维修信息',
  `parent_code` varchar(45) DEFAULT NULL COMMENT '父项目号',
  `status` varchar(45) DEFAULT NULL COMMENT '状态',
  `repair_model_id` int(11) DEFAULT NULL COMMENT '维修红本id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `children` int(11) DEFAULT NULL COMMENT '判断改项是否有孩子',
  `copy` int(11) DEFAULT NULL COMMENT '判断是否需要复制',
  `sort` int(11) DEFAULT NULL COMMENT '工程单排序',
  `src` int(11) DEFAULT NULL COMMENT '判断是自定义还是红本中的数据1代表红本数据，0代表自定义数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_model_item
-- ----------------------------
INSERT INTO `t_repair_model_item` VALUES ('1', '通用服务', '1.1', '码头费', '天', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '101000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('2', '通用服务', '1.2', '系解缆和靠离码头拖轮费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '102000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('3', '通用服务', '1.2.1', '系或解缆', '次', null, null, null, '1.2', null, '1', null, null, null, null, '0', '0', '0', '102010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('4', '通用服务', '1.2.2', '靠或离码头', '次', null, null, null, '1.2', null, '1', null, null, null, null, '0', '0', '0', '102020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('5', '通用服务', '1.3', '供电费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '103000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('6', '通用服务', '1.3.1', '', '次/路', null, null, null, '1.3', null, '1', null, null, null, null, '0', '0', '0', '103010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('7', '通用服务', '1.3.2', '', '天', null, null, null, '1.3', null, '1', null, null, null, null, '0', '0', '0', '103020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('8', '通用服务', '1.3.3', '', '度', null, null, null, '1.3', null, '1', null, null, null, null, '0', '0', '0', '103030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('9', '通用服务', '1.4', '供冷却水费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '104000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('10', '通用服务', '1.4.1', '', '次/路', null, null, null, '1.4', null, '1', null, null, null, null, '0', '0', '0', '104010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('11', '通用服务', '1.4.2', '', '路/天', null, null, null, '1.4', null, '1', null, null, null, null, '0', '0', '0', '104020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('12', '通用服务', '1.5', '供淡水费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '105000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('13', '通用服务', '1.5.1', '', '次/路', null, null, null, '1.5', null, '1', null, null, null, null, '0', '0', '0', '105010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('14', '通用服务', '1.5.2', '', '吨', null, null, null, '1.5', null, '1', null, null, null, null, '0', '0', '0', '105020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('15', '通用服务', '1.5.3', '', '', null, null, null, '1.5', null, '1', null, null, null, null, '0', '0', '0', '105030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('16', '通用服务', '1.6', '供压载水费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '106000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('17', '通用服务', '1.6.1', '', '次/路', null, null, null, '1.6', null, '1', null, null, null, null, '0', '0', '0', '106010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('18', '通用服务', '1.6.2', '', '吨', null, null, null, '1.6', null, '1', null, null, null, null, '0', '0', '0', '106020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('19', '通用服务', '1.6.3', '', '立方米', null, null, null, '1.6', null, '1', null, null, null, null, '0', '0', '0', '106030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('20', '通用服务', '1.7', '供蒸汽费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '107000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('21', '通用服务', '1.7.1', '', '路/次', null, null, null, '1.7', null, '1', null, null, null, null, '0', '0', '0', '107010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('22', '通用服务', '1.7.2', '', '时', null, null, null, '1.7', null, '1', null, null, null, null, '0', '0', '0', '107020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('23', '通用服务', '1.8', '供压缩空气费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '108000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('24', '通用服务', '1.8.1', '', '次/路', null, null, null, '1.8', null, '1', null, null, null, null, '0', '0', '0', '108010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('25', '通用服务', '1.8.2', '', '天/路', null, null, null, '1.8', null, '1', null, null, null, null, '0', '0', '0', '108020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('26', '通用服务', '1.9', '', '台/班', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '109000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('27', '通用服务', '1.10', '供电加热器费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '110000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('28', '通用服务', '1.10.1', '', '台', null, null, null, '1.10', null, '1', null, null, null, null, '0', '0', '0', '110010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('29', '通用服务', '1.10.2', '', '台/班', null, null, null, '1.10', null, '1', null, null, null, null, '0', '0', '0', '110020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('30', '通用服务', '1.11', '作业区域的安全通道布置费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '111000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('31', '通用服务', '1.11.1', '', '立方米', null, null, null, '1.11', null, '1', null, null, null, null, '0', '0', '0', '111010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('32', '通用服务', '1.11.2', '', '个', null, null, null, '1.11', null, '1', null, null, null, null, '0', '0', '0', '111020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('33', '通用服务', '1.12', '', '个', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '112000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('34', '通用服务', '1.13', '', '次', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '113000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('35', '通用服务', '1.14', '', '人', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '114000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('36', '通用服务', '1.15', '可燃气体检测费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '115000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('37', '通用服务', '1.15.1', '', '初次', null, null, null, '1.15', null, '1', null, null, null, null, '0', '0', '0', '115010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('38', '通用服务', '1.15.2', '', '初次', null, null, null, '1.15', null, '1', null, null, null, null, '0', '0', '0', '115020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('39', '通用服务', '1.15.3', '', '初次', null, null, null, '1.15', null, '1', null, null, null, null, '0', '0', '0', '115030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('40', '通用服务', '1.15.4', '', '舱/次', null, null, null, '1.15', null, '1', null, null, null, null, '0', '0', '0', '115040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('41', '通用服务', '1.15.5', '', '初次', null, null, null, '1.15', null, '1', null, null, null, null, '0', '0', '0', '115050000', '1');
INSERT INTO `t_repair_model_item` VALUES ('42', '通用服务', '1.15.6', '', '舱/次', null, null, null, '1.15', null, '1', null, null, null, null, '0', '0', '0', '115060000', '1');
INSERT INTO `t_repair_model_item` VALUES ('43', '通用服务', '1.16', '', '舱/次', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '116000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('44', '通用服务', '1.17', '消防费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '117000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('45', '通用服务', '1.17.1', '', '天', null, null, null, '1.17', null, '1', null, null, null, null, '0', '0', '0', '117010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('46', '通用服务', '1.17.2', '', '次/路', null, null, null, '1.17', null, '1', null, null, null, null, '0', '0', '0', '117020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('47', '通用服务', '1.17.3', '', '路/天', null, null, null, '1.17', null, '1', null, null, null, null, '0', '0', '0', '117030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('48', '通用服务', '1.17.4', '', '天', null, null, null, '1.17', null, '1', null, null, null, null, '0', '0', '0', '117040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('49', '通用服务', '1.18', '', '船', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '118000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('50', '通用服务', '1.19', '', '船', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '119000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('51', '通用服务', '1.20', '', '次', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '120000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('52', '通用服务', '1.21', '', '次', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '121000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('53', '通用服务', '1.22', '', '船', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '122000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('54', '通用服务', '1.23', '船上泥和水的抽排费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '123000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('55', '通用服务', '1.23.1', '', '', null, null, null, '1.23', null, '1', null, null, null, null, '0', '0', '0', '123010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('56', '通用服务', '1.23.2', '', '', null, null, null, '1.23', null, '1', null, null, null, null, '0', '0', '0', '123020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('57', '通用服务', '1.23.3', '', '', null, null, null, '1.23', null, '1', null, null, null, null, '0', '0', '0', '123030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('58', '通用服务', '1.24', '生活垃圾处理费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '124000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('59', '通用服务', '1.24.1', '', '天', null, null, null, '1.24', null, '1', null, null, null, null, '0', '0', '0', '124010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('60', '通用服务', '1.24.2', '', '份', null, null, null, '1.24', null, '1', null, null, null, null, '0', '0', '0', '124020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('61', '通用服务', '1.25', '', '船', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '125000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('62', '通用服务', '1.26', '', '天', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '126000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('63', '通用服务', '1.27', '通讯费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '127000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('64', '通用服务', '1.27.1', '', '台/天', null, null, null, '1.27', null, '1', null, null, null, null, '0', '0', '0', '127010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('65', '通用服务', '1.27.2', '', '台/天', null, null, null, '1.27', null, '1', null, null, null, null, '0', '0', '0', '127020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('66', '通用服务', '1.27.3', '', '', null, null, null, '1.27', null, '1', null, null, null, null, '0', '0', '0', '127030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('67', '通用服务', '1.28', '起吊设备租用费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '128000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('68', '通用服务', '1.28.1', '', '时', null, null, null, '1.28', null, '1', null, null, null, null, '0', '0', '0', '128010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('69', '通用服务', '1.28.2', '', '时', null, null, null, '1.28', null, '1', null, null, null, null, '0', '0', '0', '128020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('70', '通用服务', '1.28.3', '', '时', null, null, null, '1.28', null, '1', null, null, null, null, '0', '0', '0', '128030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('71', '通用服务', '1.29', '', '时/台', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '129000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('72', '通用服务', '1.30', '', '只', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '130000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('73', '通用服务', '1.31', '', '次', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '131000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('74', '通用服务', '1.32', '', '次', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '132000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('75', '通用服务', '1.33', '', '人/时', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '133000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('76', '坞修工程', '2.1', '船坞费', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '201000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('77', '坞修工程', '2.1.1', '', '', null, null, null, '2.1', null, '1', null, null, null, null, '0', '0', '0', '201010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('78', '坞修工程', '2.1.2', '', '', null, null, null, '2.1', null, '1', null, null, null, null, '0', '0', '0', '201020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('79', '坞修工程', '2.2', '艉轴工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '202000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('80', '坞修工程', '2.2.1', '常规服务', '', null, null, null, '2.2', null, '1', null, null, null, null, '0', '0', '0', '202010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('81', '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, '2.2', null, '1', null, null, null, null, '0', '0', '0', '202020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('82', '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, '2.2', null, '1', null, null, null, null, '0', '0', '0', '202030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('83', '坞修工程', '2.3', '舵系工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '203000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('84', '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, '2.3', null, '1', null, null, null, null, '0', '0', '0', '203010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('85', '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, '2.3', null, '1', null, null, null, null, '0', '0', '0', '203020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('86', '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, '2.3', null, '1', null, null, null, null, '0', '0', '0', '203030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('87', '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, '2.3', null, '1', null, null, null, null, '0', '0', '0', '203040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('88', '坞修工程', '2.4', '水下工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '204000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('89', '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, '2.4', null, '1', null, null, null, null, '0', '0', '0', '204010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('90', '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, '2.4', null, '1', null, null, null, null, '0', '0', '0', '204020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('91', '坞修工程', '2.4.3', '船底塞', '', null, null, null, '2.4', null, '1', null, null, null, null, '0', '0', '0', '204030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('92', '坞修工程', '2.4.4', '海底阀', '', null, null, null, '2.4', null, '1', null, null, null, null, '0', '0', '0', '204040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('93', '船体工程', '3.1', '清洁和油漆', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '301000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('94', '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('95', '船体工程', '3.1.2', '船体清洁', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('96', '船体工程', '3.1.3', '涂漆', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('97', '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('98', '船体工程', '3.1.5', '喷砂', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301050000', '1');
INSERT INTO `t_repair_model_item` VALUES ('99', '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301060000', '1');
INSERT INTO `t_repair_model_item` VALUES ('100', '船体工程', '3.1.7', '脚手架', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301070000', '1');
INSERT INTO `t_repair_model_item` VALUES ('101', '船体工程', '3.2', '锚和锚链工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '302000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('102', '船体工程', '3.2.1', '锚链', '', null, null, null, '3.2', null, '1', null, null, null, null, '0', '0', '0', '302010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('103', '船体工程', '3.2.2', '锚链工程', '', null, null, null, '3.2', null, '1', null, null, null, null, '0', '0', '0', '302020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('104', '船体工程', '3.2.3', '锚链舱', '', null, null, null, '3.2', null, '1', null, null, null, null, '0', '0', '0', '302030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('105', '船体工程', '3.3', '钢质工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '303000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('106', '船体工程', '3.3.1', '钢板换新', '', null, null, null, '3.3', null, '1', null, null, null, null, '0', '0', '0', '303010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('107', '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, '3.3', null, '1', null, null, null, null, '0', '0', '0', '303020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('108', '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, '3.3', null, '1', null, null, null, null, '0', '0', '0', '303030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('109', '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, '3.3', null, '1', null, null, null, null, '0', '0', '0', '303040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('110', '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, '3.3', null, '1', null, null, null, null, '0', '0', '0', '303050000', '1');
INSERT INTO `t_repair_model_item` VALUES ('111', '船体工程', '3.4', '舱工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '304000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('112', '船体工程', '3.4.1', '清洗', '', null, null, null, '3.4', null, '1', null, null, null, null, '0', '0', '0', '304010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('113', '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, '3.4', null, '1', null, null, null, null, '0', '0', '0', '304020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('114', '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, '3.4', null, '1', null, null, null, null, '0', '0', '0', '304030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('115', '船体工程', '3.4.4', '试验', '', null, null, null, '3.4', null, '1', null, null, null, null, '0', '0', '0', '304040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('116', '船体工程', '3.5', '起吊设备', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '305000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('117', '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, '3.5', null, '1', null, null, null, null, '0', '0', '0', '305010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('118', '船体工程', '3.5.2', '滑车', '', null, null, null, '3.5', null, '1', null, null, null, null, '0', '0', '0', '305020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('119', '船体工程', '3.5.3', '吊重试验', '', null, null, null, '3.5', null, '1', null, null, null, null, '0', '0', '0', '305030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('120', '船体工程', '3.6', '舷梯工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '306000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('121', '船体工程', '3.6.1', '舷梯工程', '', null, null, null, '3.6', null, '1', null, null, null, null, '0', '0', '0', '306010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('122', '船体工程', '3.7', '救生艇系统', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '307000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('123', '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, '3.7', null, '1', null, null, null, null, '0', '0', '0', '307010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('124', '船体工程', '3.8', '二氧化碳灭火系统', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '308000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('125', '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, '3.8', null, '1', null, null, null, null, '0', '0', '0', '308010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('126', '船体工程', '3.9', '舾装工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '309000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('127', '船体工程', '3.9.1', '舾装工程', '', null, null, null, '3.9', null, '1', null, null, null, null, '0', '0', '0', '309010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('128', '机械工程', '4.1', '柴油机主机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '401000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('129', '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('130', '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('131', '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('132', '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('133', '机械工程', '4.1.5', '活塞环', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401050000', '1');
INSERT INTO `t_repair_model_item` VALUES ('134', '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401060000', '1');
INSERT INTO `t_repair_model_item` VALUES ('135', '机械工程', '4.1.7', '气缸套', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401070000', '1');
INSERT INTO `t_repair_model_item` VALUES ('136', '机械工程', '4.1.8', '轴承', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401080000', '1');
INSERT INTO `t_repair_model_item` VALUES ('137', '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401090000', '1');
INSERT INTO `t_repair_model_item` VALUES ('138', '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401100000', '1');
INSERT INTO `t_repair_model_item` VALUES ('139', '机械工程', '4.2', '柴油机副机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '402000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('140', '机械工程', '4.2.1', '气缸盖', '', null, null, null, '4.2', null, '1', null, null, null, null, '0', '0', '0', '402010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('141', '机械工程', '4.2.2', '活塞', '', null, null, null, '4.2', null, '1', null, null, null, null, '0', '0', '0', '402020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('142', '机械工程', '4.2.3', '轴承', '', null, null, null, '4.2', null, '1', null, null, null, null, '0', '0', '0', '402030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('143', '机械工程', '4.2.4', '气缸套', '', null, null, null, '4.2', null, '1', null, null, null, null, '0', '0', '0', '402040000', '1');
INSERT INTO `t_repair_model_item` VALUES ('144', '机械工程', '4.2.5', '试验项目', '', null, null, null, '4.2', null, '1', null, null, null, null, '0', '0', '0', '402050000', '1');
INSERT INTO `t_repair_model_item` VALUES ('145', '机械工程', '4.3', '热交换器', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '403000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('146', '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, '4.3', null, '1', null, null, null, null, '0', '0', '0', '403010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('147', '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, '4.3', null, '1', null, null, null, null, '0', '0', '0', '403020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('148', '机械工程', '4.3.3', '板状热交换器', '', null, null, null, '4.3', null, '1', null, null, null, null, '0', '0', '0', '403030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('149', '机械工程', '4.4', '锅炉和锅炉附件', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '404000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('150', '机械工程', '4.4.1', '锅炉', '', null, null, null, '4.4', null, '1', null, null, null, null, '0', '0', '0', '404010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('151', '机械工程', '4.4.2', '锅炉附件', '', null, null, null, '4.4', null, '1', null, null, null, null, '0', '0', '0', '404020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('152', '机械工程', '4.5', '管系工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '405000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('153', '机械工程', '4.5.1', '管路换新', '', null, null, null, '4.5', null, '1', null, null, null, null, '0', '0', '0', '405010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('154', '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, '4.5', null, '1', null, null, null, null, '0', '0', '0', '405020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('155', '机械工程', '4.6', '阀门工程', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '406000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('156', '机械工程', '4.6.1', '阀门工程', '', null, null, null, '4.6', null, '1', null, null, null, null, '0', '0', '0', '406010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('157', '机械工程', '4.7', '泵浦', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '407000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('158', '机械工程', '4.7.1', '电动离心泵', '', null, null, null, '4.7', null, '1', null, null, null, null, '0', '0', '0', '407010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('159', '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, '4.7', null, '1', null, null, null, null, '0', '0', '0', '407020000', '1');
INSERT INTO `t_repair_model_item` VALUES ('160', '机械工程', '4.7.3', '螺杆泵', '', null, null, null, '4.7', null, '1', null, null, null, null, '0', '0', '0', '407030000', '1');
INSERT INTO `t_repair_model_item` VALUES ('161', '机械工程', '4.8', '空压机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '408000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('162', '机械工程', '4.8.1', '空压机', '', null, null, null, '4.8', null, '1', null, null, null, null, '0', '0', '0', '408010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('163', '机械工程', '4.9', '起货机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '409000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('164', '机械工程', '4.9.1', '起货机', '', null, null, null, '4.9', null, '1', null, null, null, null, '0', '0', '0', '409010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('165', '机械工程', '4.10', '卧式/立式绞缆机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '410000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('166', '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, '4.10', null, '1', null, null, null, null, '0', '0', '0', '410010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('167', '机械工程', '4.11', '起锚机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '411000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('168', '机械工程', '4.11.1', '起锚机', '台', null, null, null, '4.11', null, '1', null, null, null, null, '0', '0', '0', '411010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('169', '电气工程', '5.1', '交流电动机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '501000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('170', '电气工程', '5.1.1', '交流电动机', '', null, null, null, '5.1', null, '1', null, null, null, null, '0', '0', '0', '501010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('171', '电气工程', '5.2', '交流发电机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '502000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('172', '电气工程', '5.2.1', '交流发电机', '', null, null, null, '5.2', null, '1', null, null, null, null, '0', '0', '0', '502010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('173', '电气工程', '5.3', '发电机负荷及并联试验', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '503000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('174', '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, '5.3', null, '1', null, null, null, null, '0', '0', '0', '503010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('175', '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '504000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('176', '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, '5.4', null, '1', null, null, null, null, '0', '0', '0', '504010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('177', '电气工程', '5.5', '主配电板', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '505000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('178', '电气工程', '5.5.1', '主配电板', '', null, null, null, '5.3', null, '1', null, null, null, null, '0', '0', '0', '505010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('179', '电气工程', '5.6', '仪表', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '506000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('180', '电气工程', '5.6.1', '仪表校验', '', null, null, null, '5.6', null, '1', null, null, null, null, '0', '0', '0', '506010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('181', '电气工程', '5.7', '电缆拆装与新装', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '507000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('182', '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, '5.7', null, '1', null, null, null, null, '0', '0', '0', '507010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('183', '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '601000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('184', '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, '6.1', null, '1', null, null, null, null, '0', '0', '0', '601010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('185', '冷藏工程', '6.2', '', '', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '602000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('186', '冷藏工程', '6.3', '制冷系统蒸发器', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '603000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('187', '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, '6.3', null, '1', null, null, null, null, '0', '0', '0', '603010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('188', '冷藏工程', '6.4', '制冷系统冷凝器', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '604000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('189', '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, '6.4', null, '1', null, null, null, null, '0', '0', '0', '604010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('190', '冷藏工程', '6.5', '制冷系统中间容器', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '605000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('191', '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, '6.5', null, '1', null, null, null, null, '0', '0', '0', '605010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('192', '特种设备', '7.1', '鱼加工带式传动装置', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '701000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('193', '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, '7.1', null, '1', null, null, null, null, '0', '0', '0', '701010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('194', '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '702000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('195', '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, '7.2', null, '1', null, null, null, null, '0', '0', '0', '702010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('196', '特种设备', '7.3', '挖泥船泥门', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '703000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('197', '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, '7.3', null, '1', null, null, null, null, '0', '0', '0', '703010000', '1');
INSERT INTO `t_repair_model_item` VALUES ('198', '通用服务', '1.34', 'addrow', '', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '134000000', '0');
INSERT INTO `t_repair_model_item` VALUES ('199', '坞修工程', '2.2.4', 'addrow', '', null, null, null, '2.2', null, '1', null, null, null, null, '0', '0', '0', '202040000', '0');
INSERT INTO `t_repair_model_item` VALUES ('200', '坞修工程', '2.3.5', 'addrow', '', null, null, null, '2.3', null, '1', null, null, null, null, '0', '0', '0', '203050000', '0');
INSERT INTO `t_repair_model_item` VALUES ('201', '坞修工程', '2.4.5', 'addrow', '', null, null, null, '2.4', null, '1', null, null, null, null, '0', '0', '0', '204050000', '0');
INSERT INTO `t_repair_model_item` VALUES ('202', '坞修工程', '2.5', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '205000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('203', '坞修工程', '2.5.1', 'addrow', '', null, null, null, '2.5', null, '1', null, null, null, null, '0', '0', '0', '205010000', '0');
INSERT INTO `t_repair_model_item` VALUES ('204', '船体工程', '3.1.8', 'addrow', '', null, null, null, '3.1', null, '1', null, null, null, null, '0', '0', '0', '301080000', '0');
INSERT INTO `t_repair_model_item` VALUES ('205', '船体工程', '3.2.4', 'addrow', '', null, null, null, '3.2', null, '1', null, null, null, null, '0', '0', '0', '302040000', '0');
INSERT INTO `t_repair_model_item` VALUES ('206', '船体工程', '3.3.6', 'addrow', '', null, null, null, '3.3', null, '1', null, null, null, null, '0', '0', '0', '303060000', '0');
INSERT INTO `t_repair_model_item` VALUES ('207', '船体工程', '3.4.5', 'addrow', '', null, null, null, '3.4', null, '1', null, null, null, null, '0', '0', '0', '304050000', '0');
INSERT INTO `t_repair_model_item` VALUES ('208', '船体工程', '3.5.4', 'addrow', '', null, null, null, '3.5', null, '1', null, null, null, null, '0', '0', '0', '305040000', '0');
INSERT INTO `t_repair_model_item` VALUES ('209', '船体工程', '3.6.2', 'addrow', '', null, null, null, '3.6', null, '1', null, null, null, null, '0', '0', '0', '306020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('210', '船体工程', '3.7.2', 'addrow', '', null, null, null, '3.7', null, '1', null, null, null, null, '0', '0', '0', '307020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('211', '船体工程', '3.8.2', 'addrow', '', null, null, null, '3.8', null, '1', null, null, null, null, '0', '0', '0', '308020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('212', '船体工程', '3.9.2', 'addrow', '', null, null, null, '3.9', null, '1', null, null, null, null, '0', '0', '0', '309020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('213', '船体工程', '3.10', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '310000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('214', '船体工程', '3.10.1', 'addrow', '', null, null, null, '3.10', null, '1', null, null, null, null, '0', '0', '0', '310010000', '0');
INSERT INTO `t_repair_model_item` VALUES ('215', '机械工程', '4.1.11', 'addrow', '', null, null, null, '4.1', null, '1', null, null, null, null, '0', '0', '0', '401110000', '0');
INSERT INTO `t_repair_model_item` VALUES ('216', '机械工程', '4.2.6', 'addrow', '', null, null, null, '4.2', null, '1', null, null, null, null, '0', '0', '0', '402060000', '0');
INSERT INTO `t_repair_model_item` VALUES ('217', '机械工程', '4.3.4', 'addrow', '', null, null, null, '4.3', null, '1', null, null, null, null, '0', '0', '0', '403040000', '0');
INSERT INTO `t_repair_model_item` VALUES ('218', '机械工程', '4.4.3', 'addrow', '', null, null, null, '4.4', null, '1', null, null, null, null, '0', '0', '0', '404030000', '0');
INSERT INTO `t_repair_model_item` VALUES ('219', '机械工程', '4.5.3', 'addrow', '', null, null, null, '4.5', null, '1', null, null, null, null, '0', '0', '0', '405030000', '0');
INSERT INTO `t_repair_model_item` VALUES ('220', '机械工程', '4.6.2', 'addrow', '', null, null, null, '4.6', null, '1', null, null, null, null, '0', '0', '0', '406020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('221', '机械工程', '4.7.4', 'addrow', '', null, null, null, '4.7', null, '1', null, null, null, null, '0', '0', '0', '407040000', '0');
INSERT INTO `t_repair_model_item` VALUES ('222', '机械工程', '4.8.2', 'addrow', '', null, null, null, '4.8', null, '1', null, null, null, null, '0', '0', '0', '408020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('223', '机械工程', '4.9.2', 'addrow', '', null, null, null, '4.9', null, '1', null, null, null, null, '0', '0', '0', '409020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('224', '机械工程', '4.10.2', 'addrow', '', null, null, null, '4.10', null, '1', null, null, null, null, '0', '0', '0', '410020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('225', '机械工程', '4.11.2', 'addrow', '', null, null, null, '4.11', null, '1', null, null, null, null, '0', '0', '0', '411020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('226', '机械工程', '4.12', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '412000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('227', '机械工程', '4.12.1', 'addrow', '', null, null, null, '4.12', null, '1', null, null, null, null, '0', '0', '0', '412010000', '0');
INSERT INTO `t_repair_model_item` VALUES ('228', '电气工程', '5.1.2', 'addrow', '', null, null, null, '5.1', null, '1', null, null, null, null, '0', '0', '0', '501020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('229', '电气工程', '5.2.2', 'addrow', '', null, null, null, '5.2', null, '1', null, null, null, null, '0', '0', '0', '502020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('230', '电气工程', '5.3.2', 'addrow', '', null, null, null, '5.3', null, '1', null, null, null, null, '0', '0', '0', '503020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('231', '电气工程', '5.4.2', 'addrow', '', null, null, null, '5.4', null, '1', null, null, null, null, '0', '0', '0', '504020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('232', '电气工程', '5.5.2', 'addrow', '', null, null, null, '5.5', null, '1', null, null, null, null, '0', '0', '0', '505020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('233', '电气工程', '5.6.2', 'addrow', '', null, null, null, '5.6', null, '1', null, null, null, null, '0', '0', '0', '506020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('234', '电气工程', '5.7.2', 'addrow', '', null, null, null, '5.7', null, '1', null, null, null, null, '0', '0', '0', '507020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('235', '电气工程', '5.8', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '508000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('236', '电气工程', '5.8.1', 'addrow', '', null, null, null, '5.8', null, '1', null, null, null, null, '0', '0', '0', '508010000', '0');
INSERT INTO `t_repair_model_item` VALUES ('237', '冷藏工程', '6.1.2', 'addrow', '', null, null, null, '6.1', null, '1', null, null, null, null, '0', '0', '0', '601020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('238', '冷藏工程', '6.3.2', 'addrow', '', null, null, null, '6.3', null, '1', null, null, null, null, '0', '0', '0', '603020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('239', '冷藏工程', '6.4.2', 'addrow', '', null, null, null, '6.4', null, '1', null, null, null, null, '0', '0', '0', '604020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('240', '冷藏工程', '6.5.2', 'addrow', '', null, null, null, '6.5', null, '1', null, null, null, null, '0', '0', '0', '605020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('241', '冷藏工程', '6.6', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '606000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('242', '冷藏工程', '6.6.1', 'addrow', '', null, null, null, '6.6', null, '1', null, null, null, null, '0', '0', '0', '606010000', '0');
INSERT INTO `t_repair_model_item` VALUES ('243', '特种设备', '7.1.2', 'addrow', '', null, null, null, '7.1', null, '1', null, null, null, null, '0', '0', '0', '701020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('244', '特种设备', '7.2.2', 'addrow', '', null, null, null, '7.2', null, '1', null, null, null, null, '0', '0', '0', '702020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('245', '特种设备', '7.3.2', 'addrow', '', null, null, null, '7.3', null, '1', null, null, null, null, '0', '0', '0', '703020000', '0');
INSERT INTO `t_repair_model_item` VALUES ('246', '特种设备', '7.4', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '704000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('247', '特种设备', '7.4.1', 'addrow', '', null, null, null, '0', null, '1', null, null, null, null, '0', '0', '0', '704010000', '0');
INSERT INTO `t_repair_model_item` VALUES ('248', '其他', '8.1', '自定义', '', null, null, null, '0', null, '1', null, null, null, null, '0', '1', '0', '801000000', '1');
INSERT INTO `t_repair_model_item` VALUES ('249', '其他', '8.1.1', 'addrow', '', null, null, null, '8.1', null, '1', null, null, null, null, '0', '0', '0', '801010000', '0');

-- ----------------------------
-- Table structure for t_repair_prog
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog`;
CREATE TABLE `t_repair_prog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度id',
  `order_no` varchar(45) DEFAULT NULL COMMENT '维修单号',
  `ship_id` int(11) DEFAULT NULL COMMENT '船的id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `plan_start_date` date DEFAULT NULL COMMENT '计划进厂日期',
  `plan_days` int(11) DEFAULT NULL COMMENT '计划天数',
  `plan_cost` int(11) DEFAULT NULL COMMENT '计划金额',
  `type` varchar(45) DEFAULT NULL COMMENT '维修类型',
  `enquiry_id` int(11) DEFAULT NULL COMMENT '询价id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `ship_name` varchar(45) DEFAULT NULL COMMENT '船舶名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog
-- ----------------------------
INSERT INTO `t_repair_prog` VALUES ('1', null, '4', '1', null, null, null, '1', null, '2017-03-10', 'luzhen', null, null, '0', null, 'wq');
INSERT INTO `t_repair_prog` VALUES ('2', '000000001', '1', '1', '2017-02-17', '21', '321321', '1', null, '2017-02-17', 'luzhen', null, null, '0', null, 'sdasdsa');

-- ----------------------------
-- Table structure for t_repair_prog_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog_detail`;
CREATE TABLE `t_repair_prog_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度详细信息id',
  `repair_prog_id` int(11) DEFAULT NULL COMMENT '维修进度id',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `catagory` varchar(45) DEFAULT NULL COMMENT '项目分类',
  `pro_name` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `pro_desc` varchar(45) DEFAULT NULL COMMENT '工程描述',
  `faci_name` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_type` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_no` varchar(45) DEFAULT NULL COMMENT '序列号',
  `faci_param` varchar(200) DEFAULT NULL COMMENT '相关参数',
  `faci_src` varchar(45) DEFAULT NULL COMMENT '厂家/国家',
  `repair_position` varchar(45) DEFAULT NULL COMMENT '维修部位',
  `repair_position_desc` varchar(500) DEFAULT NULL COMMENT '维修详细位置',
  `damage` varchar(500) DEFAULT NULL COMMENT '损坏程度',
  `repair_tech` varchar(300) DEFAULT NULL COMMENT '修理工艺',
  `repair_tech_desc` varchar(500) DEFAULT NULL COMMENT '详细修理工艺',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `ship_name` varchar(45) DEFAULT NULL COMMENT '船名',
  `pro_order_no` varchar(45) DEFAULT NULL COMMENT '项目单号',
  `img` varchar(80) DEFAULT NULL COMMENT '图片或是图纸',
  `task_status` int(11) DEFAULT NULL COMMENT '任务状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog_detail
-- ----------------------------
INSERT INTO `t_repair_prog_detail` VALUES ('1', '1', '2.3.1', '坞修工程', 'sdfds', '', '', '', '', '', '', null, '', '', '16', '', null, null, null, null, '0', 'wq', 'D-002', '', null);

-- ----------------------------
-- Table structure for t_repair_prog_detail_req
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog_detail_req`;
CREATE TABLE `t_repair_prog_detail_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度中修理要求和规格的id',
  `des` varchar(500) DEFAULT NULL COMMENT '''要求描述/材料规格''',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详细的信息id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog_detail_req
-- ----------------------------
INSERT INTO `t_repair_prog_detail_req` VALUES ('1', 'sdsd', 'sdf', '33', '1', null, null, null, null, null);
INSERT INTO `t_repair_prog_detail_req` VALUES ('2', 'sdfsd', '3', '33', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_repair_prog_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_prog_item`;
CREATE TABLE `t_repair_prog_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修进度项目id',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详细信息id',
  `catagory` varchar(45) DEFAULT NULL COMMENT '维修项目类型',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `content` varchar(45) DEFAULT NULL COMMENT '维修类容',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `parent_code` varchar(45) DEFAULT NULL COMMENT '父项目号',
  `info` text COMMENT '维修信息',
  `task_status` int(11) DEFAULT NULL COMMENT '任务状态',
  `repair_prog_id` int(11) DEFAULT NULL COMMENT '维修进度id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `sort` int(11) DEFAULT NULL COMMENT '工程单排序',
  `src` int(11) DEFAULT NULL COMMENT '判断是自定义还是红本中的数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3238 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_prog_item
-- ----------------------------
INSERT INTO `t_repair_prog_item` VALUES ('1997', null, '通用服务', '1.3', '供电费', '', null, '', null, null, null, '10', null, null, null, null, '0', '103000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('1998', null, '通用服务', '1.3.1', '', '次/路', '3', null, null, null, null, '10', null, null, null, null, '0', '103010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('1999', null, '通用服务', '1.3.2', '', '天', '3', null, null, null, null, '10', null, null, null, null, '0', '103020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2000', null, '通用服务', '1.3.3', '', '度', '43', null, null, null, null, '10', null, null, null, null, '0', '103030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2001', null, '通用服务', '1.4', '供冷却水费', '', null, '', null, null, null, '10', null, null, null, null, '0', '104000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2002', null, '通用服务', '1.4.1', '', '次/路', '34', null, null, null, null, '10', null, null, null, null, '0', '104010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2003', null, '通用服务', '1.4.2', '', '路/天', '34', null, null, null, null, '10', null, null, null, null, '0', '104020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2004', null, '通用服务', '1.5', '供淡水费', '', null, '', null, null, null, '10', null, null, null, null, '0', '105000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2005', null, '通用服务', '1.5.1', '', '次/路', null, null, null, null, null, '10', null, null, null, null, '0', '105010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2006', null, '通用服务', '1.5.2', '', '吨', null, null, null, null, null, '10', null, null, null, null, '0', '105020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2007', null, '通用服务', '1.5.3', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '105030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2008', null, '通用服务', '1.6', '供压载水费', '', null, '', null, null, null, '10', null, null, null, null, '0', '106000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2009', null, '通用服务', '1.6.1', '', '次/路', null, null, null, null, null, '10', null, null, null, null, '0', '106010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2010', null, '通用服务', '1.6.2', '', '吨', null, null, null, null, null, '10', null, null, null, null, '0', '106020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2011', null, '通用服务', '1.6.3', '', '立方米', null, null, null, null, null, '10', null, null, null, null, '0', '106030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2012', null, '通用服务', '1.7', '供蒸汽费', '', null, '', null, null, null, '10', null, null, null, null, '0', '107000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2013', null, '通用服务', '1.7.1', '', '路/次', null, null, null, null, null, '10', null, null, null, null, '0', '107010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2014', null, '通用服务', '1.7.2', '', '时', null, null, null, null, null, '10', null, null, null, null, '0', '107020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2015', null, '通用服务', '1.8', '供压缩空气费', '', null, '', null, null, null, '10', null, null, null, null, '0', '108000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2016', null, '通用服务', '1.8.1', '', '次/路', null, null, null, null, null, '10', null, null, null, null, '0', '108010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2017', null, '通用服务', '1.8.2', '', '天/路', null, null, null, null, null, '10', null, null, null, null, '0', '108020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2018', null, '通用服务', '1.9', '', '台/班', null, '', null, null, null, '10', null, null, null, null, '0', '109000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2019', null, '通用服务', '1.10', '供电加热器费', '', null, '', null, null, null, '10', null, null, null, null, '0', '110000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2020', null, '通用服务', '1.10.1', '', '台', null, null, null, null, null, '10', null, null, null, null, '0', '110010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2021', null, '通用服务', '1.10.2', '', '台/班', null, null, null, null, null, '10', null, null, null, null, '0', '110020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2022', null, '通用服务', '1.11', '作业区域的安全通道布置费', '', null, '', null, null, null, '10', null, null, null, null, '0', '111000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2023', null, '通用服务', '1.11.1', '', '立方米', null, null, null, null, null, '10', null, null, null, null, '0', '111010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2024', null, '通用服务', '1.11.2', '', '个', null, null, null, null, null, '10', null, null, null, null, '0', '111020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2025', null, '通用服务', '1.12', '', '个', null, '', null, null, null, '10', null, null, null, null, '0', '112000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2026', null, '通用服务', '1.13', '', '次', null, '', null, null, null, '10', null, null, null, null, '0', '113000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2027', null, '通用服务', '1.14', '', '人', null, '', null, null, null, '10', null, null, null, null, '0', '114000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2028', null, '通用服务', '1.15', '可燃气体检测费', '', null, '', null, null, null, '10', null, null, null, null, '0', '115000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2029', null, '通用服务', '1.15.1', '', '初次', null, null, null, null, null, '10', null, null, null, null, '0', '115010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2030', null, '通用服务', '1.15.2', '', '初次', null, null, null, null, null, '10', null, null, null, null, '0', '115020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2031', null, '通用服务', '1.15.3', '', '初次', null, null, null, null, null, '10', null, null, null, null, '0', '115030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2032', null, '通用服务', '1.15.4', '', '舱/次', null, null, null, null, null, '10', null, null, null, null, '0', '115040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2033', null, '通用服务', '1.15.5', '', '初次', null, null, null, null, null, '10', null, null, null, null, '0', '115050000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2034', null, '通用服务', '1.15.6', '', '舱/次', null, null, null, null, null, '10', null, null, null, null, '0', '115060000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2035', null, '通用服务', '1.16', '', '舱/次', null, '', null, null, null, '10', null, null, null, null, '0', '116000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2036', null, '通用服务', '1.17', '消防费', '', null, '', null, null, null, '10', null, null, null, null, '0', '117000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2037', null, '通用服务', '1.17.1', '', '天', null, null, null, null, null, '10', null, null, null, null, '0', '117010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2038', null, '通用服务', '1.17.2', '', '次/路', null, null, null, null, null, '10', null, null, null, null, '0', '117020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2039', null, '通用服务', '1.17.3', '', '路/天', null, null, null, null, null, '10', null, null, null, null, '0', '117030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2040', null, '通用服务', '1.17.4', '', '天', null, null, null, null, null, '10', null, null, null, null, '0', '117040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2041', null, '通用服务', '1.18', '', '船', null, '', null, null, null, '10', null, null, null, null, '0', '118000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2042', null, '通用服务', '1.19', '', '船', null, '', null, null, null, '10', null, null, null, null, '0', '119000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2043', null, '通用服务', '1.20', '', '次', null, '', null, null, null, '10', null, null, null, null, '0', '120000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2044', null, '通用服务', '1.21', '', '次', null, '', null, null, null, '10', null, null, null, null, '0', '121000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2045', null, '通用服务', '1.22', '', '船', null, '', null, null, null, '10', null, null, null, null, '0', '122000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2046', null, '通用服务', '1.23', '船上泥和水的抽排费', '', null, '', null, null, null, '10', null, null, null, null, '0', '123000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2047', null, '通用服务', '1.23.1', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '123010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2048', null, '通用服务', '1.23.2', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '123020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2049', null, '通用服务', '1.23.3', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '123030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2050', null, '通用服务', '1.24', '生活垃圾处理费', '', null, '', null, null, null, '10', null, null, null, null, '0', '124000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2051', null, '通用服务', '1.24.1', '', '天', null, null, null, null, null, '10', null, null, null, null, '0', '124010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2052', null, '通用服务', '1.24.2', '', '份', null, null, null, null, null, '10', null, null, null, null, '0', '124020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2053', null, '通用服务', '1.25', '', '船', null, '', null, null, null, '10', null, null, null, null, '0', '125000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2054', null, '通用服务', '1.26', '', '天', null, '', null, null, null, '10', null, null, null, null, '0', '126000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2055', null, '通用服务', '1.27', '通讯费', '', null, '', null, null, null, '10', null, null, null, null, '0', '127000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2056', null, '通用服务', '1.27.1', '', '台/天', null, null, null, null, null, '10', null, null, null, null, '0', '127010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2057', null, '通用服务', '1.27.2', '', '台/天', null, null, null, null, null, '10', null, null, null, null, '0', '127020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2058', null, '通用服务', '1.27.3', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '127030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2059', null, '通用服务', '1.28', '起吊设备租用费', '', null, '', null, null, null, '10', null, null, null, null, '0', '128000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2060', null, '通用服务', '1.28.1', '', '时', null, null, null, null, null, '10', null, null, null, null, '0', '128010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2061', null, '通用服务', '1.28.2', '', '时', null, null, null, null, null, '10', null, null, null, null, '0', '128020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2062', null, '通用服务', '1.28.3', '', '时', null, null, null, null, null, '10', null, null, null, null, '0', '128030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2063', null, '通用服务', '1.29', '', '时/台', null, '', null, null, null, '10', null, null, null, null, '0', '129000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2064', null, '通用服务', '1.30', '', '只', null, '', null, null, null, '10', null, null, null, null, '0', '130000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2065', null, '通用服务', '1.31', '', '次', null, '', null, null, null, '10', null, null, null, null, '0', '131000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2066', null, '通用服务', '1.32', '', '次', null, '', null, null, null, '10', null, null, null, null, '0', '132000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2067', null, '通用服务', '1.33', '', '人/时', null, '', null, null, null, '10', null, null, null, null, '0', '133000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2068', null, '通用服务', '1.34', 'addrow', '', null, '', null, null, null, '10', null, null, null, null, '0', '134000000', '0');
INSERT INTO `t_repair_prog_item` VALUES ('2069', null, '坞修工程', '2.1', '船坞费', '', null, '', null, null, null, '10', null, null, null, null, '0', '201000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2070', null, '坞修工程', '2.1.1', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '201010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2071', null, '坞修工程', '2.1.2', '', '', null, null, null, null, null, '10', null, null, null, null, '0', '201020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2072', null, '坞修工程', '2.2', '艉轴工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '202000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2073', null, '坞修工程', '2.2.1', '常规服务', '', null, null, null, null, null, '10', null, null, null, null, '0', '202010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2074', null, '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, null, null, '10', null, null, null, null, '0', '202020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2075', null, '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, null, null, '10', null, null, null, null, '0', '202030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2076', null, '坞修工程', '2.2.4', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '202040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2077', null, '坞修工程', '2.3', '舵系工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '203000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2078', null, '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, null, null, '10', null, null, null, null, '0', '203010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2079', null, '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, null, null, '10', null, null, null, null, '0', '203020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2080', null, '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, null, null, '10', null, null, null, null, '0', '203030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2081', null, '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, null, null, '10', null, null, null, null, '0', '203040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2082', null, '坞修工程', '2.3.5', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '203050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2083', null, '坞修工程', '2.4', '水下工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '204000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2084', null, '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, null, null, '10', null, null, null, null, '0', '204010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2085', null, '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, null, null, '10', null, null, null, null, '0', '204020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2086', null, '坞修工程', '2.4.3', '船底塞', '', null, null, null, null, null, '10', null, null, null, null, '0', '204030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2087', null, '坞修工程', '2.4.4', '海底阀', '', null, null, null, null, null, '10', null, null, null, null, '0', '204040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2088', null, '坞修工程', '2.4.5', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '204050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2089', null, '坞修工程', '2.5', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '205000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2090', null, '坞修工程', '2.5.1', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '205010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2091', null, '船体工程', '3.1', '清洁和油漆', '', null, '', null, null, null, '10', null, null, null, null, '0', '301000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2092', null, '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, null, null, '10', null, null, null, null, '0', '301010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2093', null, '船体工程', '3.1.2', '船体清洁', '', null, null, null, null, null, '10', null, null, null, null, '0', '301020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2094', null, '船体工程', '3.1.3', '涂漆', '', null, null, null, null, null, '10', null, null, null, null, '0', '301030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2095', null, '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, null, null, '10', null, null, null, null, '0', '301040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2096', null, '船体工程', '3.1.5', '喷砂', '', null, null, null, null, null, '10', null, null, null, null, '0', '301050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2097', null, '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, null, null, '10', null, null, null, null, '0', '301060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2098', null, '船体工程', '3.1.7', '脚手架', '', null, null, null, null, null, '10', null, null, null, null, '0', '301070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2099', null, '船体工程', '3.1.8', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '301080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2100', null, '船体工程', '3.2', '锚和锚链工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '302000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2101', null, '船体工程', '3.2.1', '锚链', '', null, null, null, null, null, '10', null, null, null, null, '0', '302010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2102', null, '船体工程', '3.2.2', '锚链工程', '', null, null, null, null, null, '10', null, null, null, null, '0', '302020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2103', null, '船体工程', '3.2.3', '锚链舱', '', null, null, null, null, null, '10', null, null, null, null, '0', '302030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2104', null, '船体工程', '3.2.4', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '302040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2105', null, '船体工程', '3.3', '钢质工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '303000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2106', null, '船体工程', '3.3.1', '钢板换新', '', null, null, null, null, null, '10', null, null, null, null, '0', '303010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2107', null, '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, null, null, '10', null, null, null, null, '0', '303020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2108', null, '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, null, null, '10', null, null, null, null, '0', '303030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2109', null, '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, null, null, '10', null, null, null, null, '0', '303040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2110', null, '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, null, null, '10', null, null, null, null, '0', '303050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2111', null, '船体工程', '3.3.6', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '303060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2112', null, '船体工程', '3.4', '舱工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '304000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2113', null, '船体工程', '3.4.1', '清洗', '', null, null, null, null, null, '10', null, null, null, null, '0', '304010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2114', null, '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, null, null, '10', null, null, null, null, '0', '304020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2115', null, '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, null, null, '10', null, null, null, null, '0', '304030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2116', null, '船体工程', '3.4.4', '试验', '', null, null, null, null, null, '10', null, null, null, null, '0', '304040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2117', null, '船体工程', '3.4.5', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '304050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2118', null, '船体工程', '3.5', '起吊设备', '', null, '', null, null, null, '10', null, null, null, null, '0', '305000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2119', null, '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, null, null, '10', null, null, null, null, '0', '305010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2120', null, '船体工程', '3.5.2', '滑车', '', null, null, null, null, null, '10', null, null, null, null, '0', '305020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2121', null, '船体工程', '3.5.3', '吊重试验', '', null, null, null, null, null, '10', null, null, null, null, '0', '305030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2122', null, '船体工程', '3.5.4', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '305040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2123', null, '船体工程', '3.6', '舷梯工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '306000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2124', null, '船体工程', '3.6.1', '舷梯工程', '', null, null, null, null, null, '10', null, null, null, null, '0', '306010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2125', null, '船体工程', '3.6.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '306020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2126', null, '船体工程', '3.7', '救生艇系统', '', null, '', null, null, null, '10', null, null, null, null, '0', '307000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2127', null, '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, null, null, '10', null, null, null, null, '0', '307010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2128', null, '船体工程', '3.7.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '307020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2129', null, '船体工程', '3.8', '二氧化碳灭火系统', '', null, '', null, null, null, '10', null, null, null, null, '0', '308000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2130', null, '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, null, null, '10', null, null, null, null, '0', '308010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2131', null, '船体工程', '3.8.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '308020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2132', null, '船体工程', '3.9', '舾装工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '309000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2133', null, '船体工程', '3.9.1', '舾装工程', '', null, null, null, null, null, '10', null, null, null, null, '0', '309010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2134', null, '船体工程', '3.9.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '309020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2135', null, '船体工程', '3.10', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '310000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2136', null, '船体工程', '3.10.1', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '310010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2137', null, '机械工程', '4.1', '柴油机主机', '', null, '', null, null, null, '10', null, null, null, null, '0', '401000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2138', null, '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, null, null, '10', null, null, null, null, '0', '401010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2139', null, '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, null, null, '10', null, null, null, null, '0', '401020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2140', null, '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, null, null, '10', null, null, null, null, '0', '401030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2141', null, '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, null, null, '10', null, null, null, null, '0', '401040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2142', null, '机械工程', '4.1.5', '活塞环', '', null, null, null, null, null, '10', null, null, null, null, '0', '401050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2143', null, '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, null, null, '10', null, null, null, null, '0', '401060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2144', null, '机械工程', '4.1.7', '气缸套', '', null, null, null, null, null, '10', null, null, null, null, '0', '401070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2145', null, '机械工程', '4.1.8', '轴承', '', null, null, null, null, null, '10', null, null, null, null, '0', '401080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2146', null, '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, null, null, '10', null, null, null, null, '0', '401090000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2147', null, '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, null, null, '10', null, null, null, null, '0', '401100000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2148', null, '机械工程', '4.1.11', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '401110000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2149', null, '机械工程', '4.2', '柴油机副机', '', null, '', null, null, null, '10', null, null, null, null, '0', '402000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2150', null, '机械工程', '4.2.1', '气缸盖', '', null, null, null, null, null, '10', null, null, null, null, '0', '402010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2151', null, '机械工程', '4.2.2', '活塞', '', null, null, null, null, null, '10', null, null, null, null, '0', '402020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2152', null, '机械工程', '4.2.3', '轴承', '', null, null, null, null, null, '10', null, null, null, null, '0', '402030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2153', null, '机械工程', '4.2.4', '气缸套', '', null, null, null, null, null, '10', null, null, null, null, '0', '402040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2154', null, '机械工程', '4.2.5', '试验项目', '', null, null, null, null, null, '10', null, null, null, null, '0', '402050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2155', null, '机械工程', '4.2.6', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '402060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2156', null, '机械工程', '4.3', '热交换器', '', null, '', null, null, null, '10', null, null, null, null, '0', '403000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2157', null, '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, null, null, '10', null, null, null, null, '0', '403010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2158', null, '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, null, null, '10', null, null, null, null, '0', '403020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2159', null, '机械工程', '4.3.3', '板状热交换器', '', null, null, null, null, null, '10', null, null, null, null, '0', '403030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2160', null, '机械工程', '4.3.4', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '403040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2161', null, '机械工程', '4.4', '锅炉和锅炉附件', '', null, '', null, null, null, '10', null, null, null, null, '0', '404000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2162', null, '机械工程', '4.4.1', '锅炉', '', null, null, null, null, null, '10', null, null, null, null, '0', '404010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2163', null, '机械工程', '4.4.2', '锅炉附件', '', null, null, null, null, null, '10', null, null, null, null, '0', '404020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2164', null, '机械工程', '4.4.3', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '404030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2165', null, '机械工程', '4.5', '管系工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '405000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2166', null, '机械工程', '4.5.1', '管路换新', '', null, null, null, null, null, '10', null, null, null, null, '0', '405010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2167', null, '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, null, null, '10', null, null, null, null, '0', '405020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2168', null, '机械工程', '4.5.3', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '405030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2169', null, '机械工程', '4.6', '阀门工程', '', null, '', null, null, null, '10', null, null, null, null, '0', '406000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2170', null, '机械工程', '4.6.1', '阀门工程', '', null, null, null, null, null, '10', null, null, null, null, '0', '406010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2171', null, '机械工程', '4.6.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '406020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2172', null, '机械工程', '4.7', '泵浦', '', null, '', null, null, null, '10', null, null, null, null, '0', '407000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2173', null, '机械工程', '4.7.1', '电动离心泵', '', null, null, null, null, null, '10', null, null, null, null, '0', '407010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2174', null, '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, null, null, '10', null, null, null, null, '0', '407020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2175', null, '机械工程', '4.7.3', '螺杆泵', '', null, null, null, null, null, '10', null, null, null, null, '0', '407030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2176', null, '机械工程', '4.7.4', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '407040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2177', null, '机械工程', '4.8', '空压机', '', null, '', null, null, null, '10', null, null, null, null, '0', '408000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2178', null, '机械工程', '4.8.1', '空压机', '', null, null, null, null, null, '10', null, null, null, null, '0', '408010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2179', null, '机械工程', '4.8.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '408020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2180', null, '机械工程', '4.9', '起货机', '', null, '', null, null, null, '10', null, null, null, null, '0', '409000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2181', null, '机械工程', '4.9.1', '起货机', '', null, null, null, null, null, '10', null, null, null, null, '0', '409010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2182', null, '机械工程', '4.9.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '409020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2183', null, '机械工程', '4.10', '卧式/立式绞缆机', '', null, '', null, null, null, '10', null, null, null, null, '0', '410000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2184', null, '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, null, null, '10', null, null, null, null, '0', '410010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2185', null, '机械工程', '4.10.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '410020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2186', null, '机械工程', '4.11', '起锚机', '', null, '', null, null, null, '10', null, null, null, null, '0', '411000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2187', null, '机械工程', '4.11.1', '起锚机', '台', null, null, null, null, null, '10', null, null, null, null, '0', '411010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2188', null, '机械工程', '4.11.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '411020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2189', null, '机械工程', '4.12', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '412000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2190', null, '机械工程', '4.12.1', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '412010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2191', null, '电气工程', '5.1', '交流电动机', '', null, '', null, null, null, '10', null, null, null, null, '0', '501000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2192', null, '电气工程', '5.1.1', '交流电动机', '', null, null, null, null, null, '10', null, null, null, null, '0', '501010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2193', null, '电气工程', '5.1.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '501020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2194', null, '电气工程', '5.2', '交流发电机', '', null, '', null, null, null, '10', null, null, null, null, '0', '502000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2195', null, '电气工程', '5.2.1', '交流发电机', '', null, null, null, null, null, '10', null, null, null, null, '0', '502010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2196', null, '电气工程', '5.2.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '502020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2197', null, '电气工程', '5.3', '发电机负荷及并联试验', '', null, '', null, null, null, '10', null, null, null, null, '0', '503000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2198', null, '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, null, null, '10', null, null, null, null, '0', '503010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2199', null, '电气工程', '5.3.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '503020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2200', null, '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, '', null, null, null, '10', null, null, null, null, '0', '504000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2201', null, '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, null, null, '10', null, null, null, null, '0', '504010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2202', null, '电气工程', '5.4.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '504020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2203', null, '电气工程', '5.5', '主配电板', '', null, '', null, null, null, '10', null, null, null, null, '0', '505000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2204', null, '电气工程', '5.5.1', '主配电板', '', null, null, null, null, null, '10', null, null, null, null, '0', '505010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2205', null, '电气工程', '5.5.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '505020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2206', null, '电气工程', '5.6', '仪表', '', null, '', null, null, null, '10', null, null, null, null, '0', '506000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2207', null, '电气工程', '5.6.1', '仪表校验', '', null, null, null, null, null, '10', null, null, null, null, '0', '506010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2208', null, '电气工程', '5.6.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '506020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2209', null, '电气工程', '5.7', '电缆拆装与新装', '', null, '', null, null, null, '10', null, null, null, null, '0', '507000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2210', null, '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, null, null, '10', null, null, null, null, '0', '507010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2211', null, '电气工程', '5.7.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '507020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2212', null, '电气工程', '5.8', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '508000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2213', null, '电气工程', '5.8.1', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '508010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2214', null, '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, '', null, null, null, '10', null, null, null, null, '0', '601000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2215', null, '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, null, null, '10', null, null, null, null, '0', '601010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2216', null, '冷藏工程', '6.1.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '601020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2217', null, '冷藏工程', '6.2', '', '', null, '', null, null, null, '10', null, null, null, null, '0', '602000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2218', null, '冷藏工程', '6.3', '制冷系统蒸发器', '', null, '', null, null, null, '10', null, null, null, null, '0', '603000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2219', null, '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, null, null, '10', null, null, null, null, '0', '603010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2220', null, '冷藏工程', '6.3.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '603020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2221', null, '冷藏工程', '6.4', '制冷系统冷凝器', '', null, '', null, null, null, '10', null, null, null, null, '0', '604000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2222', null, '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, null, null, '10', null, null, null, null, '0', '604010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2223', null, '冷藏工程', '6.4.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '604020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2224', null, '冷藏工程', '6.5', '制冷系统中间容器', '', null, '', null, null, null, '10', null, null, null, null, '0', '605000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2225', null, '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, null, null, '10', null, null, null, null, '0', '605010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2226', null, '冷藏工程', '6.5.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '605020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2227', null, '冷藏工程', '6.6', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '606000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2228', null, '冷藏工程', '6.6.1', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '606010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2229', null, '特种设备', '7.1', '鱼加工带式传动装置', '', null, '', null, null, null, '10', null, null, null, null, '0', '701000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2230', null, '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, null, null, '10', null, null, null, null, '0', '701010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2231', null, '特种设备', '7.1.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '701020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2232', null, '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, '', null, null, null, '10', null, null, null, null, '0', '702000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2233', null, '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, null, null, '10', null, null, null, null, '0', '702010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2234', null, '特种设备', '7.2.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '702020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2235', null, '特种设备', '7.3', '挖泥船泥门', '', null, '', null, null, null, '10', null, null, null, null, '0', '703000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2236', null, '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, null, null, '10', null, null, null, null, '0', '703010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2237', null, '特种设备', '7.3.2', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '703020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2238', null, '特种设备', '7.4', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '704000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2239', null, '特种设备', '7.4.1', 'addrow', '', null, '', null, null, null, '10', null, null, null, null, '0', '704010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2240', null, '其他', '8.1', '自定义', '', null, '', null, null, null, '10', null, null, null, null, '0', '801000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2241', null, '其他', '8.1.1', 'addrow', '', null, null, null, null, null, '10', null, null, null, null, '0', '801010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2242', null, '通用服务', '1.1', '码头费', '天', '44', '', null, null, null, '11', null, null, null, null, '0', '101000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2243', null, '通用服务', '1.2', '系解缆和靠离码头拖轮费', '', null, '', null, null, null, '11', null, null, null, null, '0', '102000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2244', null, '通用服务', '1.2.1', '系或解缆', '次', '44', null, null, null, null, '11', null, null, null, null, '0', '102010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2245', null, '通用服务', '1.2.2', '靠或离码头', '次', '44', null, null, null, null, '11', null, null, null, null, '0', '102020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2246', null, '通用服务', '1.3', '供电费', '', null, '', null, null, null, '11', null, null, null, null, '0', '103000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2247', null, '通用服务', '1.3.1', '', '次/路', '3', null, null, null, null, '11', null, null, null, null, '0', '103010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2248', null, '通用服务', '1.3.2', '', '天', '3', null, null, null, null, '11', null, null, null, null, '0', '103020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2249', null, '通用服务', '1.3.3', '', '度', '43', null, null, null, null, '11', null, null, null, null, '0', '103030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2250', null, '通用服务', '1.4', '供冷却水费', '', null, '', null, null, null, '11', null, null, null, null, '0', '104000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2251', null, '通用服务', '1.4.1', '', '次/路', '34', null, null, null, null, '11', null, null, null, null, '0', '104010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2252', null, '通用服务', '1.4.2', '', '路/天', '34', null, null, null, null, '11', null, null, null, null, '0', '104020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2253', null, '通用服务', '1.5', '供淡水费', '', null, '', null, null, null, '11', null, null, null, null, '0', '105000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2254', null, '通用服务', '1.5.1', '', '次/路', null, null, null, null, null, '11', null, null, null, null, '0', '105010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2255', null, '通用服务', '1.5.2', '', '吨', null, null, null, null, null, '11', null, null, null, null, '0', '105020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2256', null, '通用服务', '1.5.3', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '105030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2257', null, '通用服务', '1.6', '供压载水费', '', null, '', null, null, null, '11', null, null, null, null, '0', '106000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2258', null, '通用服务', '1.6.1', '', '次/路', null, null, null, null, null, '11', null, null, null, null, '0', '106010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2259', null, '通用服务', '1.6.2', '', '吨', null, null, null, null, null, '11', null, null, null, null, '0', '106020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2260', null, '通用服务', '1.6.3', '', '立方米', null, null, null, null, null, '11', null, null, null, null, '0', '106030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2261', null, '通用服务', '1.7', '供蒸汽费', '', null, '', null, null, null, '11', null, null, null, null, '0', '107000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2262', null, '通用服务', '1.7.1', '', '路/次', null, null, null, null, null, '11', null, null, null, null, '0', '107010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2263', null, '通用服务', '1.7.2', '', '时', null, null, null, null, null, '11', null, null, null, null, '0', '107020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2264', null, '通用服务', '1.8', '供压缩空气费', '', null, '', null, null, null, '11', null, null, null, null, '0', '108000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2265', null, '通用服务', '1.8.1', '', '次/路', null, null, null, null, null, '11', null, null, null, null, '0', '108010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2266', null, '通用服务', '1.8.2', '', '天/路', null, null, null, null, null, '11', null, null, null, null, '0', '108020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2267', null, '通用服务', '1.9', '', '台/班', null, '', null, null, null, '11', null, null, null, null, '0', '109000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2268', null, '通用服务', '1.10', '供电加热器费', '', null, '', null, null, null, '11', null, null, null, null, '0', '110000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2269', null, '通用服务', '1.10.1', '', '台', null, null, null, null, null, '11', null, null, null, null, '0', '110010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2270', null, '通用服务', '1.10.2', '', '台/班', null, null, null, null, null, '11', null, null, null, null, '0', '110020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2271', null, '通用服务', '1.11', '作业区域的安全通道布置费', '', null, '', null, null, null, '11', null, null, null, null, '0', '111000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2272', null, '通用服务', '1.11.1', '', '立方米', null, null, null, null, null, '11', null, null, null, null, '0', '111010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2273', null, '通用服务', '1.11.2', '', '个', null, null, null, null, null, '11', null, null, null, null, '0', '111020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2274', null, '通用服务', '1.12', '', '个', null, '', null, null, null, '11', null, null, null, null, '0', '112000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2275', null, '通用服务', '1.13', '', '次', null, '', null, null, null, '11', null, null, null, null, '0', '113000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2276', null, '通用服务', '1.14', '', '人', null, '', null, null, null, '11', null, null, null, null, '0', '114000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2277', null, '通用服务', '1.15', '可燃气体检测费', '', null, '', null, null, null, '11', null, null, null, null, '0', '115000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2278', null, '通用服务', '1.15.1', '', '初次', null, null, null, null, null, '11', null, null, null, null, '0', '115010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2279', null, '通用服务', '1.15.2', '', '初次', null, null, null, null, null, '11', null, null, null, null, '0', '115020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2280', null, '通用服务', '1.15.3', '', '初次', null, null, null, null, null, '11', null, null, null, null, '0', '115030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2281', null, '通用服务', '1.15.4', '', '舱/次', null, null, null, null, null, '11', null, null, null, null, '0', '115040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2282', null, '通用服务', '1.15.5', '', '初次', null, null, null, null, null, '11', null, null, null, null, '0', '115050000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2283', null, '通用服务', '1.15.6', '', '舱/次', null, null, null, null, null, '11', null, null, null, null, '0', '115060000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2284', null, '通用服务', '1.16', '', '舱/次', null, '', null, null, null, '11', null, null, null, null, '0', '116000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2285', null, '通用服务', '1.17', '消防费', '', null, '', null, null, null, '11', null, null, null, null, '0', '117000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2286', null, '通用服务', '1.17.1', '', '天', null, null, null, null, null, '11', null, null, null, null, '0', '117010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2287', null, '通用服务', '1.17.2', '', '次/路', null, null, null, null, null, '11', null, null, null, null, '0', '117020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2288', null, '通用服务', '1.17.3', '', '路/天', null, null, null, null, null, '11', null, null, null, null, '0', '117030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2289', null, '通用服务', '1.17.4', '', '天', null, null, null, null, null, '11', null, null, null, null, '0', '117040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2290', null, '通用服务', '1.18', '', '船', null, '', null, null, null, '11', null, null, null, null, '0', '118000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2291', null, '通用服务', '1.19', '', '船', null, '', null, null, null, '11', null, null, null, null, '0', '119000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2292', null, '通用服务', '1.20', '', '次', null, '', null, null, null, '11', null, null, null, null, '0', '120000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2293', null, '通用服务', '1.21', '', '次', null, '', null, null, null, '11', null, null, null, null, '0', '121000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2294', null, '通用服务', '1.22', '', '船', null, '', null, null, null, '11', null, null, null, null, '0', '122000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2295', null, '通用服务', '1.23', '船上泥和水的抽排费', '', null, '', null, null, null, '11', null, null, null, null, '0', '123000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2296', null, '通用服务', '1.23.1', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '123010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2297', null, '通用服务', '1.23.2', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '123020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2298', null, '通用服务', '1.23.3', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '123030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2299', null, '通用服务', '1.24', '生活垃圾处理费', '', null, '', null, null, null, '11', null, null, null, null, '0', '124000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2300', null, '通用服务', '1.24.1', '', '天', null, null, null, null, null, '11', null, null, null, null, '0', '124010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2301', null, '通用服务', '1.24.2', '', '份', null, null, null, null, null, '11', null, null, null, null, '0', '124020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2302', null, '通用服务', '1.25', '', '船', null, '', null, null, null, '11', null, null, null, null, '0', '125000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2303', null, '通用服务', '1.26', '', '天', null, '', null, null, null, '11', null, null, null, null, '0', '126000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2304', null, '通用服务', '1.27', '通讯费', '', null, '', null, null, null, '11', null, null, null, null, '0', '127000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2305', null, '通用服务', '1.27.1', '', '台/天', null, null, null, null, null, '11', null, null, null, null, '0', '127010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2306', null, '通用服务', '1.27.2', '', '台/天', null, null, null, null, null, '11', null, null, null, null, '0', '127020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2307', null, '通用服务', '1.27.3', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '127030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2308', null, '通用服务', '1.28', '起吊设备租用费', '', null, '', null, null, null, '11', null, null, null, null, '0', '128000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2309', null, '通用服务', '1.28.1', '', '时', null, null, null, null, null, '11', null, null, null, null, '0', '128010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2310', null, '通用服务', '1.28.2', '', '时', null, null, null, null, null, '11', null, null, null, null, '0', '128020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2311', null, '通用服务', '1.28.3', '', '时', null, null, null, null, null, '11', null, null, null, null, '0', '128030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2312', null, '通用服务', '1.29', '', '时/台', null, '', null, null, null, '11', null, null, null, null, '0', '129000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2313', null, '通用服务', '1.30', '', '只', null, '', null, null, null, '11', null, null, null, null, '0', '130000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2314', null, '通用服务', '1.31', '', '次', null, '', null, null, null, '11', null, null, null, null, '0', '131000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2315', null, '通用服务', '1.32', '', '次', null, '', null, null, null, '11', null, null, null, null, '0', '132000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2316', null, '通用服务', '1.33', '', '人/时', null, '', null, null, null, '11', null, null, null, null, '0', '133000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2317', null, '通用服务', '1.34', 'addrow', '', null, '', null, null, null, '11', null, null, null, null, '0', '134000000', '0');
INSERT INTO `t_repair_prog_item` VALUES ('2318', null, '坞修工程', '2.1', '船坞费', '', null, '', null, null, null, '11', null, null, null, null, '0', '201000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2319', null, '坞修工程', '2.1.1', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '201010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2320', null, '坞修工程', '2.1.2', '', '', null, null, null, null, null, '11', null, null, null, null, '0', '201020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2321', null, '坞修工程', '2.2', '艉轴工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '202000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2322', null, '坞修工程', '2.2.1', '常规服务', '', null, null, null, null, null, '11', null, null, null, null, '0', '202010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2323', null, '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, null, null, '11', null, null, null, null, '0', '202020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2324', null, '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, null, null, '11', null, null, null, null, '0', '202030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2325', null, '坞修工程', '2.2.4', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '202040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2326', null, '坞修工程', '2.3', '舵系工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '203000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2327', null, '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, null, null, '11', null, null, null, null, '0', '203010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2328', null, '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, null, null, '11', null, null, null, null, '0', '203020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2329', null, '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, null, null, '11', null, null, null, null, '0', '203030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2330', null, '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, null, null, '11', null, null, null, null, '0', '203040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2331', null, '坞修工程', '2.3.5', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '203050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2332', null, '坞修工程', '2.4', '水下工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '204000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2333', null, '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, null, null, '11', null, null, null, null, '0', '204010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2334', null, '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, null, null, '11', null, null, null, null, '0', '204020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2335', null, '坞修工程', '2.4.3', '船底塞', '', null, null, null, null, null, '11', null, null, null, null, '0', '204030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2336', null, '坞修工程', '2.4.4', '海底阀', '', null, null, null, null, null, '11', null, null, null, null, '0', '204040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2337', null, '坞修工程', '2.4.5', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '204050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2338', null, '坞修工程', '2.5', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '205000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2339', null, '坞修工程', '2.5.1', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '205010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2340', null, '船体工程', '3.1', '清洁和油漆', '', null, '', null, null, null, '11', null, null, null, null, '0', '301000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2341', null, '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, null, null, '11', null, null, null, null, '0', '301010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2342', null, '船体工程', '3.1.2', '船体清洁', '', null, null, null, null, null, '11', null, null, null, null, '0', '301020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2343', null, '船体工程', '3.1.3', '涂漆', '', null, null, null, null, null, '11', null, null, null, null, '0', '301030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2344', null, '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, null, null, '11', null, null, null, null, '0', '301040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2345', null, '船体工程', '3.1.5', '喷砂', '', null, null, null, null, null, '11', null, null, null, null, '0', '301050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2346', null, '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, null, null, '11', null, null, null, null, '0', '301060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2347', null, '船体工程', '3.1.7', '脚手架', '', null, null, null, null, null, '11', null, null, null, null, '0', '301070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2348', null, '船体工程', '3.1.8', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '301080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2349', null, '船体工程', '3.2', '锚和锚链工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '302000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2350', null, '船体工程', '3.2.1', '锚链', '', null, null, null, null, null, '11', null, null, null, null, '0', '302010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2351', null, '船体工程', '3.2.2', '锚链工程', '', null, null, null, null, null, '11', null, null, null, null, '0', '302020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2352', null, '船体工程', '3.2.3', '锚链舱', '', null, null, null, null, null, '11', null, null, null, null, '0', '302030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2353', null, '船体工程', '3.2.4', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '302040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2354', null, '船体工程', '3.3', '钢质工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '303000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2355', null, '船体工程', '3.3.1', '钢板换新', '', null, null, null, null, null, '11', null, null, null, null, '0', '303010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2356', null, '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, null, null, '11', null, null, null, null, '0', '303020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2357', null, '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, null, null, '11', null, null, null, null, '0', '303030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2358', null, '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, null, null, '11', null, null, null, null, '0', '303040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2359', null, '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, null, null, '11', null, null, null, null, '0', '303050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2360', null, '船体工程', '3.3.6', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '303060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2361', null, '船体工程', '3.4', '舱工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '304000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2362', null, '船体工程', '3.4.1', '清洗', '', null, null, null, null, null, '11', null, null, null, null, '0', '304010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2363', null, '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, null, null, '11', null, null, null, null, '0', '304020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2364', null, '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, null, null, '11', null, null, null, null, '0', '304030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2365', null, '船体工程', '3.4.4', '试验', '', null, null, null, null, null, '11', null, null, null, null, '0', '304040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2366', null, '船体工程', '3.4.5', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '304050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2367', null, '船体工程', '3.5', '起吊设备', '', null, '', null, null, null, '11', null, null, null, null, '0', '305000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2368', null, '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, null, null, '11', null, null, null, null, '0', '305010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2369', null, '船体工程', '3.5.2', '滑车', '', null, null, null, null, null, '11', null, null, null, null, '0', '305020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2370', null, '船体工程', '3.5.3', '吊重试验', '', null, null, null, null, null, '11', null, null, null, null, '0', '305030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2371', null, '船体工程', '3.5.4', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '305040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2372', null, '船体工程', '3.6', '舷梯工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '306000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2373', null, '船体工程', '3.6.1', '舷梯工程', '', null, null, null, null, null, '11', null, null, null, null, '0', '306010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2374', null, '船体工程', '3.6.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '306020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2375', null, '船体工程', '3.7', '救生艇系统', '', null, '', null, null, null, '11', null, null, null, null, '0', '307000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2376', null, '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, null, null, '11', null, null, null, null, '0', '307010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2377', null, '船体工程', '3.7.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '307020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2378', null, '船体工程', '3.8', '二氧化碳灭火系统', '', null, '', null, null, null, '11', null, null, null, null, '0', '308000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2379', null, '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, null, null, '11', null, null, null, null, '0', '308010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2380', null, '船体工程', '3.8.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '308020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2381', null, '船体工程', '3.9', '舾装工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '309000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2382', null, '船体工程', '3.9.1', '舾装工程', '', null, null, null, null, null, '11', null, null, null, null, '0', '309010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2383', null, '船体工程', '3.9.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '309020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2384', null, '船体工程', '3.10', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '310000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2385', null, '船体工程', '3.10.1', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '310010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2386', null, '机械工程', '4.1', '柴油机主机', '', null, '', null, null, null, '11', null, null, null, null, '0', '401000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2387', null, '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, null, null, '11', null, null, null, null, '0', '401010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2388', null, '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, null, null, '11', null, null, null, null, '0', '401020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2389', null, '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, null, null, '11', null, null, null, null, '0', '401030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2390', null, '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, null, null, '11', null, null, null, null, '0', '401040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2391', null, '机械工程', '4.1.5', '活塞环', '', null, null, null, null, null, '11', null, null, null, null, '0', '401050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2392', null, '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, null, null, '11', null, null, null, null, '0', '401060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2393', null, '机械工程', '4.1.7', '气缸套', '', null, null, null, null, null, '11', null, null, null, null, '0', '401070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2394', null, '机械工程', '4.1.8', '轴承', '', null, null, null, null, null, '11', null, null, null, null, '0', '401080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2395', null, '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, null, null, '11', null, null, null, null, '0', '401090000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2396', null, '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, null, null, '11', null, null, null, null, '0', '401100000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2397', null, '机械工程', '4.1.11', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '401110000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2398', null, '机械工程', '4.2', '柴油机副机', '', null, '', null, null, null, '11', null, null, null, null, '0', '402000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2399', null, '机械工程', '4.2.1', '气缸盖', '', null, null, null, null, null, '11', null, null, null, null, '0', '402010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2400', null, '机械工程', '4.2.2', '活塞', '', null, null, null, null, null, '11', null, null, null, null, '0', '402020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2401', null, '机械工程', '4.2.3', '轴承', '', null, null, null, null, null, '11', null, null, null, null, '0', '402030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2402', null, '机械工程', '4.2.4', '气缸套', '', null, null, null, null, null, '11', null, null, null, null, '0', '402040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2403', null, '机械工程', '4.2.5', '试验项目', '', null, null, null, null, null, '11', null, null, null, null, '0', '402050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2404', null, '机械工程', '4.2.6', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '402060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2405', null, '机械工程', '4.3', '热交换器', '', null, '', null, null, null, '11', null, null, null, null, '0', '403000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2406', null, '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, null, null, '11', null, null, null, null, '0', '403010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2407', null, '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, null, null, '11', null, null, null, null, '0', '403020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2408', null, '机械工程', '4.3.3', '板状热交换器', '', null, null, null, null, null, '11', null, null, null, null, '0', '403030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2409', null, '机械工程', '4.3.4', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '403040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2410', null, '机械工程', '4.4', '锅炉和锅炉附件', '', null, '', null, null, null, '11', null, null, null, null, '0', '404000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2411', null, '机械工程', '4.4.1', '锅炉', '', null, null, null, null, null, '11', null, null, null, null, '0', '404010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2412', null, '机械工程', '4.4.2', '锅炉附件', '', null, null, null, null, null, '11', null, null, null, null, '0', '404020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2413', null, '机械工程', '4.4.3', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '404030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2414', null, '机械工程', '4.5', '管系工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '405000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2415', null, '机械工程', '4.5.1', '管路换新', '', null, null, null, null, null, '11', null, null, null, null, '0', '405010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2416', null, '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, null, null, '11', null, null, null, null, '0', '405020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2417', null, '机械工程', '4.5.3', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '405030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2418', null, '机械工程', '4.6', '阀门工程', '', null, '', null, null, null, '11', null, null, null, null, '0', '406000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2419', null, '机械工程', '4.6.1', '阀门工程', '', null, null, null, null, null, '11', null, null, null, null, '0', '406010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2420', null, '机械工程', '4.6.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '406020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2421', null, '机械工程', '4.7', '泵浦', '', null, '', null, null, null, '11', null, null, null, null, '0', '407000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2422', null, '机械工程', '4.7.1', '电动离心泵', '', null, null, null, null, null, '11', null, null, null, null, '0', '407010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2423', null, '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, null, null, '11', null, null, null, null, '0', '407020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2424', null, '机械工程', '4.7.3', '螺杆泵', '', null, null, null, null, null, '11', null, null, null, null, '0', '407030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2425', null, '机械工程', '4.7.4', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '407040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2426', null, '机械工程', '4.8', '空压机', '', null, '', null, null, null, '11', null, null, null, null, '0', '408000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2427', null, '机械工程', '4.8.1', '空压机', '', null, null, null, null, null, '11', null, null, null, null, '0', '408010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2428', null, '机械工程', '4.8.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '408020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2429', null, '机械工程', '4.9', '起货机', '', null, '', null, null, null, '11', null, null, null, null, '0', '409000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2430', null, '机械工程', '4.9.1', '起货机', '', null, null, null, null, null, '11', null, null, null, null, '0', '409010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2431', null, '机械工程', '4.9.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '409020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2432', null, '机械工程', '4.10', '卧式/立式绞缆机', '', null, '', null, null, null, '11', null, null, null, null, '0', '410000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2433', null, '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, null, null, '11', null, null, null, null, '0', '410010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2434', null, '机械工程', '4.10.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '410020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2435', null, '机械工程', '4.11', '起锚机', '', null, '', null, null, null, '11', null, null, null, null, '0', '411000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2436', null, '机械工程', '4.11.1', '起锚机', '台', null, null, null, null, null, '11', null, null, null, null, '0', '411010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2437', null, '机械工程', '4.11.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '411020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2438', null, '机械工程', '4.12', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '412000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2439', null, '机械工程', '4.12.1', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '412010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2440', null, '电气工程', '5.1', '交流电动机', '', null, '', null, null, null, '11', null, null, null, null, '0', '501000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2441', null, '电气工程', '5.1.1', '交流电动机', '', null, null, null, null, null, '11', null, null, null, null, '0', '501010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2442', null, '电气工程', '5.1.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '501020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2443', null, '电气工程', '5.2', '交流发电机', '', null, '', null, null, null, '11', null, null, null, null, '0', '502000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2444', null, '电气工程', '5.2.1', '交流发电机', '', null, null, null, null, null, '11', null, null, null, null, '0', '502010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2445', null, '电气工程', '5.2.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '502020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2446', null, '电气工程', '5.3', '发电机负荷及并联试验', '', null, '', null, null, null, '11', null, null, null, null, '0', '503000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2447', null, '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, null, null, '11', null, null, null, null, '0', '503010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2448', null, '电气工程', '5.3.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '503020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2449', null, '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, '', null, null, null, '11', null, null, null, null, '0', '504000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2450', null, '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, null, null, '11', null, null, null, null, '0', '504010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2451', null, '电气工程', '5.4.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '504020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2452', null, '电气工程', '5.5', '主配电板', '', null, '', null, null, null, '11', null, null, null, null, '0', '505000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2453', null, '电气工程', '5.5.1', '主配电板', '', null, null, null, null, null, '11', null, null, null, null, '0', '505010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2454', null, '电气工程', '5.5.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '505020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2455', null, '电气工程', '5.6', '仪表', '', null, '', null, null, null, '11', null, null, null, null, '0', '506000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2456', null, '电气工程', '5.6.1', '仪表校验', '', null, null, null, null, null, '11', null, null, null, null, '0', '506010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2457', null, '电气工程', '5.6.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '506020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2458', null, '电气工程', '5.7', '电缆拆装与新装', '', null, '', null, null, null, '11', null, null, null, null, '0', '507000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2459', null, '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, null, null, '11', null, null, null, null, '0', '507010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2460', null, '电气工程', '5.7.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '507020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2461', null, '电气工程', '5.8', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '508000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2462', null, '电气工程', '5.8.1', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '508010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2463', null, '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, '', null, null, null, '11', null, null, null, null, '0', '601000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2464', null, '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, null, null, '11', null, null, null, null, '0', '601010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2465', null, '冷藏工程', '6.1.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '601020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2466', null, '冷藏工程', '6.2', '', '', null, '', null, null, null, '11', null, null, null, null, '0', '602000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2467', null, '冷藏工程', '6.3', '制冷系统蒸发器', '', null, '', null, null, null, '11', null, null, null, null, '0', '603000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2468', null, '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, null, null, '11', null, null, null, null, '0', '603010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2469', null, '冷藏工程', '6.3.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '603020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2470', null, '冷藏工程', '6.4', '制冷系统冷凝器', '', null, '', null, null, null, '11', null, null, null, null, '0', '604000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2471', null, '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, null, null, '11', null, null, null, null, '0', '604010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2472', null, '冷藏工程', '6.4.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '604020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2473', null, '冷藏工程', '6.5', '制冷系统中间容器', '', null, '', null, null, null, '11', null, null, null, null, '0', '605000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2474', null, '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, null, null, '11', null, null, null, null, '0', '605010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2475', null, '冷藏工程', '6.5.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '605020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2476', null, '冷藏工程', '6.6', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '606000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2477', null, '冷藏工程', '6.6.1', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '606010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2478', null, '特种设备', '7.1', '鱼加工带式传动装置', '', null, '', null, null, null, '11', null, null, null, null, '0', '701000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2479', null, '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, null, null, '11', null, null, null, null, '0', '701010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2480', null, '特种设备', '7.1.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '701020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2481', null, '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, '', null, null, null, '11', null, null, null, null, '0', '702000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2482', null, '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, null, null, '11', null, null, null, null, '0', '702010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2483', null, '特种设备', '7.2.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '702020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2484', null, '特种设备', '7.3', '挖泥船泥门', '', null, '', null, null, null, '11', null, null, null, null, '0', '703000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2485', null, '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, null, null, '11', null, null, null, null, '0', '703010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2486', null, '特种设备', '7.3.2', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '703020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2487', null, '特种设备', '7.4', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '704000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2488', null, '特种设备', '7.4.1', 'addrow', '', null, '', null, null, null, '11', null, null, null, null, '0', '704010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2489', null, '其他', '8.1', '自定义', '', null, '', null, null, null, '11', null, null, null, null, '0', '801000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2490', null, '其他', '8.1.1', 'addrow', '', null, null, null, null, null, '11', null, null, null, null, '0', '801010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2491', null, '通用服务', '1.1', '码头费', '天', '44', '', null, null, null, '12', null, null, null, null, '0', '101000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2492', null, '通用服务', '1.2', '系解缆和靠离码头拖轮费', '', null, '', null, null, null, '12', null, null, null, null, '0', '102000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2493', null, '通用服务', '1.2.1', '系或解缆', '次', '44', null, null, null, null, '12', null, null, null, null, '0', '102010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2494', null, '通用服务', '1.2.2', '靠或离码头', '次', '44', null, null, null, null, '12', null, null, null, null, '0', '102020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2495', null, '通用服务', '1.3', '供电费', '', null, '', null, null, null, '12', null, null, null, null, '0', '103000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2496', null, '通用服务', '1.3.1', '', '次/路', '3', null, null, null, null, '12', null, null, null, null, '0', '103010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2497', null, '通用服务', '1.3.2', '', '天', '3', null, null, null, null, '12', null, null, null, null, '0', '103020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2498', null, '通用服务', '1.3.3', '', '度', '43', null, null, null, null, '12', null, null, null, null, '0', '103030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2499', null, '通用服务', '1.4', '供冷却水费', '', null, '', null, null, null, '12', null, null, null, null, '0', '104000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2500', null, '通用服务', '1.4.1', '', '次/路', '34', null, null, null, null, '12', null, null, null, null, '0', '104010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2501', null, '通用服务', '1.4.2', '', '路/天', '34', null, null, null, null, '12', null, null, null, null, '0', '104020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2502', null, '通用服务', '1.5', '供淡水费', '', null, '', null, null, null, '12', null, null, null, null, '0', '105000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2503', null, '通用服务', '1.5.1', '', '次/路', null, null, null, null, null, '12', null, null, null, null, '0', '105010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2504', null, '通用服务', '1.5.2', '', '吨', null, null, null, null, null, '12', null, null, null, null, '0', '105020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2505', null, '通用服务', '1.5.3', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '105030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2506', null, '通用服务', '1.6', '供压载水费', '', null, '', null, null, null, '12', null, null, null, null, '0', '106000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2507', null, '通用服务', '1.6.1', '', '次/路', null, null, null, null, null, '12', null, null, null, null, '0', '106010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2508', null, '通用服务', '1.6.2', '', '吨', null, null, null, null, null, '12', null, null, null, null, '0', '106020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2509', null, '通用服务', '1.6.3', '', '立方米', null, null, null, null, null, '12', null, null, null, null, '0', '106030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2510', null, '通用服务', '1.7', '供蒸汽费', '', null, '', null, null, null, '12', null, null, null, null, '0', '107000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2511', null, '通用服务', '1.7.1', '', '路/次', null, null, null, null, null, '12', null, null, null, null, '0', '107010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2512', null, '通用服务', '1.7.2', '', '时', null, null, null, null, null, '12', null, null, null, null, '0', '107020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2513', null, '通用服务', '1.8', '供压缩空气费', '', null, '', null, null, null, '12', null, null, null, null, '0', '108000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2514', null, '通用服务', '1.8.1', '', '次/路', null, null, null, null, null, '12', null, null, null, null, '0', '108010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2515', null, '通用服务', '1.8.2', '', '天/路', null, null, null, null, null, '12', null, null, null, null, '0', '108020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2516', null, '通用服务', '1.9', '', '台/班', null, '', null, null, null, '12', null, null, null, null, '0', '109000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2517', null, '通用服务', '1.10', '供电加热器费', '', null, '', null, null, null, '12', null, null, null, null, '0', '110000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2518', null, '通用服务', '1.10.1', '', '台', null, null, null, null, null, '12', null, null, null, null, '0', '110010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2519', null, '通用服务', '1.10.2', '', '台/班', null, null, null, null, null, '12', null, null, null, null, '0', '110020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2520', null, '通用服务', '1.11', '作业区域的安全通道布置费', '', null, '', null, null, null, '12', null, null, null, null, '0', '111000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2521', null, '通用服务', '1.11.1', '', '立方米', null, null, null, null, null, '12', null, null, null, null, '0', '111010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2522', null, '通用服务', '1.11.2', '', '个', null, null, null, null, null, '12', null, null, null, null, '0', '111020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2523', null, '通用服务', '1.12', '', '个', null, '', null, null, null, '12', null, null, null, null, '0', '112000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2524', null, '通用服务', '1.13', '', '次', null, '', null, null, null, '12', null, null, null, null, '0', '113000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2525', null, '通用服务', '1.14', '', '人', null, '', null, null, null, '12', null, null, null, null, '0', '114000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2526', null, '通用服务', '1.15', '可燃气体检测费', '', null, '', null, null, null, '12', null, null, null, null, '0', '115000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2527', null, '通用服务', '1.15.1', '', '初次', null, null, null, null, null, '12', null, null, null, null, '0', '115010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2528', null, '通用服务', '1.15.2', '', '初次', null, null, null, null, null, '12', null, null, null, null, '0', '115020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2529', null, '通用服务', '1.15.3', '', '初次', null, null, null, null, null, '12', null, null, null, null, '0', '115030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2530', null, '通用服务', '1.15.4', '', '舱/次', null, null, null, null, null, '12', null, null, null, null, '0', '115040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2531', null, '通用服务', '1.15.5', '', '初次', null, null, null, null, null, '12', null, null, null, null, '0', '115050000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2532', null, '通用服务', '1.15.6', '', '舱/次', null, null, null, null, null, '12', null, null, null, null, '0', '115060000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2533', null, '通用服务', '1.16', '', '舱/次', null, '', null, null, null, '12', null, null, null, null, '0', '116000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2534', null, '通用服务', '1.17', '消防费', '', null, '', null, null, null, '12', null, null, null, null, '0', '117000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2535', null, '通用服务', '1.17.1', '', '天', null, null, null, null, null, '12', null, null, null, null, '0', '117010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2536', null, '通用服务', '1.17.2', '', '次/路', null, null, null, null, null, '12', null, null, null, null, '0', '117020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2537', null, '通用服务', '1.17.3', '', '路/天', null, null, null, null, null, '12', null, null, null, null, '0', '117030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2538', null, '通用服务', '1.17.4', '', '天', null, null, null, null, null, '12', null, null, null, null, '0', '117040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2539', null, '通用服务', '1.18', '', '船', null, '', null, null, null, '12', null, null, null, null, '0', '118000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2540', null, '通用服务', '1.19', '', '船', null, '', null, null, null, '12', null, null, null, null, '0', '119000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2541', null, '通用服务', '1.20', '', '次', null, '', null, null, null, '12', null, null, null, null, '0', '120000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2542', null, '通用服务', '1.21', '', '次', null, '', null, null, null, '12', null, null, null, null, '0', '121000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2543', null, '通用服务', '1.22', '', '船', null, '', null, null, null, '12', null, null, null, null, '0', '122000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2544', null, '通用服务', '1.23', '船上泥和水的抽排费', '', null, '', null, null, null, '12', null, null, null, null, '0', '123000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2545', null, '通用服务', '1.23.1', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '123010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2546', null, '通用服务', '1.23.2', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '123020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2547', null, '通用服务', '1.23.3', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '123030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2548', null, '通用服务', '1.24', '生活垃圾处理费', '', null, '', null, null, null, '12', null, null, null, null, '0', '124000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2549', null, '通用服务', '1.24.1', '', '天', null, null, null, null, null, '12', null, null, null, null, '0', '124010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2550', null, '通用服务', '1.24.2', '', '份', null, null, null, null, null, '12', null, null, null, null, '0', '124020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2551', null, '通用服务', '1.25', '', '船', null, '', null, null, null, '12', null, null, null, null, '0', '125000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2552', null, '通用服务', '1.26', '', '天', null, '', null, null, null, '12', null, null, null, null, '0', '126000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2553', null, '通用服务', '1.27', '通讯费', '', null, '', null, null, null, '12', null, null, null, null, '0', '127000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2554', null, '通用服务', '1.27.1', '', '台/天', null, null, null, null, null, '12', null, null, null, null, '0', '127010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2555', null, '通用服务', '1.27.2', '', '台/天', null, null, null, null, null, '12', null, null, null, null, '0', '127020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2556', null, '通用服务', '1.27.3', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '127030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2557', null, '通用服务', '1.28', '起吊设备租用费', '', null, '', null, null, null, '12', null, null, null, null, '0', '128000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2558', null, '通用服务', '1.28.1', '', '时', null, null, null, null, null, '12', null, null, null, null, '0', '128010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2559', null, '通用服务', '1.28.2', '', '时', null, null, null, null, null, '12', null, null, null, null, '0', '128020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2560', null, '通用服务', '1.28.3', '', '时', null, null, null, null, null, '12', null, null, null, null, '0', '128030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2561', null, '通用服务', '1.29', '', '时/台', null, '', null, null, null, '12', null, null, null, null, '0', '129000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2562', null, '通用服务', '1.30', '', '只', null, '', null, null, null, '12', null, null, null, null, '0', '130000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2563', null, '通用服务', '1.31', '', '次', null, '', null, null, null, '12', null, null, null, null, '0', '131000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2564', null, '通用服务', '1.32', '', '次', null, '', null, null, null, '12', null, null, null, null, '0', '132000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2565', null, '通用服务', '1.33', '', '人/时', null, '', null, null, null, '12', null, null, null, null, '0', '133000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2566', null, '通用服务', '1.34', 'addrow', '', null, '', null, null, null, '12', null, null, null, null, '0', '134000000', '0');
INSERT INTO `t_repair_prog_item` VALUES ('2567', null, '坞修工程', '2.1', '船坞费', '', null, '', null, null, null, '12', null, null, null, null, '0', '201000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2568', null, '坞修工程', '2.1.1', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '201010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2569', null, '坞修工程', '2.1.2', '', '', null, null, null, null, null, '12', null, null, null, null, '0', '201020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2570', null, '坞修工程', '2.2', '艉轴工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '202000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2571', null, '坞修工程', '2.2.1', '常规服务', '', null, null, null, null, null, '12', null, null, null, null, '0', '202010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2572', null, '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, null, null, '12', null, null, null, null, '0', '202020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2573', null, '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, null, null, '12', null, null, null, null, '0', '202030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2574', null, '坞修工程', '2.2.4', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '202040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2575', null, '坞修工程', '2.3', '舵系工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '203000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2576', null, '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, null, null, '12', null, null, null, null, '0', '203010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2577', null, '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, null, null, '12', null, null, null, null, '0', '203020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2578', null, '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, null, null, '12', null, null, null, null, '0', '203030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2579', null, '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, null, null, '12', null, null, null, null, '0', '203040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2580', null, '坞修工程', '2.3.5', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '203050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2581', null, '坞修工程', '2.4', '水下工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '204000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2582', null, '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, null, null, '12', null, null, null, null, '0', '204010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2583', null, '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, null, null, '12', null, null, null, null, '0', '204020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2584', null, '坞修工程', '2.4.3', '船底塞', '', null, null, null, null, null, '12', null, null, null, null, '0', '204030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2585', null, '坞修工程', '2.4.4', '海底阀', '', null, null, null, null, null, '12', null, null, null, null, '0', '204040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2586', null, '坞修工程', '2.4.5', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '204050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2587', null, '坞修工程', '2.5', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '205000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2588', null, '坞修工程', '2.5.1', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '205010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2589', null, '船体工程', '3.1', '清洁和油漆', '', null, '', null, null, null, '12', null, null, null, null, '0', '301000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2590', null, '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, null, null, '12', null, null, null, null, '0', '301010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2591', null, '船体工程', '3.1.2', '船体清洁', '', null, null, null, null, null, '12', null, null, null, null, '0', '301020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2592', null, '船体工程', '3.1.3', '涂漆', '', null, null, null, null, null, '12', null, null, null, null, '0', '301030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2593', null, '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, null, null, '12', null, null, null, null, '0', '301040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2594', null, '船体工程', '3.1.5', '喷砂', '', null, null, null, null, null, '12', null, null, null, null, '0', '301050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2595', null, '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, null, null, '12', null, null, null, null, '0', '301060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2596', null, '船体工程', '3.1.7', '脚手架', '', null, null, null, null, null, '12', null, null, null, null, '0', '301070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2597', null, '船体工程', '3.1.8', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '301080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2598', null, '船体工程', '3.2', '锚和锚链工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '302000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2599', null, '船体工程', '3.2.1', '锚链', '', null, null, null, null, null, '12', null, null, null, null, '0', '302010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2600', null, '船体工程', '3.2.2', '锚链工程', '', null, null, null, null, null, '12', null, null, null, null, '0', '302020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2601', null, '船体工程', '3.2.3', '锚链舱', '', null, null, null, null, null, '12', null, null, null, null, '0', '302030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2602', null, '船体工程', '3.2.4', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '302040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2603', null, '船体工程', '3.3', '钢质工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '303000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2604', null, '船体工程', '3.3.1', '钢板换新', '', null, null, null, null, null, '12', null, null, null, null, '0', '303010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2605', null, '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, null, null, '12', null, null, null, null, '0', '303020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2606', null, '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, null, null, '12', null, null, null, null, '0', '303030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2607', null, '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, null, null, '12', null, null, null, null, '0', '303040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2608', null, '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, null, null, '12', null, null, null, null, '0', '303050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2609', null, '船体工程', '3.3.6', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '303060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2610', null, '船体工程', '3.4', '舱工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '304000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2611', null, '船体工程', '3.4.1', '清洗', '', null, null, null, null, null, '12', null, null, null, null, '0', '304010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2612', null, '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, null, null, '12', null, null, null, null, '0', '304020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2613', null, '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, null, null, '12', null, null, null, null, '0', '304030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2614', null, '船体工程', '3.4.4', '试验', '', null, null, null, null, null, '12', null, null, null, null, '0', '304040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2615', null, '船体工程', '3.4.5', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '304050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2616', null, '船体工程', '3.5', '起吊设备', '', null, '', null, null, null, '12', null, null, null, null, '0', '305000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2617', null, '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, null, null, '12', null, null, null, null, '0', '305010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2618', null, '船体工程', '3.5.2', '滑车', '', null, null, null, null, null, '12', null, null, null, null, '0', '305020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2619', null, '船体工程', '3.5.3', '吊重试验', '', null, null, null, null, null, '12', null, null, null, null, '0', '305030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2620', null, '船体工程', '3.5.4', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '305040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2621', null, '船体工程', '3.6', '舷梯工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '306000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2622', null, '船体工程', '3.6.1', '舷梯工程', '', null, null, null, null, null, '12', null, null, null, null, '0', '306010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2623', null, '船体工程', '3.6.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '306020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2624', null, '船体工程', '3.7', '救生艇系统', '', null, '', null, null, null, '12', null, null, null, null, '0', '307000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2625', null, '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, null, null, '12', null, null, null, null, '0', '307010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2626', null, '船体工程', '3.7.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '307020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2627', null, '船体工程', '3.8', '二氧化碳灭火系统', '', null, '', null, null, null, '12', null, null, null, null, '0', '308000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2628', null, '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, null, null, '12', null, null, null, null, '0', '308010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2629', null, '船体工程', '3.8.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '308020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2630', null, '船体工程', '3.9', '舾装工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '309000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2631', null, '船体工程', '3.9.1', '舾装工程', '', null, null, null, null, null, '12', null, null, null, null, '0', '309010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2632', null, '船体工程', '3.9.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '309020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2633', null, '船体工程', '3.10', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '310000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2634', null, '船体工程', '3.10.1', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '310010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2635', null, '机械工程', '4.1', '柴油机主机', '', null, '', null, null, null, '12', null, null, null, null, '0', '401000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2636', null, '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, null, null, '12', null, null, null, null, '0', '401010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2637', null, '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, null, null, '12', null, null, null, null, '0', '401020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2638', null, '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, null, null, '12', null, null, null, null, '0', '401030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2639', null, '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, null, null, '12', null, null, null, null, '0', '401040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2640', null, '机械工程', '4.1.5', '活塞环', '', null, null, null, null, null, '12', null, null, null, null, '0', '401050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2641', null, '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, null, null, '12', null, null, null, null, '0', '401060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2642', null, '机械工程', '4.1.7', '气缸套', '', null, null, null, null, null, '12', null, null, null, null, '0', '401070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2643', null, '机械工程', '4.1.8', '轴承', '', null, null, null, null, null, '12', null, null, null, null, '0', '401080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2644', null, '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, null, null, '12', null, null, null, null, '0', '401090000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2645', null, '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, null, null, '12', null, null, null, null, '0', '401100000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2646', null, '机械工程', '4.1.11', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '401110000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2647', null, '机械工程', '4.2', '柴油机副机', '', null, '', null, null, null, '12', null, null, null, null, '0', '402000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2648', null, '机械工程', '4.2.1', '气缸盖', '', null, null, null, null, null, '12', null, null, null, null, '0', '402010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2649', null, '机械工程', '4.2.2', '活塞', '', null, null, null, null, null, '12', null, null, null, null, '0', '402020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2650', null, '机械工程', '4.2.3', '轴承', '', null, null, null, null, null, '12', null, null, null, null, '0', '402030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2651', null, '机械工程', '4.2.4', '气缸套', '', null, null, null, null, null, '12', null, null, null, null, '0', '402040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2652', null, '机械工程', '4.2.5', '试验项目', '', null, null, null, null, null, '12', null, null, null, null, '0', '402050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2653', null, '机械工程', '4.2.6', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '402060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2654', null, '机械工程', '4.3', '热交换器', '', null, '', null, null, null, '12', null, null, null, null, '0', '403000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2655', null, '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, null, null, '12', null, null, null, null, '0', '403010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2656', null, '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, null, null, '12', null, null, null, null, '0', '403020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2657', null, '机械工程', '4.3.3', '板状热交换器', '', null, null, null, null, null, '12', null, null, null, null, '0', '403030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2658', null, '机械工程', '4.3.4', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '403040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2659', null, '机械工程', '4.4', '锅炉和锅炉附件', '', null, '', null, null, null, '12', null, null, null, null, '0', '404000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2660', null, '机械工程', '4.4.1', '锅炉', '', null, null, null, null, null, '12', null, null, null, null, '0', '404010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2661', null, '机械工程', '4.4.2', '锅炉附件', '', null, null, null, null, null, '12', null, null, null, null, '0', '404020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2662', null, '机械工程', '4.4.3', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '404030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2663', null, '机械工程', '4.5', '管系工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '405000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2664', null, '机械工程', '4.5.1', '管路换新', '', null, null, null, null, null, '12', null, null, null, null, '0', '405010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2665', null, '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, null, null, '12', null, null, null, null, '0', '405020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2666', null, '机械工程', '4.5.3', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '405030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2667', null, '机械工程', '4.6', '阀门工程', '', null, '', null, null, null, '12', null, null, null, null, '0', '406000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2668', null, '机械工程', '4.6.1', '阀门工程', '', null, null, null, null, null, '12', null, null, null, null, '0', '406010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2669', null, '机械工程', '4.6.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '406020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2670', null, '机械工程', '4.7', '泵浦', '', null, '', null, null, null, '12', null, null, null, null, '0', '407000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2671', null, '机械工程', '4.7.1', '电动离心泵', '', null, null, null, null, null, '12', null, null, null, null, '0', '407010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2672', null, '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, null, null, '12', null, null, null, null, '0', '407020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2673', null, '机械工程', '4.7.3', '螺杆泵', '', null, null, null, null, null, '12', null, null, null, null, '0', '407030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2674', null, '机械工程', '4.7.4', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '407040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2675', null, '机械工程', '4.8', '空压机', '', null, '', null, null, null, '12', null, null, null, null, '0', '408000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2676', null, '机械工程', '4.8.1', '空压机', '', null, null, null, null, null, '12', null, null, null, null, '0', '408010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2677', null, '机械工程', '4.8.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '408020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2678', null, '机械工程', '4.9', '起货机', '', null, '', null, null, null, '12', null, null, null, null, '0', '409000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2679', null, '机械工程', '4.9.1', '起货机', '', null, null, null, null, null, '12', null, null, null, null, '0', '409010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2680', null, '机械工程', '4.9.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '409020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2681', null, '机械工程', '4.10', '卧式/立式绞缆机', '', null, '', null, null, null, '12', null, null, null, null, '0', '410000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2682', null, '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, null, null, '12', null, null, null, null, '0', '410010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2683', null, '机械工程', '4.10.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '410020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2684', null, '机械工程', '4.11', '起锚机', '', null, '', null, null, null, '12', null, null, null, null, '0', '411000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2685', null, '机械工程', '4.11.1', '起锚机', '台', null, null, null, null, null, '12', null, null, null, null, '0', '411010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2686', null, '机械工程', '4.11.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '411020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2687', null, '机械工程', '4.12', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '412000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2688', null, '机械工程', '4.12.1', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '412010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2689', null, '电气工程', '5.1', '交流电动机', '', null, '', null, null, null, '12', null, null, null, null, '0', '501000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2690', null, '电气工程', '5.1.1', '交流电动机', '', null, null, null, null, null, '12', null, null, null, null, '0', '501010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2691', null, '电气工程', '5.1.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '501020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2692', null, '电气工程', '5.2', '交流发电机', '', null, '', null, null, null, '12', null, null, null, null, '0', '502000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2693', null, '电气工程', '5.2.1', '交流发电机', '', null, null, null, null, null, '12', null, null, null, null, '0', '502010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2694', null, '电气工程', '5.2.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '502020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2695', null, '电气工程', '5.3', '发电机负荷及并联试验', '', null, '', null, null, null, '12', null, null, null, null, '0', '503000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2696', null, '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, null, null, '12', null, null, null, null, '0', '503010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2697', null, '电气工程', '5.3.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '503020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2698', null, '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, '', null, null, null, '12', null, null, null, null, '0', '504000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2699', null, '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, null, null, '12', null, null, null, null, '0', '504010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2700', null, '电气工程', '5.4.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '504020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2701', null, '电气工程', '5.5', '主配电板', '', null, '', null, null, null, '12', null, null, null, null, '0', '505000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2702', null, '电气工程', '5.5.1', '主配电板', '', null, null, null, null, null, '12', null, null, null, null, '0', '505010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2703', null, '电气工程', '5.5.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '505020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2704', null, '电气工程', '5.6', '仪表', '', null, '', null, null, null, '12', null, null, null, null, '0', '506000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2705', null, '电气工程', '5.6.1', '仪表校验', '', null, null, null, null, null, '12', null, null, null, null, '0', '506010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2706', null, '电气工程', '5.6.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '506020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2707', null, '电气工程', '5.7', '电缆拆装与新装', '', null, '', null, null, null, '12', null, null, null, null, '0', '507000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2708', null, '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, null, null, '12', null, null, null, null, '0', '507010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2709', null, '电气工程', '5.7.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '507020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2710', null, '电气工程', '5.8', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '508000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2711', null, '电气工程', '5.8.1', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '508010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2712', null, '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, '', null, null, null, '12', null, null, null, null, '0', '601000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2713', null, '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, null, null, '12', null, null, null, null, '0', '601010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2714', null, '冷藏工程', '6.1.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '601020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2715', null, '冷藏工程', '6.2', '', '', null, '', null, null, null, '12', null, null, null, null, '0', '602000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2716', null, '冷藏工程', '6.3', '制冷系统蒸发器', '', null, '', null, null, null, '12', null, null, null, null, '0', '603000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2717', null, '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, null, null, '12', null, null, null, null, '0', '603010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2718', null, '冷藏工程', '6.3.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '603020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2719', null, '冷藏工程', '6.4', '制冷系统冷凝器', '', null, '', null, null, null, '12', null, null, null, null, '0', '604000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2720', null, '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, null, null, '12', null, null, null, null, '0', '604010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2721', null, '冷藏工程', '6.4.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '604020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2722', null, '冷藏工程', '6.5', '制冷系统中间容器', '', null, '', null, null, null, '12', null, null, null, null, '0', '605000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2723', null, '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, null, null, '12', null, null, null, null, '0', '605010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2724', null, '冷藏工程', '6.5.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '605020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2725', null, '冷藏工程', '6.6', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '606000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2726', null, '冷藏工程', '6.6.1', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '606010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2727', null, '特种设备', '7.1', '鱼加工带式传动装置', '', null, '', null, null, null, '12', null, null, null, null, '0', '701000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2728', null, '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, null, null, '12', null, null, null, null, '0', '701010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2729', null, '特种设备', '7.1.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '701020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2730', null, '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, '', null, null, null, '12', null, null, null, null, '0', '702000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2731', null, '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, null, null, '12', null, null, null, null, '0', '702010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2732', null, '特种设备', '7.2.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '702020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2733', null, '特种设备', '7.3', '挖泥船泥门', '', null, '', null, null, null, '12', null, null, null, null, '0', '703000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2734', null, '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, null, null, '12', null, null, null, null, '0', '703010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2735', null, '特种设备', '7.3.2', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '703020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2736', null, '特种设备', '7.4', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '704000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2737', null, '特种设备', '7.4.1', 'addrow', '', null, '', null, null, null, '12', null, null, null, null, '0', '704010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2738', null, '其他', '8.1', '自定义', '', null, '', null, null, null, '12', null, null, null, null, '0', '801000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2739', null, '其他', '8.1.1', 'addrow', '', null, null, null, null, null, '12', null, null, null, null, '0', '801010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2740', null, '通用服务', '1.1', '码头费', '天', '44', '', null, null, null, '13', null, null, null, null, '0', '101000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2741', null, '通用服务', '1.2', '系解缆和靠离码头拖轮费', '', null, '', null, null, null, '13', null, null, null, null, '0', '102000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2742', null, '通用服务', '1.2.1', '系或解缆', '次', '44', null, null, null, null, '13', null, null, null, null, '0', '102010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2743', null, '通用服务', '1.2.2', '靠或离码头', '次', '44', null, null, null, null, '13', null, null, null, null, '0', '102020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2744', null, '通用服务', '1.3', '供电费', '', null, '', null, null, null, '13', null, null, null, null, '0', '103000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2745', null, '通用服务', '1.3.1', '', '次/路', '3', null, null, null, null, '13', null, null, null, null, '0', '103010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2746', null, '通用服务', '1.3.2', '', '天', '3', null, null, null, null, '13', null, null, null, null, '0', '103020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2747', null, '通用服务', '1.3.3', '', '度', '43', null, null, null, null, '13', null, null, null, null, '0', '103030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2748', null, '通用服务', '1.4', '供冷却水费', '', null, '', null, null, null, '13', null, null, null, null, '0', '104000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2749', null, '通用服务', '1.4.1', '', '次/路', '34', null, null, null, null, '13', null, null, null, null, '0', '104010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2750', null, '通用服务', '1.4.2', '', '路/天', '34', null, null, null, null, '13', null, null, null, null, '0', '104020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2751', null, '通用服务', '1.5', '供淡水费', '', null, '', null, null, null, '13', null, null, null, null, '0', '105000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2752', null, '通用服务', '1.5.1', '', '次/路', null, null, null, null, null, '13', null, null, null, null, '0', '105010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2753', null, '通用服务', '1.5.2', '', '吨', null, null, null, null, null, '13', null, null, null, null, '0', '105020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2754', null, '通用服务', '1.5.3', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '105030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2755', null, '通用服务', '1.6', '供压载水费', '', null, '', null, null, null, '13', null, null, null, null, '0', '106000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2756', null, '通用服务', '1.6.1', '', '次/路', null, null, null, null, null, '13', null, null, null, null, '0', '106010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2757', null, '通用服务', '1.6.2', '', '吨', null, null, null, null, null, '13', null, null, null, null, '0', '106020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2758', null, '通用服务', '1.6.3', '', '立方米', null, null, null, null, null, '13', null, null, null, null, '0', '106030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2759', null, '通用服务', '1.7', '供蒸汽费', '', null, '', null, null, null, '13', null, null, null, null, '0', '107000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2760', null, '通用服务', '1.7.1', '', '路/次', null, null, null, null, null, '13', null, null, null, null, '0', '107010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2761', null, '通用服务', '1.7.2', '', '时', null, null, null, null, null, '13', null, null, null, null, '0', '107020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2762', null, '通用服务', '1.8', '供压缩空气费', '', null, '', null, null, null, '13', null, null, null, null, '0', '108000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2763', null, '通用服务', '1.8.1', '', '次/路', null, null, null, null, null, '13', null, null, null, null, '0', '108010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2764', null, '通用服务', '1.8.2', '', '天/路', null, null, null, null, null, '13', null, null, null, null, '0', '108020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2765', null, '通用服务', '1.9', '', '台/班', null, '', null, null, null, '13', null, null, null, null, '0', '109000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2766', null, '通用服务', '1.10', '供电加热器费', '', null, '', null, null, null, '13', null, null, null, null, '0', '110000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2767', null, '通用服务', '1.10.1', '', '台', null, null, null, null, null, '13', null, null, null, null, '0', '110010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2768', null, '通用服务', '1.10.2', '', '台/班', null, null, null, null, null, '13', null, null, null, null, '0', '110020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2769', null, '通用服务', '1.11', '作业区域的安全通道布置费', '', null, '', null, null, null, '13', null, null, null, null, '0', '111000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2770', null, '通用服务', '1.11.1', '', '立方米', null, null, null, null, null, '13', null, null, null, null, '0', '111010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2771', null, '通用服务', '1.11.2', '', '个', null, null, null, null, null, '13', null, null, null, null, '0', '111020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2772', null, '通用服务', '1.12', '', '个', null, '', null, null, null, '13', null, null, null, null, '0', '112000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2773', null, '通用服务', '1.13', '', '次', null, '', null, null, null, '13', null, null, null, null, '0', '113000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2774', null, '通用服务', '1.14', '', '人', null, '', null, null, null, '13', null, null, null, null, '0', '114000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2775', null, '通用服务', '1.15', '可燃气体检测费', '', null, '', null, null, null, '13', null, null, null, null, '0', '115000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2776', null, '通用服务', '1.15.1', '', '初次', null, null, null, null, null, '13', null, null, null, null, '0', '115010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2777', null, '通用服务', '1.15.2', '', '初次', null, null, null, null, null, '13', null, null, null, null, '0', '115020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2778', null, '通用服务', '1.15.3', '', '初次', null, null, null, null, null, '13', null, null, null, null, '0', '115030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2779', null, '通用服务', '1.15.4', '', '舱/次', null, null, null, null, null, '13', null, null, null, null, '0', '115040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2780', null, '通用服务', '1.15.5', '', '初次', null, null, null, null, null, '13', null, null, null, null, '0', '115050000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2781', null, '通用服务', '1.15.6', '', '舱/次', null, null, null, null, null, '13', null, null, null, null, '0', '115060000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2782', null, '通用服务', '1.16', '', '舱/次', null, '', null, null, null, '13', null, null, null, null, '0', '116000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2783', null, '通用服务', '1.17', '消防费', '', null, '', null, null, null, '13', null, null, null, null, '0', '117000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2784', null, '通用服务', '1.17.1', '', '天', null, null, null, null, null, '13', null, null, null, null, '0', '117010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2785', null, '通用服务', '1.17.2', '', '次/路', null, null, null, null, null, '13', null, null, null, null, '0', '117020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2786', null, '通用服务', '1.17.3', '', '路/天', null, null, null, null, null, '13', null, null, null, null, '0', '117030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2787', null, '通用服务', '1.17.4', '', '天', null, null, null, null, null, '13', null, null, null, null, '0', '117040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2788', null, '通用服务', '1.18', '', '船', null, '', null, null, null, '13', null, null, null, null, '0', '118000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2789', null, '通用服务', '1.19', '', '船', null, '', null, null, null, '13', null, null, null, null, '0', '119000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2790', null, '通用服务', '1.20', '', '次', null, '', null, null, null, '13', null, null, null, null, '0', '120000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2791', null, '通用服务', '1.21', '', '次', null, '', null, null, null, '13', null, null, null, null, '0', '121000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2792', null, '通用服务', '1.22', '', '船', null, '', null, null, null, '13', null, null, null, null, '0', '122000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2793', null, '通用服务', '1.23', '船上泥和水的抽排费', '', null, '', null, null, null, '13', null, null, null, null, '0', '123000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2794', null, '通用服务', '1.23.1', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '123010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2795', null, '通用服务', '1.23.2', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '123020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2796', null, '通用服务', '1.23.3', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '123030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2797', null, '通用服务', '1.24', '生活垃圾处理费', '', null, '', null, null, null, '13', null, null, null, null, '0', '124000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2798', null, '通用服务', '1.24.1', '', '天', null, null, null, null, null, '13', null, null, null, null, '0', '124010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2799', null, '通用服务', '1.24.2', '', '份', null, null, null, null, null, '13', null, null, null, null, '0', '124020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2800', null, '通用服务', '1.25', '', '船', null, '', null, null, null, '13', null, null, null, null, '0', '125000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2801', null, '通用服务', '1.26', '', '天', null, '', null, null, null, '13', null, null, null, null, '0', '126000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2802', null, '通用服务', '1.27', '通讯费', '', null, '', null, null, null, '13', null, null, null, null, '0', '127000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2803', null, '通用服务', '1.27.1', '', '台/天', null, null, null, null, null, '13', null, null, null, null, '0', '127010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2804', null, '通用服务', '1.27.2', '', '台/天', null, null, null, null, null, '13', null, null, null, null, '0', '127020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2805', null, '通用服务', '1.27.3', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '127030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2806', null, '通用服务', '1.28', '起吊设备租用费', '', null, '', null, null, null, '13', null, null, null, null, '0', '128000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2807', null, '通用服务', '1.28.1', '', '时', null, null, null, null, null, '13', null, null, null, null, '0', '128010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2808', null, '通用服务', '1.28.2', '', '时', null, null, null, null, null, '13', null, null, null, null, '0', '128020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2809', null, '通用服务', '1.28.3', '', '时', null, null, null, null, null, '13', null, null, null, null, '0', '128030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2810', null, '通用服务', '1.29', '', '时/台', null, '', null, null, null, '13', null, null, null, null, '0', '129000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2811', null, '通用服务', '1.30', '', '只', null, '', null, null, null, '13', null, null, null, null, '0', '130000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2812', null, '通用服务', '1.31', '', '次', null, '', null, null, null, '13', null, null, null, null, '0', '131000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2813', null, '通用服务', '1.32', '', '次', null, '', null, null, null, '13', null, null, null, null, '0', '132000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2814', null, '通用服务', '1.33', '', '人/时', null, '', null, null, null, '13', null, null, null, null, '0', '133000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2815', null, '通用服务', '1.34', 'addrow', '', null, '', null, null, null, '13', null, null, null, null, '0', '134000000', '0');
INSERT INTO `t_repair_prog_item` VALUES ('2816', null, '坞修工程', '2.1', '船坞费', '', null, '', null, null, null, '13', null, null, null, null, '0', '201000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2817', null, '坞修工程', '2.1.1', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '201010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2818', null, '坞修工程', '2.1.2', '', '', null, null, null, null, null, '13', null, null, null, null, '0', '201020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2819', null, '坞修工程', '2.2', '艉轴工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '202000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2820', null, '坞修工程', '2.2.1', '常规服务', '', null, null, null, null, null, '13', null, null, null, null, '0', '202010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2821', null, '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, null, null, '13', null, null, null, null, '0', '202020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2822', null, '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, null, null, '13', null, null, null, null, '0', '202030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2823', null, '坞修工程', '2.2.4', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '202040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2824', null, '坞修工程', '2.3', '舵系工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '203000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2825', null, '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, null, null, '13', null, null, null, null, '0', '203010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2826', null, '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, null, null, '13', null, null, null, null, '0', '203020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2827', null, '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, null, null, '13', null, null, null, null, '0', '203030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2828', null, '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, null, null, '13', null, null, null, null, '0', '203040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2829', null, '坞修工程', '2.3.5', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '203050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2830', null, '坞修工程', '2.4', '水下工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '204000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2831', null, '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, null, null, '13', null, null, null, null, '0', '204010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2832', null, '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, null, null, '13', null, null, null, null, '0', '204020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2833', null, '坞修工程', '2.4.3', '船底塞', '', null, null, null, null, null, '13', null, null, null, null, '0', '204030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2834', null, '坞修工程', '2.4.4', '海底阀', '', null, null, null, null, null, '13', null, null, null, null, '0', '204040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2835', null, '坞修工程', '2.4.5', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '204050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2836', null, '坞修工程', '2.5', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '205000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2837', null, '坞修工程', '2.5.1', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '205010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2838', null, '船体工程', '3.1', '清洁和油漆', '', null, '', null, null, null, '13', null, null, null, null, '0', '301000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2839', null, '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, null, null, '13', null, null, null, null, '0', '301010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2840', null, '船体工程', '3.1.2', '船体清洁', '', null, null, null, null, null, '13', null, null, null, null, '0', '301020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2841', null, '船体工程', '3.1.3', '涂漆', '', null, null, null, null, null, '13', null, null, null, null, '0', '301030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2842', null, '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, null, null, '13', null, null, null, null, '0', '301040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2843', null, '船体工程', '3.1.5', '喷砂', '', null, null, null, null, null, '13', null, null, null, null, '0', '301050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2844', null, '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, null, null, '13', null, null, null, null, '0', '301060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2845', null, '船体工程', '3.1.7', '脚手架', '', null, null, null, null, null, '13', null, null, null, null, '0', '301070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2846', null, '船体工程', '3.1.8', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '301080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2847', null, '船体工程', '3.2', '锚和锚链工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '302000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2848', null, '船体工程', '3.2.1', '锚链', '', null, null, null, null, null, '13', null, null, null, null, '0', '302010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2849', null, '船体工程', '3.2.2', '锚链工程', '', null, null, null, null, null, '13', null, null, null, null, '0', '302020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2850', null, '船体工程', '3.2.3', '锚链舱', '', null, null, null, null, null, '13', null, null, null, null, '0', '302030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2851', null, '船体工程', '3.2.4', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '302040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2852', null, '船体工程', '3.3', '钢质工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '303000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2853', null, '船体工程', '3.3.1', '钢板换新', '', null, null, null, null, null, '13', null, null, null, null, '0', '303010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2854', null, '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, null, null, '13', null, null, null, null, '0', '303020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2855', null, '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, null, null, '13', null, null, null, null, '0', '303030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2856', null, '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, null, null, '13', null, null, null, null, '0', '303040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2857', null, '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, null, null, '13', null, null, null, null, '0', '303050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2858', null, '船体工程', '3.3.6', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '303060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2859', null, '船体工程', '3.4', '舱工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '304000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2860', null, '船体工程', '3.4.1', '清洗', '', null, null, null, null, null, '13', null, null, null, null, '0', '304010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2861', null, '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, null, null, '13', null, null, null, null, '0', '304020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2862', null, '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, null, null, '13', null, null, null, null, '0', '304030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2863', null, '船体工程', '3.4.4', '试验', '', null, null, null, null, null, '13', null, null, null, null, '0', '304040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2864', null, '船体工程', '3.4.5', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '304050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2865', null, '船体工程', '3.5', '起吊设备', '', null, '', null, null, null, '13', null, null, null, null, '0', '305000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2866', null, '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, null, null, '13', null, null, null, null, '0', '305010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2867', null, '船体工程', '3.5.2', '滑车', '', null, null, null, null, null, '13', null, null, null, null, '0', '305020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2868', null, '船体工程', '3.5.3', '吊重试验', '', null, null, null, null, null, '13', null, null, null, null, '0', '305030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2869', null, '船体工程', '3.5.4', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '305040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2870', null, '船体工程', '3.6', '舷梯工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '306000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2871', null, '船体工程', '3.6.1', '舷梯工程', '', null, null, null, null, null, '13', null, null, null, null, '0', '306010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2872', null, '船体工程', '3.6.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '306020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2873', null, '船体工程', '3.7', '救生艇系统', '', null, '', null, null, null, '13', null, null, null, null, '0', '307000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2874', null, '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, null, null, '13', null, null, null, null, '0', '307010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2875', null, '船体工程', '3.7.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '307020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2876', null, '船体工程', '3.8', '二氧化碳灭火系统', '', null, '', null, null, null, '13', null, null, null, null, '0', '308000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2877', null, '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, null, null, '13', null, null, null, null, '0', '308010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2878', null, '船体工程', '3.8.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '308020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2879', null, '船体工程', '3.9', '舾装工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '309000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2880', null, '船体工程', '3.9.1', '舾装工程', '', null, null, null, null, null, '13', null, null, null, null, '0', '309010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2881', null, '船体工程', '3.9.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '309020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2882', null, '船体工程', '3.10', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '310000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2883', null, '船体工程', '3.10.1', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '310010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2884', null, '机械工程', '4.1', '柴油机主机', '', null, '', null, null, null, '13', null, null, null, null, '0', '401000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2885', null, '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, null, null, '13', null, null, null, null, '0', '401010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2886', null, '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, null, null, '13', null, null, null, null, '0', '401020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2887', null, '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, null, null, '13', null, null, null, null, '0', '401030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2888', null, '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, null, null, '13', null, null, null, null, '0', '401040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2889', null, '机械工程', '4.1.5', '活塞环', '', null, null, null, null, null, '13', null, null, null, null, '0', '401050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2890', null, '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, null, null, '13', null, null, null, null, '0', '401060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2891', null, '机械工程', '4.1.7', '气缸套', '', null, null, null, null, null, '13', null, null, null, null, '0', '401070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2892', null, '机械工程', '4.1.8', '轴承', '', null, null, null, null, null, '13', null, null, null, null, '0', '401080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2893', null, '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, null, null, '13', null, null, null, null, '0', '401090000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2894', null, '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, null, null, '13', null, null, null, null, '0', '401100000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2895', null, '机械工程', '4.1.11', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '401110000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2896', null, '机械工程', '4.2', '柴油机副机', '', null, '', null, null, null, '13', null, null, null, null, '0', '402000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2897', null, '机械工程', '4.2.1', '气缸盖', '', null, null, null, null, null, '13', null, null, null, null, '0', '402010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2898', null, '机械工程', '4.2.2', '活塞', '', null, null, null, null, null, '13', null, null, null, null, '0', '402020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2899', null, '机械工程', '4.2.3', '轴承', '', null, null, null, null, null, '13', null, null, null, null, '0', '402030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2900', null, '机械工程', '4.2.4', '气缸套', '', null, null, null, null, null, '13', null, null, null, null, '0', '402040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2901', null, '机械工程', '4.2.5', '试验项目', '', null, null, null, null, null, '13', null, null, null, null, '0', '402050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2902', null, '机械工程', '4.2.6', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '402060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2903', null, '机械工程', '4.3', '热交换器', '', null, '', null, null, null, '13', null, null, null, null, '0', '403000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2904', null, '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, null, null, '13', null, null, null, null, '0', '403010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2905', null, '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, null, null, '13', null, null, null, null, '0', '403020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2906', null, '机械工程', '4.3.3', '板状热交换器', '', null, null, null, null, null, '13', null, null, null, null, '0', '403030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2907', null, '机械工程', '4.3.4', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '403040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2908', null, '机械工程', '4.4', '锅炉和锅炉附件', '', null, '', null, null, null, '13', null, null, null, null, '0', '404000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2909', null, '机械工程', '4.4.1', '锅炉', '', null, null, null, null, null, '13', null, null, null, null, '0', '404010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2910', null, '机械工程', '4.4.2', '锅炉附件', '', null, null, null, null, null, '13', null, null, null, null, '0', '404020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2911', null, '机械工程', '4.4.3', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '404030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2912', null, '机械工程', '4.5', '管系工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '405000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2913', null, '机械工程', '4.5.1', '管路换新', '', null, null, null, null, null, '13', null, null, null, null, '0', '405010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2914', null, '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, null, null, '13', null, null, null, null, '0', '405020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2915', null, '机械工程', '4.5.3', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '405030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2916', null, '机械工程', '4.6', '阀门工程', '', null, '', null, null, null, '13', null, null, null, null, '0', '406000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2917', null, '机械工程', '4.6.1', '阀门工程', '', null, null, null, null, null, '13', null, null, null, null, '0', '406010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2918', null, '机械工程', '4.6.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '406020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2919', null, '机械工程', '4.7', '泵浦', '', null, '', null, null, null, '13', null, null, null, null, '0', '407000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2920', null, '机械工程', '4.7.1', '电动离心泵', '', null, null, null, null, null, '13', null, null, null, null, '0', '407010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2921', null, '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, null, null, '13', null, null, null, null, '0', '407020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2922', null, '机械工程', '4.7.3', '螺杆泵', '', null, null, null, null, null, '13', null, null, null, null, '0', '407030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2923', null, '机械工程', '4.7.4', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '407040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2924', null, '机械工程', '4.8', '空压机', '', null, '', null, null, null, '13', null, null, null, null, '0', '408000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2925', null, '机械工程', '4.8.1', '空压机', '', null, null, null, null, null, '13', null, null, null, null, '0', '408010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2926', null, '机械工程', '4.8.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '408020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2927', null, '机械工程', '4.9', '起货机', '', null, '', null, null, null, '13', null, null, null, null, '0', '409000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2928', null, '机械工程', '4.9.1', '起货机', '', null, null, null, null, null, '13', null, null, null, null, '0', '409010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2929', null, '机械工程', '4.9.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '409020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2930', null, '机械工程', '4.10', '卧式/立式绞缆机', '', null, '', null, null, null, '13', null, null, null, null, '0', '410000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2931', null, '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, null, null, '13', null, null, null, null, '0', '410010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2932', null, '机械工程', '4.10.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '410020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2933', null, '机械工程', '4.11', '起锚机', '', null, '', null, null, null, '13', null, null, null, null, '0', '411000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2934', null, '机械工程', '4.11.1', '起锚机', '台', null, null, null, null, null, '13', null, null, null, null, '0', '411010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2935', null, '机械工程', '4.11.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '411020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2936', null, '机械工程', '4.12', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '412000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2937', null, '机械工程', '4.12.1', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '412010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2938', null, '电气工程', '5.1', '交流电动机', '', null, '', null, null, null, '13', null, null, null, null, '0', '501000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2939', null, '电气工程', '5.1.1', '交流电动机', '', null, null, null, null, null, '13', null, null, null, null, '0', '501010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2940', null, '电气工程', '5.1.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '501020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2941', null, '电气工程', '5.2', '交流发电机', '', null, '', null, null, null, '13', null, null, null, null, '0', '502000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2942', null, '电气工程', '5.2.1', '交流发电机', '', null, null, null, null, null, '13', null, null, null, null, '0', '502010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2943', null, '电气工程', '5.2.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '502020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2944', null, '电气工程', '5.3', '发电机负荷及并联试验', '', null, '', null, null, null, '13', null, null, null, null, '0', '503000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2945', null, '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, null, null, '13', null, null, null, null, '0', '503010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2946', null, '电气工程', '5.3.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '503020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2947', null, '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, '', null, null, null, '13', null, null, null, null, '0', '504000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2948', null, '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, null, null, '13', null, null, null, null, '0', '504010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2949', null, '电气工程', '5.4.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '504020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2950', null, '电气工程', '5.5', '主配电板', '', null, '', null, null, null, '13', null, null, null, null, '0', '505000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2951', null, '电气工程', '5.5.1', '主配电板', '', null, null, null, null, null, '13', null, null, null, null, '0', '505010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2952', null, '电气工程', '5.5.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '505020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2953', null, '电气工程', '5.6', '仪表', '', null, '', null, null, null, '13', null, null, null, null, '0', '506000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2954', null, '电气工程', '5.6.1', '仪表校验', '', null, null, null, null, null, '13', null, null, null, null, '0', '506010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2955', null, '电气工程', '5.6.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '506020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2956', null, '电气工程', '5.7', '电缆拆装与新装', '', null, '', null, null, null, '13', null, null, null, null, '0', '507000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2957', null, '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, null, null, '13', null, null, null, null, '0', '507010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2958', null, '电气工程', '5.7.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '507020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2959', null, '电气工程', '5.8', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '508000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2960', null, '电气工程', '5.8.1', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '508010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2961', null, '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, '', null, null, null, '13', null, null, null, null, '0', '601000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2962', null, '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, null, null, '13', null, null, null, null, '0', '601010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2963', null, '冷藏工程', '6.1.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '601020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2964', null, '冷藏工程', '6.2', '', '', null, '', null, null, null, '13', null, null, null, null, '0', '602000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2965', null, '冷藏工程', '6.3', '制冷系统蒸发器', '', null, '', null, null, null, '13', null, null, null, null, '0', '603000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2966', null, '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, null, null, '13', null, null, null, null, '0', '603010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2967', null, '冷藏工程', '6.3.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '603020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2968', null, '冷藏工程', '6.4', '制冷系统冷凝器', '', null, '', null, null, null, '13', null, null, null, null, '0', '604000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2969', null, '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, null, null, '13', null, null, null, null, '0', '604010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2970', null, '冷藏工程', '6.4.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '604020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2971', null, '冷藏工程', '6.5', '制冷系统中间容器', '', null, '', null, null, null, '13', null, null, null, null, '0', '605000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2972', null, '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, null, null, '13', null, null, null, null, '0', '605010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2973', null, '冷藏工程', '6.5.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '605020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2974', null, '冷藏工程', '6.6', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '606000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2975', null, '冷藏工程', '6.6.1', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '606010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2976', null, '特种设备', '7.1', '鱼加工带式传动装置', '', null, '', null, null, null, '13', null, null, null, null, '0', '701000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2977', null, '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, null, null, '13', null, null, null, null, '0', '701010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2978', null, '特种设备', '7.1.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '701020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2979', null, '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, '', null, null, null, '13', null, null, null, null, '0', '702000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2980', null, '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, null, null, '13', null, null, null, null, '0', '702010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2981', null, '特种设备', '7.2.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '702020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2982', null, '特种设备', '7.3', '挖泥船泥门', '', null, '', null, null, null, '13', null, null, null, null, '0', '703000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2983', null, '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, null, null, '13', null, null, null, null, '0', '703010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2984', null, '特种设备', '7.3.2', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '703020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2985', null, '特种设备', '7.4', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '704000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2986', null, '特种设备', '7.4.1', 'addrow', '', null, '', null, null, null, '13', null, null, null, null, '0', '704010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2987', null, '其他', '8.1', '自定义', '', null, '', null, null, null, '13', null, null, null, null, '0', '801000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2988', null, '其他', '8.1.1', 'addrow', '', null, null, null, null, null, '13', null, null, null, null, '0', '801010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('2989', null, '通用服务', '1.1', '码头费', '天', '44', '', null, null, null, '14', null, null, null, null, '0', '101000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2990', null, '通用服务', '1.2', '系解缆和靠离码头拖轮费', '', null, '', null, null, null, '14', null, null, null, null, '0', '102000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2991', null, '通用服务', '1.2.1', '系或解缆', '次', '44', null, null, null, null, '14', null, null, null, null, '0', '102010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2992', null, '通用服务', '1.2.2', '靠或离码头', '次', '44', null, null, null, null, '14', null, null, null, null, '0', '102020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2993', null, '通用服务', '1.3', '供电费', '', null, '', null, null, null, '14', null, null, null, null, '0', '103000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2994', null, '通用服务', '1.3.1', '', '次/路', '3', null, null, null, null, '14', null, null, null, null, '0', '103010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2995', null, '通用服务', '1.3.2', '', '天', '3', null, null, null, null, '14', null, null, null, null, '0', '103020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2996', null, '通用服务', '1.3.3', '', '度', '43', null, null, null, null, '14', null, null, null, null, '0', '103030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2997', null, '通用服务', '1.4', '供冷却水费', '', null, '', null, null, null, '14', null, null, null, null, '0', '104000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2998', null, '通用服务', '1.4.1', '', '次/路', '34', null, null, null, null, '14', null, null, null, null, '0', '104010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('2999', null, '通用服务', '1.4.2', '', '路/天', '34', null, null, null, null, '14', null, null, null, null, '0', '104020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3000', null, '通用服务', '1.5', '供淡水费', '', null, '', null, null, null, '14', null, null, null, null, '0', '105000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3001', null, '通用服务', '1.5.1', '', '次/路', null, null, null, null, null, '14', null, null, null, null, '0', '105010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3002', null, '通用服务', '1.5.2', '', '吨', null, null, null, null, null, '14', null, null, null, null, '0', '105020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3003', null, '通用服务', '1.5.3', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '105030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3004', null, '通用服务', '1.6', '供压载水费', '', null, '', null, null, null, '14', null, null, null, null, '0', '106000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3005', null, '通用服务', '1.6.1', '', '次/路', null, null, null, null, null, '14', null, null, null, null, '0', '106010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3006', null, '通用服务', '1.6.2', '', '吨', null, null, null, null, null, '14', null, null, null, null, '0', '106020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3007', null, '通用服务', '1.6.3', '', '立方米', null, null, null, null, null, '14', null, null, null, null, '0', '106030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3008', null, '通用服务', '1.7', '供蒸汽费', '', null, '', null, null, null, '14', null, null, null, null, '0', '107000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3009', null, '通用服务', '1.7.1', '', '路/次', null, null, null, null, null, '14', null, null, null, null, '0', '107010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3010', null, '通用服务', '1.7.2', '', '时', null, null, null, null, null, '14', null, null, null, null, '0', '107020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3011', null, '通用服务', '1.8', '供压缩空气费', '', null, '', null, null, null, '14', null, null, null, null, '0', '108000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3012', null, '通用服务', '1.8.1', '', '次/路', null, null, null, null, null, '14', null, null, null, null, '0', '108010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3013', null, '通用服务', '1.8.2', '', '天/路', null, null, null, null, null, '14', null, null, null, null, '0', '108020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3014', null, '通用服务', '1.9', '', '台/班', null, '', null, null, null, '14', null, null, null, null, '0', '109000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3015', null, '通用服务', '1.10', '供电加热器费', '', null, '', null, null, null, '14', null, null, null, null, '0', '110000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3016', null, '通用服务', '1.10.1', '', '台', null, null, null, null, null, '14', null, null, null, null, '0', '110010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3017', null, '通用服务', '1.10.2', '', '台/班', null, null, null, null, null, '14', null, null, null, null, '0', '110020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3018', null, '通用服务', '1.11', '作业区域的安全通道布置费', '', null, '', null, null, null, '14', null, null, null, null, '0', '111000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3019', null, '通用服务', '1.11.1', '', '立方米', null, null, null, null, null, '14', null, null, null, null, '0', '111010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3020', null, '通用服务', '1.11.2', '', '个', null, null, null, null, null, '14', null, null, null, null, '0', '111020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3021', null, '通用服务', '1.12', '', '个', null, '', null, null, null, '14', null, null, null, null, '0', '112000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3022', null, '通用服务', '1.13', '', '次', null, '', null, null, null, '14', null, null, null, null, '0', '113000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3023', null, '通用服务', '1.14', '', '人', null, '', null, null, null, '14', null, null, null, null, '0', '114000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3024', null, '通用服务', '1.15', '可燃气体检测费', '', null, '', null, null, null, '14', null, null, null, null, '0', '115000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3025', null, '通用服务', '1.15.1', '', '初次', null, null, null, null, null, '14', null, null, null, null, '0', '115010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3026', null, '通用服务', '1.15.2', '', '初次', null, null, null, null, null, '14', null, null, null, null, '0', '115020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3027', null, '通用服务', '1.15.3', '', '初次', null, null, null, null, null, '14', null, null, null, null, '0', '115030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3028', null, '通用服务', '1.15.4', '', '舱/次', null, null, null, null, null, '14', null, null, null, null, '0', '115040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3029', null, '通用服务', '1.15.5', '', '初次', null, null, null, null, null, '14', null, null, null, null, '0', '115050000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3030', null, '通用服务', '1.15.6', '', '舱/次', null, null, null, null, null, '14', null, null, null, null, '0', '115060000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3031', null, '通用服务', '1.16', '', '舱/次', null, '', null, null, null, '14', null, null, null, null, '0', '116000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3032', null, '通用服务', '1.17', '消防费', '', null, '', null, null, null, '14', null, null, null, null, '0', '117000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3033', null, '通用服务', '1.17.1', '', '天', null, null, null, null, null, '14', null, null, null, null, '0', '117010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3034', null, '通用服务', '1.17.2', '', '次/路', null, null, null, null, null, '14', null, null, null, null, '0', '117020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3035', null, '通用服务', '1.17.3', '', '路/天', null, null, null, null, null, '14', null, null, null, null, '0', '117030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3036', null, '通用服务', '1.17.4', '', '天', null, null, null, null, null, '14', null, null, null, null, '0', '117040000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3037', null, '通用服务', '1.18', '', '船', null, '', null, null, null, '14', null, null, null, null, '0', '118000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3038', null, '通用服务', '1.19', '', '船', null, '', null, null, null, '14', null, null, null, null, '0', '119000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3039', null, '通用服务', '1.20', '', '次', null, '', null, null, null, '14', null, null, null, null, '0', '120000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3040', null, '通用服务', '1.21', '', '次', null, '', null, null, null, '14', null, null, null, null, '0', '121000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3041', null, '通用服务', '1.22', '', '船', null, '', null, null, null, '14', null, null, null, null, '0', '122000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3042', null, '通用服务', '1.23', '船上泥和水的抽排费', '', null, '', null, null, null, '14', null, null, null, null, '0', '123000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3043', null, '通用服务', '1.23.1', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '123010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3044', null, '通用服务', '1.23.2', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '123020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3045', null, '通用服务', '1.23.3', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '123030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3046', null, '通用服务', '1.24', '生活垃圾处理费', '', null, '', null, null, null, '14', null, null, null, null, '0', '124000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3047', null, '通用服务', '1.24.1', '', '天', null, null, null, null, null, '14', null, null, null, null, '0', '124010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3048', null, '通用服务', '1.24.2', '', '份', null, null, null, null, null, '14', null, null, null, null, '0', '124020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3049', null, '通用服务', '1.25', '', '船', null, '', null, null, null, '14', null, null, null, null, '0', '125000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3050', null, '通用服务', '1.26', '', '天', null, '', null, null, null, '14', null, null, null, null, '0', '126000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3051', null, '通用服务', '1.27', '通讯费', '', null, '', null, null, null, '14', null, null, null, null, '0', '127000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3052', null, '通用服务', '1.27.1', '', '台/天', null, null, null, null, null, '14', null, null, null, null, '0', '127010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3053', null, '通用服务', '1.27.2', '', '台/天', null, null, null, null, null, '14', null, null, null, null, '0', '127020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3054', null, '通用服务', '1.27.3', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '127030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3055', null, '通用服务', '1.28', '起吊设备租用费', '', null, '', null, null, null, '14', null, null, null, null, '0', '128000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3056', null, '通用服务', '1.28.1', '', '时', null, null, null, null, null, '14', null, null, null, null, '0', '128010000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3057', null, '通用服务', '1.28.2', '', '时', null, null, null, null, null, '14', null, null, null, null, '0', '128020000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3058', null, '通用服务', '1.28.3', '', '时', null, null, null, null, null, '14', null, null, null, null, '0', '128030000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3059', null, '通用服务', '1.29', '', '时/台', null, '', null, null, null, '14', null, null, null, null, '0', '129000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3060', null, '通用服务', '1.30', '', '只', null, '', null, null, null, '14', null, null, null, null, '0', '130000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3061', null, '通用服务', '1.31', '', '次', null, '', null, null, null, '14', null, null, null, null, '0', '131000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3062', null, '通用服务', '1.32', '', '次', null, '', null, null, null, '14', null, null, null, null, '0', '132000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3063', null, '通用服务', '1.33', '', '人/时', null, '', null, null, null, '14', null, null, null, null, '0', '133000000', '1');
INSERT INTO `t_repair_prog_item` VALUES ('3064', null, '通用服务', '1.34', 'addrow', '', null, '', null, null, null, '14', null, null, null, null, '0', '134000000', '0');
INSERT INTO `t_repair_prog_item` VALUES ('3065', null, '坞修工程', '2.1', '船坞费', '', null, '', null, null, null, '14', null, null, null, null, '0', '201000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3066', null, '坞修工程', '2.1.1', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '201010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3067', null, '坞修工程', '2.1.2', '', '', null, null, null, null, null, '14', null, null, null, null, '0', '201020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3068', null, '坞修工程', '2.2', '艉轴工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '202000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3069', null, '坞修工程', '2.2.1', '常规服务', '', null, null, null, null, null, '14', null, null, null, null, '0', '202010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3070', null, '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, null, null, '14', null, null, null, null, '0', '202020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3071', null, '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, null, null, '14', null, null, null, null, '0', '202030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3072', null, '坞修工程', '2.2.4', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '202040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3073', null, '坞修工程', '2.3', '舵系工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '203000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3074', null, '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, null, null, '14', null, null, null, null, '0', '203010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3075', null, '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, null, null, '14', null, null, null, null, '0', '203020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3076', null, '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, null, null, '14', null, null, null, null, '0', '203030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3077', null, '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, null, null, '14', null, null, null, null, '0', '203040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3078', null, '坞修工程', '2.3.5', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '203050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3079', null, '坞修工程', '2.4', '水下工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '204000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3080', null, '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, null, null, '14', null, null, null, null, '0', '204010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3081', null, '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, null, null, '14', null, null, null, null, '0', '204020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3082', null, '坞修工程', '2.4.3', '船底塞', '', null, null, null, null, null, '14', null, null, null, null, '0', '204030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3083', null, '坞修工程', '2.4.4', '海底阀', '', null, null, null, null, null, '14', null, null, null, null, '0', '204040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3084', null, '坞修工程', '2.4.5', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '204050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3085', null, '坞修工程', '2.5', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '205000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3086', null, '坞修工程', '2.5.1', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '205010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3087', null, '船体工程', '3.1', '清洁和油漆', '', null, '', null, null, null, '14', null, null, null, null, '0', '301000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3088', null, '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, null, null, '14', null, null, null, null, '0', '301010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3089', null, '船体工程', '3.1.2', '船体清洁', '', null, null, null, null, null, '14', null, null, null, null, '0', '301020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3090', null, '船体工程', '3.1.3', '涂漆', '', null, null, null, null, null, '14', null, null, null, null, '0', '301030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3091', null, '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, null, null, '14', null, null, null, null, '0', '301040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3092', null, '船体工程', '3.1.5', '喷砂', '', null, null, null, null, null, '14', null, null, null, null, '0', '301050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3093', null, '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, null, null, '14', null, null, null, null, '0', '301060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3094', null, '船体工程', '3.1.7', '脚手架', '', null, null, null, null, null, '14', null, null, null, null, '0', '301070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3095', null, '船体工程', '3.1.8', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '301080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3096', null, '船体工程', '3.2', '锚和锚链工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '302000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3097', null, '船体工程', '3.2.1', '锚链', '', null, null, null, null, null, '14', null, null, null, null, '0', '302010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3098', null, '船体工程', '3.2.2', '锚链工程', '', null, null, null, null, null, '14', null, null, null, null, '0', '302020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3099', null, '船体工程', '3.2.3', '锚链舱', '', null, null, null, null, null, '14', null, null, null, null, '0', '302030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3100', null, '船体工程', '3.2.4', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '302040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3101', null, '船体工程', '3.3', '钢质工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '303000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3102', null, '船体工程', '3.3.1', '钢板换新', '', null, null, null, null, null, '14', null, null, null, null, '0', '303010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3103', null, '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, null, null, '14', null, null, null, null, '0', '303020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3104', null, '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, null, null, '14', null, null, null, null, '0', '303030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3105', null, '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, null, null, '14', null, null, null, null, '0', '303040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3106', null, '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, null, null, '14', null, null, null, null, '0', '303050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3107', null, '船体工程', '3.3.6', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '303060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3108', null, '船体工程', '3.4', '舱工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '304000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3109', null, '船体工程', '3.4.1', '清洗', '', null, null, null, null, null, '14', null, null, null, null, '0', '304010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3110', null, '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, null, null, '14', null, null, null, null, '0', '304020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3111', null, '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, null, null, '14', null, null, null, null, '0', '304030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3112', null, '船体工程', '3.4.4', '试验', '', null, null, null, null, null, '14', null, null, null, null, '0', '304040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3113', null, '船体工程', '3.4.5', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '304050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3114', null, '船体工程', '3.5', '起吊设备', '', null, '', null, null, null, '14', null, null, null, null, '0', '305000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3115', null, '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, null, null, '14', null, null, null, null, '0', '305010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3116', null, '船体工程', '3.5.2', '滑车', '', null, null, null, null, null, '14', null, null, null, null, '0', '305020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3117', null, '船体工程', '3.5.3', '吊重试验', '', null, null, null, null, null, '14', null, null, null, null, '0', '305030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3118', null, '船体工程', '3.5.4', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '305040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3119', null, '船体工程', '3.6', '舷梯工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '306000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3120', null, '船体工程', '3.6.1', '舷梯工程', '', null, null, null, null, null, '14', null, null, null, null, '0', '306010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3121', null, '船体工程', '3.6.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '306020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3122', null, '船体工程', '3.7', '救生艇系统', '', null, '', null, null, null, '14', null, null, null, null, '0', '307000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3123', null, '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, null, null, '14', null, null, null, null, '0', '307010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3124', null, '船体工程', '3.7.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '307020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3125', null, '船体工程', '3.8', '二氧化碳灭火系统', '', null, '', null, null, null, '14', null, null, null, null, '0', '308000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3126', null, '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, null, null, '14', null, null, null, null, '0', '308010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3127', null, '船体工程', '3.8.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '308020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3128', null, '船体工程', '3.9', '舾装工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '309000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3129', null, '船体工程', '3.9.1', '舾装工程', '', null, null, null, null, null, '14', null, null, null, null, '0', '309010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3130', null, '船体工程', '3.9.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '309020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3131', null, '船体工程', '3.10', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '310000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3132', null, '船体工程', '3.10.1', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '310010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3133', null, '机械工程', '4.1', '柴油机主机', '', null, '', null, null, null, '14', null, null, null, null, '0', '401000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3134', null, '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, null, null, '14', null, null, null, null, '0', '401010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3135', null, '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, null, null, '14', null, null, null, null, '0', '401020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3136', null, '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, null, null, '14', null, null, null, null, '0', '401030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3137', null, '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, null, null, '14', null, null, null, null, '0', '401040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3138', null, '机械工程', '4.1.5', '活塞环', '', null, null, null, null, null, '14', null, null, null, null, '0', '401050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3139', null, '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, null, null, '14', null, null, null, null, '0', '401060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3140', null, '机械工程', '4.1.7', '气缸套', '', null, null, null, null, null, '14', null, null, null, null, '0', '401070000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3141', null, '机械工程', '4.1.8', '轴承', '', null, null, null, null, null, '14', null, null, null, null, '0', '401080000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3142', null, '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, null, null, '14', null, null, null, null, '0', '401090000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3143', null, '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, null, null, '14', null, null, null, null, '0', '401100000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3144', null, '机械工程', '4.1.11', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '401110000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3145', null, '机械工程', '4.2', '柴油机副机', '', null, '', null, null, null, '14', null, null, null, null, '0', '402000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3146', null, '机械工程', '4.2.1', '气缸盖', '', null, null, null, null, null, '14', null, null, null, null, '0', '402010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3147', null, '机械工程', '4.2.2', '活塞', '', null, null, null, null, null, '14', null, null, null, null, '0', '402020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3148', null, '机械工程', '4.2.3', '轴承', '', null, null, null, null, null, '14', null, null, null, null, '0', '402030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3149', null, '机械工程', '4.2.4', '气缸套', '', null, null, null, null, null, '14', null, null, null, null, '0', '402040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3150', null, '机械工程', '4.2.5', '试验项目', '', null, null, null, null, null, '14', null, null, null, null, '0', '402050000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3151', null, '机械工程', '4.2.6', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '402060000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3152', null, '机械工程', '4.3', '热交换器', '', null, '', null, null, null, '14', null, null, null, null, '0', '403000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3153', null, '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, null, null, '14', null, null, null, null, '0', '403010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3154', null, '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, null, null, '14', null, null, null, null, '0', '403020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3155', null, '机械工程', '4.3.3', '板状热交换器', '', null, null, null, null, null, '14', null, null, null, null, '0', '403030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3156', null, '机械工程', '4.3.4', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '403040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3157', null, '机械工程', '4.4', '锅炉和锅炉附件', '', null, '', null, null, null, '14', null, null, null, null, '0', '404000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3158', null, '机械工程', '4.4.1', '锅炉', '', null, null, null, null, null, '14', null, null, null, null, '0', '404010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3159', null, '机械工程', '4.4.2', '锅炉附件', '', null, null, null, null, null, '14', null, null, null, null, '0', '404020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3160', null, '机械工程', '4.4.3', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '404030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3161', null, '机械工程', '4.5', '管系工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '405000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3162', null, '机械工程', '4.5.1', '管路换新', '', null, null, null, null, null, '14', null, null, null, null, '0', '405010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3163', null, '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, null, null, '14', null, null, null, null, '0', '405020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3164', null, '机械工程', '4.5.3', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '405030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3165', null, '机械工程', '4.6', '阀门工程', '', null, '', null, null, null, '14', null, null, null, null, '0', '406000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3166', null, '机械工程', '4.6.1', '阀门工程', '', null, null, null, null, null, '14', null, null, null, null, '0', '406010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3167', null, '机械工程', '4.6.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '406020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3168', null, '机械工程', '4.7', '泵浦', '', null, '', null, null, null, '14', null, null, null, null, '0', '407000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3169', null, '机械工程', '4.7.1', '电动离心泵', '', null, null, null, null, null, '14', null, null, null, null, '0', '407010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3170', null, '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, null, null, '14', null, null, null, null, '0', '407020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3171', null, '机械工程', '4.7.3', '螺杆泵', '', null, null, null, null, null, '14', null, null, null, null, '0', '407030000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3172', null, '机械工程', '4.7.4', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '407040000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3173', null, '机械工程', '4.8', '空压机', '', null, '', null, null, null, '14', null, null, null, null, '0', '408000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3174', null, '机械工程', '4.8.1', '空压机', '', null, null, null, null, null, '14', null, null, null, null, '0', '408010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3175', null, '机械工程', '4.8.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '408020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3176', null, '机械工程', '4.9', '起货机', '', null, '', null, null, null, '14', null, null, null, null, '0', '409000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3177', null, '机械工程', '4.9.1', '起货机', '', null, null, null, null, null, '14', null, null, null, null, '0', '409010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3178', null, '机械工程', '4.9.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '409020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3179', null, '机械工程', '4.10', '卧式/立式绞缆机', '', null, '', null, null, null, '14', null, null, null, null, '0', '410000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3180', null, '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, null, null, '14', null, null, null, null, '0', '410010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3181', null, '机械工程', '4.10.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '410020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3182', null, '机械工程', '4.11', '起锚机', '', null, '', null, null, null, '14', null, null, null, null, '0', '411000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3183', null, '机械工程', '4.11.1', '起锚机', '台', null, null, null, null, null, '14', null, null, null, null, '0', '411010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3184', null, '机械工程', '4.11.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '411020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3185', null, '机械工程', '4.12', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '412000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3186', null, '机械工程', '4.12.1', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '412010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3187', null, '电气工程', '5.1', '交流电动机', '', null, '', null, null, null, '14', null, null, null, null, '0', '501000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3188', null, '电气工程', '5.1.1', '交流电动机', '', null, null, null, null, null, '14', null, null, null, null, '0', '501010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3189', null, '电气工程', '5.1.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '501020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3190', null, '电气工程', '5.2', '交流发电机', '', null, '', null, null, null, '14', null, null, null, null, '0', '502000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3191', null, '电气工程', '5.2.1', '交流发电机', '', null, null, null, null, null, '14', null, null, null, null, '0', '502010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3192', null, '电气工程', '5.2.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '502020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3193', null, '电气工程', '5.3', '发电机负荷及并联试验', '', null, '', null, null, null, '14', null, null, null, null, '0', '503000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3194', null, '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, null, null, '14', null, null, null, null, '0', '503010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3195', null, '电气工程', '5.3.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '503020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3196', null, '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, '', null, null, null, '14', null, null, null, null, '0', '504000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3197', null, '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, null, null, '14', null, null, null, null, '0', '504010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3198', null, '电气工程', '5.4.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '504020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3199', null, '电气工程', '5.5', '主配电板', '', null, '', null, null, null, '14', null, null, null, null, '0', '505000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3200', null, '电气工程', '5.5.1', '主配电板', '', null, null, null, null, null, '14', null, null, null, null, '0', '505010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3201', null, '电气工程', '5.5.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '505020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3202', null, '电气工程', '5.6', '仪表', '', null, '', null, null, null, '14', null, null, null, null, '0', '506000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3203', null, '电气工程', '5.6.1', '仪表校验', '', null, null, null, null, null, '14', null, null, null, null, '0', '506010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3204', null, '电气工程', '5.6.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '506020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3205', null, '电气工程', '5.7', '电缆拆装与新装', '', null, '', null, null, null, '14', null, null, null, null, '0', '507000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3206', null, '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, null, null, '14', null, null, null, null, '0', '507010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3207', null, '电气工程', '5.7.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '507020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3208', null, '电气工程', '5.8', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '508000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3209', null, '电气工程', '5.8.1', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '508010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3210', null, '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, '', null, null, null, '14', null, null, null, null, '0', '601000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3211', null, '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, null, null, '14', null, null, null, null, '0', '601010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3212', null, '冷藏工程', '6.1.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '601020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3213', null, '冷藏工程', '6.2', '', '', null, '', null, null, null, '14', null, null, null, null, '0', '602000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3214', null, '冷藏工程', '6.3', '制冷系统蒸发器', '', null, '', null, null, null, '14', null, null, null, null, '0', '603000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3215', null, '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, null, null, '14', null, null, null, null, '0', '603010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3216', null, '冷藏工程', '6.3.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '603020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3217', null, '冷藏工程', '6.4', '制冷系统冷凝器', '', null, '', null, null, null, '14', null, null, null, null, '0', '604000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3218', null, '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, null, null, '14', null, null, null, null, '0', '604010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3219', null, '冷藏工程', '6.4.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '604020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3220', null, '冷藏工程', '6.5', '制冷系统中间容器', '', null, '', null, null, null, '14', null, null, null, null, '0', '605000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3221', null, '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, null, null, '14', null, null, null, null, '0', '605010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3222', null, '冷藏工程', '6.5.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '605020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3223', null, '冷藏工程', '6.6', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '606000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3224', null, '冷藏工程', '6.6.1', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '606010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3225', null, '特种设备', '7.1', '鱼加工带式传动装置', '', null, '', null, null, null, '14', null, null, null, null, '0', '701000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3226', null, '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, null, null, '14', null, null, null, null, '0', '701010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3227', null, '特种设备', '7.1.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '701020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3228', null, '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, '', null, null, null, '14', null, null, null, null, '0', '702000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3229', null, '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, null, null, '14', null, null, null, null, '0', '702010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3230', null, '特种设备', '7.2.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '702020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3231', null, '特种设备', '7.3', '挖泥船泥门', '', null, '', null, null, null, '14', null, null, null, null, '0', '703000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3232', null, '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, null, null, '14', null, null, null, null, '0', '703010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3233', null, '特种设备', '7.3.2', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '703020000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3234', null, '特种设备', '7.4', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '704000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3235', null, '特种设备', '7.4.1', 'addrow', '', null, '', null, null, null, '14', null, null, null, null, '0', '704010000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3236', null, '其他', '8.1', '自定义', '', null, '', null, null, null, '14', null, null, null, null, '0', '801000000', null);
INSERT INTO `t_repair_prog_item` VALUES ('3237', null, '其他', '8.1.1', 'addrow', '', null, null, null, null, null, '14', null, null, null, null, '0', '801010000', null);

-- ----------------------------
-- Table structure for t_repair_spec
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec`;
CREATE TABLE `t_repair_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修工程单id',
  `order_no` varchar(45) DEFAULT NULL COMMENT '维修单号',
  `name` varchar(80) DEFAULT NULL COMMENT '公司名称',
  `ship_id` int(11) DEFAULT NULL COMMENT '船id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `plan_start_date` date DEFAULT NULL COMMENT '计划进厂日期',
  `plan_days` int(11) DEFAULT NULL COMMENT '计划天数',
  `plan_cost` int(11) DEFAULT NULL COMMENT '计划金额',
  `type` varchar(45) DEFAULT NULL COMMENT '维修类型',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `ship_name` varchar(45) DEFAULT NULL COMMENT '船舶名称',
  `model_id` int(11) DEFAULT NULL COMMENT '此维修工程单依据的红本',
  `company_name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec
-- ----------------------------
INSERT INTO `t_repair_spec` VALUES ('1', '000000001', null, '1', '1', '2017-02-17', '21', '321321', '1', '2017-02-17', 'luzhen', null, null, '0', 'sdasdsa', '1', null);
INSERT INTO `t_repair_spec` VALUES ('8', null, null, '4', '1', null, null, null, '1', '2017-03-10', 'luzhen', null, null, '0', 'wq', '1', null);

-- ----------------------------
-- Table structure for t_repair_spec_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_detail`;
CREATE TABLE `t_repair_spec_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修详单的id',
  `repair_spec_id` int(11) DEFAULT NULL COMMENT '维修工程单的id',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `catagory` varchar(45) DEFAULT NULL COMMENT '项目分类',
  `pro_name` varchar(45) DEFAULT NULL COMMENT '项目名称',
  `pro_desc` text COMMENT '项目描述',
  `faci_name` varchar(45) DEFAULT NULL COMMENT '设备名称',
  `faci_type` varchar(45) DEFAULT NULL COMMENT '设备类型',
  `faci_src` varchar(45) DEFAULT NULL COMMENT '厂家/国家',
  `faci_no` varchar(45) DEFAULT NULL COMMENT '设备信息：序列号',
  `faci_param` varchar(200) DEFAULT NULL COMMENT '设备信息：相关参数',
  `repair_position` varchar(45) DEFAULT NULL COMMENT '维修部位',
  `repair_position_desc` text COMMENT '维修详细位置',
  `damage` varchar(500) DEFAULT NULL COMMENT '损坏程度',
  `repair_tech` varchar(300) DEFAULT NULL COMMENT '修理工艺',
  `repair_tech_desc` varchar(500) DEFAULT NULL COMMENT '详细修理工艺',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `ship_name` varchar(45) DEFAULT NULL COMMENT '船名',
  `pro_order_no` varchar(45) DEFAULT NULL COMMENT '项目单号',
  `img` varchar(80) DEFAULT NULL COMMENT '图片或是图纸',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_detail
-- ----------------------------
INSERT INTO `t_repair_spec_detail` VALUES ('169', null, '2.3.2', '坞修工程', 'sdasdsad', 'sadas', '', '', '', '', '', null, '', '', '2,6', '', null, '', null, null, '0', 'wq', 'D-001', '');
INSERT INTO `t_repair_spec_detail` VALUES ('170', '8', '2.3.1', '坞修工程', 'sdfds', '', '', '', '', '', '', null, '', '', '16', '', null, null, null, null, '0', 'wq', 'D-002', '');

-- ----------------------------
-- Table structure for t_repair_spec_detail_req
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_detail_req`;
CREATE TABLE `t_repair_spec_detail_req` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '修理要求/和材料规格的id',
  `des` varchar(500) DEFAULT NULL COMMENT '要求描述/和材料规格',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` varchar(45) DEFAULT NULL COMMENT '数量',
  `repair_spec_detail_id` int(11) DEFAULT NULL COMMENT '维修详单的id',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_detail_req
-- ----------------------------
INSERT INTO `t_repair_spec_detail_req` VALUES ('778', 'asdasd', 'sds', '22', '169', null, null, null, null, null);
INSERT INTO `t_repair_spec_detail_req` VALUES ('779', 'asdasd', '2ad', '22', '169', null, null, null, null, null);
INSERT INTO `t_repair_spec_detail_req` VALUES ('780', 'sdsd', 'sdf', '33', '170', null, null, null, null, null);
INSERT INTO `t_repair_spec_detail_req` VALUES ('781', 'sdfsd', '3', '33', '170', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_repair_spec_item
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_item`;
CREATE TABLE `t_repair_spec_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '维修工程详情的id',
  `repair_spec_detail_id` int(11) DEFAULT NULL COMMENT '维修工程的id',
  `catagory` varchar(45) DEFAULT NULL COMMENT '维修项目类型',
  `code` varchar(45) DEFAULT NULL COMMENT '项目号',
  `content` varchar(100) DEFAULT NULL COMMENT '维修类容',
  `unit` varchar(45) DEFAULT NULL COMMENT '单位',
  `count` int(11) DEFAULT NULL COMMENT '数量',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `info` text COMMENT '维修信息',
  `parent_code` varchar(45) DEFAULT NULL COMMENT '父项目号',
  `repair_spec_id` int(11) DEFAULT NULL COMMENT '维修工程的id',
  `status` int(11) DEFAULT NULL COMMENT '是否需要维修的状态',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `param1_val` varchar(45) DEFAULT NULL COMMENT '参数1的值',
  `param1_des` varchar(45) DEFAULT NULL COMMENT '参数1的描述',
  `param2_val` varchar(45) DEFAULT NULL COMMENT '参数2的值',
  `param2_des` varchar(45) DEFAULT NULL COMMENT '参数2的描述',
  `param3_val` varchar(45) DEFAULT NULL COMMENT '参数3的值',
  `param3_des` varchar(45) DEFAULT NULL COMMENT '参数3的描述',
  `param4_val` varchar(45) DEFAULT NULL COMMENT '参数4的值',
  `param4_des` varchar(45) DEFAULT NULL COMMENT '参数4的描述',
  `param5_val` varchar(45) DEFAULT NULL COMMENT '参数5的值',
  `param5_des` varchar(45) DEFAULT NULL COMMENT '参数5的描述',
  `param6_val` varchar(45) DEFAULT NULL COMMENT '参数6的值',
  `param6_des` varchar(45) DEFAULT NULL COMMENT '参数6的描述',
  `param7_val` varchar(45) DEFAULT NULL COMMENT '参数7的值',
  `param7_des` varchar(45) DEFAULT NULL COMMENT '参数7的描述',
  `param8_val` varchar(45) DEFAULT NULL COMMENT '参数8的值',
  `param8_des` varchar(45) DEFAULT NULL COMMENT '参数8的描述',
  `children` int(11) DEFAULT NULL COMMENT '判断改项是否有孩子',
  `copy` int(11) DEFAULT NULL COMMENT '判断是否需要复制',
  `sort` int(11) DEFAULT NULL COMMENT '工程单排序',
  `src` int(11) DEFAULT NULL COMMENT '判断是自定义还是红本中的数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1255 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_item
-- ----------------------------
INSERT INTO `t_repair_spec_item` VALUES ('1006', null, '通用服务', '1.1', '码头费', '天', '33', '', null, '0', '8', '0', null, null, null, null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '101000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1007', null, '通用服务', '1.2', '系解缆和靠离码头拖轮费', '', null, '', null, '0', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '102000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1008', null, '通用服务', '1.2.1', '系或解缆', '次', null, null, null, '1.2', '8', '1', null, null, null, null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '102010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1009', null, '通用服务', '1.2.2', '靠或离码头', '次', '33', null, null, '1.2', '8', '0', null, null, null, null, '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '102020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1010', null, '通用服务', '1.3', '供电费', '', null, '', null, '0', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '103000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1011', null, '通用服务', '1.3.1', '', '次/路', null, null, null, '1.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '103010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1012', null, '通用服务', '1.3.2', '', '天', '33', null, null, '1.3', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '103020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1013', null, '通用服务', '1.3.3', '', '度', null, null, null, '1.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '103030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1014', null, '通用服务', '1.4', '供冷却水费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '104000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1015', null, '通用服务', '1.4.1', '', '次/路', null, null, null, '1.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '104010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1016', null, '通用服务', '1.4.2', '', '路/天', null, null, null, '1.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '104020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1017', null, '通用服务', '1.5', '供淡水费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '105000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1018', null, '通用服务', '1.5.1', '', '次/路', null, null, null, '1.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '105010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1019', null, '通用服务', '1.5.2', '', '吨', null, null, null, '1.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '105020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1020', null, '通用服务', '1.5.3', '', '', null, null, null, '1.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '105030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1021', null, '通用服务', '1.6', '供压载水费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '106000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1022', null, '通用服务', '1.6.1', '', '次/路', null, null, null, '1.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '106010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1023', null, '通用服务', '1.6.2', '', '吨', null, null, null, '1.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '106020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1024', null, '通用服务', '1.6.3', '', '立方米', null, null, null, '1.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '106030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1025', null, '通用服务', '1.7', '供蒸汽费', '', null, '', null, '0', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '107000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1026', null, '通用服务', '1.7.1', '', '路/次', null, null, null, '1.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '107010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1027', null, '通用服务', '1.7.2', '', '时', '33', null, null, '1.7', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '107020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1028', null, '通用服务', '1.8', '供压缩空气费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '108000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1029', null, '通用服务', '1.8.1', '', '次/路', null, null, null, '1.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '108010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1030', null, '通用服务', '1.8.2', '', '天/路', null, null, null, '1.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '108020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1031', null, '通用服务', '1.9', '', '台/班', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '109000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1032', null, '通用服务', '1.10', '供电加热器费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '110000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1033', null, '通用服务', '1.10.1', '', '台', null, null, null, '1.10', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '110010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1034', null, '通用服务', '1.10.2', '', '台/班', null, null, null, '1.10', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '110020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1035', null, '通用服务', '1.11', '作业区域的安全通道布置费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '111000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1036', null, '通用服务', '1.11.1', '', '立方米', null, null, null, '1.11', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '111010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1037', null, '通用服务', '1.11.2', '', '个', null, null, null, '1.11', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '111020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1038', null, '通用服务', '1.12', '', '个', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '112000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1039', null, '通用服务', '1.13', '', '次', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '113000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1040', null, '通用服务', '1.14', '', '人', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '114000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1041', null, '通用服务', '1.15', '可燃气体检测费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '115000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1042', null, '通用服务', '1.15.1', '', '初次', null, null, null, '1.15', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '115010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1043', null, '通用服务', '1.15.2', '', '初次', null, null, null, '1.15', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '115020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1044', null, '通用服务', '1.15.3', '', '初次', null, null, null, '1.15', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '115030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1045', null, '通用服务', '1.15.4', '', '舱/次', null, null, null, '1.15', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '115040000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1046', null, '通用服务', '1.15.5', '', '初次', null, null, null, '1.15', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '115050000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1047', null, '通用服务', '1.15.6', '', '舱/次', null, null, null, '1.15', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '115060000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1048', null, '通用服务', '1.16', '', '舱/次', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '116000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1049', null, '通用服务', '1.17', '消防费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '117000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1050', null, '通用服务', '1.17.1', '', '天', null, null, null, '1.17', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '117010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1051', null, '通用服务', '1.17.2', '', '次/路', null, null, null, '1.17', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '117020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1052', null, '通用服务', '1.17.3', '', '路/天', null, null, null, '1.17', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '117030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1053', null, '通用服务', '1.17.4', '', '天', null, null, null, '1.17', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '117040000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1054', null, '通用服务', '1.18', '', '船', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '118000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1055', null, '通用服务', '1.19', '', '船', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '119000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1056', null, '通用服务', '1.20', '', '次', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '120000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1057', null, '通用服务', '1.21', '', '次', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '121000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1058', null, '通用服务', '1.22', '', '船', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '122000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1059', null, '通用服务', '1.23', '船上泥和水的抽排费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '123000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1060', null, '通用服务', '1.23.1', '', '', null, null, null, '1.23', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '123010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1061', null, '通用服务', '1.23.2', '', '', null, null, null, '1.23', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '123020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1062', null, '通用服务', '1.23.3', '', '', null, null, null, '1.23', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '123030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1063', null, '通用服务', '1.24', '生活垃圾处理费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '124000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1064', null, '通用服务', '1.24.1', '', '天', null, null, null, '1.24', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '124010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1065', null, '通用服务', '1.24.2', '', '份', null, null, null, '1.24', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '124020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1066', null, '通用服务', '1.25', '', '船', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '125000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1067', null, '通用服务', '1.26', '', '天', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '126000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1068', null, '通用服务', '1.27', '通讯费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '127000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1069', null, '通用服务', '1.27.1', '', '台/天', null, null, null, '1.27', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '127010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1070', null, '通用服务', '1.27.2', '', '台/天', null, null, null, '1.27', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '127020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1071', null, '通用服务', '1.27.3', '', '', null, null, null, '1.27', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '127030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1072', null, '通用服务', '1.28', '起吊设备租用费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '128000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1073', null, '通用服务', '1.28.1', '', '时', null, null, null, '1.28', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '128010000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1074', null, '通用服务', '1.28.2', '', '时', null, null, null, '1.28', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '128020000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1075', null, '通用服务', '1.28.3', '', '时', null, null, null, '1.28', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '128030000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1076', null, '通用服务', '1.29', '', '时/台', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '129000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1077', null, '通用服务', '1.30', '', '只', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '130000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1078', null, '通用服务', '1.31', '', '次', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '131000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1079', null, '通用服务', '1.32', '', '次', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '132000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1080', null, '通用服务', '1.33', '', '人/时', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '133000000', '1');
INSERT INTO `t_repair_spec_item` VALUES ('1081', null, '通用服务', '1.34', 'addrow', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '134000000', '0');
INSERT INTO `t_repair_spec_item` VALUES ('1082', null, '坞修工程', '2.1', '船坞费', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '201000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1083', null, '坞修工程', '2.1.1', '', '', null, null, null, '2.1', '8', '1', null, null, null, null, '0', '', null, null, null, '有浮船坞', null, null, null, null, null, null, null, null, null, null, null, '0', null, '201010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1084', null, '坞修工程', '2.1.2', '', '', null, null, null, '2.1', '8', '1', null, null, null, null, '0', '', null, '有浮船坞', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '201020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1085', null, '坞修工程', '2.2', '艉轴工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '202000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1086', null, '坞修工程', '2.2.1', '常规服务', '', null, null, null, '2.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '202010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1087', null, '坞修工程', '2.2.2', '测量艉轴下沉量或间隙', '', null, null, null, '2.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '202020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1088', null, '坞修工程', '2.2.3', '螺旋桨表面铲刷常规抛光清洁', '', null, null, null, '2.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '202030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1089', null, '坞修工程', '2.2.4', 'addrow', '', null, null, null, '2.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '202040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1090', null, '坞修工程', '2.3', '舵系工程', '', null, '', null, '0', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '203000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1091', null, '坞修工程', '2.3.1', '原地检查舵销间隙及更换船供填料', '', null, null, null, '2.3', '8', '0', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '203010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1092', null, '坞修工程', '2.3.2', '舵顶高检查', '', null, null, null, '2.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '203020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1093', null, '坞修工程', '2.3.3', '舵叶拆装', '', null, null, null, '2.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '203030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1094', null, '坞修工程', '2.3.4', '舵叶的空气压力试验', '', null, null, null, '2.3', '8', '1', null, null, null, null, '0', null, null, '', null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '203040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1095', null, '坞修工程', '2.3.5', 'addrow', '', null, null, null, '2.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '203050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1096', null, '坞修工程', '2.4', '水下工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '204000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1097', null, '坞修工程', '2.4.1', '海底阀箱', '', null, null, null, '2.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '204010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1098', null, '坞修工程', '2.4.2', '防腐板换新', '', null, null, null, '2.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '204020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1099', null, '坞修工程', '2.4.3', '船底塞', '', null, null, null, '2.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '204030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1100', null, '坞修工程', '2.4.4', '海底阀', '', null, null, null, '2.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '204040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1101', null, '坞修工程', '2.4.5', 'addrow', '', null, null, null, '2.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '204050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1102', null, '坞修工程', '2.5', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '205000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1103', null, '坞修工程', '2.5.1', 'addrow', '', null, null, null, '2.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '205010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1104', null, '船体工程', '3.1', '清洁和油漆', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '301000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1105', null, '船体工程', '3.1.1', '油漆船体船名标志', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1106', null, '船体工程', '3.1.2', '船体清洁', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1107', null, '船体工程', '3.1.3', '涂漆', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1108', null, '船体工程', '3.1.4', '铲刷和除锈', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1109', null, '船体工程', '3.1.5', '喷砂', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1110', null, '船体工程', '3.1.6', '超高压水除锈', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301060000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1111', null, '船体工程', '3.1.7', '脚手架', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301070000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1112', null, '船体工程', '3.1.8', 'addrow', '', null, null, null, '3.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '301080000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1113', null, '船体工程', '3.2', '锚和锚链工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '302000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1114', null, '船体工程', '3.2.1', '锚链', '', null, null, null, '3.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '302010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1115', null, '船体工程', '3.2.2', '锚链工程', '', null, null, null, '3.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '302020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1116', null, '船体工程', '3.2.3', '锚链舱', '', null, null, null, '3.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '302030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1117', null, '船体工程', '3.2.4', 'addrow', '', null, null, null, '3.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '302040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1118', null, '船体工程', '3.3', '钢质工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '303000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1119', null, '船体工程', '3.3.1', '钢板换新', '', null, null, null, '3.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '303010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1120', null, '船体工程', '3.3.2', '钢板用超声波仪器测厚度', '', null, null, null, '3.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '303020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1121', null, '船体工程', '3.3.3', '焊缝补焊', '', null, null, null, '3.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '303030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1122', null, '船体工程', '3.3.4', '甲板扶手、栏杆', '', null, null, null, '3.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '303040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1123', null, '船体工程', '3.3.5', '货舱盖、水密门、人孔盖', '', null, null, null, '3.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '303050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1124', null, '船体工程', '3.3.6', 'addrow', '', null, null, null, '3.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '303060000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1125', null, '船体工程', '3.4', '舱工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '304000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1126', null, '船体工程', '3.4.1', '清洗', '', null, null, null, '3.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '304010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1127', null, '船体工程', '3.4.2', '清除沉淀物', '', null, null, null, '3.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '304020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1128', null, '船体工程', '3.4.3', '涂水泥浆', '', null, null, null, '3.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '304030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1129', null, '船体工程', '3.4.4', '试验', '', null, null, null, '3.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '304040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1130', null, '船体工程', '3.4.5', 'addrow', '', null, null, null, '3.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '304050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1131', null, '船体工程', '3.5', '起吊设备', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '305000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1132', null, '船体工程', '3.5.1', '吊杆鹅颈', '', null, null, null, '3.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '305010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1133', null, '船体工程', '3.5.2', '滑车', '', null, null, null, '3.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '305020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1134', null, '船体工程', '3.5.3', '吊重试验', '', null, null, null, '3.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '305030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1135', null, '船体工程', '3.5.4', 'addrow', '', null, null, null, '3.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '305040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1136', null, '船体工程', '3.6', '舷梯工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '306000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1137', null, '船体工程', '3.6.1', '舷梯工程', '', null, null, null, '3.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '306010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1138', null, '船体工程', '3.6.2', 'addrow', '', null, null, null, '3.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '306020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1139', null, '船体工程', '3.7', '救生艇系统', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '307000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1140', null, '船体工程', '3.7.1', '救生艇系统（重力式）', '', null, null, null, '3.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '307010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1141', null, '船体工程', '3.7.2', 'addrow', '', null, null, null, '3.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '307020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1142', null, '船体工程', '3.8', '二氧化碳灭火系统', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '308000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1143', null, '船体工程', '3.8.1', '二氧化碳灭火系统', '', null, null, null, '3.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '308010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1144', null, '船体工程', '3.8.2', 'addrow', '', null, null, null, '3.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '308020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1145', null, '船体工程', '3.9', '舾装工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '309000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1146', null, '船体工程', '3.9.1', '舾装工程', '', null, null, null, '3.9', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '309010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1147', null, '船体工程', '3.9.2', 'addrow', '', null, null, null, '3.9', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '309020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1148', null, '船体工程', '3.10', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '310000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1149', null, '船体工程', '3.10.1', 'addrow', '', null, null, null, '3.10', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '310010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1150', null, '机械工程', '4.1', '柴油机主机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '401000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1151', null, '机械工程', '4.1.1', '气缸盖现场拆装', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1152', null, '机械工程', '4.1.2', '气缸盖车间拆装', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1153', null, '机械工程', '4.1.3', '活塞现场拆装', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1154', null, '机械工程', '4.1.4', '活塞车间拆装', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1155', null, '机械工程', '4.1.5', '活塞环', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1156', null, '机械工程', '4.1.6', '活塞杆填料箱', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401060000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1157', null, '机械工程', '4.1.7', '气缸套', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401070000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1158', null, '机械工程', '4.1.8', '轴承', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401080000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1159', null, '机械工程', '4.1.9', '气缸盖附属阀拆装', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401090000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1160', null, '机械工程', '4.1.10', '修理前后拐挡差测量', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401100000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1161', null, '机械工程', '4.1.11', 'addrow', '', null, null, null, '4.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '401110000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1162', null, '机械工程', '4.2', '柴油机副机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '402000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1163', null, '机械工程', '4.2.1', '气缸盖', '', null, null, null, '4.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '402010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1164', null, '机械工程', '4.2.2', '活塞', '', null, null, null, '4.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '402020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1165', null, '机械工程', '4.2.3', '轴承', '', null, null, null, '4.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '402030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1166', null, '机械工程', '4.2.4', '气缸套', '', null, null, null, '4.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '402040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1167', null, '机械工程', '4.2.5', '试验项目', '', null, null, null, '4.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '402050000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1168', null, '机械工程', '4.2.6', 'addrow', '', null, null, null, '4.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '402060000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1169', null, '机械工程', '4.3', '热交换器', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '403000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1170', null, '机械工程', '4.3.1', '壳管式热交换器现场修理', '', null, null, null, '4.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '403010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1171', null, '机械工程', '4.3.2', '壳管式热交换器车间修理', '', null, null, null, '4.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '403020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1172', null, '机械工程', '4.3.3', '板状热交换器', '', null, null, null, '4.3', '8', '1', null, null, null, null, '0', '运车间解体刷洗', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '403030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1173', null, '机械工程', '4.3.4', 'addrow', '', null, null, null, '4.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '403040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1174', null, '机械工程', '4.4', '锅炉和锅炉附件', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '404000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1175', null, '机械工程', '4.4.1', '锅炉', '', null, null, null, '4.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '404010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1176', null, '机械工程', '4.4.2', '锅炉附件', '', null, null, null, '4.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '404020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1177', null, '机械工程', '4.4.3', 'addrow', '', null, null, null, '4.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '404030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1178', null, '机械工程', '4.5', '管系工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '405000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1179', null, '机械工程', '4.5.1', '管路换新', '', null, null, null, '4.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '405010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1180', null, '机械工程', '4.5.2', '管路绝缘（管路包扎）', '', null, null, null, '4.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '405020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1181', null, '机械工程', '4.5.3', 'addrow', '', null, null, null, '4.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '405030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1182', null, '机械工程', '4.6', '阀门工程', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '406000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1183', null, '机械工程', '4.6.1', '阀门工程', '', null, null, null, '4.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '406010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1184', null, '机械工程', '4.6.2', 'addrow', '', null, null, null, '4.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '406020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1185', null, '机械工程', '4.7', '泵浦', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '407000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1186', null, '机械工程', '4.7.1', '电动离心泵', '', null, null, null, '4.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '407010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1187', null, '机械工程', '4.7.2', '电动卧式齿轮泵', '', null, null, null, '4.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '407020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1188', null, '机械工程', '4.7.3', '螺杆泵', '', null, null, null, '4.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '407030000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1189', null, '机械工程', '4.7.4', 'addrow', '', null, null, null, '4.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '407040000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1190', null, '机械工程', '4.8', '空压机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '408000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1191', null, '机械工程', '4.8.1', '空压机', '', null, null, null, '4.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '408010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1192', null, '机械工程', '4.8.2', 'addrow', '', null, null, null, '4.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '408020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1193', null, '机械工程', '4.9', '起货机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '409000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1194', null, '机械工程', '4.9.1', '起货机', '', null, null, null, '4.9', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '409010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1195', null, '机械工程', '4.9.2', 'addrow', '', null, null, null, '4.9', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '409020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1196', null, '机械工程', '4.10', '卧式/立式绞缆机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '410000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1197', null, '机械工程', '4.10.1', '卧式/立式绞缆机', '', null, null, null, '4.10', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '410010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1198', null, '机械工程', '4.10.2', 'addrow', '', null, null, null, '4.10', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '410020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1199', null, '机械工程', '4.11', '起锚机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '411000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1200', null, '机械工程', '4.11.1', '起锚机', '台', null, null, null, '4.11', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '411010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1201', null, '机械工程', '4.11.2', 'addrow', '', null, null, null, '4.11', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '411020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1202', null, '机械工程', '4.12', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '412000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1203', null, '机械工程', '4.12.1', 'addrow', '', null, null, null, '4.12', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '412010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1204', null, '电气工程', '5.1', '交流电动机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '501000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1205', null, '电气工程', '5.1.1', '交流电动机', '', null, null, null, '5.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '501010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1206', null, '电气工程', '5.1.2', 'addrow', '', null, null, null, '5.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '501020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1207', null, '电气工程', '5.2', '交流发电机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '502000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1208', null, '电气工程', '5.2.1', '交流发电机', '', null, null, null, '5.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '502010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1209', null, '电气工程', '5.2.2', 'addrow', '', null, null, null, '5.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '502020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1210', null, '电气工程', '5.3', '发电机负荷及并联试验', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '503000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1211', null, '电气工程', '5.3.1', '发电机负荷及并联试验', '', null, null, null, '5.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '503010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1212', null, '电气工程', '5.3.2', 'addrow', '', null, null, null, '5.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '503020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1213', null, '电气工程', '5.4', '主配电屏空气断路器保护装置校验', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '504000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1214', null, '电气工程', '5.4.1', '主配电屏空气断路器保护装置校验', '', null, null, null, '5.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '504010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1215', null, '电气工程', '5.4.2', 'addrow', '', null, null, null, '5.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '504020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1216', null, '电气工程', '5.5', '主配电板', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '505000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1217', null, '电气工程', '5.5.1', '主配电板', '', null, null, null, '5.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '505010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1218', null, '电气工程', '5.5.2', 'addrow', '', null, null, null, '5.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '505020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1219', null, '电气工程', '5.6', '仪表', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '506000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1220', null, '电气工程', '5.6.1', '仪表校验', '', null, null, null, '5.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '506010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1221', null, '电气工程', '5.6.2', 'addrow', '', null, null, null, '5.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '506020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1222', null, '电气工程', '5.7', '电缆拆装与新装', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '507000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1223', null, '电气工程', '5.7.1', '电缆拆装与新装', '', null, null, null, '5.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '507010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1224', null, '电气工程', '5.7.2', 'addrow', '', null, null, null, '5.7', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '507020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1225', null, '电气工程', '5.8', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '508000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1226', null, '电气工程', '5.8.1', 'addrow', '', null, null, null, '5.8', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '508010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1227', null, '冷藏工程', '6.1', '氟利昂制冷压缩机', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '601000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1228', null, '冷藏工程', '6.1.1', '氟利昂制冷压缩机', '', null, null, null, '6.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '601010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1229', null, '冷藏工程', '6.1.2', 'addrow', '', null, null, null, '6.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '601020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1230', null, '冷藏工程', '6.2', '', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '602000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1231', null, '冷藏工程', '6.3', '制冷系统蒸发器', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '603000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1232', null, '冷藏工程', '6.3.1', '制冷系统蒸发器', '', null, null, null, '6.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '603010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1233', null, '冷藏工程', '6.3.2', 'addrow', '', null, null, null, '6.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '603020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1234', null, '冷藏工程', '6.4', '制冷系统冷凝器', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '604000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1235', null, '冷藏工程', '6.4.1', '制冷系统冷凝器', '', null, null, null, '6.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '604010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1236', null, '冷藏工程', '6.4.2', 'addrow', '', null, null, null, '6.4', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '604020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1237', null, '冷藏工程', '6.5', '制冷系统中间容器', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '605000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1238', null, '冷藏工程', '6.5.1', '制冷系统中间容器', '', null, null, null, '6.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '605010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1239', null, '冷藏工程', '6.5.2', 'addrow', '', null, null, null, '6.5', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '605020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1240', null, '冷藏工程', '6.6', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '606000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1241', null, '冷藏工程', '6.6.1', 'addrow', '', null, null, null, '6.6', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '606010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1242', null, '特种设备', '7.1', '鱼加工带式传动装置', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '701000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1243', null, '特种设备', '7.1.1', '鱼加工带式传动装置', '', null, null, null, '7.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '701010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1244', null, '特种设备', '7.1.2', 'addrow', '', null, null, null, '7.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '701020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1245', null, '特种设备', '7.2', '鱼加工螺旋传送装置换新', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '702000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1246', null, '特种设备', '7.2.1', '鱼加工螺旋传送装置换新', '', null, null, null, '7.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '702010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1247', null, '特种设备', '7.2.2', 'addrow', '', null, null, null, '7.2', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '702020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1248', null, '特种设备', '7.3', '挖泥船泥门', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '703000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1249', null, '特种设备', '7.3.1', '挖泥船泥门', '', null, null, null, '7.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '703010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1250', null, '特种设备', '7.3.2', 'addrow', '', null, null, null, '7.3', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '703020000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1251', null, '特种设备', '7.4', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '704000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1252', null, '特种设备', '7.4.1', 'addrow', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '704010000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1253', null, '其他', '8.1', '自定义', '', null, '', null, '0', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1', null, '801000000', null);
INSERT INTO `t_repair_spec_item` VALUES ('1254', null, '其他', '8.1.1', 'addrow', '', null, null, null, '8.1', '8', '1', null, null, null, null, '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, '801010000', null);

-- ----------------------------
-- Table structure for t_repair_spec_item_price
-- ----------------------------
DROP TABLE IF EXISTS `t_repair_spec_item_price`;
CREATE TABLE `t_repair_spec_item_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '每个项目的价格id',
  `unit_price` varchar(45) DEFAULT NULL COMMENT '单价',
  `total_price` varchar(45) DEFAULT NULL COMMENT '总价',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `repair_spec_item_id` int(11) DEFAULT NULL COMMENT '维修工程单项目id',
  `enquiry_id` int(11) DEFAULT NULL COMMENT '询价的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_repair_spec_item_price
-- ----------------------------

-- ----------------------------
-- Table structure for t_report
-- ----------------------------
DROP TABLE IF EXISTS `t_report`;
CREATE TABLE `t_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '报告id',
  `task_id` int(11) DEFAULT NULL COMMENT '任务id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `publishTime` varchar(45) DEFAULT NULL COMMENT '发布时间',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修详单id',
  `generateTime` varchar(45) DEFAULT NULL COMMENT '创建时间',
  `is_publish` int(11) DEFAULT NULL COMMENT '是否发布 0未发布1 发布',
  `weather` varchar(45) DEFAULT NULL COMMENT '天气',
  `temperature` varchar(45) DEFAULT NULL COMMENT '温度',
  `hnmiaity` varchar(45) DEFAULT NULL COMMENT '湿度',
  `memo` varchar(45) DEFAULT NULL COMMENT 'memo',
  `tomorrow_plan` varchar(45) DEFAULT NULL COMMENT '明日计划',
  `crew_job` varchar(45) DEFAULT NULL COMMENT '今日工作',
  `surveyor_status` varchar(45) DEFAULT NULL COMMENT '验船师状态',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '更新者',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT NULL COMMENT '状态0表示正常，1表示删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report
-- ----------------------------

-- ----------------------------
-- Table structure for t_report_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_report_detail`;
CREATE TABLE `t_report_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '详单的报告id',
  `out_source` int(11) DEFAULT NULL COMMENT '是否外包 0不是1是',
  `repair_prog_id` int(11) DEFAULT NULL COMMENT '维修进度id',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详单的id',
  `report_id` int(11) DEFAULT NULL COMMENT '报告id',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '更新者',
  `udpate_date` date DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT NULL COMMENT '状态0表示正常，1表示删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report_detail
-- ----------------------------

-- ----------------------------
-- Table structure for t_report_detail_memo
-- ----------------------------
DROP TABLE IF EXISTS `t_report_detail_memo`;
CREATE TABLE `t_report_detail_memo` (
  `id` int(11) NOT NULL COMMENT '详单的memo的id',
  `memo` varchar(200) DEFAULT NULL COMMENT '备注',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详单id',
  `report_detail_id` int(11) DEFAULT NULL COMMENT '详单的报告id',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '更新者',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT NULL COMMENT '状态，0表示正常，1表示删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report_detail_memo
-- ----------------------------

-- ----------------------------
-- Table structure for t_report_detail_status
-- ----------------------------
DROP TABLE IF EXISTS `t_report_detail_status`;
CREATE TABLE `t_report_detail_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_status` varchar(45) DEFAULT NULL COMMENT '维修的任务状态',
  `report_detail_id` int(11) DEFAULT NULL COMMENT '详单的报告id',
  `repair_prog_detail_id` int(11) DEFAULT NULL COMMENT '维修进度详单的id',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '更新者',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT NULL COMMENT '状态0表示正常，1表示删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report_detail_status
-- ----------------------------

-- ----------------------------
-- Table structure for t_report_email
-- ----------------------------
DROP TABLE IF EXISTS `t_report_email`;
CREATE TABLE `t_report_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_id` int(11) DEFAULT NULL,
  `email` longtext,
  `subject` varchar(128) DEFAULT NULL,
  `is_send` int(11) DEFAULT NULL COMMENT '是否发送',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '更新者',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT NULL COMMENT '状态0表示正常，1表示删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report_email
-- ----------------------------

-- ----------------------------
-- Table structure for t_report_event
-- ----------------------------
DROP TABLE IF EXISTS `t_report_event`;
CREATE TABLE `t_report_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '事件id',
  `des` varchar(45) DEFAULT NULL COMMENT '描述',
  `report_id` varchar(45) DEFAULT NULL COMMENT '报告id',
  `repair_prog_detail_id` varchar(45) DEFAULT NULL COMMENT '维修进度详单id',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '更新者',
  `update_date` date DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT NULL COMMENT '状态0表示正常，1表示删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report_event
-- ----------------------------

-- ----------------------------
-- Table structure for t_ship
-- ----------------------------
DROP TABLE IF EXISTS `t_ship`;
CREATE TABLE `t_ship` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '船的id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `imo` varchar(45) DEFAULT NULL COMMENT '船的imo号',
  `name` varchar(45) DEFAULT NULL COMMENT '船名',
  `type` varchar(45) DEFAULT NULL COMMENT '船舶类型',
  `ship_class` varchar(45) DEFAULT NULL COMMENT '船级社',
  `builder` varchar(45) DEFAULT NULL COMMENT '船的建造者',
  `build_year` date DEFAULT NULL,
  `call_sign` varchar(45) DEFAULT NULL COMMENT '船舶呼号',
  `company_name` varchar(45) DEFAULT NULL COMMENT '公司名称',
  `draft` int(11) DEFAULT NULL COMMENT '吃水',
  `dwt` int(11) DEFAULT NULL COMMENT '载重吨',
  `gt` int(11) DEFAULT NULL COMMENT '总吨',
  `depth` int(11) DEFAULT NULL COMMENT '型深',
  `beam` int(11) DEFAULT NULL COMMENT '船宽',
  `loa` int(11) DEFAULT NULL COMMENT '船长',
  `me_maker` varchar(45) DEFAULT NULL COMMENT '主机：厂家',
  `me_type` varchar(45) DEFAULT NULL COMMENT '主机：型号',
  `me_bhp_rpm` varchar(45) DEFAULT NULL COMMENT '主机：马力/转速',
  `me_qty` int(11) DEFAULT NULL COMMENT '主机：数量',
  `me_cyl_bore` int(11) DEFAULT NULL COMMENT '主机：缸径',
  `aux_maker` varchar(45) DEFAULT NULL COMMENT '辅机：厂家',
  `aux_type` varchar(45) DEFAULT NULL COMMENT '辅机：型号',
  `aux_rated_or` varchar(45) DEFAULT NULL COMMENT '辅机：额定功率',
  `aux_qty` int(11) DEFAULT NULL COMMENT '辅机：数量',
  `aux_cyl_bore` int(11) DEFAULT NULL COMMENT '辅机：缸径',
  `boiler_maker` varchar(45) DEFAULT NULL COMMENT '锅炉：厂家',
  `boiler_type` varchar(45) DEFAULT NULL COMMENT '锅炉：型号',
  `boiler_pressure` varchar(45) DEFAULT NULL COMMENT '锅炉：工作压力',
  `boiler_qty` int(11) DEFAULT NULL COMMENT '锅炉：数量',
  `boiler_heating_area` int(11) DEFAULT NULL COMMENT '锅炉：热交换面积',
  `boiler_evaporation` int(11) DEFAULT NULL COMMENT '锅炉：蒸发量',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  `dd` varchar(45) DEFAULT NULL,
  `ss` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ship
-- ----------------------------
INSERT INTO `t_ship` VALUES ('1', '1', '1111', '222', '222', '22', '', null, '', '', '1212', null, '212323', null, '121', '121', '', '', '', null, null, '', '', '', null, null, '', '', '', null, null, null, null, '', null, null, '0', '2012-01-26', '2003-05-08');
INSERT INTO `t_ship` VALUES ('2', '2', '333', '333', '33', '3333', null, null, null, null, null, null, '2312321', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0', null, null);
INSERT INTO `t_ship` VALUES ('3', '1', '33322', '222', '111', '1111', '', null, '', '', '1212', null, '1231231', '121', '121', '121', '', '', '', null, null, '', '', '', null, null, 'dssd', '', '', null, null, null, null, '', null, null, '0', null, null);
INSERT INTO `t_ship` VALUES ('4', '1', 'w', 'wq', 'w', 'w', 'ww', null, '', '上海东曦船务有限公司', '22', null, null, null, '2', '2', '', '', '', null, null, '', '', '', null, null, '', '', '', null, null, null, null, null, null, null, '0', '', '');

-- ----------------------------
-- Table structure for t_shipyard
-- ----------------------------
DROP TABLE IF EXISTS `t_shipyard`;
CREATE TABLE `t_shipyard` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '船厂id',
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `name` varchar(45) DEFAULT NULL COMMENT '船厂名称',
  `des` text COMMENT '船厂简介',
  `short_name` varchar(45) DEFAULT NULL COMMENT '短名称',
  `group_company` varchar(45) DEFAULT NULL COMMENT '集团公司',
  `country` varchar(45) DEFAULT NULL COMMENT '国家',
  `area` varchar(45) DEFAULT NULL COMMENT '区域',
  `location` varchar(45) DEFAULT NULL COMMENT '位置',
  `address` varchar(45) DEFAULT NULL COMMENT '地址',
  `longitude` varchar(45) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(45) DEFAULT NULL COMMENT '纬度',
  `tel` varchar(45) DEFAULT NULL COMMENT '电话',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `website` varchar(45) DEFAULT NULL COMMENT '网站',
  `logo` varchar(45) DEFAULT NULL COMMENT '船厂logo',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shipyard
-- ----------------------------
INSERT INTO `t_shipyard` VALUES ('1', '1', 'COSCO DaLian', '', null, 'COSCO', '中国', '辽宁沈阳', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `t_shipyard` VALUES ('2', '1', 'COSCO(Nantong) Shipyard Co.,Ltd', '“中远（大连）造船厂是中远船务集团的核心子企业。它的主要业务是船舶与海洋工程修\r\n            理、转换和和新的建筑。船厂有一个面积120000平方米，总用地3200米以上的深水泊位3个码头、8\r\n            码头修船，2门式起重机（200吨），1门式起重机（400吨）和各种设施，期间近年来，中远（\r\n            大连）造船厂做了一个修船到船舶和海上修理、转换出现的方式士大夫撒范德萨防守打法撒发生上的是上的方式发送到是方式阿萨德发送到是非方式发发', 'COSCO', 'COSCO', 'China', 'Central China', 'Nantong,Jiangsu Province', 'No.1 Zhongyuan Road,Nantong,Jiangsu province', '120°52′59″E', '31°58′59″N', '(86)-21-58600111', 'biz@cosco-shipyard.com', 'http://en.cosco-shipyard.com/', null, null, null, null, null, '0');

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
-- Table structure for t_wharf_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_wharf_detail`;
CREATE TABLE `t_wharf_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '码头信息id',
  `shipyard_id` int(11) DEFAULT NULL COMMENT '船厂id',
  `type` varchar(45) DEFAULT NULL COMMENT '类型',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `capacity` int(11) DEFAULT NULL COMMENT '能力',
  `lift_capacity` int(11) DEFAULT NULL COMMENT '提升能力',
  `length` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL COMMENT '维：宽度',
  `draft` int(11) DEFAULT NULL,
  `cranes` varchar(45) DEFAULT NULL COMMENT '起重机',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_wharf_detail
-- ----------------------------
INSERT INTO `t_wharf_detail` VALUES ('1', '2', 'Floating', 'Nantong', '150000', null, '270', '48', '9', '24TX1,22TX1,15TX1,5TX1', null, null, null, null, null, '0');
INSERT INTO `t_wharf_detail` VALUES ('2', '2', 'Floating', 'Yuantong', '80000', null, '230', '42', '8', '22TX1,5TX1', null, null, null, null, null, '0');
