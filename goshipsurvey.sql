/*
Navicat MySQL Data Transfer

Source Server         : wang
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : goshipsurvey

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-07-08 13:57:28
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
INSERT INTO `databasechangelog` VALUES ('15950097942-001', 'WangShun', 'src/main/resources/changelog.xml', '2017-05-22 16:43:48', '1', 'EXECUTED', '7:4581fab6b6b5db3f2f067c18448aecdb', 'sql', '', null, '3.5.3', null, null, '5442625656');
INSERT INTO `databasechangelog` VALUES ('15950097942-002', 'WangShun', 'src/main/resources/changelog.xml', '2017-05-25 12:31:51', '2', 'EXECUTED', '7:9fd27ab3fca4c27f6cacba3f55a7e5b2', 'sql', '', null, '3.5.3', null, null, '5686709779');
INSERT INTO `databasechangelog` VALUES ('17317309132-001', 'LuZhen', 'src/main/resources/changelog.xml', '2017-05-26 15:40:17', '3', 'EXECUTED', '7:b2a573ab0453dd128a53708108b22434', 'sql', '', null, '3.5.3', null, null, '5784414269');
INSERT INTO `databasechangelog` VALUES ('17317309132-002', 'LuZhen', 'src/main/resources/changelog.xml', '2017-05-26 15:40:18', '4', 'EXECUTED', '7:a4be3d0c8090b78a9d8d6baee588df45', 'sql', '', null, '3.5.3', null, null, '5784414269');
INSERT INTO `databasechangelog` VALUES ('15950097942-003', 'WangShun', 'src/main/resources/changelog.xml', '2017-05-26 17:08:56', '5', 'EXECUTED', '7:21eb60bdde36207afea1b727ca94e5ff', 'sql', '', null, '3.5.3', null, null, '5789735984');
INSERT INTO `databasechangelog` VALUES ('15950097942-004', 'WangShun', 'src/main/resources/changelog.xml', '2017-05-31 12:28:35', '6', 'EXECUTED', '7:20173dbb065e4c44c4c9bc0b5fa1b48b', 'sql', '', null, '3.5.3', null, null, '6204914744');
INSERT INTO `databasechangelog` VALUES ('15950097942-005', 'WangShun', 'src/main/resources/changelog.xml', '2017-05-31 12:37:40', '7', 'EXECUTED', '7:efe42904c8123db04e3624bd11e6aa96', 'sql', '', null, '3.5.3', null, null, '6205458596');
INSERT INTO `databasechangelog` VALUES ('15950097942-006', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-01 15:58:54', '8', 'EXECUTED', '7:67b1a4e1f31eecb17d7ca5c98824e752', 'sql', '', null, '3.5.3', null, null, '6303933664');
INSERT INTO `databasechangelog` VALUES ('15950097942-007', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-02 10:39:05', '9', 'EXECUTED', '7:7a7204292a3903073692726e499a1bf1', 'sql', '', null, '3.5.3', null, null, '6371143290');
INSERT INTO `databasechangelog` VALUES ('17317309132-003', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-07 10:43:45', '10', 'EXECUTED', '7:c9ddf1034400fc5e0b16d1378e19b8cf', 'sql', '', null, '3.5.3', null, null, '6803424279');
INSERT INTO `databasechangelog` VALUES ('17317309132-004', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-07 10:43:45', '11', 'EXECUTED', '7:06942233a8981b06de38b926b72e69fa', 'sql', '', null, '3.5.3', null, null, '6803424279');
INSERT INTO `databasechangelog` VALUES ('17317309132-005', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-07 10:43:46', '12', 'EXECUTED', '7:be5c0a4d202d5e8d6448f870308b111d', 'sql', '', null, '3.5.3', null, null, '6803424279');
INSERT INTO `databasechangelog` VALUES ('17317309132-006', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-07 10:43:47', '13', 'EXECUTED', '7:56e6c97b82f743bbb841240c64756f8a', 'sql', '', null, '3.5.3', null, null, '6803424279');
INSERT INTO `databasechangelog` VALUES ('15950097942-008', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-08 10:22:36', '14', 'EXECUTED', '7:6ddff38ec1e829bf91656ddcaf743067', 'sql', '', null, '3.5.3', null, null, '6888555895');
INSERT INTO `databasechangelog` VALUES ('17317309132-007', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-08 11:17:15', '15', 'EXECUTED', '7:95e35f02f1eed2dc9567966506a3837a', 'sql', '', null, '3.5.3', null, null, '6891834079');
INSERT INTO `databasechangelog` VALUES ('17317309132-008', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-08 11:17:18', '16', 'EXECUTED', '7:c1e35586d1955f72514106948091e9d3', 'sql', '', null, '3.5.3', null, null, '6891834079');
INSERT INTO `databasechangelog` VALUES ('15950097942-009', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-08 16:04:15', '17', 'EXECUTED', '7:0ffbbb024442bb9b427d02af6af4ec11', 'sql', '', null, '3.5.3', null, null, '6909052522');
INSERT INTO `databasechangelog` VALUES ('15950097942-010', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-12 13:40:53', '18', 'EXECUTED', '7:643e728107374265d0cafa4d06f8955b', 'sql', '', null, '3.5.3', null, null, '7246047722');
INSERT INTO `databasechangelog` VALUES ('15950097942-011', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-12 16:06:54', '19', 'EXECUTED', '7:801233b862db0db17ef3d89c5e8132ab', 'sql', '', null, '3.5.3', null, null, '7254811296');
INSERT INTO `databasechangelog` VALUES ('15950097942-012', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-13 15:04:58', '20', 'EXECUTED', '7:c725bd0cd1f78c3e7a5390945c93fe4c', 'sql', '', null, '3.5.3', null, null, '7337486062');
INSERT INTO `databasechangelog` VALUES ('17317309132-009', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-15 17:29:22', '21', 'EXECUTED', '7:fae18349b5ed229f4f230cc33f7f2f0a', 'sql', '', null, '3.5.3', null, null, '7518959630');
INSERT INTO `databasechangelog` VALUES ('15950097942-013', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-19 17:10:43', '22', 'EXECUTED', '7:fa25fe8bb1d2e7867c0d512b5d34eadd', 'sql', '', null, '3.5.3', null, null, '7863441323');
INSERT INTO `databasechangelog` VALUES ('15950097942-014', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-19 17:16:51', '23', 'EXECUTED', '7:88302ac1ee6f9037c98139b8432b0c1d', 'sql', '', null, '3.5.3', null, null, '7863809847');
INSERT INTO `databasechangelog` VALUES ('15950097942-015', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-26 14:30:38', '24', 'EXECUTED', '7:64524f50b68b22e78a8a40677abed565', 'sql', '', null, '3.5.3', null, null, '8458636231');
INSERT INTO `databasechangelog` VALUES ('15950097942-016', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-27 15:59:27', '25', 'EXECUTED', '7:203d0f127690230e389f3ea98b137312', 'sql', '', null, '3.5.3', null, null, '8550364636');
INSERT INTO `databasechangelog` VALUES ('17317309132-010', 'LuZhen', 'src/main/resources/changelog.xml', '2017-06-28 17:07:18', '26', 'EXECUTED', '7:c3193a7f2b2e7ad03ef1660da92b95ad', 'sql', '', null, '3.5.3', null, null, '8640836877');
INSERT INTO `databasechangelog` VALUES ('15950097942-017', 'WangShun', 'src/main/resources/changelog.xml', '2017-06-28 17:07:19', '27', 'EXECUTED', '7:0a694c8e57ffe31a89aaf8769cfac2d3', 'sql', '', null, '3.5.3', null, null, '8640836877');
INSERT INTO `databasechangelog` VALUES ('15950097942-018', 'WangShun', 'src/main/resources/changelog.xml', '2017-07-03 11:59:59', '28', 'EXECUTED', '7:c49f05d9e04ec5a68faa2246a4235315', 'sql', '', null, '3.5.3', null, null, '9054399065');

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

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
INSERT INTO `sys_button` VALUES ('21', '109', '更改头像', 'surveyor/surveyorInfo/editHeadImg', '0');
INSERT INTO `sys_button` VALUES ('22', '108', '更改头像', 'surveyor/surveyorInfo/editHeadImg', '0');
INSERT INTO `sys_button` VALUES ('23', '109', '保存个人信息', 'surveyor/account/edit', '0');
INSERT INTO `sys_button` VALUES ('24', '108', '保存个人信息', 'surveyor/account/edit', '0');
INSERT INTO `sys_button` VALUES ('25', '137', 'prepurchase/op/record/quotation/list', 'prepurchase/op/record/quotation/list', '0');
INSERT INTO `sys_button` VALUES ('26', '137', 'prepurchase/op/record/inspection/list', 'prepurchase/op/record/inspection/list', '0');
INSERT INTO `sys_button` VALUES ('27', '139', 'prepurchase/surveyor/record/inspection/list	', 'prepurchase/surveyor/record/inspection/list	', '0');
INSERT INTO `sys_button` VALUES ('28', '140', 'prepurchase/op/quotation/list', 'prepurchase/op/quotation/list', '0');
INSERT INTO `sys_button` VALUES ('31', '142', 'prepurchase/op/quotation/addComplete', 'prepurchase/op/quotation/addComplete', '0');
INSERT INTO `sys_button` VALUES ('32', '141', 'prepurchase/op/quotation/chooseComplete', 'prepurchase/op/quotation/chooseComplete', '0');
INSERT INTO `sys_button` VALUES ('33', '141', 'prepurchase/op/quotation/cancel', 'prepurchase/op/quotation/cancel', '0');
INSERT INTO `sys_button` VALUES ('34', '143', 'prepurchase/surveyor/quotation/list', 'prepurchase/surveyor/quotation/list', '0');
INSERT INTO `sys_button` VALUES ('35', '143', 'surveyor/quotationApplication/add', 'surveyor/quotationApplication/add', '0');
INSERT INTO `sys_button` VALUES ('36', '148', 'message/list', 'message/list', '0');
INSERT INTO `sys_button` VALUES ('37', '148', 'message/toTop', 'message/toTop', '0');
INSERT INTO `sys_button` VALUES ('38', '148', 'message/batchDelete', 'message/batchDelete', '0');
INSERT INTO `sys_button` VALUES ('39', '148', 'message/batchRead', 'message/batchRead', '0');
INSERT INTO `sys_button` VALUES ('40', '148', 'message/batchUnread', 'message/batchUnread', '0');
INSERT INTO `sys_button` VALUES ('41', '148', 'message/info', 'message/info', '0');
INSERT INTO `sys_button` VALUES ('42', '149', 'surveyor/list', 'surveyor/list', '0');
INSERT INTO `sys_button` VALUES ('43', '149', 'surveyor/batchDelete', 'surveyor/batchDelete', '0');
INSERT INTO `sys_button` VALUES ('44', '149', 'surveyor/add', 'surveyor/add', '0');
INSERT INTO `sys_button` VALUES ('45', '149', 'surveyor/addComplete', 'surveyor/addComplete', '0');
INSERT INTO `sys_button` VALUES ('46', '149', 'surveyor/edit', 'surveyor/edit', '0');
INSERT INTO `sys_button` VALUES ('47', '149', 'surveyor/editComplete', 'surveyor/editComplete', '0');
INSERT INTO `sys_button` VALUES ('48', '149', 'surveyor/editPort', 'surveyor/editPort', '0');
INSERT INTO `sys_button` VALUES ('49', '149', 'surveyor/editPortComplete', 'surveyor/editPortComplete', '0');
INSERT INTO `sys_button` VALUES ('50', '149', 'surveyor/editTime', 'surveyor/editTime', '0');
INSERT INTO `sys_button` VALUES ('51', '149', 'surveyor/editTimeComplete', 'surveyor/editTimeComplete', '0');
INSERT INTO `sys_button` VALUES ('52', '149', 'surveyor/info', 'surveyor/info', '0');
INSERT INTO `sys_button` VALUES ('53', '149', 'surveyor/getSurveyors', 'surveyor/getSurveyors', '0');
INSERT INTO `sys_button` VALUES ('54', '155', 'user/companyEdit', 'user/companyEdit', '0');
INSERT INTO `sys_button` VALUES ('55', '155', 'user/companyEditComplete', 'user/companyEditComplete', '0');
INSERT INTO `sys_button` VALUES ('56', '155', 'user/companyInfo', 'user/companyInfo', '0');
INSERT INTO `sys_button` VALUES ('57', '155', 'surveyor/surveyorInfo/editHeadImg', 'surveyor/surveyorInfo/editHeadImg', '0');
INSERT INTO `sys_button` VALUES ('58', '149', 'surveyor/editSurveyType', 'surveyor/editSurveyType', '0');
INSERT INTO `sys_button` VALUES ('59', '149', 'surveyor/editSurveyTypeComplete', 'surveyor/editSurveyTypeComplete', '0');
INSERT INTO `sys_button` VALUES ('60', '148', 'wsMy', 'wsMy', '0');
INSERT INTO `sys_button` VALUES ('61', '113', 'op/quotation/addComplete', 'op/quotation/addComplete', '0');
INSERT INTO `sys_button` VALUES ('62', '160', 'op/quotation/editComplete', 'op/quotation/editComplete', '0');
INSERT INTO `sys_button` VALUES ('63', '161', 'prepurchase/surveyor/inspection/list', 'prepurchase/surveyor/inspection/list', '0');
INSERT INTO `sys_button` VALUES ('64', '162', 'prepurchase/surveyor/inspection/list', 'prepurchase/surveyor/inspection/list', '0');
INSERT INTO `sys_button` VALUES ('65', '164', 'prepurchase/op/inspection/list', 'prepurchase/op/inspection/list', '0');
INSERT INTO `sys_button` VALUES ('66', '182', 'prepurchase/op/report/list', 'prepurchase/op/report/list', '0');

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
  `pro_type` int(3) DEFAULT NULL,
  `del_flag` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统配置', '#', '0', '80', 'fa fa-cog', '1', '0', '系统配置', '1', '0');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', 'right', '1', '41', '', '2', '1', '权限管理', '1', '0');
INSERT INTO `sys_menu` VALUES ('3', '用户管理', 'user', '1', '42', '', '2', '1', '用户管理', '1', '0');
INSERT INTO `sys_menu` VALUES ('4', '角色管理', 'role', '1', '43', '', '2', '1', '角色管理', '1', '0');
INSERT INTO `sys_menu` VALUES ('91', 'My record', 'op/record', '0', '10', 'fa fa-info', '1', '1', 'My record(op用)', '1', '0');
INSERT INTO `sys_menu` VALUES ('92', 'Scheduled inspections', 'op/inspection', '0', '30', 'fa fa-clock-o', '1', '1', 'Scheduled inspections(op用)', '1', '0');
INSERT INTO `sys_menu` VALUES ('93', 'Quotations', 'op/quotation', '0', '20', 'fa fa-ship', '1', '1', 'Quotations(op用)', '1', '0');
INSERT INTO `sys_menu` VALUES ('94', 'My inspection Record', 'surveyor/record', '0', '50', 'fa fa-info', '1', '1', 'My inspection Record(surveyor用)', '1', '0');
INSERT INTO `sys_menu` VALUES ('95', 'Available vessels', 'surveyor/quotation', '0', '60', 'fa fa-ship', '1', '1', 'Available(surveyor用)', '1', '0');
INSERT INTO `sys_menu` VALUES ('96', 'Apply survey', 'surveyor/inspection', '0', '70', 'fa fa-clock-o', '1', '1', 'Apply survey(surveyor用)', '1', '0');
INSERT INTO `sys_menu` VALUES ('108', 'Info Setting', 'surveyor/account/companyEdit', '1', '45', null, '2', '1', 'surveyor/company 信息设置', '1', '0');
INSERT INTO `sys_menu` VALUES ('109', 'Personal setting', 'surveyor/account/personalEdit', '1', '44', null, '2', '1', 'surveyor个人设置', '1', '0');
INSERT INTO `sys_menu` VALUES ('110', 'op/record/list/quotation', 'op/record/list/quotation', '91', '11', null, '2', '1', 'op获取quotation记录', '1', '0');
INSERT INTO `sys_menu` VALUES ('111', 'op/record/list/inspection', 'op/record/list/inspection', '91', '12', null, '2', '1', 'op获取quotation记录', '1', '0');
INSERT INTO `sys_menu` VALUES ('112', 'op/inspection/addPoint', 'op/inspection/addPoint', '91', '13', null, '2', '1', 'op对inspection打分', '1', '0');
INSERT INTO `sys_menu` VALUES ('113', 'op/quotation/add', 'op/quotation/add', '93', '21', null, '2', '1', 'op新增quotation', '1', '0');
INSERT INTO `sys_menu` VALUES ('115', 'publicShip/searchOne', 'publicShip/searchOne', '93', '22', null, '2', '1', '搜索单条船舶信息', '1', '0');
INSERT INTO `sys_menu` VALUES ('116', 'publicShip/searchList', 'publicShip/searchList', '93', '23', null, '2', '1', '模糊搜索船舶信息', '1', '0');
INSERT INTO `sys_menu` VALUES ('117', 'port/searchList', 'port/searchList', '93', '24', null, '2', '1', '搜索港口信息', '1', '0');
INSERT INTO `sys_menu` VALUES ('118', 'op/inspection/add', 'op/inspection/add', '93', '25', null, '2', '1', '邀请surveyor验船', '1', '0');
INSERT INTO `sys_menu` VALUES ('119', 'op/quotation/startQuotation', 'op/quotation/startQuotation', '93', '26', null, '2', '1', 'op开始发起询价', '1', '0');
INSERT INTO `sys_menu` VALUES ('120', 'op/inspection/editOtherDetails', 'op/inspection/editOtherDetails', '92', '31', null, '2', '1', 'op提交船舶信息', '1', '0');
INSERT INTO `sys_menu` VALUES ('121', 'op/inspection/confirm', 'op/inspection/confirm', '92', '32', null, '2', '1', 'op确认inspection完成', '1', '0');
INSERT INTO `sys_menu` VALUES ('122', 'surveyor/inspection/addPoint', 'surveyor/inspection/addPoint', '94', '52', null, '2', '1', 'surveyor 评分', '1', '0');
INSERT INTO `sys_menu` VALUES ('124', 'surveyor/surveyorInfo/editInfoName', 'surveyor/surveyorInfo/editInfoName', '96', '71', null, '2', '1', '编辑surveyor姓名', '1', '0');
INSERT INTO `sys_menu` VALUES ('125', 'surveyor/inspection/confirm', 'surveyor/inspection/confirm', '96', '72', null, '2', '1', 'surveyor确认完成inspection', '1', '0');
INSERT INTO `sys_menu` VALUES ('126', 'surveyor/surveyorInfo/editInfo', 'surveyor/surveyorInfo/editInfo', '96', '73', null, '2', '1', 'surveyor上传passport loi report', '1', '0');
INSERT INTO `sys_menu` VALUES ('127', 'surveyor/quotationApplication/add', 'surveyor/quotationApplication/add', '95', '61', null, '2', '1', 'surveyor申请quotation ', '1', '0');
INSERT INTO `sys_menu` VALUES ('128', 'surveyor/record', 'surveyor/record', '94', '51', null, '2', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('129', 'My record', 'prepurchase/op/record', '0', '90', null, '1', '1', 'prepurchase/My record(op用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('130', 'Quotation', 'prepurchase/op/quotation', '0', '100', null, '1', '1', 'prepurchase/quotation(op用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('131', 'Inspections', 'prepurchase/op/inspection', '0', '110', null, '1', '1', 'prepurchase/inspection(op用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('132', 'Reports', 'prepurchase/op/report', '0', '120', null, '1', '1', 'prepurchase/report(op用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('133', 'My record', 'prepurchase/surveyor/record', '0', '130', null, '1', '1', 'prepurchase/record(surveyor用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('134', 'Available ship', 'prepurchase/surveyor/quotation', '0', '140', null, '1', '1', 'prepurchase/quotation(surveyor用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('135', 'Inspection', 'prepurchase/surveyor/inspection', '0', '150', null, '1', '1', 'prepurchase/inspection(surveyor用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('136', 'Reports', 'prepurchase/surveyor/report', '0', '160', null, '1', '1', 'prepurchase/report(surveyor用)', '2', '0');
INSERT INTO `sys_menu` VALUES ('137', 'prepurchase/op/record', 'prepurchase/op/record', '129', '91', null, '2', '1', '', '2', '0');
INSERT INTO `sys_menu` VALUES ('139', 'prepurchase/surveyor/record/inspection/list', 'prepurchase/surveyor/record/inspection/list', '133', '131', null, '2', '1', '', '2', '0');
INSERT INTO `sys_menu` VALUES ('140', 'prepurchase/op/quotation', 'prepurchase/op/quotation', '130', '101', null, '2', '1', '', '2', '0');
INSERT INTO `sys_menu` VALUES ('141', 'prepurchase/op/quotation/choose', 'prepurchase/op/quotation/choose', '130', '102', null, '2', '1', '', '2', '0');
INSERT INTO `sys_menu` VALUES ('142', 'prepurchase/op/quotation/add', 'prepurchase/op/quotation/add', '130', '103', null, '2', '1', '', '2', '0');
INSERT INTO `sys_menu` VALUES ('143', 'prepurchase/surveyor/quotation', 'prepurchase/surveyor/quotation', '134', '141', null, '2', '1', '', '2', '0');
INSERT INTO `sys_menu` VALUES ('145', 'Message', 'message', '0', '170', null, '1', '1', '消息界面', '3', '0');
INSERT INTO `sys_menu` VALUES ('146', 'Surveyor', 'surveyor', '0', '180', null, '1', '1', '人员管理界面', '3', '0');
INSERT INTO `sys_menu` VALUES ('148', 'message', 'message', '145', '171', null, '2', '1', '', '3', '0');
INSERT INTO `sys_menu` VALUES ('149', 'surveyor', 'surveyor', '146', '181', null, '2', '1', '', '3', '0');
INSERT INTO `sys_menu` VALUES ('150', 'Port', 'port/searchList', '0', '190', null, '1', '1', '', '3', '0');
INSERT INTO `sys_menu` VALUES ('151', 'surveyor/inspection/edit', 'surveyor/inspection/edit', '96', '74', null, '2', '1', '编辑inspection页面', '1', '0');
INSERT INTO `sys_menu` VALUES ('152', 'op/inspection/edit', 'op/inspection/edit', '92', '33', null, '2', '1', 'op查看inspection页面', '1', '0');
INSERT INTO `sys_menu` VALUES ('153', 'surveyor/inspection/editUrl', 'surveyor/inspection/editUrl', '96', '75', null, '2', '1', '上传相关文件', '1', '0');
INSERT INTO `sys_menu` VALUES ('154', 'UserInfo', 'user', '0', '200', null, '1', '1', '', '3', '0');
INSERT INTO `sys_menu` VALUES ('155', 'user', 'user', '154', '201', null, '2', '1', '', '3', '0');
INSERT INTO `sys_menu` VALUES ('156', 'op/quotation/deleteById', 'op/quotation/deleteById', '93', '27', null, '2', '1', '删除quotation', '1', '0');
INSERT INTO `sys_menu` VALUES ('157', 'surveyor/quotationApplication/cancel', 'surveyor/quotationApplication/cancel', '95', '62', null, '2', '1', 'surveyor取消申请', '1', '0');
INSERT INTO `sys_menu` VALUES ('159', 'user/searchSurveyors', 'user/searchSurveyors', '93', '29', null, '2', '1', '查询surveyor', '1', '0');
INSERT INTO `sys_menu` VALUES ('160', 'op/quotation/edit', 'op/quotation/edit', '93', '28', null, '2', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('162', 'prepurchase/surveyor/inspection', 'prepurchase/surveyor/inspection', '135', '1', null, '2', '1', 'inspection的列表', '2', '0');
INSERT INTO `sys_menu` VALUES ('163', 'prepurchase/surveyor/saveLoiPassport', 'prepurchase/surveyor/saveLoiPassport', '135', '2', null, '2', '1', '上传loi和passport', '2', '0');
INSERT INTO `sys_menu` VALUES ('164', 'prepurchase/op/inspection', 'prepurchase/op/inspection', '131', '1', null, '2', '1', '显示列表', '2', '0');
INSERT INTO `sys_menu` VALUES ('165', 'prepurchase/surveyor/reportEdit', 'prepurchase/surveyor/reportEdit', '136', '1', null, '2', '1', '获取单个报告的详细信息', '2', '0');
INSERT INTO `sys_menu` VALUES ('166', 'prepurchase/surveyor/reportEditShip', 'prepurchase/surveyor/reportEditShip', '136', '2', null, '2', '1', '对报告中的船舶信息的更新', '2', '0');
INSERT INTO `sys_menu` VALUES ('167', 'prepurchase/surveyor/getGradeList', 'prepurchase/surveyor/getGradeList', '136', '3', null, '2', '1', '异步加载Grades', '2', '0');
INSERT INTO `sys_menu` VALUES ('168', 'prepurchase/surveyor/reportEditGrade', 'prepurchase/surveyor/reportEditGrade', '136', '4', null, '2', '1', '更新Grade', '1', '0');
INSERT INTO `sys_menu` VALUES ('169', 'prepurchase/surveyor/reportEditDefect', 'prepurchase/surveyor/reportEditDefect', '136', '5', null, '2', '1', '修改Defect', '2', '0');
INSERT INTO `sys_menu` VALUES ('170', 'prepurchase/surveyor/createAlbum', 'prepurchase/surveyor/createAlbum', '136', '6', null, '2', '1', '创建相册', '2', '0');
INSERT INTO `sys_menu` VALUES ('171', 'prepurchase/surveyor/editAlbum', 'prepurchase/surveyor/editAlbum', '136', '7', null, '2', '1', '修改相册名称', '2', '0');
INSERT INTO `sys_menu` VALUES ('172', 'prepurchase/surveyor/deleteAlbum', 'prepurchase/surveyor/deleteAlbum', '136', '8', null, '2', '1', '删除相册', '2', '0');
INSERT INTO `sys_menu` VALUES ('173', 'prepurchase/surveyor/img', 'prepurchase/surveyor/img', '136', '9', null, '2', '1', '跳转图片弹窗', '2', '0');
INSERT INTO `sys_menu` VALUES ('174', 'prepurchase/surveyor/deleteImg', 'prepurchase/surveyor/deleteImg', '136', '11', null, '2', '1', '删除图片', '2', '0');
INSERT INTO `sys_menu` VALUES ('175', 'prepurchase/surveyor/addImg', 'prepurchase/surveyor/addImg', '136', '12', null, '2', '1', '删除图片', '2', '0');
INSERT INTO `sys_menu` VALUES ('176', 'prepurchase/surveyor/imgSubmit', 'prepurchase/surveyor/imgSubmit', '136', '13', null, '2', '1', '修改第四栏照片提交状态', '2', '0');
INSERT INTO `sys_menu` VALUES ('177', 'prepurchase/surveyor/reportEditSummary', 'prepurchase/surveyor/reportEditSummary', '136', '14', null, '2', '1', '添加或者更新   Surveyor’s summary', '2', '0');
INSERT INTO `sys_menu` VALUES ('178', 'prepurchase/surveyor/reportEditTechnical', 'prepurchase/surveyor/reportEditTechnical', '136', '15', null, '2', '1', '添加或者更新   Technical appendix & equipment information', '2', '0');
INSERT INTO `sys_menu` VALUES ('179', 'prepurchase/surveyor/technicalModelList', 'prepurchase/surveyor/technicalModelList', '136', '16', null, '2', '1', '获取   Technical appendix & equipment information的第一张表的Equipmet的列表信息', '2', '0');
INSERT INTO `sys_menu` VALUES ('180', 'prepurchase/surveyor/reportEditDocument', 'prepurchase/surveyor/reportEditDocument', '136', '17', null, '2', '1', '添加或者更新Documents', '2', '0');
INSERT INTO `sys_menu` VALUES ('181', 'prepurchase/surveyor/submitReport', 'prepurchase/surveyor/submitReport', '136', '18', null, '2', '1', 'surveyour提交报告', '2', '0');
INSERT INTO `sys_menu` VALUES ('182', 'prepurchase/op/report', '/op/report', '132', '1', null, '2', '1', '加载列表', '2', '0');
INSERT INTO `sys_menu` VALUES ('183', 'prepurchase/op/reportInfo', 'prepurchase/op/reportInfo', '132', '2', null, '2', '1', '获取报告的详细信息', '2', '0');
INSERT INTO `sys_menu` VALUES ('184', 'prepurchase/op/viewImg', 'prepurchase/op/viewImg', '132', '3', null, '2', '1', '跳转到图片弹窗', '2', '0');
INSERT INTO `sys_menu` VALUES ('185', 'prepurchase/op/reportDownload', 'prepurchase/op/reportDownload', '132', '4', null, '2', '1', '下载报告', '2', '0');
INSERT INTO `sys_menu` VALUES ('186', 'op/quotation/list', 'op/quotation/list', '93', '1', null, '2', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('187', 'op/inspection/list', 'op/inspection/list', '92', '1', null, '2', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('188', 'surveyor/record/list', 'surveyor/record/list', '94', '1', null, '2', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('189', 'surveyor/quotation/list', 'surveyor/quotation/list', '95', '1', null, '2', '1', '', '1', '0');
INSERT INTO `sys_menu` VALUES ('190', 'surveyor/inspection/list', 'surveyor/inspection/list', '96', '1', null, '2', '1', '', '1', '0');

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` int(11) DEFAULT NULL COMMENT '消息发出方',
  `receiver` int(11) DEFAULT NULL COMMENT '消息接收方',
  `title` text,
  `content` text COMMENT '内容',
  `read_status` int(4) DEFAULT NULL COMMENT '阅读状态',
  `read_date` date DEFAULT NULL COMMENT '阅读日期',
  `top_time` varchar(20) DEFAULT NULL COMMENT '置顶时间',
  `create_date` date DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES ('94', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-06-16', 'admin', '2017-06-16', 'admin', '0');
INSERT INTO `sys_message` VALUES ('95', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-16', 'admin', '2017-06-16', 'admin', '0');
INSERT INTO `sys_message` VALUES ('96', '1', '1', 'Alpha Wisdom船买卖船检验,已有验船师申请勘验', 'Alpha Wisdom船买卖船检验,已有验船师申请勘验', '1', '2017-06-29', null, '2017-06-16', 'admin', '2017-06-16', 'admin', '0');
INSERT INTO `sys_message` VALUES ('97', '1', '1', 'Alpha Wisdom船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Alpha Wisdom船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-16', 'admin', '2017-06-16', 'admin', '0');
INSERT INTO `sys_message` VALUES ('98', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-19', 'admin', '2017-06-19', 'admin', '0');
INSERT INTO `sys_message` VALUES ('99', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-19', 'admin', '2017-06-19', 'admin', '0');
INSERT INTO `sys_message` VALUES ('100', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-19', 'admin', '2017-06-19', 'admin', '0');
INSERT INTO `sys_message` VALUES ('101', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-19', 'admin', '2017-06-19', 'admin', '0');
INSERT INTO `sys_message` VALUES ('102', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-22', 'op', '2017-06-22', 'op', '0');
INSERT INTO `sys_message` VALUES ('103', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-22', 'op', '2017-06-22', 'op', '0');
INSERT INTO `sys_message` VALUES ('104', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-22', 'op', '2017-06-22', 'op', '0');
INSERT INTO `sys_message` VALUES ('105', '23', '21', 'Alessandra M船租还船检验,已有验船师申请检验', 'Alessandra M船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-22', 'company', '2017-06-22', 'company', '0');
INSERT INTO `sys_message` VALUES ('106', '21', '23', 'Alessandra M船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Alessandra M船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-22', 'op', '2017-06-22', 'op', '0');
INSERT INTO `sys_message` VALUES ('107', '23', '21', 'Alessandra M船租还船检验,验船师已上传相关文件,请及时查看', 'Alessandra M船租还船检验,验船师已上传相关文件,请及时查看', '1', '2017-06-29', null, '2017-06-22', 'company', '2017-06-22', 'company', '0');
INSERT INTO `sys_message` VALUES ('108', '23', '21', 'Alessandra M船租还船检验,验船师已上传相关文件,请及时查看', 'Alessandra M船租还船检验,验船师已上传相关文件,请及时查看', '1', '2017-06-29', null, '2017-06-22', 'company', '2017-06-22', 'company', '0');
INSERT INTO `sys_message` VALUES ('109', '23', '21', 'Alessandra M船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', 'Alessandra M船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', '1', '2017-06-29', null, '2017-06-22', 'company', '2017-06-22', 'company', '0');
INSERT INTO `sys_message` VALUES ('110', '21', '23', 'Alessandra M船租还船检验,船东已对本次验船做出评价', 'Alessandra M船租还船检验,船东已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-22', 'op', '2017-06-22', 'op', '0');
INSERT INTO `sys_message` VALUES ('111', '23', '21', 'Alessandra M船租还船检验,验船师已对本次验船做出评价', 'Alessandra M船租还船检验,验船师已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-22', 'company', '2017-06-22', 'company', '0');
INSERT INTO `sys_message` VALUES ('112', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('113', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('114', '1', '1', 'Abusamah船租还船检验,已有验船师申请检验', 'Abusamah船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('115', '1', '1', 'Abusamah船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Abusamah船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('116', '1', '1', 'Abusamah船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', 'Abusamah船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('117', '1', '1', 'Abusamah船租还船检验,船东已对本次验船做出评价', 'Abusamah船租还船检验,船东已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('118', '1', '1', 'Abusamah船租还船检验,验船师已对本次验船做出评价', 'Abusamah船租还船检验,验船师已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('119', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('120', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('121', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('122', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('123', '1', '1', 'Glorious Fuji船租还船检验,已有验船师申请检验', 'Glorious Fuji船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('124', '1', '1', 'Glorious Fuji船租还船检验,已有验船师申请检验', 'Glorious Fuji船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('125', '1', '1', 'Glorious Fuji船租还船检验,已有验船师申请检验', 'Glorious Fuji船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('126', '1', '1', 'Glorious Fuji船租还船检验,已有验船师申请检验', 'Glorious Fuji船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('127', '1', '1', 'Glorious Fuji船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Glorious Fuji船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('128', '1', '1', 'Glorious Fuji船租还船检验,验船申请失败', 'Glorious Fuji船租还船检验,验船申请失败', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('129', '1', '1', 'Glorious Fuji船租还船检验,验船申请失败', 'Glorious Fuji船租还船检验,验船申请失败', '1', '2017-06-29', null, '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `sys_message` VALUES ('130', '1', '1', 'Aashna船租还船检验,已有验船师申请检验', 'Aashna船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-27', 'admin', '2017-06-27', 'admin', '0');
INSERT INTO `sys_message` VALUES ('131', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', '2017-06-29', null, '2017-06-27', 'op', '2017-06-27', 'op', '0');
INSERT INTO `sys_message` VALUES ('132', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-27', 'op', '2017-06-27', 'op', '0');
INSERT INTO `sys_message` VALUES ('133', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-27', 'op', '2017-06-27', 'op', '0');
INSERT INTO `sys_message` VALUES ('134', '23', '1', 'Aashna船租还船检验,已有验船师申请检验', 'Aashna船租还船检验,已有验船师申请检验', '1', '2017-07-07', '0', '2017-06-27', 'company', '2017-06-27', 'company', '0');
INSERT INTO `sys_message` VALUES ('135', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-27', 'admin', '2017-06-27', 'admin', '0');
INSERT INTO `sys_message` VALUES ('136', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-27', 'admin', '2017-06-27', 'admin', '0');
INSERT INTO `sys_message` VALUES ('137', '1', '1', 'African Cendana船租还船检验,已有验船师申请检验', 'African Cendana船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-27', 'admin', '2017-06-27', 'admin', '0');
INSERT INTO `sys_message` VALUES ('138', '1', '1', 'African Cendana船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'African Cendana船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-27', 'admin', '2017-06-27', 'admin', '0');
INSERT INTO `sys_message` VALUES ('139', '1', '1', 'Aargau船租还船检验,已有验船师申请检验', 'Aargau船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('140', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('141', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('142', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('143', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('144', '1', '1', 'Equinox Agnandoussa船租还船检验,已有验船师申请检验', 'Equinox Agnandoussa船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('145', '1', '1', 'Alessandra M船租还船检验,已有验船师申请检验', 'Alessandra M船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('146', '1', '1', 'Alessandra M船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Alessandra M船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('147', '1', '1', 'Alessandra M船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', 'Alessandra M船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('148', '1', '1', 'Equinox Agnandoussa船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', 'Equinox Agnandoussa船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('149', '1', '1', 'Equinox Agnandoussa船租还船检验,船东已对本次验船做出评价', 'Equinox Agnandoussa船租还船检验,船东已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('150', '1', '1', 'Equinox Agnandoussa船租还船检验,验船师已对本次验船做出评价', 'Equinox Agnandoussa船租还船检验,验船师已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('151', '1', '1', 'Alessandra M船租还船检验,验船师已对本次验船做出评价', 'Alessandra M船租还船检验,验船师已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('152', '1', '1', 'Alessandra M船租还船检验,船东已对本次验船做出评价', 'Alessandra M船租还船检验,船东已对本次验船做出评价', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('153', '1', '1', 'Albatross船租还船检验,已有验船师申请检验', 'Albatross船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `sys_message` VALUES ('154', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('155', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('156', '1', '1', 'Abdullah船买卖船检验,已有验船师申请勘验', 'Abdullah船买卖船检验,已有验船师申请勘验', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('157', '1', '1', 'Abdullah船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Abdullah船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('158', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('159', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('160', '1', '1', '26 Agustos船买卖船检验,已有验船师申请勘验', '26 Agustos船买卖船检验,已有验船师申请勘验', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('161', '1', '1', '26 Agustos船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '26 Agustos船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('162', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('163', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('164', '1', '1', 'Glorious Fuji船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', 'Glorious Fuji船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('165', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('166', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('167', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('168', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('169', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-07-03', '0', '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('170', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('171', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('172', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('173', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('174', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('175', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-06-29', null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('176', '23', '21', 'Albatross船租还船检验,已有验船师申请检验', 'Albatross船租还船检验,已有验船师申请检验', '1', '2017-06-29', null, '2017-06-29', 'company', '2017-06-29', 'company', '0');
INSERT INTO `sys_message` VALUES ('177', '21', '23', 'Albatross船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Albatross船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '1', '2017-06-29', null, '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `sys_message` VALUES ('178', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('179', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('180', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('181', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('182', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('183', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('184', '1', '1', 'Abtenauer船买卖船检验,已有验船师申请勘验', 'Abtenauer船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('185', '1', '1', 'Abtenauer船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Abtenauer船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('186', '1', '1', 'Abtenauer船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abtenauer船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `sys_message` VALUES ('187', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-30', 'admin', '2017-06-30', 'admin', '0');
INSERT INTO `sys_message` VALUES ('188', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-30', 'admin', '2017-06-30', 'admin', '0');
INSERT INTO `sys_message` VALUES ('189', '1', '1', '26 Agustos船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '26 Agustos船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-30', 'admin', '2017-06-30', 'admin', '0');
INSERT INTO `sys_message` VALUES ('190', '1', '1', 'Abtenauer船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abtenauer船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-30', 'admin', '2017-06-30', 'admin', '0');
INSERT INTO `sys_message` VALUES ('191', '1', '1', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', 'Abdullah船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-06-30', 'admin', '2017-06-30', 'admin', '0');
INSERT INTO `sys_message` VALUES ('192', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-03', 'admin', '2017-07-03', 'admin', '0');
INSERT INTO `sys_message` VALUES ('193', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-03', 'op', '2017-07-03', 'op', '0');
INSERT INTO `sys_message` VALUES ('194', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '1', '2017-07-04', null, '2017-07-03', 'op', '2017-07-03', 'op', '0');
INSERT INTO `sys_message` VALUES ('195', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('196', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('197', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('198', '23', '21', 'Cemtex Hunter船租还船检验,已有验船师申请检验', 'Cemtex Hunter船租还船检验,已有验船师申请检验', '1', '2017-07-04', null, '2017-07-04', 'company', '2017-07-04', 'company', '0');
INSERT INTO `sys_message` VALUES ('199', '21', '23', 'Cemtex Hunter船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Cemtex Hunter船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('200', '23', '21', 'Cemtex Hunter船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', 'Cemtex Hunter船租还船检验,检验报告已出,请及时在网上查看,并对本次船检做出评价', '0', null, null, '2017-07-04', 'company', '2017-07-04', 'company', '0');
INSERT INTO `sys_message` VALUES ('201', '21', '1', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('202', '21', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('203', '21', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('204', '23', '21', 'Abdullah船租还船检验,已有验船师申请检验', 'Abdullah船租还船检验,已有验船师申请检验', '0', null, null, '2017-07-04', 'company', '2017-07-04', 'company', '0');
INSERT INTO `sys_message` VALUES ('205', '21', '23', 'Abdullah船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Abdullah船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `sys_message` VALUES ('206', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('207', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('208', '1', '1', '26 Agustos船买卖船检验,已有验船师申请勘验', '26 Agustos船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('209', '1', '1', '26 Agustos船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '26 Agustos船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('210', '1', '1', '26 Agustos船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '26 Agustos船买卖船勘验,验船报告已出,请及时在网上查看,也可下载PDF版本,并对本次验船做出评价', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('211', '1', '1', '26 Agustos船买卖船勘验,船东已对本次验船做出评价', '26 Agustos船买卖船勘验,船东已对本次验船做出评价', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('212', '1', '1', '26 Agustos船买卖船勘验,验船师已对本次验船做出评价', '26 Agustos船买卖船勘验,验船师已对本次验船做出评价', '0', null, null, '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `sys_message` VALUES ('213', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-05', 'admin', '2017-07-05', 'admin', '0');
INSERT INTO `sys_message` VALUES ('214', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-05', 'admin', '2017-07-05', 'admin', '0');
INSERT INTO `sys_message` VALUES ('215', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('216', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('217', '1', '1', 'Alessandra M船租还船检验,已有验船师申请检验', 'Alessandra M船租还船检验,已有验船师申请检验', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('218', '1', '1', 'Alessandra M船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Alessandra M船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('219', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('220', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('221', '1', '1', 'Lucien G A船租还船检验,已有验船师申请检验', 'Lucien G A船租还船检验,已有验船师申请检验', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('222', '1', '1', 'Lucien G A船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Lucien G A船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('223', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('224', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('225', '1', '1', 'Abdullah船买卖船检验,已有验船师申请勘验', 'Abdullah船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `sys_message` VALUES ('226', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('227', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('228', '1', '1', 'Athanassios G.O.船租还船检验,已有验船师申请检验', 'Athanassios G.O.船租还船检验,已有验船师申请检验', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('229', '1', '1', 'Athanassios G.O.船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Athanassios G.O.船租还船检验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('230', '1', '3', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('231', '1', '23', '本区域有可进行租还船检验船舶,请及时查看', '本区域有可进行租还船检验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('232', '1', '1', '26 Agustos船买卖检验,验船师已上传相关文件,请及时查看', '26 Agustos船买卖检验,验船师已上传相关文件,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('233', '1', '1', '26 Agustos船买卖检验,验船师已上传相关文件,请及时查看', '26 Agustos船买卖检验,验船师已上传相关文件,请及时查看', '1', '2017-07-07', null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('234', '1', '1', '26 Agustos船买卖检验,验船师已上传相关文件,请及时查看', '26 Agustos船买卖检验,验船师已上传相关文件,请及时查看', '1', '2017-07-07', null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('235', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('236', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('237', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('238', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('239', '1', '1', 'ABM Discovery船买卖船检验,已有验船师申请勘验', 'ABM Discovery船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('240', '1', '1', 'ABM Discovery船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'ABM Discovery船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('241', '1', '1', 'ABY Scarlett船买卖船检验,已有验船师申请勘验', 'ABY Scarlett船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('242', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('243', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('244', '1', '1', 'Abdullah船买卖船检验,已有验船师申请勘验', 'Abdullah船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('245', '1', '3', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('246', '1', '23', '本区域内有可进行买卖船勘验船舶,请及时查看', '本区域内有可进行买卖船勘验船舶,请及时查看', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('247', '1', '1', 'Abdullah船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Abdullah船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('248', '1', '1', 'Alpha Progress船买卖船检验,已有验船师申请勘验', 'Alpha Progress船买卖船检验,已有验船师申请勘验', '0', null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `sys_message` VALUES ('249', '0', '1', 'Alpha Progress船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', 'Alpha Progress船买卖船勘验,船东已接受您的检验申请,请尽快上传护照及loi文件,并查看代理信息安排人员验船', '0', null, null, '2017-07-07', 'system', '2017-07-07', 'system', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '0', '1', '系统管理员', '0');
INSERT INTO `sys_role` VALUES ('2', 'op', '1', '1', 'op', '0');
INSERT INTO `sys_role` VALUES ('3', 'surveyor/personal', '1', '1', '', '0');
INSERT INTO `sys_role` VALUES ('4', 'surveyor/company', '1', '1', '', '0');

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
  KEY `role_id_idx` (`role_id`) USING BTREE,
  KEY `resource_id_idx` (`resource_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1547 DEFAULT CHARSET=utf8 COMMENT='权限和资源（菜单+按钮）';

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('158', '1', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('159', '1', '2', '2');
INSERT INTO `sys_role_resource` VALUES ('160', '1', '3', '2');
INSERT INTO `sys_role_resource` VALUES ('161', '1', '4', '2');
INSERT INTO `sys_role_resource` VALUES ('162', '1', '108', '2');
INSERT INTO `sys_role_resource` VALUES ('163', '1', '109', '2');
INSERT INTO `sys_role_resource` VALUES ('164', '1', '91', '1');
INSERT INTO `sys_role_resource` VALUES ('165', '1', '92', '1');
INSERT INTO `sys_role_resource` VALUES ('166', '1', '93', '1');
INSERT INTO `sys_role_resource` VALUES ('167', '1', '94', '1');
INSERT INTO `sys_role_resource` VALUES ('168', '1', '95', '1');
INSERT INTO `sys_role_resource` VALUES ('169', '1', '96', '1');
INSERT INTO `sys_role_resource` VALUES ('170', '1', '129', '1');
INSERT INTO `sys_role_resource` VALUES ('171', '1', '130', '1');
INSERT INTO `sys_role_resource` VALUES ('172', '1', '131', '1');
INSERT INTO `sys_role_resource` VALUES ('173', '1', '132', '1');
INSERT INTO `sys_role_resource` VALUES ('174', '1', '133', '1');
INSERT INTO `sys_role_resource` VALUES ('175', '1', '134', '1');
INSERT INTO `sys_role_resource` VALUES ('176', '1', '135', '1');
INSERT INTO `sys_role_resource` VALUES ('177', '1', '136', '1');
INSERT INTO `sys_role_resource` VALUES ('750', '3', '94', '1');
INSERT INTO `sys_role_resource` VALUES ('751', '3', '122', '2');
INSERT INTO `sys_role_resource` VALUES ('752', '3', '128', '2');
INSERT INTO `sys_role_resource` VALUES ('753', '3', '95', '1');
INSERT INTO `sys_role_resource` VALUES ('754', '3', '127', '2');
INSERT INTO `sys_role_resource` VALUES ('755', '3', '96', '1');
INSERT INTO `sys_role_resource` VALUES ('756', '3', '125', '2');
INSERT INTO `sys_role_resource` VALUES ('757', '3', '126', '2');
INSERT INTO `sys_role_resource` VALUES ('758', '3', '133', '1');
INSERT INTO `sys_role_resource` VALUES ('759', '3', '134', '1');
INSERT INTO `sys_role_resource` VALUES ('760', '3', '135', '1');
INSERT INTO `sys_role_resource` VALUES ('761', '3', '136', '1');
INSERT INTO `sys_role_resource` VALUES ('762', '3', '150', '1');
INSERT INTO `sys_role_resource` VALUES ('1411', '2', '91', '1');
INSERT INTO `sys_role_resource` VALUES ('1412', '2', '110', '2');
INSERT INTO `sys_role_resource` VALUES ('1413', '2', '111', '2');
INSERT INTO `sys_role_resource` VALUES ('1414', '2', '112', '2');
INSERT INTO `sys_role_resource` VALUES ('1415', '2', '92', '1');
INSERT INTO `sys_role_resource` VALUES ('1416', '2', '120', '2');
INSERT INTO `sys_role_resource` VALUES ('1417', '2', '121', '2');
INSERT INTO `sys_role_resource` VALUES ('1418', '2', '152', '2');
INSERT INTO `sys_role_resource` VALUES ('1419', '2', '93', '1');
INSERT INTO `sys_role_resource` VALUES ('1420', '2', '113', '2');
INSERT INTO `sys_role_resource` VALUES ('1421', '2', '61', '3');
INSERT INTO `sys_role_resource` VALUES ('1422', '2', '115', '2');
INSERT INTO `sys_role_resource` VALUES ('1423', '2', '116', '2');
INSERT INTO `sys_role_resource` VALUES ('1424', '2', '117', '2');
INSERT INTO `sys_role_resource` VALUES ('1425', '2', '118', '2');
INSERT INTO `sys_role_resource` VALUES ('1426', '2', '119', '2');
INSERT INTO `sys_role_resource` VALUES ('1427', '2', '156', '2');
INSERT INTO `sys_role_resource` VALUES ('1428', '2', '159', '2');
INSERT INTO `sys_role_resource` VALUES ('1429', '2', '160', '2');
INSERT INTO `sys_role_resource` VALUES ('1430', '2', '62', '3');
INSERT INTO `sys_role_resource` VALUES ('1431', '2', '129', '1');
INSERT INTO `sys_role_resource` VALUES ('1432', '2', '137', '2');
INSERT INTO `sys_role_resource` VALUES ('1433', '2', '25', '3');
INSERT INTO `sys_role_resource` VALUES ('1434', '2', '26', '3');
INSERT INTO `sys_role_resource` VALUES ('1435', '2', '130', '1');
INSERT INTO `sys_role_resource` VALUES ('1436', '2', '140', '2');
INSERT INTO `sys_role_resource` VALUES ('1437', '2', '28', '3');
INSERT INTO `sys_role_resource` VALUES ('1438', '2', '141', '2');
INSERT INTO `sys_role_resource` VALUES ('1439', '2', '32', '3');
INSERT INTO `sys_role_resource` VALUES ('1440', '2', '33', '3');
INSERT INTO `sys_role_resource` VALUES ('1441', '2', '142', '2');
INSERT INTO `sys_role_resource` VALUES ('1442', '2', '31', '3');
INSERT INTO `sys_role_resource` VALUES ('1443', '2', '131', '1');
INSERT INTO `sys_role_resource` VALUES ('1444', '2', '164', '2');
INSERT INTO `sys_role_resource` VALUES ('1445', '2', '65', '3');
INSERT INTO `sys_role_resource` VALUES ('1446', '2', '132', '1');
INSERT INTO `sys_role_resource` VALUES ('1447', '2', '182', '2');
INSERT INTO `sys_role_resource` VALUES ('1448', '2', '66', '3');
INSERT INTO `sys_role_resource` VALUES ('1449', '2', '183', '2');
INSERT INTO `sys_role_resource` VALUES ('1450', '2', '184', '2');
INSERT INTO `sys_role_resource` VALUES ('1451', '2', '185', '2');
INSERT INTO `sys_role_resource` VALUES ('1452', '2', '145', '1');
INSERT INTO `sys_role_resource` VALUES ('1453', '2', '148', '2');
INSERT INTO `sys_role_resource` VALUES ('1454', '2', '36', '3');
INSERT INTO `sys_role_resource` VALUES ('1455', '2', '37', '3');
INSERT INTO `sys_role_resource` VALUES ('1456', '2', '38', '3');
INSERT INTO `sys_role_resource` VALUES ('1457', '2', '39', '3');
INSERT INTO `sys_role_resource` VALUES ('1458', '2', '40', '3');
INSERT INTO `sys_role_resource` VALUES ('1459', '2', '41', '3');
INSERT INTO `sys_role_resource` VALUES ('1460', '2', '60', '3');
INSERT INTO `sys_role_resource` VALUES ('1461', '2', '146', '1');
INSERT INTO `sys_role_resource` VALUES ('1462', '2', '149', '2');
INSERT INTO `sys_role_resource` VALUES ('1463', '2', '52', '3');
INSERT INTO `sys_role_resource` VALUES ('1464', '2', '150', '1');
INSERT INTO `sys_role_resource` VALUES ('1465', '2', '154', '1');
INSERT INTO `sys_role_resource` VALUES ('1466', '2', '155', '2');
INSERT INTO `sys_role_resource` VALUES ('1467', '2', '54', '3');
INSERT INTO `sys_role_resource` VALUES ('1468', '2', '55', '3');
INSERT INTO `sys_role_resource` VALUES ('1469', '2', '56', '3');
INSERT INTO `sys_role_resource` VALUES ('1470', '2', '57', '3');
INSERT INTO `sys_role_resource` VALUES ('1471', '4', '94', '1');
INSERT INTO `sys_role_resource` VALUES ('1472', '4', '122', '2');
INSERT INTO `sys_role_resource` VALUES ('1473', '4', '128', '2');
INSERT INTO `sys_role_resource` VALUES ('1474', '4', '188', '2');
INSERT INTO `sys_role_resource` VALUES ('1475', '4', '95', '1');
INSERT INTO `sys_role_resource` VALUES ('1476', '4', '127', '2');
INSERT INTO `sys_role_resource` VALUES ('1477', '4', '157', '2');
INSERT INTO `sys_role_resource` VALUES ('1478', '4', '189', '2');
INSERT INTO `sys_role_resource` VALUES ('1479', '4', '96', '1');
INSERT INTO `sys_role_resource` VALUES ('1480', '4', '124', '2');
INSERT INTO `sys_role_resource` VALUES ('1481', '4', '125', '2');
INSERT INTO `sys_role_resource` VALUES ('1482', '4', '126', '2');
INSERT INTO `sys_role_resource` VALUES ('1483', '4', '151', '2');
INSERT INTO `sys_role_resource` VALUES ('1484', '4', '153', '2');
INSERT INTO `sys_role_resource` VALUES ('1485', '4', '190', '2');
INSERT INTO `sys_role_resource` VALUES ('1486', '4', '133', '1');
INSERT INTO `sys_role_resource` VALUES ('1487', '4', '139', '2');
INSERT INTO `sys_role_resource` VALUES ('1488', '4', '27', '3');
INSERT INTO `sys_role_resource` VALUES ('1489', '4', '134', '1');
INSERT INTO `sys_role_resource` VALUES ('1490', '4', '143', '2');
INSERT INTO `sys_role_resource` VALUES ('1491', '4', '34', '3');
INSERT INTO `sys_role_resource` VALUES ('1492', '4', '35', '3');
INSERT INTO `sys_role_resource` VALUES ('1493', '4', '135', '1');
INSERT INTO `sys_role_resource` VALUES ('1494', '4', '162', '2');
INSERT INTO `sys_role_resource` VALUES ('1495', '4', '64', '3');
INSERT INTO `sys_role_resource` VALUES ('1496', '4', '163', '2');
INSERT INTO `sys_role_resource` VALUES ('1497', '4', '136', '1');
INSERT INTO `sys_role_resource` VALUES ('1498', '4', '165', '2');
INSERT INTO `sys_role_resource` VALUES ('1499', '4', '166', '2');
INSERT INTO `sys_role_resource` VALUES ('1500', '4', '167', '2');
INSERT INTO `sys_role_resource` VALUES ('1501', '4', '168', '2');
INSERT INTO `sys_role_resource` VALUES ('1502', '4', '169', '2');
INSERT INTO `sys_role_resource` VALUES ('1503', '4', '170', '2');
INSERT INTO `sys_role_resource` VALUES ('1504', '4', '171', '2');
INSERT INTO `sys_role_resource` VALUES ('1505', '4', '172', '2');
INSERT INTO `sys_role_resource` VALUES ('1506', '4', '173', '2');
INSERT INTO `sys_role_resource` VALUES ('1507', '4', '174', '2');
INSERT INTO `sys_role_resource` VALUES ('1508', '4', '175', '2');
INSERT INTO `sys_role_resource` VALUES ('1509', '4', '176', '2');
INSERT INTO `sys_role_resource` VALUES ('1510', '4', '177', '2');
INSERT INTO `sys_role_resource` VALUES ('1511', '4', '178', '2');
INSERT INTO `sys_role_resource` VALUES ('1512', '4', '179', '2');
INSERT INTO `sys_role_resource` VALUES ('1513', '4', '180', '2');
INSERT INTO `sys_role_resource` VALUES ('1514', '4', '181', '2');
INSERT INTO `sys_role_resource` VALUES ('1515', '4', '145', '1');
INSERT INTO `sys_role_resource` VALUES ('1516', '4', '148', '2');
INSERT INTO `sys_role_resource` VALUES ('1517', '4', '36', '3');
INSERT INTO `sys_role_resource` VALUES ('1518', '4', '37', '3');
INSERT INTO `sys_role_resource` VALUES ('1519', '4', '38', '3');
INSERT INTO `sys_role_resource` VALUES ('1520', '4', '39', '3');
INSERT INTO `sys_role_resource` VALUES ('1521', '4', '40', '3');
INSERT INTO `sys_role_resource` VALUES ('1522', '4', '41', '3');
INSERT INTO `sys_role_resource` VALUES ('1523', '4', '60', '3');
INSERT INTO `sys_role_resource` VALUES ('1524', '4', '146', '1');
INSERT INTO `sys_role_resource` VALUES ('1525', '4', '149', '2');
INSERT INTO `sys_role_resource` VALUES ('1526', '4', '42', '3');
INSERT INTO `sys_role_resource` VALUES ('1527', '4', '43', '3');
INSERT INTO `sys_role_resource` VALUES ('1528', '4', '44', '3');
INSERT INTO `sys_role_resource` VALUES ('1529', '4', '45', '3');
INSERT INTO `sys_role_resource` VALUES ('1530', '4', '46', '3');
INSERT INTO `sys_role_resource` VALUES ('1531', '4', '47', '3');
INSERT INTO `sys_role_resource` VALUES ('1532', '4', '48', '3');
INSERT INTO `sys_role_resource` VALUES ('1533', '4', '49', '3');
INSERT INTO `sys_role_resource` VALUES ('1534', '4', '50', '3');
INSERT INTO `sys_role_resource` VALUES ('1535', '4', '51', '3');
INSERT INTO `sys_role_resource` VALUES ('1536', '4', '52', '3');
INSERT INTO `sys_role_resource` VALUES ('1537', '4', '53', '3');
INSERT INTO `sys_role_resource` VALUES ('1538', '4', '58', '3');
INSERT INTO `sys_role_resource` VALUES ('1539', '4', '59', '3');
INSERT INTO `sys_role_resource` VALUES ('1540', '4', '150', '1');
INSERT INTO `sys_role_resource` VALUES ('1541', '4', '154', '1');
INSERT INTO `sys_role_resource` VALUES ('1542', '4', '155', '2');
INSERT INTO `sys_role_resource` VALUES ('1543', '4', '54', '3');
INSERT INTO `sys_role_resource` VALUES ('1544', '4', '55', '3');
INSERT INTO `sys_role_resource` VALUES ('1545', '4', '56', '3');
INSERT INTO `sys_role_resource` VALUES ('1546', '4', '57', '3');

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
  `country` varchar(64) DEFAULT NULL,
  `address` varchar(64) DEFAULT NULL COMMENT '地址',
  `identification` varchar(64) DEFAULT NULL COMMENT '身份证',
  `head_img_url` varchar(200) DEFAULT NULL COMMENT '头像图片地址',
  `last_login` datetime DEFAULT NULL COMMENT '上次登录时间',
  `description` varchar(255) DEFAULT NULL,
  `achievement` varchar(255) DEFAULT NULL,
  `ship_type` varchar(64) DEFAULT NULL COMMENT '可验船型',
  `start_Date` datetime DEFAULT NULL,
  `end_Date` datetime DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '223ce7b851123353479d85757fbbf4e320d1e251', '1', '4', null, '7', '0:0:0:0:0:0:0:1', '106@qq.com', '123', 'China', 'asdsa', null, 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/CaCNkQiTWa.jpg', '2017-07-07 20:42:50', '32432432', '423423', '2,3,5,6,7', '2017-04-26 00:00:00', '2017-06-01 00:00:00', null, null, null, null, null, null, '2017-06-01 11:13:12', 'admin', '0');
INSERT INTO `sys_user` VALUES ('3', 'luzhen', 'luzhen', '18d5907164eddc5f29f39732c8eb4254e6082f10', '2', '2', null, '1', null, '601590910@qq.com', null, null, null, null, null, '2017-04-11 15:44:43', null, null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `sys_user` VALUES ('21', 'op', 'op', 'd08d2a2f7474063d875c868f95e0484990e67688', '2', null, null, null, null, null, null, null, null, null, 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/BRS3FYwC8t.jpg', '2017-07-04 10:07:28', null, null, null, null, null, '0', null, null, null, null, null, '2017-06-22 16:48:58', null, '0');
INSERT INTO `sys_user` VALUES ('22', 'personal', 'personal', '03dbd66a9b55981f2a2d2034e6e9c46336795f23', '3', null, null, null, null, '12312', '21321321', 'China', 'Shanghai', null, 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/drE4atz2x7.jpg', '2017-05-18 14:35:21', '12312312', null, '2,5', '2017-05-02 00:00:00', '2017-06-09 00:00:00', '0', null, null, null, null, null, '2017-05-02 15:31:47', 'personal', '0');
INSERT INTO `sys_user` VALUES ('23', 'company', 'company', '4b0a4fa32810ca0c12accaa78f2e498f53810921', '4', null, null, null, null, '555@qq.com', null, null, null, null, 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/FS2DeEDNZi.jpg', '2017-07-04 10:11:47', null, null, null, null, null, '0', null, null, null, null, null, '2017-06-22 16:50:14', null, '0');
INSERT INTO `sys_user` VALUES ('24', '巴拉哥', 'captlam@parakougroup.com', '05c57776a901c6803759fe0759935b8c1217d07e', null, null, null, null, null, 'captlam@parakougroup.com', '1', null, null, null, null, '2017-07-04 10:01:20', '林总', null, null, null, null, null, null, null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户和角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '3', '1');
INSERT INTO `sys_user_role` VALUES ('3', '13', '3');
INSERT INTO `sys_user_role` VALUES ('4', '57', '3');
INSERT INTO `sys_user_role` VALUES ('5', '21', '2');
INSERT INTO `sys_user_role` VALUES ('6', '22', '3');
INSERT INTO `sys_user_role` VALUES ('7', '23', '4');
INSERT INTO `sys_user_role` VALUES ('10', '24', '2');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `op_id` int(11) DEFAULT NULL,
  `op_grade` double DEFAULT NULL,
  `op_comment` varchar(255) DEFAULT NULL,
  `surveyor_id` int(11) DEFAULT NULL,
  `surveyor_grade` double DEFAULT NULL,
  `surveyor_comment` varchar(255) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `pro_type` int(2) DEFAULT NULL COMMENT '系统类型(1:量油 2:买卖船)',
  `inspection_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('11', '1', null, null, '17', null, null, '1', '2', '14', '2017-06-16', 'admin', '2017-06-16', 'admin', '0');
INSERT INTO `t_comment` VALUES ('12', '21', '3', 'iii', '18', '4', '333', '23', '1', '1', '2017-06-22', 'op', '2017-06-22', 'company', '0');
INSERT INTO `t_comment` VALUES ('13', '1', '4', 'sad', '17', '3', '231', '1', '1', '2', '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `t_comment` VALUES ('14', '1', null, null, '19', null, null, '1', '1', '3', '2017-06-26', 'admin', '2017-06-26', 'admin', '0');
INSERT INTO `t_comment` VALUES ('15', '1', null, null, '17', null, null, '1', '1', '4', '2017-06-27', 'admin', '2017-06-27', 'admin', '0');
INSERT INTO `t_comment` VALUES ('16', '1', '4', 'fff', '17', '5', '3333', '1', '1', '5', '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `t_comment` VALUES ('17', '1', '4', '22', '17', '3', '33333', '1', '1', '6', '2017-06-28', 'admin', '2017-06-28', 'admin', '0');
INSERT INTO `t_comment` VALUES ('18', '1', null, null, '17', null, null, '1', '2', '15', '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `t_comment` VALUES ('19', '1', null, null, '17', null, null, '1', '2', '16', '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `t_comment` VALUES ('20', '21', null, null, '18', null, null, '23', '1', '7', '2017-06-29', 'op', '2017-06-29', 'op', '0');
INSERT INTO `t_comment` VALUES ('21', '1', null, null, '17', null, null, '1', '2', '17', '2017-06-29', 'admin', '2017-06-29', 'admin', '0');
INSERT INTO `t_comment` VALUES ('22', '21', null, null, '20', null, null, '23', '1', '8', '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `t_comment` VALUES ('23', '21', null, null, '20', null, null, '23', '1', '9', '2017-07-04', 'op', '2017-07-04', 'op', '0');
INSERT INTO `t_comment` VALUES ('24', '1', '5', 'good', '17', '5', 'good', '1', '2', '18', '2017-07-04', 'admin', '2017-07-04', 'admin', '0');
INSERT INTO `t_comment` VALUES ('25', '1', null, null, '17', null, null, '1', '1', '10', '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `t_comment` VALUES ('26', '1', null, null, '17', null, null, '1', '1', '11', '2017-07-06', 'admin', '2017-07-06', 'admin', '0');
INSERT INTO `t_comment` VALUES ('27', '1', null, null, '17', null, null, '1', '1', '12', '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `t_comment` VALUES ('28', '1', null, null, '19', null, null, '1', '2', '19', '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `t_comment` VALUES ('29', '1', null, null, '17', null, null, '1', '2', '20', '2017-07-07', 'admin', '2017-07-07', 'admin', '0');
INSERT INTO `t_comment` VALUES ('30', '1', null, null, '19', null, null, '1', '2', '21', '2017-07-07', 'system', '2017-07-07', 'system', '0');

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
-- Table structure for t_condition_inspection
-- ----------------------------
DROP TABLE IF EXISTS `t_condition_inspection`;
CREATE TABLE `t_condition_inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hull` text,
  `deck` text,
  `deck_marchinery` text,
  `ballast_tank` text,
  `accommodation` text,
  `navigation_bridge` text,
  `machinery_space` text,
  `life_saving` text,
  `galley` text,
  `ballast_water` text,
  `hatch_cover` text,
  `cargo_hold` text,
  `cargo_tank` text,
  `cargo_control_room` text,
  `pump_room` text,
  `pipelines` text,
  `inter_gas_system` text,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_condition_inspection
-- ----------------------------
INSERT INTO `t_condition_inspection` VALUES ('3', '“XXXXXXX” was berthed port side to the quay and was discharging a cargo of iron ore. She has a bulbous bow and an anchor casting in way of the shell. We noticed that the port side anchor lower fluke had been in contact with the shell plating causing deep grooving. A photograph clearly illustrates the problem. It may be necessary to provide a doubling plate to prevent further damage to the forward hull plating. The general appearance of the port side shell was satisfactory although the paint coatings need attention at the next dry docking particularly in the wind and water areas. The port side shell was free from significant contact damage, although the shell markings were neither clear nor easily readable including draught marks, and this will again need to be rectified at the next dry docking. \n\nThe starboard side shell plating could only be viewed from the upper deck but appeared to be in a similar condition to the port side.', 'The forward mooring deck was found in a satisfactory condition with signs of recent maintenance having been carried out by the crew. We did however notice that there was no anti slip paint applied in the working areas and would recommend that when the mooring deck is next painted that anti slip paint in order to assist the crew when handling mooring ropes in wet weather.', 'The upper deck was well painted and again there was evidence of recent maintenance by the crew. Those areas between the hatches were also found in a satisfactory condition and with evidence of recent maintenance. All the sounding pipes and vent pipe headers were found in a satisfactory condition, including the temperature pipes to the cargo holds which were clearly marked and will enable the crew to monitor cargo temperatures at various levels in the hold when carrying cargoes such as coal.\n\nThe pipe protection pipes along the deck were constructed in chequered plate and were in good condition and were well painted.', 'Three water ballast tanks were made available for survey : the Fore Peak and Topside tanks no 1 starboard and no 4 port. All three ballast tanks were found in very good condition, well maintained and with recent signs of maintenance having been carried out by the crew. All coatings were intact and there were no signs of any diminution of the steel. All three tanks inspected were clean and free from sludge and sand and also there were no sacrificial anodes fitted.\n\nThe water ballast tanks surveyed are considered to be in very good condition and the BV class reports indicate that all water ballast tanks are in good condition and that it is not necessary to carry out annual class surveys of the ballast tanks.', 'There is accommodation provided for up to 25 persons and the Master and Chief Engineer have a suite consisting of day room, bedroom and\nbathroom. All other officers have a cabin with attached bathroom and also most of the crew. There are a small number of cabins with a shared bathroom via doors from the adjacent cabin. There is a hospital and also a gymnasium and both Officers and crew have their own combined mess/smoking rooms.', 'The Wheelhouse afforded the navigating Officers with good forward visibility. All the navigational equipment was stated by the crew to be in good working order. There are two radars one with ARPA and two GPS units, and all the navigational charts were up to date as were all the bridge publications and notices.', 'The engine room was very clean and there were no significant oil/water leakages in any pipelines or valves. The engine room bilges were exceptionally clean and the engine room floor plates, generally constructed from chequered plate were clean well painted and free from any significant oil/grease deposits. The purifiers for oil and lubricating oil were very clean and the drip trays were devoid of any oil leakages.\nAll the engine store rooms were clearly labelled with the spare parts available which are typical for a Japanese shipyard delivered ship.\nThere is a well stocked engine room workshop consisting of welding equipment, lathe, drilling and grinding machines and tool racks.\n\nEngine Control Room\nThe engine control room was found in good order and consisted of the main switchboard and the main engine console. All the equipment was stated by the ship’s staff to be in good working order.\n\nMain Engine\nThe main engine was found in good condition and there were no significant oil/water leakages.\nThe floor plates in way of the main engine at the top, manoeuvring platform and also the lower platform were well coated, free from oil/grease deposits and were constructed from anti slip material.\n\nAuxiliary Engines\nThere are three diesel generators which were found in good order. The three generators were very clean and free from any significant oil/water leakages.\n\nBoiler/Economiser\nThe boilers were found in good condition and well maintained.\n\nSteering Gear\nThe steering gear was tested in emergency mode including moving the rudder through 10 degrees to port and also to starboard using each pump in turn without problem.\n\nEngine Room Crane\nThere is a 5 tonne safe working engine room crane which although not working was stated by the crew to be in good working order.\n\n', 'There are two totally enclosed lifeboats and both were found in good order and well maintained, both lifeboat engines were started up, including engaging the propeller both ahead and astern without problem.\n\nThe liferafts both port and starboard and also a 6 man liferaft forward were all found in good condition.\n\nThere is a foam fixed fire fighting system for the engine room which was found in good condition. Additionally there is a fixed water fire main with fire hoses and nozzles which was found in a satisfactory condition.\n\nThere are portable fire extinguishers in both the engine room and also the engine room and all were found in order and were positioned in accordance with the Fire & Safety plan.', 'There are four cold rooms located under the galley space on the upper deck level. The provisions rooms can be accessed directly from the stern upper deck by an external door on both sides of the provisions crane area.\n\nThere is a dry provisions store space with a door to the lobby which provides access to the dairy, fish, meat and vegetable rooms. All spaces were bright, clean and fitted with a common type of cooler unit. Temperatures being maintained were in accordance with normal requirements. There was no sign of frost in the Reefer spaces.\n\nThe galley and mess rooms are separate for Officers (stbd side) and the crew (on port) spaces were provided with adequate equipment to accommodate dual nationality cooking arrangements.', 'Without this device', 'GOOD', 'GOOD', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for t_defect
-- ----------------------------
DROP TABLE IF EXISTS `t_defect`;
CREATE TABLE `t_defect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '缺陷id',
  `inspection_report_id` int(11) DEFAULT NULL COMMENT '检查报告的id',
  `description` text COMMENT '描述',
  `estimat_cost` varchar(155) CHARACTER SET big5 DEFAULT NULL COMMENT '预计价格',
  `create_date` date DEFAULT NULL,
  `create_by` varchar(155) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_defect
-- ----------------------------
INSERT INTO `t_defect` VALUES ('4', '14', 'Minor rusted spots or blisters were found in TST\'s & on main deck. Minor damages were found in cargo holds', '500,000', null, null, null, null);
INSERT INTO `t_defect` VALUES ('5', '14', 'There is no Main Engine required Tier I, NOx rating. This has been missed by both Class and Flag for the Main Engine, according to onboard records. An upgrade is required. The former is a very elusive regulation in Marpol Annex 6, which applied retrospectively to vessels built between 1990 and 2000 as it required a retrofit of fuel injection equipment to lower emissions. Upgrade kits are available and in some cases a flag\ndispensation can be achieved on economic grounds to avoid doing the upgrade. Sellers were aware of this point.', '1,000,000', null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_dict` VALUES ('9', 'inspectionType', '1', 'On hire', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('10', 'inspectionType', '2', 'Off hire', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('11', 'inspectionType', '3', 'Condition', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('12', 'surveyType', '1', 'On-off hire + Condition', null, null, null, null, '0');
INSERT INTO `t_dict` VALUES ('13', 'surveyType', '2', 'Pre-purchase', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_document
-- ----------------------------
DROP TABLE IF EXISTS `t_document`;
CREATE TABLE `t_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(155) DEFAULT NULL COMMENT '标题',
  `attachment_name` varchar(155) DEFAULT NULL COMMENT '附件名称',
  `attachment_url` varchar(155) DEFAULT NULL COMMENT '附件存放路径',
  `status` varchar(45) DEFAULT NULL,
  `inspection_report_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_document
-- ----------------------------
INSERT INTO `t_document` VALUES ('157', 'Class status', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('158', 'HPVQ', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('159', 'Crew list', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('160', 'Certificate of fitness appendix for list of cargoes', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('161', 'Voyage reports showing speed and consumptions', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('162', 'Copy of last CSR', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('163', 'Capacity plan', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('164', 'Mooring plan', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('165', 'Painting scheme', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('166', 'IOPP', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('167', 'Maker listn', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('168', 'Cargo history', '', '', null, '14', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('169', 'Class status', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('170', 'HPVQ', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('171', 'Crew list', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('172', 'Certificate of fitness appendix for list of cargoes', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('173', 'Voyage reports showing speed and consumptions', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('174', 'Copy of last CSR', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('175', 'Capacity plan', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('176', 'Mooring plan', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('177', 'Painting scheme', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('178', 'IOPP', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('179', 'Maker listn', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('180', 'Cargo history', null, null, null, '15', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('181', 'Class status', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('182', 'HPVQ', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('183', 'Crew list', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('184', 'Certificate of fitness appendix for list of cargoes', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('185', 'Voyage reports showing speed and consumptions', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('186', 'Copy of last CSR', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('187', 'Capacity plan', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('188', 'Mooring plan', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('189', 'Painting scheme', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('190', 'IOPP', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('191', 'Maker listn', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('192', 'Cargo history', null, null, null, '16', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('193', 'Class status', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('194', 'HPVQ', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('195', 'Crew list', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('196', 'Certificate of fitness appendix for list of cargoes', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('197', 'Voyage reports showing speed and consumptions', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('198', 'Copy of last CSR', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('199', 'Capacity plan', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('200', 'Mooring plan', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('201', 'Painting scheme', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('202', 'IOPP', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('203', 'Maker listn', null, null, null, '17', null, null, null, null, null);
INSERT INTO `t_document` VALUES ('204', 'Cargo history', null, null, null, '17', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_galleries
-- ----------------------------
DROP TABLE IF EXISTS `t_galleries`;
CREATE TABLE `t_galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '相册',
  `name` varchar(155) DEFAULT NULL COMMENT '相册名称',
  `number` int(11) DEFAULT NULL COMMENT '相册的图片数量',
  `inspection_report_id` int(11) DEFAULT NULL COMMENT '检查报告id',
  `create_date` date DEFAULT NULL,
  `create_by` varchar(155) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(155) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_galleries
-- ----------------------------
INSERT INTO `t_galleries` VALUES ('27', '未命名', '0', '14', '2017-07-04', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('28', 'Certificate', '0', '14', '2017-07-04', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('29', 'Grade', '1', '14', '2017-07-04', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('30', '未命名', '0', '15', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('31', 'Certificate', '0', '15', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('32', 'Grade', '0', '15', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('33', '未命名', '0', '16', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('34', 'Certificate', '0', '16', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('35', 'Grade', '0', '16', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('36', '未命名', '0', '17', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('37', 'Certificate', '0', '17', '2017-07-07', null, null, null, '0');
INSERT INTO `t_galleries` VALUES ('38', 'Grade', '0', '17', '2017-07-07', null, null, null, '0');

-- ----------------------------
-- Table structure for t_grade
-- ----------------------------
DROP TABLE IF EXISTS `t_grade`;
CREATE TABLE `t_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(155) DEFAULT NULL,
  `weight` double(11,4) DEFAULT NULL,
  `grade` double(11,4) DEFAULT NULL,
  `remark` text,
  `site_photo` varchar(155) DEFAULT NULL,
  `parent_item` varchar(155) DEFAULT NULL,
  `inspection_report_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(155) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(155) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL COMMENT '等级',
  `file_name` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1481 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade
-- ----------------------------
INSERT INTO `t_grade` VALUES ('1', '船体', '5.0000', '7.3450', '', '', '0', '14', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('2', '1、船体外板', '5.0000', '8.1053', '', '', '船体', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('3', '船底板', '5.0000', '10.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('4', '左舷顶列板', '5.0000', '9.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('5', '右舷顶列板', '5.0000', '8.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('6', '左舷船壳板', '3.0000', '8.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('7', '右舷船壳板', '3.0000', '7.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('8', '附属件', '1.0000', '8.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('9', '舭龙骨', '2.0000', '8.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('10', '海底阀箱', '2.0000', '7.0000', '', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/FxkC3bkzQp.png', '1、船体外板', '14', null, '', null, '', '', '3', 'passport.png');
INSERT INTO `t_grade` VALUES ('11', '通海阀', '2.0000', '7.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('12', '牺牲阳极（锌块）', '2.0000', '7.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('13', '外加电流保护系统', '2.0000', '6.0000', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('14', '防海生物系统', '2.0000', '8.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('15', '球鼻艏', '2.0000', '8.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('16', '挡浪板', '2.0000', '9.0000', '', '', '1、船体外板', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('17', '2、船首结构', '4.0000', '7.5263', '', '', '船体', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('18', '首楼甲板', '5.0000', '8.0000', '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('19', '首桅', '4.0000', '7.0000', '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('20', '首尖舱', '3.0000', '7.0000', '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('21', '锚链舱', '3.0000', '8.0000', '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('22', '首物料间', '1.0000', null, '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('23', '前液压设备间', '2.0000', '7.0000', '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('24', '前油漆间', '2.0000', '8.0000', '', '', '2、船首结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('25', '3、船体结构', '5.0000', '7.6429', '', '', '船体', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('26', '主甲板', '5.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('27', '货舱', '5.0000', '9.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('28', '顶边水舱', '3.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('29', '底边水舱', '3.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('30', '双层底', '3.0000', '7.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('31', '箱形龙骨（管弄）', '3.0000', '7.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('32', '横舱壁上墩', '2.0000', '7.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('33', '横舱壁下墩', '2.0000', '7.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('34', '横舱壁', '2.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('35', '通风道', '2.0000', '7.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('36', '桅屋', '1.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('37', '纵舱壁', '3.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('38', '舱口围', '4.0000', '6.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('39', '舱口盖', '4.0000', '8.0000', '', '', '3、船体结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('40', '4、船尾部结构', '4.0000', '5.4286', '', '', '船体', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('41', '后主甲板', '4.0000', '9.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('42', '尾楼甲板', '4.0000', '6.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('43', '机舱', '5.0000', '8.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('44', '舵机间', '5.0000', '6.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('45', '机舱风机间', '3.0000', '5.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('46', '舵杆', '5.0000', '5.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('47', '尾淡水舱', '4.0000', '5.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('48', '尾尖舱', '3.0000', '5.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('49', '尾轴冷却水舱', '3.0000', '3.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('50', '烟囱', '2.0000', '3.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('51', '主桅（雷达）', '4.0000', '2.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('52', 'CO2间', '3.0000', '8.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('53', '蓄电池间', '3.0000', '6.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('54', '后物料间', '2.0000', '5.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('55', '空调设备间', '3.0000', '3.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('56', '应急发电机间', '3.0000', '5.0000', '', '', '4、船尾部结构', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('57', '5、生活区', '3.0000', '7.3824', '', '', '船体', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('58', '总体保养', '4.0000', '9.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('59', '外甲板及梯道', '3.0000', '8.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('60', '居住区', '3.0000', '8.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('61', '公共场所', '3.0000', '5.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('62', '厨房', '3.0000', '8.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('63', '洗衣间', '3.0000', '8.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('64', '病房', '2.0000', '9.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('65', '药物间', '3.0000', '5.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('66', '甲板/轮机办公室', '2.0000', '5.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('67', '生活区物料间', '2.0000', '8.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('68', '冰库', '3.0000', '8.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('69', '理货间', '3.0000', '7.0000', '', '', '5、生活区', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('70', '6、防腐', '5.0000', '7.6522', '', '', '船体', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('71', '船体外壳油漆', '5.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('72', '干舷 ', '5.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('73', '直底', '5.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('74', '平底', '5.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('75', '水尺及载重线标志', '5.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('76', '左甲板油漆', '4.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('77', '右甲板油漆', '4.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('78', '货舱间甲板油漆', '4.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('79', '舱口围油漆', '3.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('80', '舱盖油漆', '3.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('81', '生活区油漆', '2.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('82', '货舱油漆', '3.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('83', '压载舱油漆', '4.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('84', '淡水舱油漆', '4.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('85', '干隔舱油漆', '3.0000', '9.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('86', '货舱壁顶凳和底登内部油漆', '3.0000', '7.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('87', '管弄内油漆', '3.0000', '8.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('88', '压载舱牺牲阳极', '4.0000', '9.0000', '', '', '6、防腐', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('89', '甲板', '5.0000', '7.7820', '', '', '0', '14', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('90', '1、系泊设备', '5.0000', '9.0000', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('91', '锚机', '5.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('92', '绞缆机', '5.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('93', '止链器', '4.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('94', '导缆轮和滚筒', '4.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('95', '锚和锚链', '5.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('96', '系缆索/钢缆', '4.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('97', '液压系统', '5.0000', '9.0000', '', '', '1、系泊设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('98', '2、载重线项目', '4.0000', '8.6739', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('99', '干舷标志', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('100', '水密门', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('101', '水密小舱口', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('102', '空气管', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('103', '测量管', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('104', '通风筒', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('105', '天窗', '4.0000', '8.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('106', '舷墙/栏杆', '4.0000', '8.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('107', '甲板安全通道及保护索', '4.0000', '8.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('108', '舷梯/引水梯', '4.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('109', '窗户/舷窗', '3.0000', '8.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('110', '疏排水孔', '3.0000', '9.0000', '', '', '2、载重线项目', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('111', '3、消防设备', '5.0000', '7.1000', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('112', '主消防泵', '5.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('113', '应急消防泵/自吸装置/原动机', '5.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('114', '消防总管', '5.0000', '8.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('115', '消防皮龙 / 箱', '4.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('116', '固定式CO2系统（包括释放前报警装置）', '4.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('117', '灭火器', '4.0000', '9.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('118', '消防栓', '4.0000', '9.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('119', '速闭阀', '4.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('120', '消防员装备', '5.0000', '9.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('121', '火警探测与报警系统', '5.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('122', '油漆间防火装置', '4.0000', '6.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('123', '分油机间防火装置', '4.0000', '6.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('124', '水雾自动喷淋系统', '4.0000', null, '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('125', '风油遥控应急切断', '4.0000', '2.0000', '', '', '3、消防设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('126', '4、救生设备', '5.0000', '6.6429', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('127', '救生艇及自动脱钩装置', '5.0000', '8.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('128', '艇机', '5.0000', '7.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('129', '吊艇架', '5.0000', null, '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('130', '放艇试验', '5.0000', null, '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('131', '救生筏及静水压力释放器', '4.0000', '8.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('132', '驾驶室烟火报警装置', '3.0000', null, '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('133', '无线电示位标（EPIRB）', '4.0000', null, '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('134', '救生圈', '4.0000', '8.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('135', '救生衣、保温服', '4.0000', '8.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('136', '冲洗眼睛系统', '3.0000', '2.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('137', '自助式逃生、应急呼吸器（EEBD）', '3.0000', '3.0000', '', '', '4、救生设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('138', '5、防污设备', '4.0000', '7.2273', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('139', '油水分离器、15PPM监测装置', '5.0000', '8.0000', '', '', '5、防污设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('140', '防油污器材，集油盘', '4.0000', '7.0000', '', '', '5、防污设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('141', '垃圾收集、处理和焚烧', '5.0000', '7.0000', '', '', '5、防污设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('142', '焚烧炉', '3.0000', '7.0000', '', '', '5、防污设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('143', '生活污水处理与排放', '5.0000', '7.0000', '', '', '5、防污设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('144', '6、操舵系统', '5.0000', '7.8276', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('145', '舵机', '5.0000', '7.0000', '', '', '6、操舵系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('146', '液压系统', '5.0000', '8.0000', '', '', '6、操舵系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('147', '舵角指示器', '5.0000', '8.0000', '', '', '6、操舵系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('148', '自动舵', '5.0000', '8.0000', '', '', '6、操舵系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('149', '驾控、通讯', '5.0000', '8.0000', '', '', '6、操舵系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('150', '舵叶', '4.0000', '8.0000', '', '', '6、操舵系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('151', '7、管系', '5.0000', '8.2222', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('152', '燃/柴油系统', '5.0000', '8.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('153', '液压油系统', '4.0000', '9.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('154', '压缩空气系统', '5.0000', '8.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('155', '控制空气系统', '5.0000', '8.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('156', '电缆管', '3.0000', '9.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('157', '淡水系统', '5.0000', '8.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('158', '蒸汽和冷凝系统', '4.0000', '7.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('159', '海水系统', '5.0000', '9.0000', '', '', '7、管系', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('160', '8、起重装置', '4.0000', '7.9444', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('161', '燃油管吊', '3.0000', '8.0000', '', '', '8、起重装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('162', '起货机', '4.0000', '8.0000', '', '', '8、起重装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('163', '单轨吊（机舱物料和备件吊）', '3.0000', '9.0000', '', '', '8、起重装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('164', '苏伊士运河吊杆', '4.0000', '8.0000', '', '', '8、起重装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('165', '机舱行车', '4.0000', '7.0000', '', '', '8、起重装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('166', '9、舱盖', '5.0000', '7.5000', '', '', '甲板', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('167', '舱口围板', '5.0000', '7.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('168', '压条', '5.0000', '8.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('169', '垫块', '4.0000', '8.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('170', '轨道', '5.0000', '8.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('171', '舱盖板', '4.0000', '7.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('172', '舱盖密封', '5.0000', '9.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('173', '关闭装置', '5.0000', '8.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('174', '滚轮', '5.0000', '6.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('175', '液压系统', '5.0000', '6.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('176', '开舱设备', '5.0000', '8.0000', '', '', '9、舱盖', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('177', '货舱', '5.0000', '8.7143', '', '', '0', '14', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('178', '仪器', '5.0000', '8.7143', '', '', '货舱', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('179', '货舱进水报警装置', '5.0000', '9.0000', '', '', '仪器', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('180', '有毒气体探测仪', '4.0000', null, '', '', '仪器', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('181', '货舱测温管及货舱温度计', '4.0000', null, '', '', '仪器', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('182', '便携式货舱灯', '2.0000', '8.0000', '', '', '仪器', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('183', '轮机', '5.0000', '7.2289', '', '', '0', '14', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('184', '1、机舱', '4.0000', '7.7000', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('185', '总体保养', '4.0000', '8.0000', '', '', '1、机舱', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('186', '专用工具（齐全、完好）', '3.0000', '7.0000', '', '', '1、机舱', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('187', '工作间', '3.0000', '8.0000', '', '', '1、机舱', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('188', '2、主机', '5.0000', '7.8696', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('189', '底座', '3.0000', '8.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('190', '缸盖', '5.0000', '8.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('191', '排气阀', '5.0000', '8.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('192', '缸套', '5.0000', '7.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('193', '活塞、连杆、轴承', '5.0000', '7.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('194', '十字头轴承', '5.0000', '7.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('195', '曲轴，主轴承', '5.0000', '6.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('196', '盘车机', '2.0000', '7.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('197', '推力块', '5.0000', '9.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('198', '拉紧螺栓', '3.0000', '9.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('199', '支撑物', '3.0000', '9.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('200', '贯穿螺栓', '5.0000', '9.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('201', '凸轮', '4.0000', '8.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('202', '增压器', '4.0000', '9.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('203', '空冷器', '4.0000', '8.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('204', '扫气总管', '4.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('205', '排烟管', '4.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('206', '燃油系统', '4.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('207', '冷却系统', '4.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('208', '润滑系统（包括气缸油系统）', '4.0000', '8.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('209', '启动空气系统', '4.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('210', '控制空气系统', '4.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('211', '调速器', '3.0000', null, '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('212', '减震器', '2.0000', '7.0000', '', '', '2、主机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('213', '3、推进装置', '5.0000', '7.3500', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('214', '轴系', '5.0000', '9.0000', '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('215', '中间轴承', '4.0000', '6.0000', '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('216', '轴接地装置', '2.0000', '3.0000', '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('217', '轴封', '4.0000', '8.0000', '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('218', '尾管轴承', '4.0000', null, '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('219', '螺旋桨', '5.0000', '8.0000', '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('220', '备用尾轴', '2.0000', null, '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('221', '备用螺旋桨', '2.0000', null, '', '', '3、推进装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('222', '4、副机', '5.0000', '7.1786', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('223', '主发电原动机', '5.0000', '8.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('224', '底座', '3.0000', '7.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('225', '增压器', '4.0000', '7.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('226', '燃油系统', '4.0000', '5.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('227', '冷却系统', '4.0000', '8.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('228', '润滑系统', '4.0000', '8.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('229', '应急发电机', '4.0000', '7.0000', '', '', '4、副机', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('230', '5、蒸汽系统', '4.0000', '8.1000', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('231', '辅锅炉', '4.0000', '8.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('232', '废汽锅炉', '5.0000', '8.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('233', '吹灰器', '3.0000', '9.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('234', '给水和冷凝', '5.0000', '8.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('235', '蒸汽管系、阀', '4.0000', '7.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('236', '大气冷凝器', '4.0000', '8.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('237', '热水井', '5.0000', '9.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('238', '给水泵 ', '5.0000', '8.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('239', '锅炉循环泵', '5.0000', '8.0000', '', '', '5、蒸汽系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('240', '6、燃油系统', '5.0000', '7.7778', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('241', '泵', '5.0000', '8.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('242', '管系、阀', '4.0000', '7.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('243', '重油分油机', '4.0000', '8.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('244', '柴油分油机', '4.0000', '9.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('245', '混油装置', '3.0000', '5.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('246', '加热器', '5.0000', '9.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('247', '滤器', '3.0000', '8.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('248', '燃油柜', '4.0000', '7.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('249', '油舱加热管', '4.0000', '8.0000', '', '', '6、燃油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('250', '7、滑油系统', '5.0000', '4.2000', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('251', '泵', '5.0000', '8.0000', '', '', '7、滑油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('252', '管系、阀', '4.0000', '4.0000', '', '', '7、滑油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('253', '冷却器', '5.0000', '1.0000', '', '', '7、滑油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('254', '净油机', '4.0000', '2.0000', '', '', '7、滑油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('255', '滤器', '3.0000', '8.0000', '', '', '7、滑油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('256', '滑油柜', '4.0000', '3.0000', '', '', '7、滑油系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('257', '8、海水冷却系统', '5.0000', '5.5294', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('258', '泵', '5.0000', '9.0000', '', '', '8、海水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('259', '管系、阀', '4.0000', '5.0000', '', '', '8、海水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('260', '冷却器', '5.0000', '1.0000', '', '', '8、海水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('261', '滤器', '3.0000', '8.0000', '', '', '8、海水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('262', '9、污水和压载系统', '4.0000', '5.7727', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('263', '泵', '5.0000', '1.0000', '', '', '9、污水和压载系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('264', '管系、阀', '4.0000', '2.0000', '', '', '9、污水和压载系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('265', '压载控制台', '3.0000', '8.0000', '', '', '9、污水和压载系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('266', '污水井报警系统', '3.0000', '9.0000', '', '', '9、污水和压载系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('267', '压载水清洗系统', '3.0000', '9.0000', '', '', '9、污水和压载系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('268', '阀操作系统', '4.0000', '9.0000', '', '', '9、污水和压载系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('269', '10、淡水冷却系统', '5.0000', '8.6429', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('270', '泵', '5.0000', '9.0000', '', '', '10、淡水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('271', '管系、阀', '4.0000', '9.0000', '', '', '10、淡水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('272', '淡/海水冷却器', '5.0000', '8.0000', '', '', '10、淡水冷却系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('273', '11、压缩空气系统', '4.0000', '8.0000', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('274', '空压机', '5.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('275', '应急空压机', '3.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('276', '空气瓶', '5.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('277', '空气干燥/冷却器', '3.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('278', '管系、阀', '4.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('279', '控制空气干燥器', '3.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('280', '控制空气管系、阀', '4.0000', '8.0000', '', '', '11、压缩空气系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('281', '12、辅助系统', '3.0000', '8.0000', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('282', '冷藏系统', '3.0000', '9.0000', '', '', '12、辅助系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('283', '造水机', '3.0000', '8.0000', '', '', '12、辅助系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('284', '日用淡水系统', '4.0000', '8.0000', '', '', '12、辅助系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('285', '空调系统', '3.0000', '7.0000', '', '', '12、辅助系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('286', '13、压载水处理系统', '5.0000', '8.2941', '', '', '轮机', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('287', '电解单元', '5.0000', '8.0000', '', '', '13、压载水处理系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('288', '反冲洗滤器', '3.0000', '8.0000', '', '', '13、压载水处理系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('289', '中和单元', '4.0000', '8.0000', '', '', '13、压载水处理系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('290', 'TRO检测单元', '5.0000', '9.0000', '', '', '13、压载水处理系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('291', '控制系统', '5.0000', null, '', '', '13、压载水处理系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('292', '电气', '4.0000', '8.0001', '', '', '0', '14', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('293', '1、电力系统', '5.0000', '7.7826', '', '', '电气', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('294', '主发电机', '5.0000', '9.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('295', '联轴节', '2.0000', '8.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('296', '轴承', '2.0000', '8.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('297', '空气滤器', '1.0000', '7.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('298', '应急发电机', '5.0000', '7.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('299', '通用蓄电池', '4.0000', '7.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('300', '变压器', '4.0000', '8.0000', '', '', '1、电力系统', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('301', '2、配电装置', '5.0000', '7.7273', '', '', '电气', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('302', '主配电板、应急配电板', '5.0000', '8.0000', '', '', '2、配电装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('303', '断路器', '3.0000', '7.0000', '', '', '2、配电装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('304', '启动器', '3.0000', '8.0000', '', '', '2、配电装置', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('305', '3、电器设备', '4.0000', '8.0000', '', '', '电气', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('306', '马达', '4.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('307', '马达（泵）', '4.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('308', '马达（风机）', '4.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('309', '马达（其它）', '4.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('310', '绝缘测试', '3.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('311', '加热器', '3.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('312', '照明', '3.0000', '8.0000', '', '', '3、电器设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('313', '4、自动化控制', '5.0000', '8.0000', '', '', '电气', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('314', '主机遥控和安保', '5.0000', '8.0000', '', '', '4、自动化控制', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('315', '副机自动控制和安保', '5.0000', '8.0000', '', '', '4、自动化控制', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('316', '机舱监测报警系统（包括DEAD MAN）', '5.0000', '8.0000', '', '', '4、自动化控制', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('317', '自动化电站综合保护装置', '5.0000', '8.0000', '', '', '4、自动化控制', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('318', '锅炉自动控制', '5.0000', '8.0000', '', '', '4、自动化控制', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('319', '5、惰气系统（油轮）', '4.0000', '8.4000', '', '', '电气', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('320', '惰气风机', '5.0000', '8.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('321', '洗涤塔', '5.0000', '8.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('322', '惰气海水泵', '5.0000', '8.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('323', '水封泵', '5.0000', '9.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('324', '氧份仪', '4.0000', '9.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('325', '水封塔', '5.0000', '8.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('326', '惰气总管控制阀', '4.0000', '9.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('327', '大舱呼吸阀（P/V）', '3.0000', '9.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('328', '惰气管路系统', '4.0000', '8.0000', '', '', '5、惰气系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('329', '6、货油系统（油轮）', '5.0000', '8.1707', '', '', '电气', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('330', '货油泵', '5.0000', '8.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('331', '货油泵原动机（蒸汽透平）', '5.0000', '5.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('332', '货油泵调速器', '4.0000', '9.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('333', '货油泵应急停泵装置', '4.0000', '9.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('334', '油泵间风机', '4.0000', '9.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('335', '真空抽除器', '4.0000', '8.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('336', '货油泵大气冷凝器', '5.0000', '8.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('337', '专用海水冷却泵', '5.0000', null, '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('338', '货泵间海底阀', '4.0000', '9.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('339', '喷射泵', '3.0000', null, '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('340', '货油管路', '4.0000', null, '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('341', '原油洗舱机', '3.0000', '9.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('342', '油轮专用检测仪器', '3.0000', '9.0000', '', '', '6、货油系统（油轮）', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('343', '驾驶台', '4.0000', '8.0506', '', '', '0', '14', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('344', '1、总体保养', '4.0000', '8.7000', '', '', '驾驶台', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('345', '驾驶室', '4.0000', '9.0000', '', '', '1、总体保养', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('346', '海图室', '3.0000', '9.0000', '', '', '1、总体保养', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('347', '蓄电池间', '3.0000', '8.0000', '', '', '1、总体保养', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('348', '2、通讯设备', '5.0000', '7.6122', '', '', '驾驶台', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('349', 'GMDSS装置', '5.0000', '8.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('350', '天线', '5.0000', '7.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('351', 'AIS', '5.0000', '7.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('352', 'VHF', '5.0000', '7.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('353', '卫通', '5.0000', '8.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('354', 'VDR/SVDR', '5.0000', '8.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('355', '应急示位标', '5.0000', '8.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('356', '船内通讯', '5.0000', '8.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('357', '手提对讲机', '4.0000', '7.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('358', '通讯用蓄电池', '5.0000', '8.0000', '', '', '2、通讯设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('359', '3、航行设备', '5.0000', '8.0000', '', '', '驾驶台', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('360', '雷达', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('361', 'GPS / DGPS', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('362', '气象传真', '4.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('363', '航行灯/信号灯', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('364', '计程仪', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('365', '测深仪', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('366', '电罗经', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('367', '磁罗经', '5.0000', '8.0000', '', '', '3、航行设备', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('368', '4、船上办公室', '3.0000', '8.0000', '', '', '驾驶台', '14', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('369', '船上办公室设备', '2.0000', '8.0000', '', '', '4、船上办公室', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('370', '配载仪', '4.0000', '8.0000', '', '', '4、船上办公室', '14', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('371', '船体', '5.0000', null, '', '', '0', '15', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('372', '1、船体外板', '5.0000', null, '', '', '船体', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('373', '船底板', '5.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('374', '左舷顶列板', '5.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('375', '右舷顶列板', '5.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('376', '左舷船壳板', '3.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('377', '右舷船壳板', '3.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('378', '附属件', '1.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('379', '舭龙骨', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('380', '海底阀箱', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('381', '通海阀', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('382', '牺牲阳极（锌块）', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('383', '外加电流保护系统', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('384', '防海生物系统', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('385', '球鼻艏', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('386', '挡浪板', '2.0000', null, '', '', '1、船体外板', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('387', '2、船首结构', '4.0000', null, '', '', '船体', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('388', '首楼甲板', '5.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('389', '首桅', '4.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('390', '首尖舱', '3.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('391', '锚链舱', '3.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('392', '首物料间', '1.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('393', '前液压设备间', '2.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('394', '前油漆间', '2.0000', null, '', '', '2、船首结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('395', '3、船体结构', '5.0000', null, '', '', '船体', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('396', '主甲板', '5.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('397', '货舱', '5.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('398', '顶边水舱', '3.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('399', '底边水舱', '3.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('400', '双层底', '3.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('401', '箱形龙骨（管弄）', '3.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('402', '横舱壁上墩', '2.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('403', '横舱壁下墩', '2.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('404', '横舱壁', '2.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('405', '通风道', '2.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('406', '桅屋', '1.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('407', '纵舱壁', '3.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('408', '舱口围', '4.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('409', '舱口盖', '4.0000', null, '', '', '3、船体结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('410', '4、船尾部结构', '4.0000', null, '', '', '船体', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('411', '后主甲板', '4.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('412', '尾楼甲板', '4.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('413', '机舱', '5.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('414', '舵机间', '5.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('415', '机舱风机间', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('416', '舵杆', '5.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('417', '尾淡水舱', '4.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('418', '尾尖舱', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('419', '尾轴冷却水舱', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('420', '烟囱', '2.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('421', '主桅（雷达）', '4.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('422', 'CO2间', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('423', '蓄电池间', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('424', '后物料间', '2.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('425', '空调设备间', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('426', '应急发电机间', '3.0000', null, '', '', '4、船尾部结构', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('427', '5、生活区', '3.0000', null, '', '', '船体', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('428', '总体保养', '4.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('429', '外甲板及梯道', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('430', '居住区', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('431', '公共场所', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('432', '厨房', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('433', '洗衣间', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('434', '病房', '2.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('435', '药物间', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('436', '甲板/轮机办公室', '2.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('437', '生活区物料间', '2.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('438', '冰库', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('439', '理货间', '3.0000', null, '', '', '5、生活区', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('440', '6、防腐', '5.0000', null, '', '', '船体', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('441', '船体外壳油漆', '5.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('442', '干舷 ', '5.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('443', '直底', '5.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('444', '平底', '5.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('445', '水尺及载重线标志', '5.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('446', '左甲板油漆', '4.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('447', '右甲板油漆', '4.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('448', '货舱间甲板油漆', '4.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('449', '舱口围油漆', '3.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('450', '舱盖油漆', '3.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('451', '生活区油漆', '2.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('452', '货舱油漆', '3.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('453', '压载舱油漆', '4.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('454', '淡水舱油漆', '4.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('455', '干隔舱油漆', '3.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('456', '货舱壁顶凳和底登内部油漆', '3.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('457', '管弄内油漆', '3.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('458', '压载舱牺牲阳极', '4.0000', null, '', '', '6、防腐', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('459', '甲板', '5.0000', null, '', '', '0', '15', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('460', '1、系泊设备', '5.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('461', '锚机', '5.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('462', '绞缆机', '5.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('463', '止链器', '4.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('464', '导缆轮和滚筒', '4.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('465', '锚和锚链', '5.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('466', '系缆索/钢缆', '4.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('467', '液压系统', '5.0000', null, '', '', '1、系泊设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('468', '2、载重线项目', '4.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('469', '干舷标志', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('470', '水密门', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('471', '水密小舱口', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('472', '空气管', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('473', '测量管', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('474', '通风筒', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('475', '天窗', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('476', '舷墙/栏杆', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('477', '甲板安全通道及保护索', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('478', '舷梯/引水梯', '4.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('479', '窗户/舷窗', '3.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('480', '疏排水孔', '3.0000', null, '', '', '2、载重线项目', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('481', '3、消防设备', '5.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('482', '主消防泵', '5.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('483', '应急消防泵/自吸装置/原动机', '5.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('484', '消防总管', '5.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('485', '消防皮龙 / 箱', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('486', '固定式CO2系统（包括释放前报警装置）', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('487', '灭火器', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('488', '消防栓', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('489', '速闭阀', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('490', '消防员装备', '5.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('491', '火警探测与报警系统', '5.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('492', '油漆间防火装置', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('493', '分油机间防火装置', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('494', '水雾自动喷淋系统', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('495', '风油遥控应急切断', '4.0000', null, '', '', '3、消防设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('496', '4、救生设备', '5.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('497', '救生艇及自动脱钩装置', '5.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('498', '艇机', '5.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('499', '吊艇架', '5.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('500', '放艇试验', '5.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('501', '救生筏及静水压力释放器', '4.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('502', '驾驶室烟火报警装置', '3.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('503', '无线电示位标（EPIRB）', '4.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('504', '救生圈', '4.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('505', '救生衣、保温服', '4.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('506', '冲洗眼睛系统', '3.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('507', '自助式逃生、应急呼吸器（EEBD）', '3.0000', null, '', '', '4、救生设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('508', '5、防污设备', '4.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('509', '油水分离器、15PPM监测装置', '5.0000', null, '', '', '5、防污设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('510', '防油污器材，集油盘', '4.0000', null, '', '', '5、防污设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('511', '垃圾收集、处理和焚烧', '5.0000', null, '', '', '5、防污设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('512', '焚烧炉', '3.0000', null, '', '', '5、防污设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('513', '生活污水处理与排放', '5.0000', null, '', '', '5、防污设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('514', '6、操舵系统', '5.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('515', '舵机', '5.0000', null, '', '', '6、操舵系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('516', '液压系统', '5.0000', null, '', '', '6、操舵系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('517', '舵角指示器', '5.0000', null, '', '', '6、操舵系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('518', '自动舵', '5.0000', null, '', '', '6、操舵系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('519', '驾控、通讯', '5.0000', null, '', '', '6、操舵系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('520', '舵叶', '4.0000', null, '', '', '6、操舵系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('521', '7、管系', '5.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('522', '燃/柴油系统', '5.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('523', '液压油系统', '4.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('524', '压缩空气系统', '5.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('525', '控制空气系统', '5.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('526', '电缆管', '3.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('527', '淡水系统', '5.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('528', '蒸汽和冷凝系统', '4.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('529', '海水系统', '5.0000', null, '', '', '7、管系', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('530', '8、起重装置', '4.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('531', '燃油管吊', '3.0000', null, '', '', '8、起重装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('532', '起货机', '4.0000', null, '', '', '8、起重装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('533', '单轨吊（机舱物料和备件吊）', '3.0000', null, '', '', '8、起重装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('534', '苏伊士运河吊杆', '4.0000', null, '', '', '8、起重装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('535', '机舱行车', '4.0000', null, '', '', '8、起重装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('536', '9、舱盖', '5.0000', null, '', '', '甲板', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('537', '舱口围板', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('538', '压条', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('539', '垫块', '4.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('540', '轨道', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('541', '舱盖板', '4.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('542', '舱盖密封', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('543', '关闭装置', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('544', '滚轮', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('545', '液压系统', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('546', '开舱设备', '5.0000', null, '', '', '9、舱盖', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('547', '货舱', '5.0000', null, '', '', '0', '15', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('548', '仪器', '5.0000', null, '', '', '货舱', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('549', '货舱进水报警装置', '5.0000', null, '', '', '仪器', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('550', '有毒气体探测仪', '4.0000', null, '', '', '仪器', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('551', '货舱测温管及货舱温度计', '4.0000', null, '', '', '仪器', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('552', '便携式货舱灯', '2.0000', null, '', '', '仪器', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('553', '轮机', '5.0000', null, '', '', '0', '15', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('554', '1、机舱', '4.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('555', '总体保养', '4.0000', null, '', '', '1、机舱', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('556', '专用工具（齐全、完好）', '3.0000', null, '', '', '1、机舱', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('557', '工作间', '3.0000', null, '', '', '1、机舱', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('558', '2、主机', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('559', '底座', '3.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('560', '缸盖', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('561', '排气阀', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('562', '缸套', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('563', '活塞、连杆、轴承', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('564', '十字头轴承', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('565', '曲轴，主轴承', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('566', '盘车机', '2.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('567', '推力块', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('568', '拉紧螺栓', '3.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('569', '支撑物', '3.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('570', '贯穿螺栓', '5.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('571', '凸轮', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('572', '增压器', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('573', '空冷器', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('574', '扫气总管', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('575', '排烟管', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('576', '燃油系统', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('577', '冷却系统', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('578', '润滑系统（包括气缸油系统）', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('579', '启动空气系统', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('580', '控制空气系统', '4.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('581', '调速器', '3.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('582', '减震器', '2.0000', null, '', '', '2、主机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('583', '3、推进装置', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('584', '轴系', '5.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('585', '中间轴承', '4.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('586', '轴接地装置', '2.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('587', '轴封', '4.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('588', '尾管轴承', '4.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('589', '螺旋桨', '5.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('590', '备用尾轴', '2.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('591', '备用螺旋桨', '2.0000', null, '', '', '3、推进装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('592', '4、副机', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('593', '主发电原动机', '5.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('594', '底座', '3.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('595', '增压器', '4.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('596', '燃油系统', '4.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('597', '冷却系统', '4.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('598', '润滑系统', '4.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('599', '应急发电机', '4.0000', null, '', '', '4、副机', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('600', '5、蒸汽系统', '4.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('601', '辅锅炉', '4.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('602', '废汽锅炉', '5.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('603', '吹灰器', '3.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('604', '给水和冷凝', '5.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('605', '蒸汽管系、阀', '4.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('606', '大气冷凝器', '4.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('607', '热水井', '5.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('608', '给水泵 ', '5.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('609', '锅炉循环泵', '5.0000', null, '', '', '5、蒸汽系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('610', '6、燃油系统', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('611', '泵', '5.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('612', '管系、阀', '4.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('613', '重油分油机', '4.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('614', '柴油分油机', '4.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('615', '混油装置', '3.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('616', '加热器', '5.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('617', '滤器', '3.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('618', '燃油柜', '4.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('619', '油舱加热管', '4.0000', null, '', '', '6、燃油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('620', '7、滑油系统', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('621', '泵', '5.0000', null, '', '', '7、滑油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('622', '管系、阀', '4.0000', null, '', '', '7、滑油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('623', '冷却器', '5.0000', null, '', '', '7、滑油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('624', '净油机', '4.0000', null, '', '', '7、滑油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('625', '滤器', '3.0000', null, '', '', '7、滑油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('626', '滑油柜', '4.0000', null, '', '', '7、滑油系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('627', '8、海水冷却系统', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('628', '泵', '5.0000', null, '', '', '8、海水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('629', '管系、阀', '4.0000', null, '', '', '8、海水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('630', '冷却器', '5.0000', null, '', '', '8、海水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('631', '滤器', '3.0000', null, '', '', '8、海水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('632', '9、污水和压载系统', '4.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('633', '泵', '5.0000', null, '', '', '9、污水和压载系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('634', '管系、阀', '4.0000', null, '', '', '9、污水和压载系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('635', '压载控制台', '3.0000', null, '', '', '9、污水和压载系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('636', '污水井报警系统', '3.0000', null, '', '', '9、污水和压载系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('637', '压载水清洗系统', '3.0000', null, '', '', '9、污水和压载系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('638', '阀操作系统', '4.0000', null, '', '', '9、污水和压载系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('639', '10、淡水冷却系统', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('640', '泵', '5.0000', null, '', '', '10、淡水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('641', '管系、阀', '4.0000', null, '', '', '10、淡水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('642', '淡/海水冷却器', '5.0000', null, '', '', '10、淡水冷却系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('643', '11、压缩空气系统', '4.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('644', '空压机', '5.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('645', '应急空压机', '3.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('646', '空气瓶', '5.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('647', '空气干燥/冷却器', '3.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('648', '管系、阀', '4.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('649', '控制空气干燥器', '3.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('650', '控制空气管系、阀', '4.0000', null, '', '', '11、压缩空气系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('651', '12、辅助系统', '3.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('652', '冷藏系统', '3.0000', null, '', '', '12、辅助系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('653', '造水机', '3.0000', null, '', '', '12、辅助系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('654', '日用淡水系统', '4.0000', null, '', '', '12、辅助系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('655', '空调系统', '3.0000', null, '', '', '12、辅助系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('656', '13、压载水处理系统', '5.0000', null, '', '', '轮机', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('657', '电解单元', '5.0000', null, '', '', '13、压载水处理系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('658', '反冲洗滤器', '3.0000', null, '', '', '13、压载水处理系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('659', '中和单元', '4.0000', null, '', '', '13、压载水处理系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('660', 'TRO检测单元', '5.0000', null, '', '', '13、压载水处理系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('661', '控制系统', '5.0000', null, '', '', '13、压载水处理系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('662', '电气', '4.0000', null, '', '', '0', '15', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('663', '1、电力系统', '5.0000', null, '', '', '电气', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('664', '主发电机', '5.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('665', '联轴节', '2.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('666', '轴承', '2.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('667', '空气滤器', '1.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('668', '应急发电机', '5.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('669', '通用蓄电池', '4.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('670', '变压器', '4.0000', null, '', '', '1、电力系统', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('671', '2、配电装置', '5.0000', null, '', '', '电气', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('672', '主配电板、应急配电板', '5.0000', null, '', '', '2、配电装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('673', '断路器', '3.0000', null, '', '', '2、配电装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('674', '启动器', '3.0000', null, '', '', '2、配电装置', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('675', '3、电器设备', '4.0000', null, '', '', '电气', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('676', '马达', '4.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('677', '马达（泵）', '4.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('678', '马达（风机）', '4.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('679', '马达（其它）', '4.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('680', '绝缘测试', '3.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('681', '加热器', '3.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('682', '照明', '3.0000', null, '', '', '3、电器设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('683', '4、自动化控制', '5.0000', null, '', '', '电气', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('684', '主机遥控和安保', '5.0000', null, '', '', '4、自动化控制', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('685', '副机自动控制和安保', '5.0000', null, '', '', '4、自动化控制', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('686', '机舱监测报警系统（包括DEAD MAN）', '5.0000', null, '', '', '4、自动化控制', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('687', '自动化电站综合保护装置', '5.0000', null, '', '', '4、自动化控制', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('688', '锅炉自动控制', '5.0000', null, '', '', '4、自动化控制', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('689', '5、惰气系统（油轮）', '4.0000', null, '', '', '电气', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('690', '惰气风机', '5.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('691', '洗涤塔', '5.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('692', '惰气海水泵', '5.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('693', '水封泵', '5.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('694', '氧份仪', '4.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('695', '水封塔', '5.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('696', '惰气总管控制阀', '4.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('697', '大舱呼吸阀（P/V）', '3.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('698', '惰气管路系统', '4.0000', null, '', '', '5、惰气系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('699', '6、货油系统（油轮）', '5.0000', null, '', '', '电气', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('700', '货油泵', '5.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('701', '货油泵原动机（蒸汽透平）', '5.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('702', '货油泵调速器', '4.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('703', '货油泵应急停泵装置', '4.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('704', '油泵间风机', '4.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('705', '真空抽除器', '4.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('706', '货油泵大气冷凝器', '5.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('707', '专用海水冷却泵', '5.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('708', '货泵间海底阀', '4.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('709', '喷射泵', '3.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('710', '货油管路', '4.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('711', '原油洗舱机', '3.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('712', '油轮专用检测仪器', '3.0000', null, '', '', '6、货油系统（油轮）', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('713', '驾驶台', '4.0000', null, '', '', '0', '15', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('714', '1、总体保养', '4.0000', null, '', '', '驾驶台', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('715', '驾驶室', '4.0000', null, '', '', '1、总体保养', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('716', '海图室', '3.0000', null, '', '', '1、总体保养', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('717', '蓄电池间', '3.0000', null, '', '', '1、总体保养', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('718', '2、通讯设备', '5.0000', null, '', '', '驾驶台', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('719', 'GMDSS装置', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('720', '天线', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('721', 'AIS', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('722', 'VHF', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('723', '卫通', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('724', 'VDR/SVDR', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('725', '应急示位标', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('726', '船内通讯', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('727', '手提对讲机', '4.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('728', '通讯用蓄电池', '5.0000', null, '', '', '2、通讯设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('729', '3、航行设备', '5.0000', null, '', '', '驾驶台', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('730', '雷达', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('731', 'GPS / DGPS', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('732', '气象传真', '4.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('733', '航行灯/信号灯', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('734', '计程仪', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('735', '测深仪', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('736', '电罗经', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('737', '磁罗经', '5.0000', null, '', '', '3、航行设备', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('738', '4、船上办公室', '3.0000', null, '', '', '驾驶台', '15', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('739', '船上办公室设备', '2.0000', null, '', '', '4、船上办公室', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('740', '配载仪', '4.0000', null, '', '', '4、船上办公室', '15', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('741', '船体', '5.0000', null, '', '', '0', '16', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('742', '1、船体外板', '5.0000', null, '', '', '船体', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('743', '船底板', '5.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('744', '左舷顶列板', '5.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('745', '右舷顶列板', '5.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('746', '左舷船壳板', '3.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('747', '右舷船壳板', '3.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('748', '附属件', '1.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('749', '舭龙骨', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('750', '海底阀箱', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('751', '通海阀', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('752', '牺牲阳极（锌块）', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('753', '外加电流保护系统', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('754', '防海生物系统', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('755', '球鼻艏', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('756', '挡浪板', '2.0000', null, '', '', '1、船体外板', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('757', '2、船首结构', '4.0000', null, '', '', '船体', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('758', '首楼甲板', '5.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('759', '首桅', '4.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('760', '首尖舱', '3.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('761', '锚链舱', '3.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('762', '首物料间', '1.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('763', '前液压设备间', '2.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('764', '前油漆间', '2.0000', null, '', '', '2、船首结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('765', '3、船体结构', '5.0000', null, '', '', '船体', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('766', '主甲板', '5.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('767', '货舱', '5.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('768', '顶边水舱', '3.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('769', '底边水舱', '3.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('770', '双层底', '3.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('771', '箱形龙骨（管弄）', '3.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('772', '横舱壁上墩', '2.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('773', '横舱壁下墩', '2.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('774', '横舱壁', '2.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('775', '通风道', '2.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('776', '桅屋', '1.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('777', '纵舱壁', '3.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('778', '舱口围', '4.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('779', '舱口盖', '4.0000', null, '', '', '3、船体结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('780', '4、船尾部结构', '4.0000', null, '', '', '船体', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('781', '后主甲板', '4.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('782', '尾楼甲板', '4.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('783', '机舱', '5.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('784', '舵机间', '5.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('785', '机舱风机间', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('786', '舵杆', '5.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('787', '尾淡水舱', '4.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('788', '尾尖舱', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('789', '尾轴冷却水舱', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('790', '烟囱', '2.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('791', '主桅（雷达）', '4.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('792', 'CO2间', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('793', '蓄电池间', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('794', '后物料间', '2.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('795', '空调设备间', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('796', '应急发电机间', '3.0000', null, '', '', '4、船尾部结构', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('797', '5、生活区', '3.0000', null, '', '', '船体', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('798', '总体保养', '4.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('799', '外甲板及梯道', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('800', '居住区', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('801', '公共场所', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('802', '厨房', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('803', '洗衣间', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('804', '病房', '2.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('805', '药物间', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('806', '甲板/轮机办公室', '2.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('807', '生活区物料间', '2.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('808', '冰库', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('809', '理货间', '3.0000', null, '', '', '5、生活区', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('810', '6、防腐', '5.0000', null, '', '', '船体', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('811', '船体外壳油漆', '5.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('812', '干舷 ', '5.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('813', '直底', '5.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('814', '平底', '5.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('815', '水尺及载重线标志', '5.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('816', '左甲板油漆', '4.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('817', '右甲板油漆', '4.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('818', '货舱间甲板油漆', '4.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('819', '舱口围油漆', '3.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('820', '舱盖油漆', '3.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('821', '生活区油漆', '2.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('822', '货舱油漆', '3.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('823', '压载舱油漆', '4.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('824', '淡水舱油漆', '4.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('825', '干隔舱油漆', '3.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('826', '货舱壁顶凳和底登内部油漆', '3.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('827', '管弄内油漆', '3.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('828', '压载舱牺牲阳极', '4.0000', null, '', '', '6、防腐', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('829', '甲板', '5.0000', null, '', '', '0', '16', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('830', '1、系泊设备', '5.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('831', '锚机', '5.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('832', '绞缆机', '5.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('833', '止链器', '4.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('834', '导缆轮和滚筒', '4.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('835', '锚和锚链', '5.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('836', '系缆索/钢缆', '4.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('837', '液压系统', '5.0000', null, '', '', '1、系泊设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('838', '2、载重线项目', '4.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('839', '干舷标志', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('840', '水密门', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('841', '水密小舱口', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('842', '空气管', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('843', '测量管', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('844', '通风筒', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('845', '天窗', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('846', '舷墙/栏杆', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('847', '甲板安全通道及保护索', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('848', '舷梯/引水梯', '4.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('849', '窗户/舷窗', '3.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('850', '疏排水孔', '3.0000', null, '', '', '2、载重线项目', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('851', '3、消防设备', '5.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('852', '主消防泵', '5.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('853', '应急消防泵/自吸装置/原动机', '5.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('854', '消防总管', '5.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('855', '消防皮龙 / 箱', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('856', '固定式CO2系统（包括释放前报警装置）', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('857', '灭火器', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('858', '消防栓', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('859', '速闭阀', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('860', '消防员装备', '5.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('861', '火警探测与报警系统', '5.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('862', '油漆间防火装置', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('863', '分油机间防火装置', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('864', '水雾自动喷淋系统', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('865', '风油遥控应急切断', '4.0000', null, '', '', '3、消防设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('866', '4、救生设备', '5.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('867', '救生艇及自动脱钩装置', '5.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('868', '艇机', '5.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('869', '吊艇架', '5.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('870', '放艇试验', '5.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('871', '救生筏及静水压力释放器', '4.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('872', '驾驶室烟火报警装置', '3.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('873', '无线电示位标（EPIRB）', '4.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('874', '救生圈', '4.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('875', '救生衣、保温服', '4.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('876', '冲洗眼睛系统', '3.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('877', '自助式逃生、应急呼吸器（EEBD）', '3.0000', null, '', '', '4、救生设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('878', '5、防污设备', '4.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('879', '油水分离器、15PPM监测装置', '5.0000', null, '', '', '5、防污设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('880', '防油污器材，集油盘', '4.0000', null, '', '', '5、防污设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('881', '垃圾收集、处理和焚烧', '5.0000', null, '', '', '5、防污设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('882', '焚烧炉', '3.0000', null, '', '', '5、防污设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('883', '生活污水处理与排放', '5.0000', null, '', '', '5、防污设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('884', '6、操舵系统', '5.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('885', '舵机', '5.0000', null, '', '', '6、操舵系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('886', '液压系统', '5.0000', null, '', '', '6、操舵系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('887', '舵角指示器', '5.0000', null, '', '', '6、操舵系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('888', '自动舵', '5.0000', null, '', '', '6、操舵系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('889', '驾控、通讯', '5.0000', null, '', '', '6、操舵系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('890', '舵叶', '4.0000', null, '', '', '6、操舵系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('891', '7、管系', '5.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('892', '燃/柴油系统', '5.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('893', '液压油系统', '4.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('894', '压缩空气系统', '5.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('895', '控制空气系统', '5.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('896', '电缆管', '3.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('897', '淡水系统', '5.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('898', '蒸汽和冷凝系统', '4.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('899', '海水系统', '5.0000', null, '', '', '7、管系', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('900', '8、起重装置', '4.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('901', '燃油管吊', '3.0000', null, '', '', '8、起重装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('902', '起货机', '4.0000', null, '', '', '8、起重装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('903', '单轨吊（机舱物料和备件吊）', '3.0000', null, '', '', '8、起重装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('904', '苏伊士运河吊杆', '4.0000', null, '', '', '8、起重装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('905', '机舱行车', '4.0000', null, '', '', '8、起重装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('906', '9、舱盖', '5.0000', null, '', '', '甲板', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('907', '舱口围板', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('908', '压条', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('909', '垫块', '4.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('910', '轨道', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('911', '舱盖板', '4.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('912', '舱盖密封', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('913', '关闭装置', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('914', '滚轮', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('915', '液压系统', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('916', '开舱设备', '5.0000', null, '', '', '9、舱盖', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('917', '货舱', '5.0000', null, '', '', '0', '16', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('918', '仪器', '5.0000', null, '', '', '货舱', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('919', '货舱进水报警装置', '5.0000', null, '', '', '仪器', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('920', '有毒气体探测仪', '4.0000', null, '', '', '仪器', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('921', '货舱测温管及货舱温度计', '4.0000', null, '', '', '仪器', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('922', '便携式货舱灯', '2.0000', null, '', '', '仪器', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('923', '轮机', '5.0000', null, '', '', '0', '16', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('924', '1、机舱', '4.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('925', '总体保养', '4.0000', null, '', '', '1、机舱', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('926', '专用工具（齐全、完好）', '3.0000', null, '', '', '1、机舱', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('927', '工作间', '3.0000', null, '', '', '1、机舱', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('928', '2、主机', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('929', '底座', '3.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('930', '缸盖', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('931', '排气阀', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('932', '缸套', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('933', '活塞、连杆、轴承', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('934', '十字头轴承', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('935', '曲轴，主轴承', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('936', '盘车机', '2.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('937', '推力块', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('938', '拉紧螺栓', '3.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('939', '支撑物', '3.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('940', '贯穿螺栓', '5.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('941', '凸轮', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('942', '增压器', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('943', '空冷器', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('944', '扫气总管', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('945', '排烟管', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('946', '燃油系统', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('947', '冷却系统', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('948', '润滑系统（包括气缸油系统）', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('949', '启动空气系统', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('950', '控制空气系统', '4.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('951', '调速器', '3.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('952', '减震器', '2.0000', null, '', '', '2、主机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('953', '3、推进装置', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('954', '轴系', '5.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('955', '中间轴承', '4.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('956', '轴接地装置', '2.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('957', '轴封', '4.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('958', '尾管轴承', '4.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('959', '螺旋桨', '5.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('960', '备用尾轴', '2.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('961', '备用螺旋桨', '2.0000', null, '', '', '3、推进装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('962', '4、副机', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('963', '主发电原动机', '5.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('964', '底座', '3.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('965', '增压器', '4.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('966', '燃油系统', '4.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('967', '冷却系统', '4.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('968', '润滑系统', '4.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('969', '应急发电机', '4.0000', null, '', '', '4、副机', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('970', '5、蒸汽系统', '4.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('971', '辅锅炉', '4.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('972', '废汽锅炉', '5.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('973', '吹灰器', '3.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('974', '给水和冷凝', '5.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('975', '蒸汽管系、阀', '4.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('976', '大气冷凝器', '4.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('977', '热水井', '5.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('978', '给水泵 ', '5.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('979', '锅炉循环泵', '5.0000', null, '', '', '5、蒸汽系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('980', '6、燃油系统', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('981', '泵', '5.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('982', '管系、阀', '4.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('983', '重油分油机', '4.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('984', '柴油分油机', '4.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('985', '混油装置', '3.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('986', '加热器', '5.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('987', '滤器', '3.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('988', '燃油柜', '4.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('989', '油舱加热管', '4.0000', null, '', '', '6、燃油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('990', '7、滑油系统', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('991', '泵', '5.0000', null, '', '', '7、滑油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('992', '管系、阀', '4.0000', null, '', '', '7、滑油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('993', '冷却器', '5.0000', null, '', '', '7、滑油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('994', '净油机', '4.0000', null, '', '', '7、滑油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('995', '滤器', '3.0000', null, '', '', '7、滑油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('996', '滑油柜', '4.0000', null, '', '', '7、滑油系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('997', '8、海水冷却系统', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('998', '泵', '5.0000', null, '', '', '8、海水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('999', '管系、阀', '4.0000', null, '', '', '8、海水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1000', '冷却器', '5.0000', null, '', '', '8、海水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1001', '滤器', '3.0000', null, '', '', '8、海水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1002', '9、污水和压载系统', '4.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1003', '泵', '5.0000', null, '', '', '9、污水和压载系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1004', '管系、阀', '4.0000', null, '', '', '9、污水和压载系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1005', '压载控制台', '3.0000', null, '', '', '9、污水和压载系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1006', '污水井报警系统', '3.0000', null, '', '', '9、污水和压载系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1007', '压载水清洗系统', '3.0000', null, '', '', '9、污水和压载系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1008', '阀操作系统', '4.0000', null, '', '', '9、污水和压载系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1009', '10、淡水冷却系统', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1010', '泵', '5.0000', null, '', '', '10、淡水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1011', '管系、阀', '4.0000', null, '', '', '10、淡水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1012', '淡/海水冷却器', '5.0000', null, '', '', '10、淡水冷却系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1013', '11、压缩空气系统', '4.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1014', '空压机', '5.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1015', '应急空压机', '3.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1016', '空气瓶', '5.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1017', '空气干燥/冷却器', '3.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1018', '管系、阀', '4.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1019', '控制空气干燥器', '3.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1020', '控制空气管系、阀', '4.0000', null, '', '', '11、压缩空气系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1021', '12、辅助系统', '3.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1022', '冷藏系统', '3.0000', null, '', '', '12、辅助系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1023', '造水机', '3.0000', null, '', '', '12、辅助系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1024', '日用淡水系统', '4.0000', null, '', '', '12、辅助系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1025', '空调系统', '3.0000', null, '', '', '12、辅助系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1026', '13、压载水处理系统', '5.0000', null, '', '', '轮机', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1027', '电解单元', '5.0000', null, '', '', '13、压载水处理系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1028', '反冲洗滤器', '3.0000', null, '', '', '13、压载水处理系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1029', '中和单元', '4.0000', null, '', '', '13、压载水处理系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1030', 'TRO检测单元', '5.0000', null, '', '', '13、压载水处理系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1031', '控制系统', '5.0000', null, '', '', '13、压载水处理系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1032', '电气', '4.0000', null, '', '', '0', '16', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1033', '1、电力系统', '5.0000', null, '', '', '电气', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1034', '主发电机', '5.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1035', '联轴节', '2.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1036', '轴承', '2.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1037', '空气滤器', '1.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1038', '应急发电机', '5.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1039', '通用蓄电池', '4.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1040', '变压器', '4.0000', null, '', '', '1、电力系统', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1041', '2、配电装置', '5.0000', null, '', '', '电气', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1042', '主配电板、应急配电板', '5.0000', null, '', '', '2、配电装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1043', '断路器', '3.0000', null, '', '', '2、配电装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1044', '启动器', '3.0000', null, '', '', '2、配电装置', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1045', '3、电器设备', '4.0000', null, '', '', '电气', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1046', '马达', '4.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1047', '马达（泵）', '4.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1048', '马达（风机）', '4.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1049', '马达（其它）', '4.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1050', '绝缘测试', '3.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1051', '加热器', '3.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1052', '照明', '3.0000', null, '', '', '3、电器设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1053', '4、自动化控制', '5.0000', null, '', '', '电气', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1054', '主机遥控和安保', '5.0000', null, '', '', '4、自动化控制', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1055', '副机自动控制和安保', '5.0000', null, '', '', '4、自动化控制', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1056', '机舱监测报警系统（包括DEAD MAN）', '5.0000', null, '', '', '4、自动化控制', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1057', '自动化电站综合保护装置', '5.0000', null, '', '', '4、自动化控制', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1058', '锅炉自动控制', '5.0000', null, '', '', '4、自动化控制', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1059', '5、惰气系统（油轮）', '4.0000', null, '', '', '电气', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1060', '惰气风机', '5.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1061', '洗涤塔', '5.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1062', '惰气海水泵', '5.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1063', '水封泵', '5.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1064', '氧份仪', '4.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1065', '水封塔', '5.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1066', '惰气总管控制阀', '4.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1067', '大舱呼吸阀（P/V）', '3.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1068', '惰气管路系统', '4.0000', null, '', '', '5、惰气系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1069', '6、货油系统（油轮）', '5.0000', null, '', '', '电气', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1070', '货油泵', '5.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1071', '货油泵原动机（蒸汽透平）', '5.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1072', '货油泵调速器', '4.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1073', '货油泵应急停泵装置', '4.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1074', '油泵间风机', '4.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1075', '真空抽除器', '4.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1076', '货油泵大气冷凝器', '5.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1077', '专用海水冷却泵', '5.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1078', '货泵间海底阀', '4.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1079', '喷射泵', '3.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1080', '货油管路', '4.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1081', '原油洗舱机', '3.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1082', '油轮专用检测仪器', '3.0000', null, '', '', '6、货油系统（油轮）', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1083', '驾驶台', '4.0000', null, '', '', '0', '16', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1084', '1、总体保养', '4.0000', null, '', '', '驾驶台', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1085', '驾驶室', '4.0000', null, '', '', '1、总体保养', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1086', '海图室', '3.0000', null, '', '', '1、总体保养', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1087', '蓄电池间', '3.0000', null, '', '', '1、总体保养', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1088', '2、通讯设备', '5.0000', null, '', '', '驾驶台', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1089', 'GMDSS装置', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1090', '天线', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1091', 'AIS', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1092', 'VHF', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1093', '卫通', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1094', 'VDR/SVDR', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1095', '应急示位标', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1096', '船内通讯', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1097', '手提对讲机', '4.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1098', '通讯用蓄电池', '5.0000', null, '', '', '2、通讯设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1099', '3、航行设备', '5.0000', null, '', '', '驾驶台', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1100', '雷达', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1101', 'GPS / DGPS', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1102', '气象传真', '4.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1103', '航行灯/信号灯', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1104', '计程仪', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1105', '测深仪', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1106', '电罗经', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1107', '磁罗经', '5.0000', null, '', '', '3、航行设备', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1108', '4、船上办公室', '3.0000', null, '', '', '驾驶台', '16', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1109', '船上办公室设备', '2.0000', null, '', '', '4、船上办公室', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1110', '配载仪', '4.0000', null, '', '', '4、船上办公室', '16', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1111', '船体', '5.0000', null, '', '', '0', '17', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1112', '1、船体外板', '5.0000', null, '', '', '船体', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1113', '船底板', '5.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1114', '左舷顶列板', '5.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1115', '右舷顶列板', '5.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1116', '左舷船壳板', '3.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1117', '右舷船壳板', '3.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1118', '附属件', '1.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1119', '舭龙骨', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1120', '海底阀箱', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1121', '通海阀', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1122', '牺牲阳极（锌块）', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1123', '外加电流保护系统', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1124', '防海生物系统', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1125', '球鼻艏', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1126', '挡浪板', '2.0000', null, '', '', '1、船体外板', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1127', '2、船首结构', '4.0000', null, '', '', '船体', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1128', '首楼甲板', '5.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1129', '首桅', '4.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1130', '首尖舱', '3.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1131', '锚链舱', '3.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1132', '首物料间', '1.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1133', '前液压设备间', '2.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1134', '前油漆间', '2.0000', null, '', '', '2、船首结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1135', '3、船体结构', '5.0000', null, '', '', '船体', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1136', '主甲板', '5.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1137', '货舱', '5.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1138', '顶边水舱', '3.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1139', '底边水舱', '3.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1140', '双层底', '3.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1141', '箱形龙骨（管弄）', '3.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1142', '横舱壁上墩', '2.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1143', '横舱壁下墩', '2.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1144', '横舱壁', '2.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1145', '通风道', '2.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1146', '桅屋', '1.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1147', '纵舱壁', '3.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1148', '舱口围', '4.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1149', '舱口盖', '4.0000', null, '', '', '3、船体结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1150', '4、船尾部结构', '4.0000', null, '', '', '船体', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1151', '后主甲板', '4.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1152', '尾楼甲板', '4.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1153', '机舱', '5.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1154', '舵机间', '5.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1155', '机舱风机间', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1156', '舵杆', '5.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1157', '尾淡水舱', '4.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1158', '尾尖舱', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1159', '尾轴冷却水舱', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1160', '烟囱', '2.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1161', '主桅（雷达）', '4.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1162', 'CO2间', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1163', '蓄电池间', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1164', '后物料间', '2.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1165', '空调设备间', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1166', '应急发电机间', '3.0000', null, '', '', '4、船尾部结构', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1167', '5、生活区', '3.0000', null, '', '', '船体', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1168', '总体保养', '4.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1169', '外甲板及梯道', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1170', '居住区', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1171', '公共场所', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1172', '厨房', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1173', '洗衣间', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1174', '病房', '2.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1175', '药物间', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1176', '甲板/轮机办公室', '2.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1177', '生活区物料间', '2.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1178', '冰库', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1179', '理货间', '3.0000', null, '', '', '5、生活区', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1180', '6、防腐', '5.0000', null, '', '', '船体', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1181', '船体外壳油漆', '5.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1182', '干舷 ', '5.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1183', '直底', '5.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1184', '平底', '5.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1185', '水尺及载重线标志', '5.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1186', '左甲板油漆', '4.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1187', '右甲板油漆', '4.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1188', '货舱间甲板油漆', '4.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1189', '舱口围油漆', '3.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1190', '舱盖油漆', '3.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1191', '生活区油漆', '2.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1192', '货舱油漆', '3.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1193', '压载舱油漆', '4.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1194', '淡水舱油漆', '4.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1195', '干隔舱油漆', '3.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1196', '货舱壁顶凳和底登内部油漆', '3.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1197', '管弄内油漆', '3.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1198', '压载舱牺牲阳极', '4.0000', null, '', '', '6、防腐', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1199', '甲板', '5.0000', null, '', '', '0', '17', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1200', '1、系泊设备', '5.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1201', '锚机', '5.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1202', '绞缆机', '5.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1203', '止链器', '4.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1204', '导缆轮和滚筒', '4.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1205', '锚和锚链', '5.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1206', '系缆索/钢缆', '4.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1207', '液压系统', '5.0000', null, '', '', '1、系泊设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1208', '2、载重线项目', '4.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1209', '干舷标志', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1210', '水密门', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1211', '水密小舱口', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1212', '空气管', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1213', '测量管', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1214', '通风筒', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1215', '天窗', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1216', '舷墙/栏杆', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1217', '甲板安全通道及保护索', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1218', '舷梯/引水梯', '4.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1219', '窗户/舷窗', '3.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1220', '疏排水孔', '3.0000', null, '', '', '2、载重线项目', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1221', '3、消防设备', '5.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1222', '主消防泵', '5.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1223', '应急消防泵/自吸装置/原动机', '5.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1224', '消防总管', '5.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1225', '消防皮龙 / 箱', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1226', '固定式CO2系统（包括释放前报警装置）', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1227', '灭火器', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1228', '消防栓', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1229', '速闭阀', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1230', '消防员装备', '5.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1231', '火警探测与报警系统', '5.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1232', '油漆间防火装置', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1233', '分油机间防火装置', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1234', '水雾自动喷淋系统', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1235', '风油遥控应急切断', '4.0000', null, '', '', '3、消防设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1236', '4、救生设备', '5.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1237', '救生艇及自动脱钩装置', '5.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1238', '艇机', '5.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1239', '吊艇架', '5.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1240', '放艇试验', '5.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1241', '救生筏及静水压力释放器', '4.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1242', '驾驶室烟火报警装置', '3.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1243', '无线电示位标（EPIRB）', '4.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1244', '救生圈', '4.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1245', '救生衣、保温服', '4.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1246', '冲洗眼睛系统', '3.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1247', '自助式逃生、应急呼吸器（EEBD）', '3.0000', null, '', '', '4、救生设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1248', '5、防污设备', '4.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1249', '油水分离器、15PPM监测装置', '5.0000', null, '', '', '5、防污设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1250', '防油污器材，集油盘', '4.0000', null, '', '', '5、防污设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1251', '垃圾收集、处理和焚烧', '5.0000', null, '', '', '5、防污设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1252', '焚烧炉', '3.0000', null, '', '', '5、防污设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1253', '生活污水处理与排放', '5.0000', null, '', '', '5、防污设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1254', '6、操舵系统', '5.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1255', '舵机', '5.0000', null, '', '', '6、操舵系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1256', '液压系统', '5.0000', null, '', '', '6、操舵系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1257', '舵角指示器', '5.0000', null, '', '', '6、操舵系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1258', '自动舵', '5.0000', null, '', '', '6、操舵系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1259', '驾控、通讯', '5.0000', null, '', '', '6、操舵系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1260', '舵叶', '4.0000', null, '', '', '6、操舵系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1261', '7、管系', '5.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1262', '燃/柴油系统', '5.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1263', '液压油系统', '4.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1264', '压缩空气系统', '5.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1265', '控制空气系统', '5.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1266', '电缆管', '3.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1267', '淡水系统', '5.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1268', '蒸汽和冷凝系统', '4.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1269', '海水系统', '5.0000', null, '', '', '7、管系', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1270', '8、起重装置', '4.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1271', '燃油管吊', '3.0000', null, '', '', '8、起重装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1272', '起货机', '4.0000', null, '', '', '8、起重装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1273', '单轨吊（机舱物料和备件吊）', '3.0000', null, '', '', '8、起重装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1274', '苏伊士运河吊杆', '4.0000', null, '', '', '8、起重装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1275', '机舱行车', '4.0000', null, '', '', '8、起重装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1276', '9、舱盖', '5.0000', null, '', '', '甲板', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1277', '舱口围板', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1278', '压条', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1279', '垫块', '4.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1280', '轨道', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1281', '舱盖板', '4.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1282', '舱盖密封', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1283', '关闭装置', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1284', '滚轮', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1285', '液压系统', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1286', '开舱设备', '5.0000', null, '', '', '9、舱盖', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1287', '货舱', '5.0000', null, '', '', '0', '17', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1288', '仪器', '5.0000', null, '', '', '货舱', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1289', '货舱进水报警装置', '5.0000', null, '', '', '仪器', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1290', '有毒气体探测仪', '4.0000', null, '', '', '仪器', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1291', '货舱测温管及货舱温度计', '4.0000', null, '', '', '仪器', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1292', '便携式货舱灯', '2.0000', null, '', '', '仪器', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1293', '轮机', '5.0000', null, '', '', '0', '17', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1294', '1、机舱', '4.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1295', '总体保养', '4.0000', null, '', '', '1、机舱', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1296', '专用工具（齐全、完好）', '3.0000', null, '', '', '1、机舱', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1297', '工作间', '3.0000', null, '', '', '1、机舱', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1298', '2、主机', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1299', '底座', '3.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1300', '缸盖', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1301', '排气阀', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1302', '缸套', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1303', '活塞、连杆、轴承', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1304', '十字头轴承', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1305', '曲轴，主轴承', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1306', '盘车机', '2.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1307', '推力块', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1308', '拉紧螺栓', '3.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1309', '支撑物', '3.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1310', '贯穿螺栓', '5.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1311', '凸轮', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1312', '增压器', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1313', '空冷器', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1314', '扫气总管', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1315', '排烟管', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1316', '燃油系统', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1317', '冷却系统', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1318', '润滑系统（包括气缸油系统）', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1319', '启动空气系统', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1320', '控制空气系统', '4.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1321', '调速器', '3.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1322', '减震器', '2.0000', null, '', '', '2、主机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1323', '3、推进装置', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1324', '轴系', '5.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1325', '中间轴承', '4.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1326', '轴接地装置', '2.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1327', '轴封', '4.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1328', '尾管轴承', '4.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1329', '螺旋桨', '5.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1330', '备用尾轴', '2.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1331', '备用螺旋桨', '2.0000', null, '', '', '3、推进装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1332', '4、副机', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1333', '主发电原动机', '5.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1334', '底座', '3.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1335', '增压器', '4.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1336', '燃油系统', '4.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1337', '冷却系统', '4.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1338', '润滑系统', '4.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1339', '应急发电机', '4.0000', null, '', '', '4、副机', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1340', '5、蒸汽系统', '4.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1341', '辅锅炉', '4.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1342', '废汽锅炉', '5.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1343', '吹灰器', '3.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1344', '给水和冷凝', '5.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1345', '蒸汽管系、阀', '4.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1346', '大气冷凝器', '4.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1347', '热水井', '5.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1348', '给水泵 ', '5.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1349', '锅炉循环泵', '5.0000', null, '', '', '5、蒸汽系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1350', '6、燃油系统', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1351', '泵', '5.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1352', '管系、阀', '4.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1353', '重油分油机', '4.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1354', '柴油分油机', '4.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1355', '混油装置', '3.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1356', '加热器', '5.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1357', '滤器', '3.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1358', '燃油柜', '4.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1359', '油舱加热管', '4.0000', null, '', '', '6、燃油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1360', '7、滑油系统', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1361', '泵', '5.0000', null, '', '', '7、滑油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1362', '管系、阀', '4.0000', null, '', '', '7、滑油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1363', '冷却器', '5.0000', null, '', '', '7、滑油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1364', '净油机', '4.0000', null, '', '', '7、滑油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1365', '滤器', '3.0000', null, '', '', '7、滑油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1366', '滑油柜', '4.0000', null, '', '', '7、滑油系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1367', '8、海水冷却系统', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1368', '泵', '5.0000', null, '', '', '8、海水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1369', '管系、阀', '4.0000', null, '', '', '8、海水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1370', '冷却器', '5.0000', null, '', '', '8、海水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1371', '滤器', '3.0000', null, '', '', '8、海水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1372', '9、污水和压载系统', '4.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1373', '泵', '5.0000', null, '', '', '9、污水和压载系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1374', '管系、阀', '4.0000', null, '', '', '9、污水和压载系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1375', '压载控制台', '3.0000', null, '', '', '9、污水和压载系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1376', '污水井报警系统', '3.0000', null, '', '', '9、污水和压载系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1377', '压载水清洗系统', '3.0000', null, '', '', '9、污水和压载系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1378', '阀操作系统', '4.0000', null, '', '', '9、污水和压载系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1379', '10、淡水冷却系统', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1380', '泵', '5.0000', null, '', '', '10、淡水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1381', '管系、阀', '4.0000', null, '', '', '10、淡水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1382', '淡/海水冷却器', '5.0000', null, '', '', '10、淡水冷却系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1383', '11、压缩空气系统', '4.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1384', '空压机', '5.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1385', '应急空压机', '3.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1386', '空气瓶', '5.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1387', '空气干燥/冷却器', '3.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1388', '管系、阀', '4.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1389', '控制空气干燥器', '3.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1390', '控制空气管系、阀', '4.0000', null, '', '', '11、压缩空气系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1391', '12、辅助系统', '3.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1392', '冷藏系统', '3.0000', null, '', '', '12、辅助系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1393', '造水机', '3.0000', null, '', '', '12、辅助系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1394', '日用淡水系统', '4.0000', null, '', '', '12、辅助系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1395', '空调系统', '3.0000', null, '', '', '12、辅助系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1396', '13、压载水处理系统', '5.0000', null, '', '', '轮机', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1397', '电解单元', '5.0000', null, '', '', '13、压载水处理系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1398', '反冲洗滤器', '3.0000', null, '', '', '13、压载水处理系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1399', '中和单元', '4.0000', null, '', '', '13、压载水处理系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1400', 'TRO检测单元', '5.0000', null, '', '', '13、压载水处理系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1401', '控制系统', '5.0000', null, '', '', '13、压载水处理系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1402', '电气', '4.0000', null, '', '', '0', '17', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1403', '1、电力系统', '5.0000', null, '', '', '电气', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1404', '主发电机', '5.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1405', '联轴节', '2.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1406', '轴承', '2.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1407', '空气滤器', '1.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1408', '应急发电机', '5.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1409', '通用蓄电池', '4.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1410', '变压器', '4.0000', null, '', '', '1、电力系统', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1411', '2、配电装置', '5.0000', null, '', '', '电气', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1412', '主配电板、应急配电板', '5.0000', null, '', '', '2、配电装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1413', '断路器', '3.0000', null, '', '', '2、配电装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1414', '启动器', '3.0000', null, '', '', '2、配电装置', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1415', '3、电器设备', '4.0000', null, '', '', '电气', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1416', '马达', '4.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1417', '马达（泵）', '4.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1418', '马达（风机）', '4.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1419', '马达（其它）', '4.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1420', '绝缘测试', '3.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1421', '加热器', '3.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1422', '照明', '3.0000', null, '', '', '3、电器设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1423', '4、自动化控制', '5.0000', null, '', '', '电气', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1424', '主机遥控和安保', '5.0000', null, '', '', '4、自动化控制', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1425', '副机自动控制和安保', '5.0000', null, '', '', '4、自动化控制', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1426', '机舱监测报警系统（包括DEAD MAN）', '5.0000', null, '', '', '4、自动化控制', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1427', '自动化电站综合保护装置', '5.0000', null, '', '', '4、自动化控制', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1428', '锅炉自动控制', '5.0000', null, '', '', '4、自动化控制', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1429', '5、惰气系统（油轮）', '4.0000', null, '', '', '电气', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1430', '惰气风机', '5.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1431', '洗涤塔', '5.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1432', '惰气海水泵', '5.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1433', '水封泵', '5.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1434', '氧份仪', '4.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1435', '水封塔', '5.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1436', '惰气总管控制阀', '4.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1437', '大舱呼吸阀（P/V）', '3.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1438', '惰气管路系统', '4.0000', null, '', '', '5、惰气系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1439', '6、货油系统（油轮）', '5.0000', null, '', '', '电气', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1440', '货油泵', '5.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1441', '货油泵原动机（蒸汽透平）', '5.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1442', '货油泵调速器', '4.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1443', '货油泵应急停泵装置', '4.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1444', '油泵间风机', '4.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1445', '真空抽除器', '4.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1446', '货油泵大气冷凝器', '5.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1447', '专用海水冷却泵', '5.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1448', '货泵间海底阀', '4.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1449', '喷射泵', '3.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1450', '货油管路', '4.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1451', '原油洗舱机', '3.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1452', '油轮专用检测仪器', '3.0000', null, '', '', '6、货油系统（油轮）', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1453', '驾驶台', '4.0000', null, '', '', '0', '17', null, '', null, '', '', '1', null);
INSERT INTO `t_grade` VALUES ('1454', '1、总体保养', '4.0000', null, '', '', '驾驶台', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1455', '驾驶室', '4.0000', null, '', '', '1、总体保养', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1456', '海图室', '3.0000', null, '', '', '1、总体保养', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1457', '蓄电池间', '3.0000', null, '', '', '1、总体保养', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1458', '2、通讯设备', '5.0000', null, '', '', '驾驶台', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1459', 'GMDSS装置', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1460', '天线', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1461', 'AIS', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1462', 'VHF', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1463', '卫通', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1464', 'VDR/SVDR', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1465', '应急示位标', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1466', '船内通讯', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1467', '手提对讲机', '4.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1468', '通讯用蓄电池', '5.0000', null, '', '', '2、通讯设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1469', '3、航行设备', '5.0000', null, '', '', '驾驶台', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1470', '雷达', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1471', 'GPS / DGPS', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1472', '气象传真', '4.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1473', '航行灯/信号灯', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1474', '计程仪', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1475', '测深仪', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1476', '电罗经', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1477', '磁罗经', '5.0000', null, '', '', '3、航行设备', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1478', '4、船上办公室', '3.0000', null, '', '', '驾驶台', '17', null, '', null, '', '', '2', null);
INSERT INTO `t_grade` VALUES ('1479', '船上办公室设备', '2.0000', null, '', '', '4、船上办公室', '17', null, '', null, '', '', '3', null);
INSERT INTO `t_grade` VALUES ('1480', '配载仪', '4.0000', null, '', '', '4、船上办公室', '17', null, '', null, '', '', '3', null);

-- ----------------------------
-- Table structure for t_grade_condition
-- ----------------------------
DROP TABLE IF EXISTS `t_grade_condition`;
CREATE TABLE `t_grade_condition` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评分条件',
  `type` varchar(155) DEFAULT NULL,
  `grade` varchar(155) DEFAULT NULL,
  `standard` varchar(155) DEFAULT NULL,
  `technical_condition` text,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(155) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(155) DEFAULT NULL,
  `del_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade_condition
-- ----------------------------
INSERT INTO `t_grade_condition` VALUES ('1', '船体', '10～9', 'Good', '根据检查和测量结果，钢结构和硒装件处于完好状况，涂层状况属于完好状况且构件未发现明显腐蚀、变形、裂纹，主要构件经过大量修复割换状况保持完好。构件的焊缝未发现明显腐蚀、裂纹。', null, null, null, null, '0');
INSERT INTO `t_grade_condition` VALUES ('2', '船体', '8～6', 'Fair', '根据检查和测量，发现有轻微缺陷，但构件和硒装件仍处于良好状况，板厚磨耗量在现行规范允许值范围以内，无需修理和特别关注。', null, null, null, null, null);
INSERT INTO `t_grade_condition` VALUES ('3', '船体', '5～3', 'Poor', '根据检查和测量发现存在缺陷或构件显著减薄情况，结构腐蚀量处于显著腐蚀区域，但测量数据平均高于船级社割换标准要求，结构和硒装件处于可维持使用状况，无需立刻进行修理。', null, null, null, null, null);
INSERT INTO `t_grade_condition` VALUES ('4', '船体', '2～1', 'Unsatisfactory', '根据检查和测量，发现钢结构和硒装件存在严重不足和缺陷，对保持船级、外部安全检查构成影响，钢结构测厚平均数据低于船级社规定值、需立即进行修理。', null, null, null, null, null);
INSERT INTO `t_grade_condition` VALUES ('5', '机械', '10～9', 'Good', '无任何影响安全操作和性能的缺陷，设备状况完好，无需修理；资料及保养记录齐全。', null, null, null, null, null);
INSERT INTO `t_grade_condition` VALUES ('6', '机械', '8～6', 'Fair', '有轻微的缺陷，但不影响安全操作和性能，设备状况良好，没有需要立即修理的项目；资料及保养记录齐全。', null, null, null, null, null);
INSERT INTO `t_grade_condition` VALUES ('7', '机械', '5～3', 'Poor', '有缺陷，但不影响安全操作和性能，需要考虑进行必要的修理；资料及保养记录齐全。', null, null, null, null, null);
INSERT INTO `t_grade_condition` VALUES ('8', '机械', '2～1', 'Unsatisfactory', '有严重缺陷，且影响安全操作和性能，需要立即进行修理或更换备件。', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_grade_model
-- ----------------------------
DROP TABLE IF EXISTS `t_grade_model`;
CREATE TABLE `t_grade_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(155) DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `grade` double DEFAULT NULL,
  `remark` text,
  `site_photo` varchar(155) DEFAULT NULL,
  `parent_item` varchar(155) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(155) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(155) DEFAULT NULL,
  `del_flag` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL COMMENT '等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_grade_model
-- ----------------------------
INSERT INTO `t_grade_model` VALUES ('1', '船体', '5', null, '', '', '0', null, '', null, '', '', '1');
INSERT INTO `t_grade_model` VALUES ('2', '1、船体外板', '5', null, '', '', '船体', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('3', '船底板', '5', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('4', '左舷顶列板', '5', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('5', '右舷顶列板', '5', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('6', '左舷船壳板', '3', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('7', '右舷船壳板', '3', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('8', '附属件', '1', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('9', '舭龙骨', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('10', '海底阀箱', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('11', '通海阀', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('12', '牺牲阳极（锌块）', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('13', '外加电流保护系统', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('14', '防海生物系统', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('15', '球鼻艏', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('16', '挡浪板', '2', null, '', '', '1、船体外板', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('17', '2、船首结构', '4', null, '', '', '船体', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('18', '首楼甲板', '5', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('19', '首桅', '4', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('20', '首尖舱', '3', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('21', '锚链舱', '3', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('22', '首物料间', '1', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('23', '前液压设备间', '2', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('24', '前油漆间', '2', null, '', '', '2、船首结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('25', '3、船体结构', '5', null, '', '', '船体', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('26', '主甲板', '5', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('27', '货舱', '5', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('28', '顶边水舱', '3', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('29', '底边水舱', '3', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('30', '双层底', '3', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('31', '箱形龙骨（管弄）', '3', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('32', '横舱壁上墩', '2', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('33', '横舱壁下墩', '2', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('34', '横舱壁', '2', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('35', '通风道', '2', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('36', '桅屋', '1', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('37', '纵舱壁', '3', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('38', '舱口围', '4', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('39', '舱口盖', '4', null, '', '', '3、船体结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('40', '4、船尾部结构', '4', null, '', '', '船体', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('41', '后主甲板', '4', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('42', '尾楼甲板', '4', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('43', '机舱', '5', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('44', '舵机间', '5', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('45', '机舱风机间', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('46', '舵杆', '5', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('47', '尾淡水舱', '4', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('48', '尾尖舱', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('49', '尾轴冷却水舱', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('50', '烟囱', '2', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('51', '主桅（雷达）', '4', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('52', 'CO2间', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('53', '蓄电池间', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('54', '后物料间', '2', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('55', '空调设备间', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('56', '应急发电机间', '3', null, '', '', '4、船尾部结构', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('57', '5、生活区', '3', null, '', '', '船体', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('58', '总体保养', '4', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('59', '外甲板及梯道', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('60', '居住区', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('61', '公共场所', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('62', '厨房', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('63', '洗衣间', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('64', '病房', '2', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('65', '药物间', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('66', '甲板/轮机办公室', '2', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('67', '生活区物料间', '2', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('68', '冰库', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('69', '理货间', '3', null, '', '', '5、生活区', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('70', '6、防腐', '5', null, '', '', '船体', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('71', '船体外壳油漆', '5', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('72', '干舷 ', '5', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('73', '直底', '5', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('74', '平底', '5', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('75', '水尺及载重线标志', '5', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('76', '左甲板油漆', '4', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('77', '右甲板油漆', '4', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('78', '货舱间甲板油漆', '4', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('79', '舱口围油漆', '3', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('80', '舱盖油漆', '3', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('81', '生活区油漆', '2', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('82', '货舱油漆', '3', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('83', '压载舱油漆', '4', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('84', '淡水舱油漆', '4', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('85', '干隔舱油漆', '3', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('86', '货舱壁顶凳和底登内部油漆', '3', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('87', '管弄内油漆', '3', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('88', '压载舱牺牲阳极', '4', null, '', '', '6、防腐', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('89', '甲板', '5', null, '', '', '0', null, '', null, '', '', '1');
INSERT INTO `t_grade_model` VALUES ('90', '1、系泊设备', '5', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('91', '锚机', '5', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('92', '绞缆机', '5', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('93', '止链器', '4', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('94', '导缆轮和滚筒', '4', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('95', '锚和锚链', '5', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('96', '系缆索/钢缆', '4', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('97', '液压系统', '5', null, '', '', '1、系泊设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('98', '2、载重线项目', '4', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('99', '干舷标志', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('100', '水密门', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('101', '水密小舱口', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('102', '空气管', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('103', '测量管', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('104', '通风筒', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('105', '天窗', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('106', '舷墙/栏杆', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('107', '甲板安全通道及保护索', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('108', '舷梯/引水梯', '4', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('109', '窗户/舷窗', '3', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('110', '疏排水孔', '3', null, '', '', '2、载重线项目', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('111', '3、消防设备', '5', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('112', '主消防泵', '5', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('113', '应急消防泵/自吸装置/原动机', '5', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('114', '消防总管', '5', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('115', '消防皮龙 / 箱', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('116', '固定式CO2系统（包括释放前报警装置）', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('117', '灭火器', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('118', '消防栓', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('119', '速闭阀', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('120', '消防员装备', '5', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('121', '火警探测与报警系统', '5', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('122', '油漆间防火装置', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('123', '分油机间防火装置', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('124', '水雾自动喷淋系统', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('125', '风油遥控应急切断', '4', null, '', '', '3、消防设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('126', '4、救生设备', '5', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('127', '救生艇及自动脱钩装置', '5', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('128', '艇机', '5', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('129', '吊艇架', '5', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('130', '放艇试验', '5', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('131', '救生筏及静水压力释放器', '4', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('132', '驾驶室烟火报警装置', '3', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('133', '无线电示位标（EPIRB）', '4', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('134', '救生圈', '4', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('135', '救生衣、保温服', '4', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('136', '冲洗眼睛系统', '3', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('137', '自助式逃生、应急呼吸器（EEBD）', '3', null, '', '', '4、救生设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('138', '5、防污设备', '4', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('139', '油水分离器、15PPM监测装置', '5', null, '', '', '5、防污设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('140', '防油污器材，集油盘', '4', null, '', '', '5、防污设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('141', '垃圾收集、处理和焚烧', '5', null, '', '', '5、防污设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('142', '焚烧炉', '3', null, '', '', '5、防污设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('143', '生活污水处理与排放', '5', null, '', '', '5、防污设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('144', '6、操舵系统', '5', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('145', '舵机', '5', null, '', '', '6、操舵系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('146', '液压系统', '5', null, '', '', '6、操舵系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('147', '舵角指示器', '5', null, '', '', '6、操舵系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('148', '自动舵', '5', null, '', '', '6、操舵系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('149', '驾控、通讯', '5', null, '', '', '6、操舵系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('150', '舵叶', '4', null, '', '', '6、操舵系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('151', '7、管系', '5', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('152', '燃/柴油系统', '5', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('153', '液压油系统', '4', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('154', '压缩空气系统', '5', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('155', '控制空气系统', '5', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('156', '电缆管', '3', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('157', '淡水系统', '5', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('158', '蒸汽和冷凝系统', '4', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('159', '海水系统', '5', null, '', '', '7、管系', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('160', '8、起重装置', '4', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('161', '燃油管吊', '3', null, '', '', '8、起重装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('162', '起货机', '4', null, '', '', '8、起重装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('163', '单轨吊（机舱物料和备件吊）', '3', null, '', '', '8、起重装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('164', '苏伊士运河吊杆', '4', null, '', '', '8、起重装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('165', '机舱行车', '4', null, '', '', '8、起重装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('166', '9、舱盖', '5', null, '', '', '甲板', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('167', '舱口围板', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('168', '压条', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('169', '垫块', '4', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('170', '轨道', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('171', '舱盖板', '4', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('172', '舱盖密封', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('173', '关闭装置', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('174', '滚轮', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('175', '液压系统', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('176', '开舱设备', '5', null, '', '', '9、舱盖', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('177', '货舱', '5', null, '', '', '0', null, '', null, '', '', '1');
INSERT INTO `t_grade_model` VALUES ('178', '仪器', '5', null, '', '', '货舱', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('179', '货舱进水报警装置', '5', null, '', '', '仪器', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('180', '有毒气体探测仪', '4', null, '', '', '仪器', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('181', '货舱测温管及货舱温度计', '4', null, '', '', '仪器', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('182', '便携式货舱灯', '2', null, '', '', '仪器', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('183', '轮机', '5', null, '', '', '0', null, '', null, '', '', '1');
INSERT INTO `t_grade_model` VALUES ('184', '1、机舱', '4', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('185', '总体保养', '4', null, '', '', '1、机舱', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('186', '专用工具（齐全、完好）', '3', null, '', '', '1、机舱', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('187', '工作间', '3', null, '', '', '1、机舱', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('188', '2、主机', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('189', '底座', '3', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('190', '缸盖', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('191', '排气阀', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('192', '缸套', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('193', '活塞、连杆、轴承', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('194', '十字头轴承', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('195', '曲轴，主轴承', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('196', '盘车机', '2', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('197', '推力块', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('198', '拉紧螺栓', '3', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('199', '支撑物', '3', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('200', '贯穿螺栓', '5', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('201', '凸轮', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('202', '增压器', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('203', '空冷器', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('204', '扫气总管', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('205', '排烟管', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('206', '燃油系统', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('207', '冷却系统', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('208', '润滑系统（包括气缸油系统）', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('209', '启动空气系统', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('210', '控制空气系统', '4', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('211', '调速器', '3', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('212', '减震器', '2', null, '', '', '2、主机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('213', '3、推进装置', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('214', '轴系', '5', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('215', '中间轴承', '4', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('216', '轴接地装置', '2', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('217', '轴封', '4', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('218', '尾管轴承', '4', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('219', '螺旋桨', '5', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('220', '备用尾轴', '2', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('221', '备用螺旋桨', '2', null, '', '', '3、推进装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('222', '4、副机', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('223', '主发电原动机', '5', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('224', '底座', '3', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('225', '增压器', '4', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('226', '燃油系统', '4', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('227', '冷却系统', '4', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('228', '润滑系统', '4', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('229', '应急发电机', '4', null, '', '', '4、副机', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('230', '5、蒸汽系统', '4', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('231', '辅锅炉', '4', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('232', '废汽锅炉', '5', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('233', '吹灰器', '3', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('234', '给水和冷凝', '5', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('235', '蒸汽管系、阀', '4', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('236', '大气冷凝器', '4', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('237', '热水井', '5', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('238', '给水泵 ', '5', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('239', '锅炉循环泵', '5', null, '', '', '5、蒸汽系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('240', '6、燃油系统', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('241', '泵', '5', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('242', '管系、阀', '4', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('243', '重油分油机', '4', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('244', '柴油分油机', '4', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('245', '混油装置', '3', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('246', '加热器', '5', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('247', '滤器', '3', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('248', '燃油柜', '4', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('249', '油舱加热管', '4', null, '', '', '6、燃油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('250', '7、滑油系统', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('251', '泵', '5', null, '', '', '7、滑油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('252', '管系、阀', '4', null, '', '', '7、滑油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('253', '冷却器', '5', null, '', '', '7、滑油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('254', '净油机', '4', null, '', '', '7、滑油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('255', '滤器', '3', null, '', '', '7、滑油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('256', '滑油柜', '4', null, '', '', '7、滑油系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('257', '8、海水冷却系统', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('258', '泵', '5', null, '', '', '8、海水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('259', '管系、阀', '4', null, '', '', '8、海水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('260', '冷却器', '5', null, '', '', '8、海水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('261', '滤器', '3', null, '', '', '8、海水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('262', '9、污水和压载系统', '4', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('263', '泵', '5', null, '', '', '9、污水和压载系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('264', '管系、阀', '4', null, '', '', '9、污水和压载系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('265', '压载控制台', '3', null, '', '', '9、污水和压载系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('266', '污水井报警系统', '3', null, '', '', '9、污水和压载系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('267', '压载水清洗系统', '3', null, '', '', '9、污水和压载系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('268', '阀操作系统', '4', null, '', '', '9、污水和压载系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('269', '10、淡水冷却系统', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('270', '泵', '5', null, '', '', '10、淡水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('271', '管系、阀', '4', null, '', '', '10、淡水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('272', '淡/海水冷却器', '5', null, '', '', '10、淡水冷却系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('273', '11、压缩空气系统', '4', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('274', '空压机', '5', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('275', '应急空压机', '3', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('276', '空气瓶', '5', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('277', '空气干燥/冷却器', '3', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('278', '管系、阀', '4', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('279', '控制空气干燥器', '3', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('280', '控制空气管系、阀', '4', null, '', '', '11、压缩空气系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('281', '12、辅助系统', '3', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('282', '冷藏系统', '3', null, '', '', '12、辅助系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('283', '造水机', '3', null, '', '', '12、辅助系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('284', '日用淡水系统', '4', null, '', '', '12、辅助系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('285', '空调系统', '3', null, '', '', '12、辅助系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('286', '13、压载水处理系统', '5', null, '', '', '轮机', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('287', '电解单元', '5', null, '', '', '13、压载水处理系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('288', '反冲洗滤器', '3', null, '', '', '13、压载水处理系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('289', '中和单元', '4', null, '', '', '13、压载水处理系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('290', 'TRO检测单元', '5', null, '', '', '13、压载水处理系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('291', '控制系统', '5', null, '', '', '13、压载水处理系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('292', '电气', '4', null, '', '', '0', null, '', null, '', '', '1');
INSERT INTO `t_grade_model` VALUES ('293', '1、电力系统', '5', null, '', '', '电气', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('294', '主发电机', '5', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('295', '联轴节', '2', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('296', '轴承', '2', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('297', '空气滤器', '1', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('298', '应急发电机', '5', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('299', '通用蓄电池', '4', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('300', '变压器', '4', null, '', '', '1、电力系统', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('301', '2、配电装置', '5', null, '', '', '电气', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('302', '主配电板、应急配电板', '5', null, '', '', '2、配电装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('303', '断路器', '3', null, '', '', '2、配电装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('304', '启动器', '3', null, '', '', '2、配电装置', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('305', '3、电器设备', '4', null, '', '', '电气', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('306', '马达', '4', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('307', '马达（泵）', '4', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('308', '马达（风机）', '4', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('309', '马达（其它）', '4', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('310', '绝缘测试', '3', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('311', '加热器', '3', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('312', '照明', '3', null, '', '', '3、电器设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('313', '4、自动化控制', '5', null, '', '', '电气', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('314', '主机遥控和安保', '5', null, '', '', '4、自动化控制', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('315', '副机自动控制和安保', '5', null, '', '', '4、自动化控制', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('316', '机舱监测报警系统（包括DEAD MAN）', '5', null, '', '', '4、自动化控制', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('317', '自动化电站综合保护装置', '5', null, '', '', '4、自动化控制', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('318', '锅炉自动控制', '5', null, '', '', '4、自动化控制', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('319', '5、惰气系统（油轮）', '4', null, '', '', '电气', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('320', '惰气风机', '5', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('321', '洗涤塔', '5', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('322', '惰气海水泵', '5', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('323', '水封泵', '5', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('324', '氧份仪', '4', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('325', '水封塔', '5', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('326', '惰气总管控制阀', '4', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('327', '大舱呼吸阀（P/V）', '3', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('328', '惰气管路系统', '4', null, '', '', '5、惰气系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('329', '6、货油系统（油轮）', '5', null, '', '', '电气', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('330', '货油泵', '5', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('331', '货油泵原动机（蒸汽透平）', '5', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('332', '货油泵调速器', '4', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('333', '货油泵应急停泵装置', '4', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('334', '油泵间风机', '4', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('335', '真空抽除器', '4', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('336', '货油泵大气冷凝器', '5', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('337', '专用海水冷却泵', '5', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('338', '货泵间海底阀', '4', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('339', '喷射泵', '3', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('340', '货油管路', '4', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('341', '原油洗舱机', '3', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('342', '油轮专用检测仪器', '3', null, '', '', '6、货油系统（油轮）', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('343', '驾驶台', '4', null, '', '', '0', null, '', null, '', '', '1');
INSERT INTO `t_grade_model` VALUES ('344', '1、总体保养', '4', null, '', '', '驾驶台', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('345', '驾驶室', '4', null, '', '', '1、总体保养', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('346', '海图室', '3', null, '', '', '1、总体保养', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('347', '蓄电池间', '3', null, '', '', '1、总体保养', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('348', '2、通讯设备', '5', null, '', '', '驾驶台', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('349', 'GMDSS装置', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('350', '天线', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('351', 'AIS', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('352', 'VHF', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('353', '卫通', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('354', 'VDR/SVDR', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('355', '应急示位标', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('356', '船内通讯', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('357', '手提对讲机', '4', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('358', '通讯用蓄电池', '5', null, '', '', '2、通讯设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('359', '3、航行设备', '5', null, '', '', '驾驶台', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('360', '雷达', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('361', 'GPS / DGPS', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('362', '气象传真', '4', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('363', '航行灯/信号灯', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('364', '计程仪', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('365', '测深仪', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('366', '电罗经', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('367', '磁罗经', '5', null, '', '', '3、航行设备', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('368', '4、船上办公室', '3', null, '', '', '驾驶台', null, '', null, '', '', '2');
INSERT INTO `t_grade_model` VALUES ('369', '船上办公室设备', '2', null, '', '', '4、船上办公室', null, '', null, '', '', '3');
INSERT INTO `t_grade_model` VALUES ('370', '配载仪', '4', null, '', '', '4、船上办公室', null, '', null, '', '', '3');

-- ----------------------------
-- Table structure for t_inspection
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection`;
CREATE TABLE `t_inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `op_id` int(11) DEFAULT NULL,
  `surveyor_id` int(11) DEFAULT NULL,
  `quotation_id` int(11) DEFAULT NULL COMMENT '询价信息id',
  `inspection_status` int(4) DEFAULT NULL,
  `inspection_type` varchar(20) DEFAULT NULL,
  `report_url` varchar(255) DEFAULT NULL,
  `invoice_url` varchar(255) DEFAULT NULL,
  `op_point` double DEFAULT NULL,
  `op_comment` varchar(255) DEFAULT NULL,
  `surveyor_point` double DEFAULT NULL,
  `surveyor_comment` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `passport_url` varchar(255) DEFAULT NULL,
  `loi_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inspection
-- ----------------------------
INSERT INTO `t_inspection` VALUES ('1', '21', '18', '3', '6', '1', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/dwmkMXpYe6.doc', null, null, null, null, null, '2017-06-22 16:21:33', 'op', '2017-06-22 16:33:18', 'company', '0', '23', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/Y2a73e6TW2.doc', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/JkfDczZe3k.doc');
INSERT INTO `t_inspection` VALUES ('2', '1', '17', '18', '6', '1', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/sDwydNCeYp.doc', null, null, null, null, null, '2017-06-26 11:48:09', 'admin', '2017-06-26 12:00:01', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('3', '1', '19', '14', '6', '1', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/ex5rQ3mKHp.doc', null, null, null, null, null, '2017-06-26 17:04:27', 'admin', '2017-06-29 05:55:39', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('4', '1', '17', '21', '0', '1,2', null, null, null, null, null, null, '2017-06-27 16:01:10', 'admin', '2017-06-27 16:01:10', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('5', '1', '17', '22', '6', '2', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/BZY8ctpcpX.doc', null, null, null, null, null, '2017-06-28 17:05:35', 'admin', '2017-06-28 18:19:17', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('6', '1', '17', '23', '6', '2', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/xmWiCc42FT.doc', null, null, null, null, null, '2017-06-28 17:07:45', 'admin', '2017-06-28 18:13:17', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('7', '21', '18', '25', '0', '1', null, null, null, null, null, null, '2017-06-29 07:47:42', 'op', '2017-06-29 07:47:42', 'op', '0', '23', null, null);
INSERT INTO `t_inspection` VALUES ('8', '21', '20', '34', '6', '1', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/FnxRGA7MJ2.pdf', null, null, null, null, null, '2017-07-04 02:08:26', 'op', '2017-07-04 02:10:46', 'company', '0', '23', null, null);
INSERT INTO `t_inspection` VALUES ('9', '21', '20', '35', '0', '2', null, null, null, null, null, null, '2017-07-04 03:00:25', 'op', '2017-07-04 03:00:25', 'op', '0', '23', null, null);
INSERT INTO `t_inspection` VALUES ('10', '1', '17', '36', '0', '1', null, null, null, null, null, null, '2017-07-06 15:20:21', 'admin', '2017-07-06 15:20:21', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('11', '1', '17', '37', '0', '1', null, null, null, null, null, null, '2017-07-06 15:23:07', 'admin', '2017-07-06 15:23:07', 'admin', '0', '1', null, null);
INSERT INTO `t_inspection` VALUES ('12', '1', '17', '38', '0', '1', null, null, null, null, null, null, '2017-07-07 13:25:06', 'admin', '2017-07-07 13:25:06', 'admin', '0', '1', null, null);

-- ----------------------------
-- Table structure for t_inspection_report
-- ----------------------------
DROP TABLE IF EXISTS `t_inspection_report`;
CREATE TABLE `t_inspection_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_id` int(11) DEFAULT NULL,
  `condition_inspection_id` int(11) DEFAULT NULL,
  `inspection_reportcol` varchar(155) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` varchar(45) DEFAULT NULL,
  `submit_status1` int(11) DEFAULT NULL,
  `submit_status2` int(11) DEFAULT NULL,
  `submit_status3` int(11) DEFAULT NULL,
  `submit_status4` int(11) DEFAULT NULL,
  `submit_status5` int(11) DEFAULT NULL,
  `submit_status6` int(11) DEFAULT NULL,
  `submit_status7` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_inspection_report
-- ----------------------------
INSERT INTO `t_inspection_report` VALUES ('14', '29', '3', null, null, null, null, null, null, '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `t_inspection_report` VALUES ('15', '32', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inspection_report` VALUES ('16', '34', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `t_inspection_report` VALUES ('17', '35', null, null, null, null, null, null, null, '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for t_media
-- ----------------------------
DROP TABLE IF EXISTS `t_media`;
CREATE TABLE `t_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `galleries_id` int(11) DEFAULT NULL COMMENT '相册的id',
  `file_type` varchar(45) DEFAULT NULL COMMENT '文件类型',
  `file_url` varchar(255) DEFAULT NULL,
  `file_name` varchar(45) DEFAULT NULL COMMENT '文件名称',
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_media
-- ----------------------------
INSERT INTO `t_media` VALUES ('1', '29', null, 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/FxkC3bkzQp.png', 'passport.png', '2017-07-04', null, null, null, '0');

-- ----------------------------
-- Table structure for t_port
-- ----------------------------
DROP TABLE IF EXISTS `t_port`;
CREATE TABLE `t_port` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(50) DEFAULT NULL,
  `country_en` varchar(50) DEFAULT NULL,
  `country_cn` varchar(50) DEFAULT NULL,
  `port_code` varchar(50) DEFAULT NULL,
  `port_en` varchar(50) DEFAULT NULL,
  `port_cn` varchar(50) DEFAULT NULL,
  `route_code` varchar(50) DEFAULT NULL,
  `route_en` varchar(50) DEFAULT NULL,
  `route_cn` varchar(50) DEFAULT NULL,
  `area_code` varchar(50) DEFAULT NULL,
  `area_en` varchar(50) DEFAULT NULL,
  `area_cn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_port
-- ----------------------------
INSERT INTO `t_port` VALUES ('1', 'JPN', 'Japan', '日本', 'AKI', 'AKITA', '秋田', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('2', 'JPN', 'Japan', '日本', 'CBA', 'CHIBA', '千叶', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('3', 'JPN', 'Japan', '日本', 'FKA', 'FUKUOKA', '福冈', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('4', 'JPN', 'Japan', '日本', 'FUK', 'FUKUYAMA', '福山', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('5', 'JPN', 'Japan', '日本', 'HAC', 'HACHINOHE', '八户', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('6', 'JPN', 'Japan', '日本', 'HIT', 'HITACHI', '日立', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('7', 'JPN', 'Japan', '日本', 'HKA', 'HAKATA', '博多', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('8', 'JPN', 'Japan', '日本', 'HMA', 'HIROSHIMA', '广岛', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('9', 'JPN', 'Japan', '日本', 'HOS', 'HOSOSHIMA', '细岛', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('10', 'JPN', 'Japan', '日本', 'IMA', 'IMABARI', '今治', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('11', 'JPN', 'Japan', '日本', 'IOM', 'IYO MISHIMA', '伊予三岛', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('12', 'JPN', 'Japan', '日本', 'IWA', 'IWAKUNI', '岩国', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('13', 'JPN', 'Japan', '日本', 'KAG', 'KAGOSHIMA', '鹿儿岛', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('14', 'JPN', 'Japan', '日本', 'KAW', 'KAWASAKI', '川崎', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('15', 'JPN', 'Japan', '日本', 'KIT', 'KITAKYUSHU', '北九州', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('16', 'JPN', 'Japan', '日本', 'KNZ', 'KANAZAWA', '金泽', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('17', 'JPN', 'Japan', '日本', 'KOB', 'KOBE', '神户', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('18', 'JPN', 'Japan', '日本', 'MAI', 'MAIZURU', '舞鹤', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('19', 'JPN', 'Japan', '日本', 'MGA', 'MATSUNAGA', '松永', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('20', 'JPN', 'Japan', '日本', 'MIZ', 'MIZUSHIMA', '水岛', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('21', 'JPN', 'Japan', '日本', 'MMA', 'MATSUYAMA', '松山', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('22', 'JPN', 'Japan', '日本', 'MOJ', 'MOJI', '门司', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('23', 'JPN', 'Japan', '日本', 'NGO', 'NAGOYA', '名古屋', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('24', 'JPN', 'Japan', '日本', 'NAH', 'NAHA', '那霸', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('25', 'JPN', 'Japan', '日本', 'NAO', 'NAOETSU', '直江津', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('26', 'JPN', 'Japan', '日本', 'NKI', 'NAGASAKI', '长崎', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('27', 'JPN', 'Japan', '日本', 'NTA', 'NIIGATA', '新泻', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('28', 'JPN', 'Japan', '日本', 'OIT', 'OITA', '大分', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('29', 'JPN', 'Japan', '日本', 'OSK', 'OSAKA', '大阪', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('30', 'JPN', 'Japan', '日本', 'SAK', 'SAKAIMINATO', '境港', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('31', 'JPN', 'Japan', '日本', 'SBI', 'SHIBUSHI', '志布志', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('32', 'JPN', 'Japan', '日本', 'SEN', 'SENDAI', '仙台', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('33', 'JPN', 'Japan', '日本', 'SKI', 'SAKAI', '土界', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('34', 'JPN', 'Japan', '日本', 'SKU', 'SAKAI/SENBOKU', '泉北', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('35', 'JPN', 'Japan', '日本', 'SKT', 'SAKATA', '酒田', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('36', 'JPN', 'Japan', '日本', 'SMZ', 'SHIMIZU', '清水', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('37', 'JPN', 'Japan', '日本', 'TRG', 'TSURUGA', '敦贺', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('38', 'JPN', 'Japan', '日本', 'TKY', 'TOKUYAMA', '德山', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('39', 'JPN', 'Japan', '日本', 'TYO', 'TOKYO', '东京', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('40', 'JPN', 'Japan', '日本', 'TMK', 'TOMAKOMAI', '占小牧', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('41', 'JPN', 'Japan', '日本', 'TOS', 'TOYAMA SINKO', '富山新港', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('42', 'JPN', 'Japan', '日本', 'TYA', 'TOYAMA', '富山', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('43', 'JPN', 'Japan', '日本', 'WKA', 'WAKAYAMA', '和歌山', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('44', 'JPN', 'Japan', '日本', 'YCI', 'YOKKAICHI', '四日市', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('45', 'JPN', 'Japan', '日本', 'YOK', 'YOKOHAMA', '横滨', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('46', 'JPN', 'Japan', '日本', 'KOC', 'KOCH', '高知', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('47', 'JPN', 'Japan', '日本', 'HNS', 'HONSHN', '川内', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('48', 'JPN', 'Japan', '日本', 'OFU', 'OFUNATO', '大航渡', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('49', 'JPN', 'Japan', '日本', 'ONA', 'ONAHAMA', '小名滨', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('50', 'JPN', 'Japan', '日本', 'MII', 'MIIKE', '三池', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('51', 'JPN', 'Japan', '日本', 'ISH', 'ISHIKARI', '北海道', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('52', 'JPN', 'Japan', '日本', 'ISI', 'ISHIKARI', '石狩', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('53', 'JPN', 'Japan', '日本', 'IMI', 'IMARI', '伊万里', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('54', 'JPN', 'Japan', '日本', 'KMJ', 'KUMANOTO', '熊本', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('55', 'JPN', 'Japan', '日本', 'MOR', 'MORORAN', '室兰', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('56', 'JPN', 'Japan', '日本', 'TAK', 'TAKAMATSU', '高松', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('57', 'JPN', 'Japan', '日本', 'THS', 'TOYAHASHI', '丰桥', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('58', 'JPN', 'Japan', '日本', 'YAT', 'YATSUSHIRO ', '八代', 'JP', 'Japan', '日本', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('59', 'KOR', 'Korea', '韩国', 'BUS', 'BUSAN', '釜山', 'KR', 'Korean', '韩国', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('60', 'KOR', 'Korea', '韩国', 'INC', 'INCHON', '仁川', 'KR', 'Korean', '韩国', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('61', 'KOR', 'Korea', '韩国', 'ULS', 'ULSAN', '蔚山', 'KR', 'Korean', '韩国', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('62', 'KOR', 'Korea', '韩国', 'KUY', 'kwangyang ', '光阳', 'KR', 'Korean', '韩国', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('63', 'TWN', 'Taiwan', '中国台湾', 'KEE', 'KEELUNG', '基隆', 'TW', 'Taiwan', '台湾', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('64', 'TWN', 'Taiwan', '中国台湾', 'TAI', 'TAICHUNG', '台中', 'TW', 'Taiwan', '台湾', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('65', 'TWN', 'Taiwan', '中国台湾', 'KAO', 'KAOHSIUNG', '高雄', 'TW', 'Taiwan', '台湾', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('66', 'TWN', 'Taiwan', '中国台湾', 'TPI', 'TAIPEI', '台北', 'TW', 'Taiwan', '台湾', 'N.E.ASIA', 'Northeast Asia', '东北亚');
INSERT INTO `t_port` VALUES ('67', 'BRN', 'Brunei', '文莱', 'MUH', 'MUARA HARBOUR', '穆阿拉港', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('68', 'MMR', 'Burma', '缅甸', 'YAN', 'YANGON', '仰光', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('69', 'IDN', 'Indonesia', '印度尼西亚', 'BLN', 'BELAWAN', '勿拉湾', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('70', 'IDN', 'Indonesia', '印度尼西亚', 'BKL', 'BENGKALIS', '望加丽', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('71', 'IDN', 'Indonesia', '印度尼西亚', 'DUM', 'DUMAI', '杜迈', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('72', 'IDN', 'Indonesia', '印度尼西亚', 'JKT(1)', 'JAKARTA(UTC 1)', '杜迈', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('73', 'IDN', 'Indonesia', '印度尼西亚', 'JKT(2)', 'JAKARTA(UTC 2)', '雅加达(UTC 2)', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('74', 'IDN', 'Indonesia', '印度尼西亚', 'JKT(3)', 'JAKARTA(UTC 3)', '雅加达(UTC 3)', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('75', 'IDN', 'Indonesia', '印度尼西亚', 'JKT(4)', 'JAKARTA(UTC 4)', '雅加达(UTC 4)', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('76', 'IDN', 'Indonesia', '印度尼西亚', 'TJP', 'TANJUNG PRIOK ', '丹戎不碌', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('77', 'IDN', 'Indonesia', '印度尼西亚', 'MACS', 'MACASSAR( UJUNG PANDANG)', '马卡萨(乌戎潘当)', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('78', 'IDN', 'Indonesia', '印度尼西亚', 'MED', 'MEDAN', '棉兰', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('79', 'IDN', 'Indonesia', '印度尼西亚', 'PLM', 'PALEMBANG', '巨港', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('80', 'IDN', 'Indonesia', '印度尼西亚', 'PBA', 'PAVLAV BATAM', '巴塔姆岛', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('81', 'IDN', 'Indonesia', '印度尼西亚', 'PNJ', 'PANJANG', '潘姜', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('82', 'IDN', 'Indonesia', '印度尼西亚', 'PNK', 'PONTIANAK', '坤甸', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('83', 'IDN', 'Indonesia', '印度尼西亚', 'SRG', 'SEMARANG', '三宝垄', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('84', 'IDN', 'Indonesia', '印度尼西亚', 'SUR', 'SURABAYA', '泗水', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('85', 'IDN', 'Indonesia', '印度尼西亚', 'TPR', 'TANJUNG PELEPAS', '丹戎帕拉帕斯', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('86', 'IDN', 'Indonesia', '印度尼西亚', 'BTA', 'Batam', '巴谈', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('87', 'IDN', 'Indonesia', '印度尼西亚', 'PEK', 'PEKAN BARU', '北干巴鲁', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('88', 'IDN', 'Indonesia', '印度尼西亚', 'MRK', 'MERAK', '孔雀港', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('89', 'IDN', 'Indonesia', '印度尼西亚', 'PRW', 'PERAWANG', '巴拉旺', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('90', 'IDN', 'Indonesia', '印度尼西亚', 'DIL', 'DILI', '帝力', 'ID', 'Indonesia', '印尼', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('91', 'KHM', 'Cambodia', '柬埔寨', 'KPS', 'KOMPONG SOM', '磅逊', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('92', 'KHM', 'Cambodia', '柬埔寨', 'PPH', 'PHNOM PEWH', '金边', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('93', 'KHM', 'Cambodia', '柬埔寨', 'SIH', 'Sihanoukville', '西哈努克港', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('94', 'MYS', 'Malaysia', '马来西亚', 'BTU', 'BINTULU', '民都鲁', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('95', 'MYS', 'Malaysia', '马来西亚', 'KOK', 'KOTA KINABALU', '亚庇', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('96', 'MYS', 'Malaysia', '马来西亚', 'KUA', 'KUANTAN', '关丹', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('97', 'MYS', 'Malaysia', '马来西亚', 'KUC', 'KUCHING', '古晋', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('98', 'MYS', 'Malaysia', '马来西亚', 'LBU', 'LABUAN', '拉布安', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('99', 'MYS', 'Malaysia', '马来西亚', 'MIR', 'MIRI', '米里', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('100', 'MYS', 'Malaysia', '马来西亚', 'PGU', 'PASIR GUDANG', '巴西古丹', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('101', 'MYS', 'Malaysia', '马来西亚', 'PEN', 'PENANG', '槟城', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('102', 'MYS', 'Malaysia', '马来西亚', 'PKE（W）', 'PORT KELUNG（W）', '巴生港（西港）', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('103', 'MYS', 'Malaysia', '马来西亚', 'PKE（N）', 'PORT KELUNG（N）', '巴生港（北港）', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('104', 'MYS', 'Malaysia', '马来西亚', 'SDK', 'SANDAKAN', '山打根', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('105', 'MYS', 'Malaysia', '马来西亚', 'SIB', 'SIBU', '泗务', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('106', 'MYS', 'Malaysia', '马来西亚', 'TWU', 'TAWAU', '斗湖', 'SI & MY', 'Singapore & Malaysia', '新马', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('107', 'PHL', 'Philippine', '菲律宾', 'CDO', 'CAGAYAN DE ORO', '卡加延德奥罗', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('108', 'PHL', 'Philippine', '菲律宾', 'CEB', 'CEBU', '宿务', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('109', 'PHL', 'Philippine', '菲律宾', 'GES', 'GENERAL SANTOS', '桑托斯', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('110', 'PHL', 'Philippine', '菲律宾', 'MNL(S)', 'MANILA(SOUTH)', '马尼拉(南港)', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('111', 'PHL', 'Philippine', '菲律宾', 'MNL(N)', 'MANILA(NORTH)', '马尼拉(北港)', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('112', 'PHL', 'Philippine', '菲律宾', 'DAV', 'DAVAO', '达沃', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('113', 'PHL', 'Philippine', '菲律宾', 'SUB', 'SUBIC BAY', '苏比克湾', 'PH', 'Philippi', '菲律宾', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('114', 'SGP', 'Singapore', '新加坡', 'SIN', 'SINGAPORE', '新加坡', 'SI', 'Singapore', '新加坡', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('115', 'THA', 'Thailand', '泰国', 'BKK(PAT)', 'BANGKOK(PAT)', '曼谷(PAT)', 'TH', 'Vietnam & Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('116', 'THA', 'Thailand', '泰国', 'BKK(SCT)', 'BANGKOK(SCT)', '曼谷(SCT)', 'TH', 'Vietnam & Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('117', 'THA', 'Thailand', '泰国', 'BKK(TPT)', 'BANGKOK(TPT)', '曼谷(TPT)', 'TH', 'Vietnam & Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('118', 'THA', 'Thailand', '泰国', 'LCB', 'LAEM CHABANG', '林查班', 'TH', 'Vietnam & Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('119', 'THA', 'Thailand', '泰国', 'SNK', 'SONGKHLA', '宋卡', 'TH', 'Vietnam & Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('120', 'THA', 'Thailand', '泰国', 'BKK（BMT）', 'BANGKOK(BMT)', '曼谷(BMT)', 'TH', '', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('121', 'THA', 'Thailand', '泰国', 'LKB', 'LAT KRABANG', '拉塔卡班', 'TH', 'Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('122', 'THA', 'Thailand', '泰国', 'BKK(unithai）', 'BANGKOK(unithai)', '曼谷(unithai)', 'TH', 'Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('123', 'THA', 'Thailand', '泰国', 'PAK', 'PAKNAM', '北榄', 'TH', 'Thailand', '泰国线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('124', 'VNM', 'Vietnam', '越南', 'HCM（NEW PORT）', 'HOCHIMINH（NEW PORT）', '胡志明（新港）', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('125', 'VNM', 'Vietnam', '越南', 'HCM（CAT LAI）', 'HOCHIMINH（CAT LAI）', '胡志明（CAT LAI）', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('126', 'VNM', 'Vietnam', '越南', 'HCM(TAC）', 'HO CHI MINH(TANCANG)', '胡志明太仓港', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('127', 'VNM', 'Vietnam', '越南', 'HCM(VICT)', 'HO CHI MINH (VICT)', '胡志明VICT港', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('128', 'VNM', 'Vietnam', '越南', 'HPH', 'HAIPHONG', '海防', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('129', 'VNM', 'Vietnam', '越南', 'DAN', 'DANANG', '岘港', 'VN', 'Vietnam & Thailand', '越南线', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('130', 'IND', 'India', '印度', 'MUB', 'Mumbai', '孟买', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('131', 'IND', 'India', '印度', 'CAL', 'CALCUTTA', '加尔格答', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('132', 'IND', 'India', '印度', 'CCT', 'CALICUT', '卡利卡特', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('133', 'IND', 'India', '印度', 'COC', 'COCHIN', '科钦', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('134', 'IND', 'India', '印度', 'KEN', 'KENDLA', '根德拉', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('135', 'IND', 'India', '印度', 'MDR', 'MADRAS', '马德拉斯', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('136', 'IND', 'India', '印度', 'MAH', 'MAHE', '马埃', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('137', 'IND', 'India', '印度', 'NSA', 'NHAVA SHEVA', '那瓦舍瓦', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('138', 'IND', 'India', '印度', 'SRT', 'SURAT', '苏拉特', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('139', 'IND', 'India', '印度', 'MAA', 'CHENNAI ', '清奈', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('140', 'IND', 'India', '印度', 'SAC', 'SACHIN  ', '萨钦', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('141', 'IND', 'India', '印度', 'AMD', 'AHMEDABAD', '艾哈迈达巴德 ', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('142', 'IND', 'India', '印度', 'BGR', 'BANGALORE', '班加罗尔', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('143', 'IND', 'India', '印度', 'NEW（T）', 'NEW DELHI（T）', '新德里T港', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('144', 'IND', 'India', '印度', 'NEW（F）', 'NEW DELHI（F）', '新德里F港', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('145', 'IND', 'India', '印度', 'NEW（P）', 'NEW DELHI（P）', '新德里P港', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('146', 'IND', 'India', '印度', 'DAD', 'DADRA', '达得里', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('147', 'IND', 'India', '印度', 'MUR', 'MUNDRA ', '蒙德拉', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('148', 'IND', 'India', '印度', 'PIP', 'PIPAVAV', '皮帕瓦沃 ', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('149', 'IND', 'India', '印度', 'TUT', 'TUTICORIN', '杜蒂戈林', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('150', 'IND', 'India', '印度', 'VSK', 'VISAKHAPATNAM', '维沙卡帕特南', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('151', 'IND', 'India', '印度', '', 'HALDIA', '霍尔迪亚', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('152', 'IND', 'India', '印度', 'HYD', 'Hyderabad', '海德拉巴', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('153', 'IND', 'India', '印度', 'KAN', 'KANDLA', '堪德拉', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('154', 'IND', 'India', '印度', 'JPR', 'JAIPUR', '斋浦尔', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('155', 'IND', 'India', '印度', 'LUD', 'LUDHIANA', '卢迪亚纳', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('156', 'IND', 'India', '印度', 'KPR', 'KANPUR', '坎普拉', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('157', 'IND', 'India', '印度', 'MAN', 'MANGALORE', '芒格洛尔', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('158', 'IND', 'India', '印度', 'PIT', 'PITHAMPUR', '皮坦普尔', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('159', 'IND', 'India', '印度', 'WLJ', 'WALUJ', '瓦路基', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('160', 'IND', 'India', '印度', 'BRO', 'BARODA', '巴罗达', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('161', 'IND', 'India', '印度', 'NGP', 'NAGPUR', '那格浦尔', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('162', 'IND', 'India', '印度', 'HAR', 'GARHI HARSARU', '赫尔撒鲁堡', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('163', 'BGD', 'Bengal', '孟加拉', 'CHT', 'CHITTAGONG', '吉大港', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('164', 'BGD', 'Bengal', '孟加拉', 'DHA', 'DHAKA', '达卡', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('165', 'BGD', 'Bengal', '孟加拉', 'MGL', 'MONGLA', '蒙格拉', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('166', 'LKA', 'Sri Lanka', '斯里兰卡', 'CLB', 'COLOMBO', '科伦坡', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('167', 'MDV', 'Maldives', '马尔代夫', 'MAL', 'MALE', '马累', 'MY ', 'Malaysia                                          ', '马来西亚   ', 'S.E.ASIA', 'southeast Asia', '东南亚');
INSERT INTO `t_port` VALUES ('168', 'PAK', 'Pakistan', '巴基斯坦', 'KHI(K)', 'KARACHI(KICT)', '卡拉奇(旧港)', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('169', 'PAK', 'Pakistan', '巴基斯坦', 'KHI(P)', 'KARACHI(PICT)', '卡拉奇(P港）', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('170', 'PAK', 'Pakistan', '巴基斯坦', 'KHI(Q)', 'KARACHI(Port Qasim)', '卡拉奇((新港)', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('171', 'PAK', 'Pakistan', '巴基斯坦', 'LHE', 'Lahore', '拉合尔', 'IN & PA', 'India-Pakistan', '印巴', 'ID & PAK', 'India-Pakistan', '印巴');
INSERT INTO `t_port` VALUES ('172', 'AUS', 'Australia', '澳大利亚', 'ADL', 'ADELAIDE', '阿德莱德', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('173', 'AUS', 'Australia', '澳大利亚', 'BEL', 'BELL BAY', '贝尔贝', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('174', 'AUS', 'Australia', '澳大利亚', 'BNE', 'BURN', '伯尼', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('175', 'AUS', 'Australia', '澳大利亚', 'BRI', 'BRISBANE', '布里斯班', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('176', 'AUS', 'Australia', '澳大利亚', 'FRM', 'FREMANTLE', '弗里曼特尔', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('177', 'AUS', 'Australia', '澳大利亚', 'HBT', 'HOBART', '霍巴特', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('178', 'AUS', 'Australia', '澳大利亚', 'MEL', 'MELBOURNE', '墨尔本', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('179', 'AUS', 'Australia', '澳大利亚', 'LST', 'Launceston', '朗塞斯顿', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('180', 'AUS', 'Australia', '澳大利亚', 'PER', 'PERTH', '佩斯', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('181', 'AUS', 'Australia', '澳大利亚', 'SYD', 'SYDNEY', '悉尼', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('182', 'AUS', 'Australia', '澳大利亚', '', 'SALZBURG', '萨尔斯堡', 'AUS', 'Australia', '澳大利亚', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('183', 'NZL', 'New Zealand', '新西兰', 'AUC', 'AUCKLAND', '奥克兰', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('184', 'NZL', 'New Zealand', '新西兰', 'BLF', 'BLUFF', '布拉夫', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('185', 'NZL', 'New Zealand', '新西兰', 'DUD', 'DUNEDIN', '达尼丁', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('186', 'NZL', 'New Zealand', '新西兰', 'LYT', 'LYTTELTON', '利特尔顿', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('187', 'NZL', 'New Zealand', '新西兰', 'NPR', 'NAPR', '内皮尔', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('188', 'NZL', 'New Zealand', '新西兰', 'NEL', 'NELSON', '纳尔逊', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('189', 'NZL', 'New Zealand', '新西兰', 'NPL', 'NEW PLYMOUTH', '新普利茅斯', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('190', 'NZL', 'New Zealand', '新西兰', 'PCH', 'PORT CHALMERS', '查马斯港', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('191', 'NZL', 'New Zealand', '新西兰', 'TRN', 'TAURANGA', '陶朗阿', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('192', 'NZL', 'New Zealand', '新西兰', 'WLG', 'WELLINGTON', '惠灵顿', 'NEW-ZL', 'New Zealand', '新西兰', 'AUS & NEW', 'Australia and New Zealand', '澳新');
INSERT INTO `t_port` VALUES ('193', 'FJI', 'Fijian', '斐济', 'LTK', 'LAUTOKA', '劳托卡', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('194', 'FJI', 'Fijian', '斐济', 'SUV', 'SUVA', '苏瓦', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('195', 'GUM', 'Guam', '关岛', 'GUM', 'GUAM', '关岛', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('196', 'KIR', 'Kiribati', '基里巴斯', 'TRW', 'TARAWA', '塔拉凡', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('197', 'NCL', 'NEW CALEDONIA', '新喀里多尼亚', 'NUM', 'NOUMEA', '努美阿', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('198', 'PYF', 'FRENCH POLYNESIA(FRANCE)', '法属玻里尼西亚', 'PAP', 'PAPEETE', '帕皮提', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('199', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'ALO', 'ALOTAU', '阿洛陶', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('200', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'KAV', 'KAVNG', '卡维恩', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('201', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'KIM', 'KIMBE', '金贝', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('202', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'KTA', 'KIETA', '基埃塔', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('203', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'LAE', 'LAE', '莱城', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('204', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'MAD', 'MADANG', '马当', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('205', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'MRB', 'MOROBE', '莫罗贝', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('206', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'ORB', 'OROBAY', '奥鲁湾', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('207', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'POM', 'PORT MORESBY', '莫尔兹比港', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('208', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'RAB', 'RABAUL', '腊包儿', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('209', 'PNG', 'papua new guinea', '巴布亚新几内亚', 'WER', 'WEWAK', '威瓦克', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('210', 'SLB', 'Solomon Islands', '所罗门群岛', 'HON', 'HONARA', '霍尼亚拉', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('211', 'SLB', 'Solomon Islands', '所罗门群岛', 'NOR', 'NORO', '诺鲁', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('212', 'TON', 'Tonga Islands', '汤加', 'NUK', 'NUKUALOFA', '努库阿洛法', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('213', 'TUV', 'Tuvalu', '图瓦卢　　　　', 'FNF', 'FUNAFUTISLAND', '富纳富提', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('214', 'VUT', 'Vanuatu', '瓦努阿图', 'PVI', 'PORT VILA', '维拉港', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('215', 'VUT', 'Vanuatu', '瓦努阿图', 'VCD', 'VICTORIA', '桑托', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('216', 'WSM', 'Samoa', '西萨摩亚', 'API', 'APIA', '阿皮亚', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('217', 'ARE', 'Arab Emirates', '阿联酋', 'ABD', 'ABU DHABI', '阿布扎比', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('218', 'ARE', 'Arab Emirates', '阿联酋', 'DAS', 'DAS ISLAND', '达斯岛', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('219', 'ARE', 'Arab Emirates', '阿联酋', 'JEA', 'JEBEL ALI', '杰贝阿里', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('220', 'ARE', 'Arab Emirates', '阿联酋', 'FUJ', 'FUJARAH', '富查伊拉', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('221', 'ARE', 'Arab Emirates', '阿联酋', 'KFA', 'KHOR FAKKAN', '豪尔费坝', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('222', 'ARE', 'Arab Emirates', '阿联酋', 'SRJ', 'SHARJAH', '沙迦', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('223', 'ARE', 'Arab Emirates', '阿联酋', 'PRA', 'PORT RASHID', '拉希德港', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('224', 'ARE', 'Arab Emirates', '阿联酋', 'AJM', 'AJMAN', '阿治曼', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('225', 'IRQ', 'Iraq', '伊拉克', 'BAS', 'BASRAH', '巴士拉', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('226', 'IRQ', 'Iraq', '伊拉克', 'UMM', 'UMM QASR', '乌姆盖茨尔', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('227', 'IRN', 'Iran', '伊朗', 'BND', 'BANDER ABBAS', '阿巴斯', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('228', 'IRN', 'Iran', '伊朗', 'KHO', 'Khorramshahr', '霍拉姆沙赫尔', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('229', 'IRN', 'Iran', '伊朗', 'BUR', 'BUSHEHR', '布什尔', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('230', 'IRN', 'Iran', '伊朗', 'THR', 'TEHRAN', '德黑兰', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('231', 'KWT', 'Kuwait', '科威特', 'KUW（SHB)', 'KUWAIT(SHUAIBAH)', '科威特(舒艾巴)', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('232', 'KWT', 'Kuwait', '科威特', 'KUW（SWK', 'KUWAIT(SHUWAIKU)', '科威特(舒瓦克)', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('233', 'OMN', 'Oman', '阿曼', 'MQS', 'MINA QABOOS', '米纳卡布斯', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('234', 'OMN', 'Oman', '阿曼', 'MUS(SULTAN)', 'MUSCAT(PORT SULTAN QABOOS)', '马斯喀特(PORT SULTAN QABOOS)', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('235', 'OMN', 'Oman', '阿曼', 'MUS(SOHAR)', 'MUSCAT(PORT SOHAR)', '马斯喀特((PORT SOHAR)', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('236', 'OMN', 'Oman', '阿曼', 'SOH', 'SOHAR', '索哈', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('237', 'OMN', 'Oman', '阿曼', 'SLA', 'SALALAH', '塞拉莱', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('238', 'OMN', 'Oman', '阿曼', 'PST', 'PORT SULTAN QABOOS', '苏丹卡布斯', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('239', 'BHR', 'Bahrain', '巴林', 'BAH', '', '', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('240', 'BHR', 'Bahrain', '巴林', 'BKH', 'BANDAR KHOMEIN', '霍梅尼港', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('241', 'QAT', 'Qatar', '卡塔尔', 'DOH', 'DOHA', '多哈', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('242', 'SAU', 'Saudi Arabia', '沙特阿拉伯', 'DAM', 'DAMMAM', '达曼', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('243', 'SAU', 'Saudi Arabia', '沙特阿拉伯', 'RIY', 'Riyadh ', '利雅得', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('244', 'SAU', 'Arab Emirates', '阿联酋', 'ABD', 'ABU DHABI', '阿布扎比', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('245', 'DJI', 'Djibouti', '吉布提', 'DJI', 'DJIBOUTI', '吉布提', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('246', 'JOR', 'Jordan', '约旦', 'AQB', 'AQABA', '亚喀巴', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('247', 'JOR', 'Jordan', '约旦', 'AQS', 'AQABA SPECIAL ECONIMIC ZONE', '亚喀吧区政府', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('248', 'JOR', 'Jordan', '约旦', 'AMM', 'Amman', '安曼', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('249', 'JOR', 'Jordan', '约旦', 'ZAR', 'AZ ZARQA ', '阿尔克马尔扎尔卡', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('250', 'SAU', 'Saudi Arabia', '沙特阿拉伯', 'JED', 'JEDDAH', '吉达', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('251', 'SAU', 'Saudi Arabia', '沙特阿拉伯', 'YNB', 'YENBU', '延布', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('252', 'YEM', 'Yemen', '也门', 'ADE', 'ADEN', '亚丁', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('253', 'YEM', 'Yemen', '也门', 'MUK', 'MUKALLA', '穆卡拉', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('254', 'YEM', 'Yemen', '也门', 'HUD', 'HODEIDAH ', '荷台达', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('255', 'ETH', 'Ethiopia', '埃塞俄比亚', 'ASB', 'ASSAB', '阿萨布', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('256', 'ETH', 'Ethiopia', '埃塞俄比亚', 'MAS', 'MASSAWA', '马萨瓦', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('257', 'SDN', 'Sudan', '苏丹', 'PSU', 'PORT SUDAN', '苏丹港', 'Red', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('258', 'TZA', 'Tanzania', '坦桑尼亚', 'DAR', 'DAR ES SALAAM', '达累斯萨拉姆', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('259', 'TZA', 'Tanzania', '坦桑尼亚', 'TNG', 'TANGA', '坦噶', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('260', 'TZA', 'Tanzania', '坦桑尼亚', 'ZNZ', 'ZANZIBAR', '桑给巴尔', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('261', 'SOM', 'Somali', '索马里', 'BER', 'BERBERA', '柏培拉', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('262', 'SOM', 'Somali', '索马里', 'MGD', 'Mogadishu', '摩加迪沙', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('263', 'MDG', 'Madagascar', '马达加斯加', 'TOA', 'TOAMASINA', '图阿马西纳', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('264', 'MDG', 'Madagascar', '马达加斯加', 'TMT', 'TAMATAVE', '塔马塔夫 ', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('265', 'KEN', 'Kenya', '肯尼亚', 'MBA', 'MOMBASA', '蒙巴萨', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('266', 'KEN', 'Kenya', '肯尼亚', 'NRB', 'Nairobi', '内罗毕', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('267', 'KEN', 'Kenya', '肯尼亚', 'EMB', 'ICD EMBAKASI', '因巴喀西', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('268', 'COM', 'Comorin', '科摩罗', 'MRN', 'MORONI', '莫罗尼', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('269', 'LBR', 'Liberia', '利比里亚', 'BUC', 'BUCHANAN(LR)', '布坎南', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('270', 'UGA', 'Uganda', '乌干达', 'KPL', 'KAMPALA   ', '坎帕拉', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('271', 'ZMB', 'Zambia', '赞比亚', 'LUS', 'LUSAKA', '卢萨卡', 'E.AFRICA', 'East Africa', '东非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('272', 'ZAF', 'South Africa', '南非', 'CPT', 'CAPE TOWN', '开普敦', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('273', 'ZAF', 'South Africa', '南非', 'DUR', 'DURBAN', '德班', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('274', 'ZAF', 'South Africa', '南非', 'ELN', 'EAST LONDON', '东伦敦', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('275', 'ZAF', 'South Africa', '南非', 'PEL', 'PORT ELIZABETH', '伊丽莎白港', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('276', 'ZAF', 'South Africa', '南非', 'JOH', 'JOHANNESBURG', '约翰内斯堡', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('277', 'ZAF', 'South Africa', '南非', 'PRE', 'PRETORIA', '比勒陀利亚', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('278', 'ZAF', 'South Africa', '南非', 'REU ', 'PORT REUNION', '留尼汪港', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('279', 'REU', 'Reunion', '留尼旺', 'PDG', 'POINTE DES GALETS', '加莱角', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('280', 'Mru', 'Mauritius', '毛里求斯', 'PLU', 'PORT LOUIS', '路易港', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('281', 'MOZ', 'Mozambique', '莫桑比克', 'BRA', 'BEIRA', '贝拉', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('282', 'MOZ', 'Mozambique', '莫桑比克', 'MPT', 'MAPUTO', '马普托', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('283', 'MOZ', 'Mozambique', '莫桑比克', 'NAC', 'NACALA', '纳卡拉', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('284', 'MOZ', 'Mozambique', '莫桑比克', 'QUE', 'QUELIMANE', '克利马内', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('285', 'NAN', 'Namibia', '纳米比亚', 'WVB', 'WALVES BAY', '鲸湾港', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('286', 'SYC', 'Seychelles', '塞舌尔', 'MAW', 'MAHE', '马哈', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('287', 'SYC', 'Seychelles', '塞舌尔', 'VTR', 'VICTORIA', '维多利亚', 'S.AFRICA', 'South Africa', '南非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('288', 'AGO', 'Angora', '安哥拉', 'LUA', 'LUANDA', '罗安达', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('289', 'AGO', 'ANGOLA', '安哥拉', 'LOB', 'LOBITO                        ', '洛比托', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('290', 'AGO', 'ANGOLA', '安哥拉', 'NAM', 'NAMIBE                        ', '纳米比', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('291', 'BEN', 'BENIN', '贝宁', 'COT', 'COTONOU', '科托努', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('292', 'CIV', 'IVORY COAST', '象牙海岸', 'ABJ', 'ABIDJAN', '阿比让', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('293', 'CMR', 'Cameroon', '喀麦隆', 'DAL', 'DOUALA', '杜阿拉', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('294', 'GAB', 'Gabon', '加蓬', 'LBV', 'LIBREVILLE', '利伯维尔', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('295', 'GHA', 'Ghana', '加纳', 'TKR', 'TAKORADI', '塔科拉迪', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('296', 'GHA', 'Ghana', '加纳', 'TEM', 'TEMA', '特马', 'Ivory Coast', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('297', 'GHA', 'Ghana', '加纳', 'TKD', 'TAKORADI', '塔科拉迪 ', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('298', 'GMB', 'Gambian', '冈比亚', 'BJL', 'BANJUL', '班珠尔', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('299', 'GIN', 'Guinea', '几内亚', 'CNK', 'CONAKRY', '科纳克里', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('300', 'GIN', 'Guinea', '几内亚', 'BIS', 'BISSAU', '比绍', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('301', 'GNQ', 'Equatorial Guinea', '赤道几内亚', 'BAT', 'BATA', '巴塔', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('302', 'GNQ', 'Equatorial Guinea', '赤道几内亚', 'MLB', 'MALABO', '马拉博', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('303', 'LBR', 'Liberia', '利比里亚', 'MRV', 'MONROVIA', '蒙罗维亚', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('304', 'MRT', 'Mauritania', '毛里塔尼亚', 'NKC', 'NOUAKCHOTT', '努瓦克肖特', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('305', 'MRT', 'Mauritania', '毛里塔尼亚', 'NBU', 'NOUADHIBOU                ', '努瓦迪布 ', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('306', 'NGA', 'Nigeria', '尼日利亚', 'APA', 'APAPA', '阿帕帕', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('307', 'NGA', 'Nigeria', '尼日利亚', 'LGS', 'LAGOS', '拉各斯', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('308', 'NGA', 'Nigeria', '尼日利亚', 'PHA', 'PORT HARCOURT', '哈科特港', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('309', 'NGA', 'Nigeria', '尼日利亚', 'ONN', 'ONNE', '奥尼', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('310', 'NGA', 'Nigeria', '尼日利亚', 'TIN', 'TINCAN', '天坎', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('311', 'SLE', 'sierra leone', '塞拉利昂', 'FRT', 'FREETOWN', '弗里敦', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('312', 'SEN', 'Senegal', '塞内加尔', 'DKR', 'DAKAR', '达喀尔', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('313', 'TGO', 'Togo', '多哥', 'LOM', 'LOME', '洛美', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('314', 'COD', 'Congo', '刚果', 'MAT', 'MATADI', '马塔迪', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('315', 'COD', 'Congo', '刚果', 'PNR', 'POINTE NOIRE', '黑角', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('316', 'CPV', 'CAPE VERDE', '得角', 'MDL', 'MINDELO', '明德卢港', 'W.AFRICA', 'West Africa', '西非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('317', 'DZA', 'Algeria', '阿尔及利亚', 'ALGR', 'ALGIERS', '阿尔及尔', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('318', 'DZA', 'Algeria', '阿尔及利亚', 'WAN', 'ORAN WAHRA', '瓦赫兰', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('319', 'DZA', 'Algeria', '阿尔及利亚', 'ANN', 'ANNABA', '安纳巴', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('320', 'DZA', 'Algeria', '阿尔及利亚', 'SKK', 'SKIKDA', '斯克基达', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('321', 'DZA', 'Algeria', '阿尔及利亚', 'BEJ', 'BEJAIA', '贝贾亚', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('322', 'LBY', 'Libya', '利比亚', 'BGZ', 'BENGHAZI', '班加西', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('323', 'LBY', 'Libya', '利比亚', 'TOB', 'TOBRUK', '托卜鲁格', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('324', 'LBY', 'Libya', '利比亚', 'TRP', 'TRIPOLI', '的黎波里', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('325', 'LBY', 'Libya', '利比亚', 'ALK', 'AL KHOMS', '欧胡姆斯', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('326', 'LBY', 'Libya', '利比亚', 'MIS', 'MISURATA', '米苏拉塔', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('327', 'TUN', 'Tunis', '突尼斯', 'TNS', 'TUNIS', '突尼斯', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('328', 'MAR', 'Morocco', '摩洛哥', 'CAS', 'CASABLANCA', '卡萨布兰卡', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('329', 'MAR', 'Morocco', '摩洛哥', 'RBT', 'RABAT', '拉巴特', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('330', 'MAR', 'Morocco', '摩洛哥', 'TGR', 'Tangier', '丹吉尔', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('331', 'MAR', 'Morocco', '摩洛哥', 'DIR', 'AGADIR                        ', '阿加迪尔', 'N.AFRICA', 'North Africa', '北非', 'AFRICA', 'AFRICA', '非洲');
INSERT INTO `t_port` VALUES ('332', 'BEL', 'Belgium', '比利时', 'ATW', 'ANTWERPEN', '安特卫普', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('333', 'BEL', 'Belgium', '比利时', 'BRU', 'BRUSSELS', '布鲁塞尔', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('334', 'BEL', 'Belgium', '比利时', 'ZEE', 'ZEEBRUGGE', '泽布吕赫', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('335', 'DEU', 'Germany', '德国', 'BRV', 'BREMERHAVEN', '不来梅港', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('336', 'DEU', 'Germany', '德国', 'BON', 'BONN', '波恩', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('337', 'DEU', 'Germany', '德国', 'BRE', 'BREMEN', '不来梅', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('338', 'DEU', 'Germany', '德国', 'CLN', 'Cologne', '科隆', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('339', 'DEU', 'Germany', '德国', 'CUX', 'CUXHAVEN', '库克斯港', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('340', 'DEU', 'Germany', '德国', 'DIS', 'DUISBURGH', '杜伊斯堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('341', 'DEU', 'Germany', '德国', 'DSL', 'DUSSELEDORF', '杜塞尔多夫', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('342', 'DEU', 'Germany', '德国', 'FRA', 'FRANKFURT', '法兰克福', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('343', 'DEU', 'Germany', '德国', 'HMB', 'HAMBURG', '汉堡', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('344', 'DEU', 'Germany', '德国', 'MHM', 'MANNHEIM', '曼海姆', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('345', 'DEU', 'Germany', '德国', 'RSK', 'ROSTOCK', '罗斯托克', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('346', 'DNK', 'Denmark', '丹麦', 'ALB', 'AALBORG', '奥尔堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('347', 'DNK', 'Denmark', '丹麦', 'AHS', 'AARHUS', '奥尔胡斯', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('348', 'DNK', 'Denmark', '丹麦', 'KOBH', 'KOBENHAVN', '哥本哈根', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('349', 'DNK', 'Denmark', '丹麦', 'ESB', 'ESBJERG', '埃斯比约', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('350', 'DNK', 'Denmark', '丹麦', 'SNB', 'SONDERBORG', '桑讷堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('351', 'EST', 'Estonia', '爱沙尼亚', 'TALN', 'TALLINN', '塔林', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('352', 'ESP', 'Spain', '西班牙', 'ALG', 'ALGECIRAS', '阿尔赫西拉斯', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('353', 'ESP', 'Spain', '西班牙', 'BIL', 'BILBAO', '毕尔巴鄂', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('354', 'ESP', 'Spain', '西班牙', 'VIG', 'VIGO', '维哥', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('355', 'FIN', 'Finland', '芬兰', 'HNK', 'HANKO', '汉科', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('356', 'FIN', 'Finland', '芬兰', 'HEK', 'HELSINKI', '赫尔辛基', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('357', 'FIN', 'Finland', '芬兰', 'KTK', 'KOTKA', '科特卡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('358', 'FIN', 'Finland', '芬兰', 'PRI', 'PORI', '波里', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('359', 'FIN', 'Finland', '芬兰', 'TKU', 'TURKU', '图尔库', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('360', 'FRA', 'France', '法国', 'BOD', 'BORDEAUX', '波尔多', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('361', 'FRA', 'France', '法国', 'CALA', 'CALAIS', '加来', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('362', 'FRA', 'France', '法国', 'LEH', 'LE HAVRE', '勒哈弗尔', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('363', 'FRA', 'France', '法国', 'PRS', 'PARIS', '帕里斯', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('364', 'FRA', 'France', '法国', 'DUN', 'DUNKERQUE', '敦克尔克', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('365', 'GBR', 'Great Britain', '英国', 'BELF', 'BELFAST', '贝尔法斯特', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('366', 'GBR', 'Great Britain', '英国', 'BRS', 'BRISTOL', '布里斯托尔', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('367', 'GBR', 'Great Britain', '英国', 'CDF', 'CARDIFF', '加的夫', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('368', 'GBR', 'Great Britain', '英国', 'CLC', 'COLCHESTER', '科尔切斯特', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('369', 'GBR', 'Great Britain', '英国', 'DDE', 'DUNDEE', '丹迪', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('370', 'GBR', 'Great Britain', '英国', 'EDI', 'EDINBURGH', '爱丁堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('371', 'GBR', 'Great Britain', '英国', 'FXT', 'FELIXSTOWE', '费利克斯托', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('372', 'GBR', 'Great Britain', '英国', 'GLA', 'GLASGOW', '格拉斯哥', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('373', 'GBR', 'Great Britain', '英国', 'HUL', 'HULL', '赫尔', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('374', 'GBR', 'Great Britain', '英国', 'IMM', 'IMMINGHAM', '伊明赫姆', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('375', 'GBR', 'Great Britain', '英国', 'LVP', 'LIVERPOOL', '利物浦', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('376', 'GBR', 'Great Britain', '英国', 'LON', 'LONDON', '伦敦', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('377', 'GBR', 'Great Britain', '英国', 'MNC', 'MANCHESTER', '曼彻斯特', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('378', 'GBR', 'Great Britain', '英国', 'MID', 'MIDDLESBOROUGH', '米德尔斯伯勒', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('379', 'GBR', 'Great Britain', '英国', 'NCE', 'NEWCASTLE', '纽卡斯尔', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('380', 'GBR', 'Great Britain', '英国', 'NRW', 'NORWICH', '诺里奇', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('381', 'GBR', 'Great Britain', '英国', 'NSE', 'NEWCASTLE(TYNE)', '纽卡斯尔', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('382', 'GBR', 'Great Britain', '英国', 'PLY', 'PLYMOUTH', '普利茅斯', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('383', 'GBR', 'Great Britain', '英国', 'SOU', 'SOUTHAMPTON', '南安普顿', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('384', 'GBR', 'Great Britain', '英国', 'SWA', 'SWANSEA', '斯旺西', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('385', 'GBR', 'Great Britain', '英国', 'TMS', 'THAMESPORT', '泰晤士港', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('386', 'GBR', 'Great Britain', '英国', 'TIL', 'TILBURY', '蒂尔伯里', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('387', 'GIB', 'Gibraltar', '直布罗陀', 'GIB', 'BIBRACTAR', '直布罗陀', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('388', 'IEL', 'Ireland', '爱尔兰', 'COK', 'CORK', '科克', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('389', 'IEL', 'Ireland', '爱尔兰', 'DUB', 'DUBLIN', '都柏林', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('390', 'IEL', 'Ireland', '爱尔兰', 'WTF', 'WATERFORD', '沃特福德', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('391', 'ISL', 'Iceland', '冰岛', 'REK', 'REYKJAVIK', '雷克雅未克', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('392', 'LTU', 'Lithuanian', '立陶宛', 'RIG', 'RIGA', '里加', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('393', 'LTU', 'Lithuanian', '立陶宛', 'KLP', 'KLAIPEDA', '克莱佩达', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('394', 'NLD', 'Netherlands', '荷兰', 'AMS', 'AMSTERDAM', '阿姆斯特丹', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('395', 'NLD', 'Netherlands', '荷兰', 'FLU', 'FLUSHING', '符拉辛', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('396', 'NLD', 'Netherlands', '荷兰', 'RTM', 'ROTTERDAM', '鹿特丹', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('397', 'NOR', 'Norway', '挪威', 'ALS', 'AALESUNND', '奥勒松', 'EUR', 'EUROPE', '欧洲', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('398', 'NOR', 'Norway', '挪威', 'BRG', 'BERGEN', '卑尔根', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('399', 'NOR', 'Norway', '挪威', 'FDR', 'FREDRISKSTAD', '非特烈斯塔', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('400', 'NOR', 'Norway', '挪威', 'HAL', 'HALDEN', '哈尔登', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('401', 'NOR', 'Norway', '挪威', 'HAU', 'HAUGESUND', '海尔格松', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('402', 'NOR', 'Norway', '挪威', 'KRS（N）', 'KRISTAINSAND.N', '克里斯蒂安桑北', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('403', 'NOR', 'Norway', '挪威', 'KRS（S）', 'KRISTAINSAND.S', '克里斯蒂安桑南', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('404', 'NOR', 'Norway', '挪威', 'MOS', 'MOSS', '莫斯', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('405', 'NOR', 'Norway', '挪威', 'OSL', 'OSLO', '奥斯陆', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('406', 'NOR', 'Norway', '挪威', 'SNS', 'SANDNES', '桑内斯', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('407', 'NOR', 'Norway', '挪威', 'STA', 'STAVANGER', '斯塔万格', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('408', 'NOR', 'Norway', '挪威', 'THA', 'THAMSHAMN', '塔姆港', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('409', 'POL', 'poland', '波兰', 'GDN', 'GDANSK', '格但斯克', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('410', 'POL', 'poland', '波兰', 'GDY', 'GDYNIA', '格丁尼亚', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('411', 'PRT', 'Portugal', '葡萄牙', 'LIS', 'LISBON', '里斯本', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('412', 'PRT', 'Portugal', '葡萄牙', 'LXS', 'LEIXOES', '雷克索斯', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('413', 'PRT', 'Portugal', '葡萄牙', 'OPO', 'OPORTO', '波尔图', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('414', 'RUS', 'Russia', '俄罗斯联邦', 'SPT', 'SANKT PETEBURG', '圣彼德堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'SIBERIAN', 'TRANS SIBERIAN LANDBRIDGE', '西伯利亚航线');
INSERT INTO `t_port` VALUES ('415', 'RUS', 'Russia', '俄罗斯联邦', 'NOV', 'NOVOROSSIYSK', '新罗西斯克', 'Black ', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('416', 'RUS', 'Russia', '俄罗斯联邦', '', 'FISH PORT TERMINAL', '', '', '', '', '', '', '');
INSERT INTO `t_port` VALUES ('417', 'SWE', 'Sweden', '瑞典', 'GOT', 'GOTHENBURG', '哥德堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('418', 'SWE', 'Sweden', '瑞典', 'HEB', 'HELSINGBORG', '赫尔辛堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('419', 'SWE', 'Sweden', '瑞典', 'HSD', 'HALMSTAD', '哈尔姆斯塔德', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('420', 'SWE', 'Sweden', '瑞典', 'MLM', 'MALMO', '马尔默', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('421', 'SWE', 'Sweden', '瑞典', 'NORK', 'NORRKOKING', '诺尔雪平', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('422', 'SWE', 'Sweden', '瑞典', 'STO', 'STOCKHOLM', '斯德哥尔摩', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('423', 'AUT', 'Austria', '奥地利', 'SLZ', 'SALZBURG', '萨尔斯堡', 'EUR-INLAND', 'Europe inland', '欧洲内陆点', 'EUROPE', 'EUROPE', '欧洲');
INSERT INTO `t_port` VALUES ('424', 'BGR', 'Bulgaria', '保加利亚', 'VAR', 'VARNA', '瓦尔纳', 'Black ', 'Black Sea', '黑海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('425', 'BGR', 'Bulgaria', '保加利亚', 'CEU', 'CEUTA', '休达', 'MED', 'Black Sea', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('426', 'BGR', 'Bulgaria', '保加利亚', 'BGS', 'BOURGAS', '布尔加斯', 'MED', 'Black Sea', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('427', 'CPY', 'Cyprus', '塞浦路斯', 'LIM', 'LIMASSOL', '利马索尔', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('428', 'EGY', 'Egypt', '埃及', 'ALX', 'ALEXANDRIA', '亚历山大', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('429', 'EGY', 'Egypt', '埃及', 'RMD（10TH）', '10TH OF RAMADAN CITY', '瑞莫丹', 'Red Sea', 'Red Sea', '红海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('430', 'EGY', 'Egypt', '埃及', '6TH', '6TH OF OCTOBER', '十月六号港', 'Red Sea', 'Red Sea', '红海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('431', 'EGY', 'Egypt', '埃及', 'ALOB', 'AL OBOUR', '阿尔巴', 'Red Sea', 'Red Sea', '红海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('432', 'EGY', 'Egypt', '埃及', 'ALX（OLD）', 'ALEXANDRIA OLD PORT', '亚历山大老港', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('433', 'EGY', 'Egypt', '埃及', 'DMT', 'DAMTTA', '杜姆亚特', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('434', 'EGY', 'Egypt', '埃及', 'PSA', 'PORT SAID', '塞德港', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('435', 'EGY', 'Egypt', '埃及', 'PSA(W)', 'PORT SAID WEST', '塞德西港', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('436', 'EGY', 'Egypt', '埃及', 'SUZ', 'SUEZ', '苏伊士', 'Red Sea', 'Red Sea', '红海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('437', 'EGY', 'Egypt', '埃及', 'SOK', 'SOKHNA', '苏赫那泉', 'Red Sea', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('438', 'EGY', 'Egypt', '埃及', 'SAKR', 'SAKR KORAISH DRYPORT', '', 'Red Sea', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('439', 'EGY', 'Egypt', '埃及', 'OSD', '6 OCTOBER SOSDI DRYPORT', '', 'Red Sea', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('440', 'EGY', 'Egypt', '埃及', 'OCP', '6 OCTOBER CUSTOMS PORT', '', 'Red Sea', 'Red Sea', '红海', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('441', 'EGY', 'Egypt', '埃及', 'DAMI', 'DAMIETTA', '达米艾塔', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('442', 'ESP', 'Spain', '西班牙', 'BCL', 'BARCELONA', '巴塞罗那', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('443', 'ESP', 'Spain', '西班牙', 'CAST', 'CASTELLON', '卡斯特利翁', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('444', 'ESP', 'Spain', '西班牙', 'IBZ', 'IBIZA', '伊维萨', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('445', 'ESP', 'Spain', '西班牙', 'MLG', 'MALAGA', '马拉加', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('446', 'ESP', 'Spain', '西班牙', 'VAL', 'VALENCIA', '瓦伦西亚', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('447', 'FRA', 'France', '法国', 'FOS', 'FOS', '福斯', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('448', 'FRA', 'France', '法国', 'MRS', 'MARSEILLES', '马赛', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('449', 'FRA', 'France', '法国', 'NIC', 'NICE', '尼斯', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('450', 'GRC', 'Greece', '希腊', 'PIR', 'PIRAEUS', '比雷埃夫斯', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('451', 'GRC', 'Greece', '希腊', 'SLN', 'SALONICA', '萨洛尼卡', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('452', 'GRC', 'Greece', '希腊', 'TSN', 'THESSALONIKI', '塞萨洛尼基', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('453', 'GRC', 'Greece', '希腊', 'IRA', 'Iraklion', '伊拉克利翁', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('454', 'ISR', 'Israel', '以色列', 'ASD', 'ASHDOD', '阿什杜德', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('455', 'ISR', 'Israel', '以色列', 'HFA', 'HAIFA', '海法', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('456', 'ITA', 'Italy', '意大利', 'ANC', 'ANCONA', '安科纳', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('457', 'ITA', 'Italy', '意大利', 'BAR', 'BARI', '巴里', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('458', 'ITA', 'Italy', '意大利', 'CVV', 'CIVITAVECCHIA', '奇维塔韦基亚', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('459', 'ITA', 'Italy', '意大利', 'GOA', 'GENOA', '热那亚', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('460', 'ITA', 'Italy', '意大利', 'GAT', 'GIOIA TRURO', '焦亚陶罗', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('461', 'ITA', 'Italy', '意大利', 'LIV', 'LIVORNO', '里窝那', 'W-MED', 'West Mediterranean', '现在是USD1300', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('462', 'ITA', 'Italy', '意大利', 'NAP', 'NAPLES', '那不勒斯', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('463', 'ITA', 'Italy', '意大利', 'PLMO', 'PALERMO', '巴勒莫', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('464', 'ITA', 'Italy', '意大利', 'RVN', 'RAVENNA', '腊万纳', 'MED', 'Mediterranean', '地中海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('465', 'ITA', 'Italy', '意大利', 'SALR', 'SALERNO', '萨莱诺', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('466', 'ITA', 'Italy', '意大利', 'SPE', 'SPEZIA', '斯佩齐亚', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('467', 'ITA', 'Italy', '意大利', 'TAR', 'TARANTO', '塔兰托', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('468', 'ITA', 'Italy', '意大利', 'TRIS', 'TRSTE', '的里雅斯特', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('469', 'ITA', 'Italy', '意大利', 'VNC', 'VENICE', '威尼斯', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('470', 'ITA', 'Italy', '意大利', 'LAS', 'LA SPEZIA', '拉斯佩齐亚港', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('471', 'LBN', 'Lebanon', '黎巴嫩', 'BRT', 'BEIRUT', '贝鲁特', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('472', 'MLT', 'Malta', '马尔他', 'MAR', 'MARSAXLOKK', '马尔萨什洛克', 'W-MED', 'West Mediterranean', '地西', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('473', 'SWE', 'Serbia ', '塞尔维亚 ', 'BAR', 'BAR', '巴尔', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('474', 'HRV', 'Croatia', '克罗地亚', 'RIJ', 'RIJEKA', '里耶卡', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('475', 'HRV', 'Croatia', '克罗地亚', 'PLO', 'PLOCE', '普洛切', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('476', 'SVN', 'Slovenia', '斯洛文尼亚', 'KOP', 'KOPER', '科佩尔', 'ADRI ', 'ADRIATIC ', '亚德里亚海', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('477', 'SYR', 'Syria', '叙利亚', 'LAT', 'LATTAKIA', '拉塔基亚', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('478', 'SYR', 'Syria', '叙利亚', 'TTS', 'TARTOUS', '塔尔图斯', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('479', 'TUR', 'Turkey', '土耳其', 'GEB', 'GEBZE', '吉贝兹', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('480', 'TUR', 'Turkey', '土耳其', 'GEM', 'GEMLIK', '盖姆利克', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('481', 'TUR', 'Turkey', '土耳其', 'IST', 'ISTANBUL', '伊斯坦布尔', 'Black', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('482', 'TUR', 'Turkey', '土耳其', 'IZM', 'IZMIR', '伊兹密尔', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('483', 'TUR', 'Turkey', '土耳其', 'MER', 'MERSIN', '梅尔辛', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('484', 'TUR', 'Turkey', '土耳其', 'MPO', 'MARPORT', '马波特', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('485', 'TUR', 'Turkey', '土耳其', 'IZT', 'IZMIT', '伊兹密特湾', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('486', 'TUR', 'Turkey', '土耳其', 'AMB', 'AMBARLI', '安巴里', 'Black', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('487', 'TUR', 'Turkey', '土耳其', 'MARD', 'MARDAS', '马达司', 'E-MED', 'East Mediterranean', '地东', 'Med-sea', 'Mediterranean', '地中海');
INSERT INTO `t_port` VALUES ('488', 'ROU', 'Roumania', '罗马尼亚', 'CON', 'CONSTANZA', '康斯坦察', 'Black', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('489', 'UKR', 'Ukraine', '乌克兰', 'ODE', 'ODESSA', '敖德萨', 'Black ', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('490', 'UKR', 'Ukraine', '乌克兰', 'ILC', 'ILYICHEVSK', '伊利乔夫斯克', 'Black ', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('491', 'GEO', 'GEORGIA', '格鲁吉亚', 'BAI', 'BATUMI', '巴统', 'Black ', 'Black Sea', '黑海', 'BLACK SEA', 'BLACK SEA', '黑海');
INSERT INTO `t_port` VALUES ('492', 'RUS', 'Russia', '俄罗斯联邦', 'NAK', 'NAKHODKA', '纳霍德卡', 'RUS FAR-E', 'Russia far-east', '俄远东', 'SIBERIAN', 'TRANS SIBERIAN LANDBRIDGE', '西伯利亚航线');
INSERT INTO `t_port` VALUES ('493', 'RUS', 'Russia', '俄罗斯联邦', 'VVO', 'VLADIVOSTOK', '海参威', 'RUS FAR-E', 'Russia far-east', '俄远东', 'SIBERIAN', 'TRANS SIBERIAN LANDBRIDGE', '西伯利亚航线');
INSERT INTO `t_port` VALUES ('494', 'RUS', 'Russia', '俄罗斯联邦', 'VOS', 'VOSTOCHNY', '东方港', 'RUS FAR-E', 'Russia far-east', '俄远东', 'SIBERIAN', 'TRANS SIBERIAN LANDBRIDGE', '西伯利亚航线');
INSERT INTO `t_port` VALUES ('495', 'CAN', 'Canada', '加拿大', 'COQ', 'PORT COQUITLAM', '科奎特兰港', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('496', 'CAN', 'Canada', '加拿大', 'MTL', 'MONTREAL', '蒙特利尔', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('497', 'CAN', 'Canada', '加拿大', 'TOR', 'TORONTO', '多伦多', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('498', 'CAN', 'Canada', '加拿大', 'VAN', 'VANCOUVER', '温哥华', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('499', 'CAN', 'Canada', '加拿大', 'PRT', 'PRINCE RUPERT', '王子港', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('500', 'CAN', 'Canada', '加拿大', 'CLG', 'Calgary ', '卡尔加里', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('501', 'CAN', 'Canada', '加拿大', 'EDM', 'EDMONDON', '埃德蒙敦', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('502', 'CAN', 'Canada', '加拿大', 'SAS', 'Saskatoon,SK', '萨斯卡通', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('503', 'CAN', 'Canada', '加拿大', 'WNB', 'Winnipeg,MB', '温尼伯', 'CND', 'Canada', '加拿大', 'CND', 'Canada', '加拿大');
INSERT INTO `t_port` VALUES ('504', 'USA', 'USA', '美国', 'CCG', 'CHICAGO,IL', '芝加哥', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('505', 'USA', 'USA', '美国', 'LBH', 'Long beach, CA', '长滩', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('506', 'USA', 'USA', '美国', 'LNW', 'LONGVW', '朗维尤', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('507', 'USA', 'USA', '美国', 'LSA', 'LOS ANGELES', '洛杉矶', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('508', 'USA', 'USA', '美国', 'OAK', 'Oakland, CA', '奥克兰', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('509', 'USA', 'USA', '美国', 'PTD', 'PORTLAND', '波特兰', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('510', 'USA', 'USA', '美国', 'SEA', 'SEATTLE', '西雅图', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('511', 'USA', 'USA', '美国', 'SFO', 'SAN FRANCISCO', '旧金山', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('512', 'USA', 'USA', '美国', 'TAC', 'TACOMA', '塔科马', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('513', 'USA', 'USA', '美国', 'BOS', 'BOSTON', '波士顿', 'USEC', 'West America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('514', 'USA', 'USA', '美国', 'HOU', 'Houston, TX ', '休斯顿', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('515', 'USA', 'USA', '美国', 'ATL', 'ATLANTA', '亚特兰大', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('516', 'USA', 'USA', '美国', 'KSC', 'Kansas city', '堪萨斯城', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('517', 'USA', 'USA', '美国', 'DLX', ' Dallas', '达拉斯', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('518', 'USA', 'USA', '美国', 'MPS', 'Memphis,TN ', '孟菲斯', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('519', 'USA', 'USA', '美国', 'CCN', 'Cincinnati, OH', '辛辛那提', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('520', 'USA', 'USA', '美国', 'CLV', 'Cleveland,OH', '克里夫兰', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('521', 'USA', 'USA', '美国', 'CLU', 'Columbus, OH', '哥伦布', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('522', 'USA', 'USA', '美国', 'DET', 'Detroit, MI', '底特律', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('523', 'USA', 'USA', '美国', 'MIN', 'Minneapolis,MN', '明尼阿波利斯', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('524', 'USA', 'USA', '美国', 'IDP', 'Indianapolis, IN', '印第安纳波利斯', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('525', 'USA', 'USA', '美国', 'NVL', 'Nashville,TN ', '纳什维尔', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('526', 'USA', 'USA', '美国', 'PZB', 'Pittsburgh,PA', '匹兹堡', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('527', 'USA', 'USA', '美国', 'SLK', 'Salt Lake City, UT', '盐湖城', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('528', 'USA', 'USA', '美国', 'STL', 'Saint Louis,MO', '圣路易斯', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('529', 'USA', 'USA', '美国', 'SPD', 'SAN PEDRO,CA', '圣佩德罗', 'USWC', 'West America', '美西', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('530', 'USA', 'USA', '美国', 'CHA', 'Charleston, SC ', '查尔斯顿', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('531', 'USA', 'USA', '美国', 'BAL', 'Baltimore, MD', '巴尔的摩', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('532', 'USA', 'USA', '美国', 'JAC', 'Jacksonville,FL', '杰克逊维尔', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('533', 'USA', 'USA', '美国', 'MIA', 'MIAMI', '迈阿密', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('534', 'USA', 'USA', '美国', 'NYK', 'New York, NY', '纽约', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('535', 'USA', 'USA', '美国', 'NFK', 'Norfolk, VA ', '诺福克', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('536', 'USA', 'USA', '美国', 'PHI', 'Philadelphia, PA', '费城', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('537', 'USA', 'USA', '美国', 'SAV', 'Savannah,GA', '萨凡纳', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('538', 'USA', 'USA', '美国', 'WMT', 'Wilmington,NC', '威明顿', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('539', 'USA', 'USA', '美国', 'POE', 'Port Everglades, FL ', '埃佛格雷兹', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('540', 'USA', 'USA', '美国', 'SAN', 'San Antonio,TX ', '圣安东尼奥', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('541', 'USA', 'USA', '美国', 'MOB', 'Mobile,AL', '莫比尔', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('542', 'USA', 'USA', '美国', 'NOL', 'New Orlearns, LA', '新奥尔良', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('543', 'USA', 'USA', '美国', 'NWK', 'Newark,NJ', '纽瓦克', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('544', 'USA', 'USA', '美国', 'EZB', 'Elizabeth,NJ', '伊丽莎白', 'USEC', 'East America', '美东', 'U.S.A', 'U.S.A', '美国');
INSERT INTO `t_port` VALUES ('545', 'USA', 'USA', '美国', 'HNL', 'HONOLULU', '火奴鲁鲁', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('546', 'USA', 'USA', '美国', 'KHL', 'KAHULUI', '卡胡鲁伊', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('547', 'USA', 'USA', '美国', 'KWH', 'KAWAIHAE', '卡瓦哈', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('548', 'USA', 'USA', '美国', 'HIL', 'HILO', '海罗', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('549', 'USA', 'USA', '美国', 'NAW', 'NAWILIWILI', '纳维利维利', 'Pacific', 'Pacific Islands', '太平洋群岛', 'Pacific', 'Pacific Islands', '太平洋群岛');
INSERT INTO `t_port` VALUES ('550', 'ARG', 'Argentina', '阿根廷', 'BNA', 'BUENOS AIRES', '布宜诺斯艾利斯', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('551', 'BRA', 'Brazil', '巴西', 'BELM', 'BELEM', '贝伦', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('552', 'BRA', 'Brazil', '巴西', 'ITJ', 'ITAJAI', '伊塔雅伊', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('553', 'BRA', 'Brazil', '巴西', 'MNS', 'MANAUS', '马瑙斯', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('554', 'BRA', 'Brazil', '巴西', 'PRN', 'PARANAGUA', '巴拉那瓜', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('555', 'BRA', 'Brazil', '巴西', 'RIO', 'RIO DE JANEIRO', '里约热内卢', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('556', 'BRA', 'Brazil', '巴西', 'REC', 'RECIFE', '累西腓', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('557', 'BRA', 'Brazil', '巴西', 'ROG', 'RIO GRANDE', '里奥格兰德', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('558', 'BRA', 'Brazil', '巴西', 'SAL', 'SALVADOR', '萨尔瓦多', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('559', 'BRA', 'Brazil', '巴西', 'STS', 'SANTOS', '桑托斯', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('560', 'BRA', 'Brazil', '巴西', 'VIT', 'VICTORIA', '维多利亚', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('561', 'BRA', 'Brazil', '巴西', 'SAP', 'Suape', '苏阿普', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('562', 'BRA', 'Brazil', '巴西', 'ITG', 'Itaguai', '伊塔瓜伊', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('563', 'PRY', 'Paraguay', '巴拉圭', 'ASU', 'ASUNCION', '亚松森', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('564', 'CHL', 'Chile', '智利', 'ATF', 'ANTOFAGASTA', '安托法加斯塔', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('565', 'CHL', 'Chile', '智利', 'ART', 'ARICA', '阿里卡', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('566', 'CHL', 'Chile', '智利', 'IQU', 'IQUIQUE', '伊基克', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('567', 'CHL', 'Chile', '智利', 'PAR', 'PUNTAARENAS', '阿雷纳斯角', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('568', 'CHL', 'Chile', '智利', 'SANT', 'SAN ANTONIO', '圣安东尼奥', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('569', 'CHL', 'Chile', '智利', 'TAL', 'TALCAHUANO', '塔尔卡瓦诺', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('570', 'CHL', 'Chile', '智利', 'VLPA', 'VALPARASIO', '瓦尔帕莱索', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('571', 'ECU', 'Ecuador', '厄瓜多尔', 'GYL', 'GUAYAQUIL', '瓜亚基尔', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('572', 'ECU', 'Ecuador', '厄瓜多尔', 'MTA', 'MANTA', '曼塔', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('573', 'URY', 'Uruguay', '乌拉圭', 'MTV', 'MONTEVIDEO', '蒙得维的亚', 'ECSA', 'East South America', '南美东', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('574', 'ANT', 'Antilles', '荷属安的列斯群岛 ', 'KRA', 'KRALENDIJK', '克拉伦代克', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('575', 'ANT', 'Antilles', '荷属安的列斯群岛 ', 'ORJ', 'ORANJESTAD', '奥拉涅斯塔德', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('576', 'ANT', 'Antilles', '荷属安的列斯群岛 ', 'WIL', 'WILLEMSTAD', '威廉斯塔德', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('577', 'BRB ', 'Barbados', '巴巴多斯', 'BRD', 'BRIDGETOWN', '布里奇敦', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('578', 'BHS', 'Bahamas', '巴哈马', 'LSS', 'SAN SALUADOR', '小圣萨尔瓦多岛', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('579', 'COL', 'Colombia', '哥伦比亚', 'BAQ', 'BARRANQUILLA', '巴兰基利亚', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('580', 'COL', 'Colombia', '哥伦比亚', 'BUE', 'BUENAVENTURA', '布韦那文图拉', 'WCSA', 'West South America', '南美西', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('581', 'COL', 'Colombia', '哥伦比亚', 'CTA', 'CARTAGENA', '卡塔赫纳', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('582', 'COL', 'Colombia', '哥伦比亚', 'SMA', 'SANTA MARTA', '圣玛尔塔', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('583', 'CRI', 'Costarica', '哥斯达黎加', 'CALD', 'Puerto Caldera', '卡尔德拉', 'C-America', 'Central America', '中美洲', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('584', 'CRI', 'Costarica', '哥斯达黎加', 'PLI', 'PUERTO LIMON', '利蒙港', 'CRB', 'Central America', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('585', 'CUB', 'Cuba', '古巴', 'HAV', 'HAVANA', '哈瓦那', 'CRB', 'Central America', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('586', 'CUB', 'Cuba', '古巴', 'SGO', 'SAN TIAGO', '圣地亚哥', 'CRB', 'Central America', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('587', 'PRI', 'Puerto Rico', '波多黎各', 'SJU', 'SAN JUAN', '圣胡安', 'CRB', 'Central America', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('588', 'MEX', 'Mexico', '墨西哥', 'ACP', 'ACAPULCO', '阿卡普尔科', 'MEX', 'Central America', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('589', 'MEX', 'Mexico', '墨西哥', 'ESE', 'ENSENADA', '恩塞纳达', 'MEX', 'Central America', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('590', 'MEX', 'Mexico', '墨西哥', 'GMS', 'GUAYMAS', '瓜伊马斯', 'MEX', 'Central America', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('591', 'MEX', 'Mexico', '墨西哥', 'LCS', 'LAZAROCARDENAS', '拉萨罗卡德纳斯', 'MEX', 'Central America', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('592', 'MEX', 'Mexico', '墨西哥', 'MZN.MEX', 'MANZANILLO.MEX', '曼萨尼略-墨西哥', 'MEX', 'Central America', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('593', 'MEX', 'Mexico', '墨西哥', '', 'SALINACRUZ', '萨利纳克鲁斯', 'MEX', 'Central America', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('594', 'MEX', 'Mexico', '墨西哥', 'TAM', 'TAMPICO', '坦皮科', 'MEX', 'Mexico', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('595', 'MEX', 'Mexico', '墨西哥', 'TIJ', 'TIJUANA', '蒂华纳', 'MEX', 'Mexico', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('596', 'MEX', 'Mexico', '墨西哥', 'VER', 'VERACRUZ', '韦拉克鲁斯', 'MEX', 'Mexico', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('597', 'MEX', 'Mexico', '墨西哥', 'MEX', 'MEXICO', '墨西哥城', 'MEX', 'Mexico', '墨西哥', 'Mexico', 'Mexico', '墨西哥');
INSERT INTO `t_port` VALUES ('598', 'GTM', 'Guatemala', '危地马拉', 'PQL', 'PUERTO QUETZAL', '克萨尔港', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('599', 'GTM', 'Guatemala', '危地马拉', 'SJO', 'SAN JOSE', '圣何塞', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('600', 'GTM', 'Guatemala', '危地马拉', 'STC', 'SANTO TOMASDE', '圣托马斯', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('601', 'NIC', 'Nicaragua', '尼加拉瓜', 'COR', 'CORINTO', '科林托', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('602', 'PAN', 'Panama', '巴拿马', 'BLB', 'BALBOA', '巴尔博亚', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('603', 'PAN', 'Panama', '巴拿马', 'COL', 'COLON', '科隆', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('604', 'PAN', 'Panama', '巴拿马', 'CRI', 'CRISTOBAL', '克里斯托瓦尔', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('605', 'PAN', 'Panama', '巴拿马', 'PAN', 'PANAMA CITY', '巴拿马城', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('606', 'PAN', 'Panama', '巴拿马', 'MAN.PA', 'Manzanillo,PA', '曼塞尼约-巴拿马', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('607', 'SLV', 'Salvador', '萨尔瓦多', 'ACA', 'ACAJUTLA', '阿卡胡特拉', 'C-America', 'Central America', '中美洲', 'C AMERICA', 'Central America', '中美洲');
INSERT INTO `t_port` VALUES ('608', 'PER', 'Peru', '秘鲁', 'CALO', 'CALLAO', '卡亚俄', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('609', 'PER', 'Peru', '秘鲁', 'ILO', 'ILO', '伊洛', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('610', 'PER', 'Peru', '秘鲁', 'PTA', 'Paita', '帕塔', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('611', 'CHL', 'Chile', '智利', 'SVT', 'SAN VICENTE', '圣文森特', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('612', 'CHL', 'Chile', '智利', 'LIR', 'Lirquen', '利尔科恩', 'WCSA', 'West South America', '南美西', 'S.AMERICA', 'South America', '南美洲');
INSERT INTO `t_port` VALUES ('613', 'JAM', 'Jamaica', '牙买加', 'KIN', 'KINGSTON', '金斯敦', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('614', 'SUR', 'Surinam', '苏里南', 'PRM', 'PARAMARIBO', '帕拉马里博', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('615', 'TTO', 'Trinidad and Tobago', '特立尼达和多巴哥', 'POS', 'PORT OF SPAIN', '西班牙港', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('616', 'VEN', 'Venezuela', '委内瑞拉', 'ECH', 'ELGUAMACHE', '埃尔瓜马切', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('617', 'VEN', 'Venezuela', '委内瑞拉', 'LAG', 'LA GUAIRA', '拉瓜伊拉', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('618', 'VEN', 'Venezuela', '委内瑞拉', 'CCD', 'CAUCEDO', '考塞多', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('619', 'VEN', 'Venezuela', '委内瑞拉', 'PCA', 'PUERTO CABELLO', '卡贝略港', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('620', 'GUY', 'Guyana', '圭亚那', 'GEO', 'GEORGETOWN', '乔治敦', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('621', 'HND', 'Honduras', '洪都拉斯', 'PCO', 'PUERTO COPTES', '科尔特斯港', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('622', 'HND', 'Honduras', '洪都拉斯', 'SLO', 'SAN LORENZO', '圣洛伦索', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('623', 'MTQ', 'Martinique', '马提尼古岛', 'FDF', 'FORT OF FRANCE', '法兰西堡', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('624', 'HTI', 'Haiti', '海地', 'PAPR', 'Port Au Prince', '太子港', 'CRB', 'Caribbean', '加勒比', 'Caribbean', 'Caribbean', '加勒比');
INSERT INTO `t_port` VALUES ('625', 'AZE', 'Azerbaijan', '阿塞拜疆', 'BAK', 'Baku', '巴库', 'MID', 'Middle East', '中东', 'P & RED', 'Persian Gulf & Red sea', '波红');
INSERT INTO `t_port` VALUES ('626', 'CHN', 'CHINA', '中国', 'QIN', 'QINGDAO', '青岛', 'N. China', 'North China', '华北', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('627', 'CHN', 'CHINA', '中国', 'SHA', 'SHANGHAI', '上海', 'N. China', 'North China', '华北', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('628', 'CHN', 'CHINA', '中国', 'NGB', 'NINGBO', '宁波', 'N. China', 'North China', '华北', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('629', 'CHN', 'CHINA', '中国', 'WNZ', 'WENZHOU', '温洲', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('630', 'CHN', 'CHINA', '中国', 'XMN', 'XIAMEN', '厦门', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('631', 'CHN', 'CHINA', '中国', 'YTN', 'YANTIAN', '盐田', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('632', 'CHN', 'CHINA', '中国', 'SHK', 'SHEKOU', '蛇口', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('633', 'CHN', 'CHINA', '中国', 'CWN', 'CHIWAN', '赤湾', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('634', 'CHN', 'CHINA', '中国', 'DCB', 'DA BAY', '大铲湾', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('635', 'CHN', 'CHINA', '中国', 'FUZ', 'FUZHOU', '福州', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('636', 'CHN', 'CHINA', '中国', 'HNA', 'HUNAN（CHANGSHA）', '湖南（长沙）', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('637', 'CHN', 'Hongkong', '中国香港', 'HKG', 'HONGKONG', '香港', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('638', 'CHN', 'Macao', '中国澳门', 'MAC', 'MACAO', '澳门', 'S. China', 'South China', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('639', 'CHN', 'CHINA', '中国', 'HKU', 'Haikou', '海口', 'S. China', 'pearl river delta', '华南', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('640', 'CHN', 'CHINA', '中国', 'PHPU', 'HUANGPU', '黄埔', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('641', 'CHN', 'CHINA', '中国', 'PZQN', 'Zhaoqing', '肇庆', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('642', 'CHN', 'CHINA', '中国', 'PGYA', 'Gaoyao', '高要', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('643', 'CHN', 'CHINA', '中国', 'PHDU', 'huadu　　', '花都', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('644', 'CHN', 'CHINA', '中国', 'PLHS', 'Lian Hua Shan', '莲花山', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('645', 'CHN', 'CHINA', '中国', 'PNSA', 'Nansha', '南沙', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('646', 'CHN', 'CHINA', '中国', 'PFSH', 'foshaｎ　', '佛山', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('647', 'CHN', 'CHINA', '中国', 'PJJA(GD)', 'Jiujiang', '九江', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('648', 'CHN', 'CHINA', '中国', 'PSSH', 'San Shan', '三山', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('649', 'CHN', 'CHINA', '中国', 'PLSI', 'Lanshi', '澜石', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('650', 'CHN', 'CHINA', '中国', 'PSSU', 'Sanshui', '三水', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('651', 'CHN', 'CHINA', '中国', 'PNGA', 'nangang', '南港', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('652', 'CHN', 'CHINA', '中国', 'PXLA', 'Xiaolan', '小揽', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('653', 'CHN', 'CHINA', '中国', 'PZSA', 'zhongshan', '中山', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('654', 'CHN', 'CHINA', '中国', 'PSWN', 'shenwan', '神湾', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('655', 'CHN', 'CHINA', '中国', 'PBJO', 'beijiao', '北窖', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('656', 'CHN', 'CHINA', '中国', 'PSDE', 'Shude', '顺德', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('657', 'CHN', 'CHINA', '中国', 'PROQ', 'rongqi　　', '容奇', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('658', 'CHN', 'CHINA', '中国', 'PLLU', 'Leliu', '勒流', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('659', 'CHN', 'CHINA', '中国', 'PJMN', 'jiangmen　', '江门', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('660', 'CHN', 'CHINA', '中国', 'PXHU', 'XinHui', '新会', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('661', 'CHN', 'CHINA', '中国', 'PERS', 'ershan ', '二山', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('662', 'CHN', 'CHINA', '中国', 'PWUZ', 'Wuzhou', '悟州', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('663', 'CHN', 'CHINA', '中国', 'PFGC', 'Fangcheng', '防城', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('664', 'CHN', 'CHINA', '中国', 'PBAI', 'Beihai', '北海', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('665', 'CHN', 'CHINA', '中国', 'PSTU', 'Shantou', '汕头', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('666', 'CHN', 'CHINA', '中国', 'PZHU', 'Zhuhai', '珠海', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('667', 'CHN', 'CHINA', '中国', 'PZJA', 'Zhanjiang ', '湛江', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');
INSERT INTO `t_port` VALUES ('668', 'CHN', 'CHINA', '中国', 'PMMI', 'Maoming', '茂名', 'PRD', 'pearl river delta', '珠三角', 'CHINA', 'CHINA', '中国');

-- ----------------------------
-- Table structure for t_purchase_inspection
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_inspection`;
CREATE TABLE `t_purchase_inspection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '检查的id',
  `purchase_quo_id` int(11) DEFAULT NULL COMMENT '询价id',
  `ship_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL COMMENT 'suvery的公司id',
  `survey_id` int(11) DEFAULT NULL COMMENT 'surveyor的id',
  `op_id` int(11) DEFAULT NULL,
  `loi` varchar(155) DEFAULT NULL COMMENT '免责声明',
  `user_id` int(11) DEFAULT NULL,
  `passport` varchar(155) DEFAULT NULL COMMENT '护照',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `del_flag` int(11) DEFAULT '0',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `inspection_report_id` int(11) DEFAULT NULL COMMENT '检查报告id',
  `total_grade` double(11,4) DEFAULT NULL COMMENT 'surveyor给op的评分',
  `submit_status` int(11) DEFAULT NULL,
  `loi_url` varchar(155) DEFAULT NULL,
  `passport_url` varchar(155) DEFAULT NULL,
  `report_url` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_inspection
-- ----------------------------
INSERT INTO `t_purchase_inspection` VALUES ('18', '30', '29', '1', '17', '1', '新建文本文档.txt', null, '新建文本文档.txt', '2017-07-04', 'admin', '2017-07-04', 'admin', '0', null, '14', '7.8412', '1', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/hYZZHeiWmQ.txt', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/2CpYmppiRC.txt', null);
INSERT INTO `t_purchase_inspection` VALUES ('19', '33', '32', '1', '19', '1', null, null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0', null, '15', null, '0', null, null, null);
INSERT INTO `t_purchase_inspection` VALUES ('20', '35', '34', '1', '17', '1', null, null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0', null, '16', null, '0', null, null, null);
INSERT INTO `t_purchase_inspection` VALUES ('21', '36', '35', '1', '19', '1', null, null, null, '2017-07-07', 'system', '2017-07-07', 'system', '0', null, '17', null, '0', null, null, null);

-- ----------------------------
-- Table structure for t_purchase_quotation
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_quotation`;
CREATE TABLE `t_purchase_quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT '验船开始日期',
  `end_date` date DEFAULT NULL COMMENT '验船结束日期',
  `location` varchar(150) DEFAULT NULL COMMENT '港口位置',
  `agency_detail` text,
  `agency_url` varchar(255) DEFAULT NULL COMMENT '证书存放的路径',
  `loi_url` varchar(155) DEFAULT NULL COMMENT 'loi的路径',
  `select_status` int(4) DEFAULT NULL,
  `op_id` int(11) DEFAULT NULL,
  `public_status` int(4) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建者',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改者',
  `del_flag` int(11) DEFAULT '0',
  `quotation_application_id` int(11) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_quotation
-- ----------------------------
INSERT INTO `t_purchase_quotation` VALUES ('30', '29', '2017-07-18', '2017-07-20', 'ZHOUSHAN,CHN', 'ZHOUSHAN WUXIN OCEAN SHIPPING AGENCY\nAdd: 16th Floor, Building B,Zhong Lang Internation Mansion, Dinghai District Zhoushan, China\nPostcode: 316000 \nTel: 86-0580-2261850/2261950\nMob: 86-13884303244\nFax: 86-0580-2261851\nE-mail: xusir@vip.163.com zswuxin@126.com', '', '', null, '1', '2', '2017-07-04', 'admin', '2017-07-04', 'admin', '0', null, '3000');
INSERT INTO `t_purchase_quotation` VALUES ('31', '30', '2017-07-11', '2017-07-12', 'Shanghai,CHN', 'Kyi Thanda Oo @ KTO\nAssistant Operations Manager\nBen Line Agencies (Myanmar) Ltd- As Agents only\nOffice: +95 1  370 987 | Myanmar Mobile: +95 9 259202896\n', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/ya4fEhd5Cs.docx', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/btNfWQ8XJi.pdf', null, '1', '1', '2017-07-05', 'admin', '2017-07-06', 'admin', '1', null, null);
INSERT INTO `t_purchase_quotation` VALUES ('32', '31', '2017-07-04', '2017-07-08', 'sadsadas', 'dasdasdas\ndasdsadadadasd\ndasdasdadadsadsadasdasd', '', '', null, '1', '1', '2017-07-06', 'admin', '2017-07-07', 'admin', '1', null, null);
INSERT INTO `t_purchase_quotation` VALUES ('33', '32', '2017-07-13', '2017-08-05', 'KAWASAKI,JPN', 'dasdas\nasdsadsadas\ndsadasdas', '', '', null, '1', '2', '2017-07-07', 'admin', '2017-07-07', 'admin', '0', null, '222');
INSERT INTO `t_purchase_quotation` VALUES ('34', '33', '2017-06-27', '2017-07-07', 'KITAKYUSHU,JPN', 'dsadsa\ndsadsadsa\ndsadsadsadsadsa', '', '', null, '1', '1', '2017-07-07', 'admin', '2017-07-07', 'admin', '0', null, null);
INSERT INTO `t_purchase_quotation` VALUES ('35', '34', '2017-07-08', '2017-08-03', 'HITACHI,JPN', 'asdas', '', '', '1', '1', '2', '2017-07-07', 'admin', '2017-07-07', 'admin', '0', null, '22');
INSERT INTO `t_purchase_quotation` VALUES ('36', '35', '2017-07-10', '2017-08-01', 'HITACHI,JPN', 'sadsad', '', '', '1', '1', '2', '2017-07-07', 'admin', '2017-07-07', 'admin', '0', null, '200');

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
  `ship_type` varchar(20) DEFAULT NULL COMMENT '船类型',
  `inspection_type` varchar(20) DEFAULT NULL COMMENT '船检类型',
  `port_id` int(11) DEFAULT NULL COMMENT '港口id',
  `port_name` varchar(64) DEFAULT NULL COMMENT '港口名称',
  `start_date` date DEFAULT NULL COMMENT '检查起始日期',
  `end_date` date DEFAULT NULL COMMENT '检查终止日期',
  `total_price` double DEFAULT NULL COMMENT '价格',
  `quotation_status` int(4) DEFAULT NULL COMMENT '检查状态',
  `create_date` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(64) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  `delivery_by` varchar(64) DEFAULT NULL,
  `accepted_by` varchar(64) DEFAULT NULL,
  `re_delivery_by` varchar(64) DEFAULT NULL,
  `re_accepted_by` varchar(64) DEFAULT NULL,
  `charter` varchar(64) DEFAULT NULL,
  `owner` varchar(64) DEFAULT NULL,
  `ship_particulars` text,
  `ship_particulars_url` varchar(255) DEFAULT NULL,
  `port_agency` text,
  `blank_loi_url` varchar(255) DEFAULT NULL,
  `current_quantity` text,
  `current_quantity_url` varchar(255) DEFAULT NULL,
  `bonus_plan` text,
  `specified_id` int(11) DEFAULT NULL COMMENT '指定验船公司的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_quotation
-- ----------------------------
INSERT INTO `t_quotation` VALUES ('1', '1', 'admin', '220', 'Albatross', '9427574', '1', '1', null, 'KAWASAKI,JPN', '2017-06-27', '2017-07-08', null, '1', '2017-06-19 16:23:24', 'admin', '2017-06-19 17:21:14', 'admin', '0', 'sadas', 'dsadas', null, null, null, null, '', '', '', '', null, null, null, null);
INSERT INTO `t_quotation` VALUES ('2', '1', 'admin', '4', 'Aargau', '9583897', '1', '2', null, 'KAWASAKI,JPN', '2017-06-27', '2017-07-08', null, '1', '2017-06-19 17:22:30', 'admin', '2017-06-19 17:22:32', 'admin', '0', null, null, 'asdsa', 'dsfds', null, null, 'sdfsdf', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/DWTTEswmwb.doc', 'fdsfsd', '', '11', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/R2GhdcrWpt.jpg', 'nothing', null);
INSERT INTO `t_quotation` VALUES ('3', '21', 'op', '235', 'Alessandra M', '9284518', '1', '1', null, 'HAKATA,JPN', '2017-07-05', '2017-08-05', '12345', '2', '2017-06-22 14:59:18', 'op', '2017-06-22 14:59:22', 'op', '0', 'sdsd', 'asdsad', null, null, null, null, 'das', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/pKXYTnyTi5.doc', 'sadsa', '', 'dasdas', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/ADPxnTGJbM.jpg', 'sadasdasdas', null);
INSERT INTO `t_quotation` VALUES ('4', '1', 'admin', '245', 'Alexandros Theo', '9207792', '1', '1', null, 'KAGOSHIMA,JPN', '2017-07-04', '2017-08-05', null, '0', '2017-06-26 11:03:09', 'admin', '2017-06-26 11:03:09', 'admin', '0', 'dsad', 'sada', null, null, null, null, '', '', '', '', 'sd', '', 'asd', null);
INSERT INTO `t_quotation` VALUES ('5', '1', 'admin', '52', 'Adfines West', '9621895', '1', '1', null, 'TOYAHASHI,JPN', '2017-06-26', '2017-07-08', null, '0', '2017-06-26 11:04:02', 'admin', '2017-06-26 11:04:02', 'admin', '0', 'fdfd', 'fd', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('6', '1', 'admin', '13', 'ABML Eva', '9481702', '1', '1', null, 'WEWAK,PNG', null, null, null, '0', '2017-06-26 11:05:23', 'admin', '2017-06-26 11:05:23', 'admin', '0', 're', 're', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('7', '1', 'admin', '16', 'ABOY Karlie', '9756236', '1', '1', null, 'SANDAKAN,MYS', null, null, null, '0', '2017-06-26 11:09:54', 'admin', '2017-06-26 11:09:54', 'admin', '0', 'f', 'd', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('8', '1', 'admin', '1288', 'Best Success', '8915213', '1', '1', null, 'DUMAI,IDN', '2017-07-04', '2017-07-04', null, '0', '2017-06-26 11:11:16', 'admin', '2017-06-26 11:11:16', 'admin', '0', 'das', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('9', '1', 'admin', '12', 'ABM Discovery', '9006643', '1', '2', null, 'KAGOSHIMA,JPN', '2017-06-07', '2017-07-08', null, '0', '2017-06-26 11:12:12', 'admin', '2017-06-26 11:12:12', 'admin', '0', null, null, 's', '', null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('10', '1', 'admin', '12', 'ABM Discovery', '9006643', '1', '1', null, 'IYO MISHIMA,JPN', '2017-07-05', '2017-08-05', null, '0', '2017-06-26 11:22:10', 'admin', '2017-06-26 11:22:10', 'admin', '0', 'SDFDS', 'sada', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('11', '1', 'admin', '19', 'Abusamah', '8200644', '1', '1', null, 'MACASSAR( UJUNG PANDANG),IDN', '2017-06-05', '2017-07-08', null, '0', '2017-06-26 11:25:42', 'admin', '2017-06-26 11:25:42', 'admin', '0', 'd', 'd', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('12', '1', 'admin', '31679', 'MSC Busan', '9289087', '5', '1', null, 'DUMAI,IDN', '2017-07-05', '2017-08-05', null, '0', '2017-06-26 11:28:26', 'admin', '2017-06-26 11:28:26', 'admin', '0', '', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('13', '1', 'admin', '23', 'ABY Scarlett', '9567051', '1', '1', null, 'DUMAI,IDN', '2017-07-05', '2017-08-05', null, '1', '2017-06-26 11:34:01', 'admin', '2017-06-29 07:29:16', 'admin', '0', '', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('14', '1', 'admin', '3705', 'Glorious Fuji', '9641780', '1', '1', null, 'MACASSAR( UJUNG PANDANG),IDN', '2017-07-04', '2017-08-05', '33', '2', '2017-06-26 11:34:24', 'admin', '2017-06-26 16:24:39', 'admin', '0', 'd', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('15', '1', 'admin', '6', 'Aashna', '9592458', '1', '1', null, 'IYO MISHIMA,JPN', '2017-06-15', '2017-07-08', null, '1', '2017-06-26 11:37:13', 'admin', '2017-06-26 16:24:27', 'admin', '1', 's', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('16', '1', 'admin', '12', 'ABM Discovery', '9006643', '1', '1', null, 'KAGOSHIMA,JPN', '2017-06-27', '2017-07-08', null, '0', '2017-06-26 11:38:00', 'admin', '2017-06-26 11:38:00', 'admin', '1', '', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('17', '1', 'admin', '12', 'ABM Discovery', '9006643', '1', '1', null, 'KAGOSHIMA,JPN', '2017-06-27', '2017-07-08', null, '0', '2017-06-26 11:38:50', 'admin', '2017-06-26 11:38:50', 'admin', '1', '', '', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('18', '1', 'admin', '19', 'Abusamah', '8200644', '1', '1', null, 'FUKUYAMA,JPN', '2017-05-29', '2017-07-08', '11', '2', '2017-06-26 11:39:11', 'admin', '2017-06-26 11:45:11', 'admin', '0', 'ss', 'ss', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('19', '21', 'op', '235', 'Alessandra M', '9284518', '1', '1', null, 'FUKUYAMA,JPN', '2017-05-29', '2017-08-05', null, '1', '2017-06-27 11:20:37', 'op', '2017-06-27 11:21:18', 'op', '1', 'sas', 'sas', null, null, null, null, 'ss', '', 'aass', '', 'sss', '', 'ss', null);
INSERT INTO `t_quotation` VALUES ('20', '21', 'op', '12', 'ABM Discovery', '9006643', '1', '2', null, 'IYO MISHIMA,JPN', '2017-05-29', '2017-08-05', null, '1', '2017-06-27 11:21:48', 'op', '2017-06-29 07:31:39', 'op', '1', null, null, 'ss', 'ss', null, null, 's', '', 'ss', '', 's', '', '', null);
INSERT INTO `t_quotation` VALUES ('21', '1', 'admin', '99', 'African Cendana', '9263071', '1', '1,2', null, 'KAGOSHIMA,JPN', '2017-07-07', '2017-08-05', '200', '2', '2017-06-27 15:59:30', 'admin', '2017-06-27 15:59:33', 'admin', '0', 'sdasd', 'dasdas', 'dasdas', 'dsadas', null, null, 'sdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsada', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/jYcta2x5yz.doc', 'sdasdasdssdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadaadasdasdsada', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/Swz7nn8zNy.doc', 'sdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsada', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/n5Z3XJJd4Y.jpg', 'sdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsadasdasdasdsadasdasdsada', null);
INSERT INTO `t_quotation` VALUES ('22', '1', 'admin', '3015', 'Equinox Agnandoussa', '9503988', '1', '2', null, 'FUKUOKA,JPN', '2017-09-09', '2017-10-06', '222', '2', '2017-06-27 00:00:00', 'admin', '2017-06-28 17:00:02', 'admin', '0', null, null, 'sadasd', 'dsadasdas', null, null, 'sadsadas', '', 'dasdasd', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/23Psr6xNW7.doc', 'dasdas', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/xJWGaW4xQQ.jpg', 'dsadsa', null);
INSERT INTO `t_quotation` VALUES ('23', '1', 'admin', '235', 'Alessandra M', '9284518', '1', '2', null, 'KAGOSHIMA,JPN', '2017-05-29', '2017-08-04', '33333', '2', '2017-06-27 19:19:00', 'admin', '2017-06-28 16:57:59', 'admin', '0', null, null, 'dasd', 'asddas', null, null, 'sad', '', 'asdas', '', 'sadasd', '', 'sadasd', null);
INSERT INTO `t_quotation` VALUES ('24', '1', 'admin', '235', 'Alessandra M', '9284518', '1', '1', null, 'CHIBA,JPN', '2017-06-12', '2017-07-08', null, '0', '2017-06-29 07:41:38', 'admin', '2017-06-29 07:41:38', 'admin', '1', 'dsa', 'dsa', null, null, null, null, '', '', '', '', 'dsa', '', 'dsa', null);
INSERT INTO `t_quotation` VALUES ('25', '21', 'op', '220', 'Albatross', '9427574', '1', '1', null, 'FUKUOKA,JPN', '2017-06-06', '2017-07-08', '456', '2', '2017-06-29 07:44:25', 'op', '2017-06-29 07:46:47', 'op', '0', 's', 's', null, null, null, null, '', '', '', '', 's', '', 's', null);
INSERT INTO `t_quotation` VALUES ('26', '21', 'op', '12', 'ABM Discovery', '9006643', '1', '1', null, 'DILI,IDN', '2017-07-07', '2017-07-07', null, '1', '2017-06-29 07:45:47', 'op', '2017-06-29 07:46:41', 'op', '1', 'd', 'd', null, null, null, null, 'd', '', 'd', '', 'd', '', 'd', null);
INSERT INTO `t_quotation` VALUES ('27', '1', 'admin', '6652', 'New Ascent', '9512290', '1', '1', null, 'KAWASAKI,JPN', '2017-07-10', '2017-07-10', null, '0', '2017-07-03 10:59:52', 'admin', '2017-07-03 10:59:52', 'admin', '1', 'asd', 'asd', null, null, null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('28', '1', 'admin', '235', 'Alessandra M', '9284518', '1', '2', null, 'KAWASAKI,JPN', '2017-07-13', '2017-08-05', null, '0', '2017-07-03 11:06:54', 'admin', '2017-07-03 11:06:54', 'admin', '1', null, null, 'sadas', 'adssadas', null, null, '', '', '', '', '', '', '', null);
INSERT INTO `t_quotation` VALUES ('29', '1', 'admin', '27', 'Abyssinian', '9646728', '1', '1', null, 'FUKUYAMA,JPN', '2017-07-07', '2017-08-05', null, '1', '2017-07-03 14:56:59', 'admin', '2017-07-03 14:59:26', 'admin', '0', 'dsad', 'asdas', null, null, null, null, '', '', '', '', 'asd', '', 'asd', '23');
INSERT INTO `t_quotation` VALUES ('30', '21', 'op', '26909', 'Coral Pearl', '9425253', '3', '1', null, 'IYO MISHIMA,JPN', '2017-08-05', '2017-08-05', null, '1', '2017-07-03 15:24:01', 'op', '2017-07-03 15:24:06', 'op', '1', 'asd', 'asd', null, null, null, null, '', '', '', '', '', '', '', '23');
INSERT INTO `t_quotation` VALUES ('31', '21', 'op', '4318', 'HHIC-M2', '9455600', '1', '1', null, 'KAGOSHIMA,JPN', '2017-07-05', '2017-07-28', null, '1', '2017-07-03 15:25:05', 'op', '2017-07-03 15:25:08', 'op', '1', 'sad', 'asd', null, null, null, null, '', '', '', '', '', '', '', '23');
INSERT INTO `t_quotation` VALUES ('32', '21', 'op', '328', 'Alpha Progress', '9597214', '1', '2', null, 'KITAKYUSHU,JPN', '2017-06-26', '2017-08-05', null, '0', '2017-07-03 08:23:44', 'op', '2017-07-03 08:23:44', 'op', '1', null, null, 'asd', 'ads', null, null, 'asd', '', 'ads', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/b6YwAdT2jW.doc', 'asd', '', 'asd', '1');
INSERT INTO `t_quotation` VALUES ('33', '1', 'admin', '6', 'Aashna', '9592458', '1', '1', null, 'FUKUYAMA,JPN', '2017-07-12', '2017-08-05', null, '0', '2017-07-03 08:24:39', 'admin', '2017-07-03 08:24:39', 'admin', '0', 'dsa', 'dsa', null, null, null, null, '', '', '', '', 'das', '', 'sad', '23');
INSERT INTO `t_quotation` VALUES ('34', '21', 'op', '1826', 'Cemtex Hunter', '9679660', '1', '1', null, 'NINGBO,CHN', '2017-08-08', '2017-08-08', '900', '2', '2017-07-04 02:06:38', 'op', '2017-07-04 02:06:48', 'op', '0', 'aaaa', 'vvvvvv', null, null, null, null, 'M/T GLORIOUS - FLAG: MARSHALL ISLANDS\nDWT 73980 MTS ON 13.025M  DRFT\nBLT 2/1999 AT ONOMICHI, JAPAN\nLOA 221.3M,  BEAM 38.04M,  DEPTH 19.6M\nGL, SS 02/2019 \nGRT 43357, NRT 20828\nTANKS 10 - EPOXY COATED\nNO COILS (EXCEPT IN SLOPTANKS P+S)\n83.346 (98%) CBM + SLOP TANK(S) (98%) 3.386 CBM\n3 GRADES WITH DOUBLE VALVE SEGREGATION\nCARGO PUMPS 3 SETS X 2.000 CBM/HOUR EACH VERTICAL CENTRIFUGAL\nM/E B&W 7S50MC-C,\nD/GS MAKER DAIHATSU TYPE 6DK-20\nIGS, COW, SBT\nLDT 12862 MTS\n', '', 'Kyi Thanda Oo @ KTO\nAssistant Operations Manager\nBen Line Agencies (Myanmar) Ltd- As Agents only\nOffice: +95 1  370 987 | Myanmar Mobile: +95 9 259202896\n', '', 'fo:12335\nlo:254565', '', '超出10吨10%\n超出30吨  20%', null);
INSERT INTO `t_quotation` VALUES ('35', '21', 'op', '8', 'Abdullah', '9132923', '1', '2', null, 'MACASSAR( UJUNG PANDANG),IDN', '2017-08-04', '2017-08-04', '9999', '2', '2017-07-04 02:59:15', 'op', '2017-07-04 02:59:51', 'op', '0', null, null, 'ddd', 'dsd', null, null, '', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/WMDeTFamiG.docx', '', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/wewBSErZ2Y.docx', '', 'http://shipinfo.oss-cn-shanghai.aliyuncs.com/goshipsurvey/xY6reWk6rK.png', 'ddddddd', null);
INSERT INTO `t_quotation` VALUES ('36', '1', 'admin', '235', 'Alessandra M', '9284518', '1', '1', null, 'KAGOSHIMA,JPN', '2017-06-27', '2017-07-08', '100', '2', '2017-07-06 15:19:45', 'admin', '2017-07-06 15:19:58', 'admin', '0', 'asd', 'sad', null, null, null, null, '', '', '你好\n哈哈   解决', '', 'asd', '', 'sad', null);
INSERT INTO `t_quotation` VALUES ('37', '1', 'admin', '31010', 'Lucien G A', '9242297', '5', '1', null, 'KAGOSHIMA,JPN', '2017-06-27', '2017-07-08', '333', '2', '2017-07-06 15:22:53', 'admin', '2017-07-06 15:22:53', 'admin', '0', 'asd', 'asd', null, null, null, null, 'hah\n\nhahahahaskdsa\n\ndsfhdsfjhdsiufds', '', 'hah\n\nhahahahaskdsa\n\ndsfhdsfjhdsiufds', '', 'hah\n\nhahahahaskdsa\n\ndsfhdsfjhdsiufds', '', 'hah\n\nhahahahaskdsa\n\ndsfhdsfjhdsiufds', null);
INSERT INTO `t_quotation` VALUES ('38', '1', 'admin', '887', 'Athanassios G.O.', '9437103', '1', '1', null, 'HITACHI,JPN', '2017-07-04', '2017-07-29', '11', '2', '2017-07-07 11:25:20', 'admin', '2017-07-07 11:25:22', 'admin', '0', 'sad', 'sad', null, null, null, null, 'aaa\naaaaa\naaaaaaaaa', '', 'aaa\naaaaa\naaaaaaaaa', '', 'aaa\naaaaa\naaaaaaaaa', '', 'aaa\naaaaa\naaaaaaaaa', null);
INSERT INTO `t_quotation` VALUES ('39', '1', 'admin', '1517', 'Bulk Success', '9567087', '1', '1', null, 'KAWASAKI,JPN', '2017-07-12', '2017-08-05', null, '1', '2017-07-07 13:25:52', 'admin', '2017-07-07 13:26:03', 'admin', '0', 'sad', 'dsa', null, null, null, null, 'sd\nasdsadassd\nasdsadassd\nasdsadas', '', 'sd\nasdsadas\nsd\nasdsadas\nsd\nasdsadas\nsd\nasdsadas', '', 'dsd', '', 'sd\nasdsadas', null);

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
  `company_id` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_quotation_application
-- ----------------------------
INSERT INTO `t_quotation_application` VALUES ('44', '26', '1', '1', '12345', '2017-06-16 12:15:05', 'admin', '2017-06-16 12:15:05', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('45', '3', '23', '1', '12345', '2017-06-22 16:21:18', 'company', '2017-06-22 16:21:18', 'company', '0', null, '18', '1');
INSERT INTO `t_quotation_application` VALUES ('46', '18', '1', '1', '11', '2017-06-26 11:47:54', 'admin', '2017-06-26 11:47:54', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('47', '14', '1', '2', '22', '2017-06-26 16:36:06', 'admin', '2017-06-26 16:59:58', 'admin', '1', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('48', '14', '1', '2', '222', '2017-06-26 17:00:50', 'admin', '2017-06-26 17:01:07', 'admin', '1', null, '19', '1');
INSERT INTO `t_quotation_application` VALUES ('49', '14', '1', '2', '22', '2017-06-26 17:02:05', 'admin', '2017-06-26 17:02:11', 'admin', '1', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('50', '14', '1', '1', '33', '2017-06-26 17:02:38', 'admin', '2017-06-26 17:02:38', 'admin', '0', null, '19', '1');
INSERT INTO `t_quotation_application` VALUES ('51', '15', '1', '0', '222', '2017-06-27 11:17:33', 'admin', '2017-06-27 11:17:33', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('52', '15', '23', '0', '33', '2017-06-27 11:22:28', 'company', '2017-06-27 11:22:30', 'company', '1', null, '18', '1');
INSERT INTO `t_quotation_application` VALUES ('53', '21', '1', '1', '200', '2017-06-27 16:00:59', 'admin', '2017-06-27 16:00:59', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('54', '2', '1', '0', '333', '2017-06-28 16:25:37', 'admin', '2017-06-28 16:25:37', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('55', '22', '1', '1', '222', '2017-06-28 17:03:30', 'admin', '2017-06-28 17:03:30', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('56', '23', '1', '1', '33333', '2017-06-28 17:07:37', 'admin', '2017-06-28 17:07:37', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('57', '1', '1', '0', '666', '2017-06-28 18:30:43', 'admin', '2017-06-28 18:30:43', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('58', '27', '1', '1', '12122', '2017-06-29 02:02:33', 'admin', '2017-06-29 02:02:33', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('59', '28', '1', '1', '1212', '2017-06-29 02:14:04', 'admin', '2017-06-29 02:14:04', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('60', '25', '23', '1', '456', '2017-06-29 07:47:24', 'company', '2017-06-29 07:47:24', 'company', '0', null, '18', '1');
INSERT INTO `t_quotation_application` VALUES ('61', '29', '1', '1', '1212', '2017-06-29 13:46:17', 'admin', '2017-06-29 13:46:17', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('62', '34', '23', '1', '900', '2017-07-04 02:07:58', 'company', '2017-07-04 02:07:58', 'company', '0', null, '20', '1');
INSERT INTO `t_quotation_application` VALUES ('63', '35', '23', '1', '9999', '2017-07-04 03:00:17', 'company', '2017-07-04 03:00:17', 'company', '0', null, '20', '1');
INSERT INTO `t_quotation_application` VALUES ('64', '30', '1', '1', '3000', '2017-07-04 08:27:58', 'admin', '2017-07-04 08:27:58', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('65', '36', '1', '1', '100', '2017-07-06 15:20:14', 'admin', '2017-07-06 15:20:14', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('66', '37', '1', '1', '333', '2017-07-06 15:23:01', 'admin', '2017-07-06 15:23:01', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('67', '32', '1', '0', '11', '2017-07-06 17:30:52', 'admin', '2017-07-06 17:30:52', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('68', '38', '1', '1', '11', '2017-07-07 13:24:50', 'admin', '2017-07-07 13:24:50', 'admin', '0', null, '17', '1');
INSERT INTO `t_quotation_application` VALUES ('69', '33', '1', '1', '222', '2017-07-07 16:03:18', 'admin', '2017-07-07 16:03:18', 'admin', '0', null, '19', '2');
INSERT INTO `t_quotation_application` VALUES ('70', '34', '1', '0', '400', '2017-07-07 18:32:44', 'admin', '2017-07-07 18:32:44', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('71', '35', '1', '1', '22', '2017-07-07 18:34:38', 'admin', '2017-07-07 18:34:38', 'admin', '0', null, '17', '2');
INSERT INTO `t_quotation_application` VALUES ('72', '36', '1', '1', '200', '2017-07-07 20:42:07', 'admin', '2017-07-07 20:42:07', 'admin', '0', null, '19', '2');

-- ----------------------------
-- Table structure for t_ship_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_ship_detail`;
CREATE TABLE `t_ship_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ship_name` varchar(155) DEFAULT NULL,
  `imo` varchar(155) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `loa` varchar(45) DEFAULT NULL,
  `beam` varchar(45) DEFAULT NULL,
  `dwt` varchar(45) DEFAULT NULL,
  `draft` varchar(45) DEFAULT NULL,
  `ggt` varchar(45) DEFAULT NULL,
  `ldt` varchar(45) DEFAULT NULL,
  `ss` varchar(45) DEFAULT NULL,
  `bunkers` varchar(45) DEFAULT NULL,
  `ship_class` varchar(45) DEFAULT NULL,
  `flag` varchar(45) DEFAULT NULL,
  `build_year` varchar(45) DEFAULT NULL,
  `builder` varchar(45) DEFAULT NULL,
  `ex_name` varchar(155) DEFAULT NULL,
  `inspection_date` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `ship_type` varchar(45) DEFAULT NULL,
  `me_maker` varchar(45) DEFAULT NULL,
  `me_type` varchar(45) DEFAULT NULL,
  `me_mcr_kw` varchar(45) DEFAULT NULL,
  `me_mcr_rpm` varchar(45) DEFAULT NULL,
  `me_running_hours` varchar(45) DEFAULT NULL,
  `me_critical_rpm` varchar(45) DEFAULT NULL,
  `me_others` varchar(45) DEFAULT NULL,
  `ap_maker` varchar(45) DEFAULT NULL,
  `ap_type` varchar(45) DEFAULT NULL,
  `ap_load` varchar(45) DEFAULT NULL,
  `ap_a1` varchar(45) DEFAULT NULL,
  `ap_a2` varchar(45) DEFAULT NULL,
  `ap_a3` varchar(45) DEFAULT NULL,
  `ap_others` varchar(45) DEFAULT NULL,
  `bo_maker` varchar(45) DEFAULT NULL,
  `bo_type` varchar(45) DEFAULT NULL,
  `bo_evaporation` varchar(45) DEFAULT NULL,
  `bo_heating_area` varchar(45) DEFAULT NULL,
  `bo_others` varchar(45) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(2) DEFAULT NULL,
  `call_sign` varchar(50) DEFAULT NULL,
  `wog` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ship_detail
-- ----------------------------
INSERT INTO `t_ship_detail` VALUES ('25', 'Alpha Wisdom', '9593440', null, '229.0', '32.3', '81,305', '14.5', '44,230', '', null, null, 'BV', 'Greece', '2012-1-1', 'Hyundai HI (Ulsan)', 'Flora Island', null, 'Shanghai', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-06-16', 'admin', '2017-06-16', 'admin', '0', 'SVCE9', null);
INSERT INTO `t_ship_detail` VALUES ('26', 'Abdullah', '9132923', null, '185.7', '30.4', '45,653', '11.6', '26,070', '', null, null, 'NKK', 'Bangladesh', '1996-1-1', 'Tsuneishi Zosen', 'ID Integrity', null, 'ewr', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0', 'S2CW', null);
INSERT INTO `t_ship_detail` VALUES ('27', '26 Agustos', '9238478', null, '190.0', '32.3', '52,455', '12.0', '30,303', '', null, null, 'NKK', 'Turkey', '2002-3-1', 'Tsuneishi Cebu', 'Pinar K.', null, 'dfs', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0', 'TCCF6', null);
INSERT INTO `t_ship_detail` VALUES ('28', 'Abtenauer', '9655212', null, '180.0', '30.0', '36,056', '10.1', '24,163', '', null, null, 'ABS', 'Marshall Is.', '2014-10-1', 'CSC Jinling Shipyard', '', null, 'sds', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-06-29', 'admin', '2017-06-29', 'admin', '0', 'V7CH5', null);
INSERT INTO `t_ship_detail` VALUES ('29', '26 Agustos', '9238478', null, '190.0', '32.3', '52,455', '12.0', '30,303', '', '', '', 'NKK', 'Turkey', '2002-3-1', 'Tsuneishi Cebu', 'Pinar K.', null, 'ZHOUSHAN,CHN', '1', 'MAN ', 'B. & W. 5S60ME-C8.2', '7500', '80', '1256', '90', 'AAAAAAAAAA', 'YANMAR', 'YANMAR TYPE', '750KW', '2500', '3500', '3600', 'AAAAAAAAAAAA', 'SAAAK', 'SAAAK TYPE', '1256', '3598', 'AAAAAAAAAAAA', null, null, null, null, null, 'TCCF6', '5');
INSERT INTO `t_ship_detail` VALUES ('30', 'Yin Nian', '9654218', null, '190.0', '32.3', '44,926', '10.5', '29,644', '', null, null, 'CCS', 'China P.R.', '2013-11-1', 'Qingdao Wuchuan HI', '', null, 'Shanghai,CHN', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-07-05', 'admin', '2017-07-05', 'admin', '0', 'BPON', null);
INSERT INTO `t_ship_detail` VALUES ('31', 'Abdullah', '9132923', null, '185.7', '30.4', '45,653', '11.6', '26,070', '', null, null, 'NKK', 'Bangladesh', '1996-1-1', 'Tsuneishi Zosen', 'ID Integrity', null, 'sadsadas', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-07-06', 'admin', '2017-07-06', 'admin', '0', 'S2CW', null);
INSERT INTO `t_ship_detail` VALUES ('32', 'ABM Discovery', '9006643', null, '180.8', '30.5', '39,110', '10.9', '21,941', '', null, null, 'NKK', 'Panama', '1992-7-1', 'I.H.I.', 'Pantanassa', null, 'KAWASAKI,JPN', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0', '3EDJ7', null);
INSERT INTO `t_ship_detail` VALUES ('33', 'ABY Scarlett', '9567051', null, '291.8', '45.0', '175,858', '18.3', '91,971', '', null, null, 'BV', 'Malta', '2014-9-1', 'Jinhai Heavy Ind', 'Luo Jia Shan', null, 'KITAKYUSHU,JPN', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0', '9HA3774', null);
INSERT INTO `t_ship_detail` VALUES ('34', 'Abdullah', '9132923', null, '185.7', '30.4', '45,653', '11.6', '26,070', '', null, null, 'NKK', 'Bangladesh', '1996-1-1', 'Tsuneishi Zosen', 'ID Integrity', null, 'HITACHI,JPN', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0', 'S2CW', null);
INSERT INTO `t_ship_detail` VALUES ('35', 'Alpha Progress', '9597214', null, '229.0', '32.3', '81,251', '14.5', '43,721', '', null, null, 'ABS', 'Greece', '2012-7-1', 'Hyundai Samho HI', '', null, 'HITACHI,JPN', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-07-07', 'admin', '2017-07-07', 'admin', '0', 'SVBO9', null);

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
-- Table structure for t_surveyor
-- ----------------------------
DROP TABLE IF EXISTS `t_surveyor`;
CREATE TABLE `t_surveyor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'surveyor的id',
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `survey_time_start` date DEFAULT NULL COMMENT '能够开始验船的时间',
  `survey_time_end` date DEFAULT NULL COMMENT '能够结束验船的日期',
  `email` varchar(155) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(155) DEFAULT NULL COMMENT '联系电话号码',
  `survey_port` varchar(255) DEFAULT NULL COMMENT '验船港口',
  `surveyor_profile` text,
  `company_id` int(11) DEFAULT NULL COMMENT '公司id',
  `portrait_url` varchar(155) DEFAULT NULL COMMENT '头像存储路径',
  `create_date` date DEFAULT NULL COMMENT '创建日期',
  `create_by` varchar(155) DEFAULT NULL COMMENT '创建者',
  `update_date` date DEFAULT NULL COMMENT '修改日期',
  `update_by` varchar(155) DEFAULT NULL COMMENT '修改者',
  `del_flag` int(11) DEFAULT '0',
  `ship_type` varchar(64) DEFAULT NULL COMMENT '可验船型',
  `past_evaluation` double DEFAULT NULL COMMENT '平均分',
  `survey_type` varchar(20) DEFAULT NULL COMMENT '能够船检的类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_surveyor
-- ----------------------------
INSERT INTO `t_surveyor` VALUES ('17', 'David', 'BeckHam', 'UK', '2017-05-29', '2017-09-09', '111@qq.com', '15151', '6,13,15,44,60,100', 'asdsadasdasdasdas', '1', '', '2017-06-16', 'admin', '2017-07-06', 'admin', '0', '1,4', '5', null);
INSERT INTO `t_surveyor` VALUES ('18', 'nobody', 'nonono', 'China', '2017-06-27', '2017-07-06', 'sadas', 'sada', '378', 'asdasdasda', '23', '', '2017-06-22', 'company', '2017-06-27', 'company', '0', '2,5,8', '3', '2');
INSERT INTO `t_surveyor` VALUES ('19', 'CC', 'CC', '', '2017-06-08', '2017-07-08', '', '', '250', '', '1', '', '2017-06-26', 'admin', '2017-06-26', 'admin', '0', null, '0', '');
INSERT INTO `t_surveyor` VALUES ('20', 'Nick', 'JAMES', 'USA', '2017-06-29', '2017-06-29', 'JAMES@HOTMAIL.COM', '008613985656565', '534,628,39', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA,BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB,CCCCCCCCCCCCCCCCCCCCC,DDDDDDDDDDDDDDDDDDDDDDDD,EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE,FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF.', '23', '', '2017-06-29', 'company', '2017-06-29', 'company', '0', '1,2,3,4,5,6,7,8', '0', '1,2');

-- ----------------------------
-- Table structure for t_surveyor_experience
-- ----------------------------
DROP TABLE IF EXISTS `t_surveyor_experience`;
CREATE TABLE `t_surveyor_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL COMMENT '工作起始日期',
  `ship_type` varchar(155) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `work_content` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(155) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(155) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  `surveyor_id` int(11) DEFAULT NULL,
  `end_date` date DEFAULT NULL COMMENT '工作结束日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_surveyor_experience
-- ----------------------------
INSERT INTO `t_surveyor_experience` VALUES ('14', '2017-06-28', 'das', 'das', 'das', null, null, null, null, '0', '17', '2017-07-06');
INSERT INTO `t_surveyor_experience` VALUES ('15', '2017-06-26', 'sad', 'sad', 'asdas', null, null, null, null, '1', '17', '2017-07-07');
INSERT INTO `t_surveyor_experience` VALUES ('16', null, '', '', '', null, null, null, null, '0', '18', null);
INSERT INTO `t_surveyor_experience` VALUES ('17', null, '', '', '', null, null, null, null, '0', '19', null);
INSERT INTO `t_surveyor_experience` VALUES ('18', '2011-03-16', 'BULKER；GAS', 'xxxxxx,co.ltd', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', null, null, null, null, '0', '20', '2013-02-25');
INSERT INTO `t_surveyor_experience` VALUES ('19', '2013-03-30', 'TANKER', 'IIIIIIIII,CO,LTD', 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW', null, null, null, null, '0', '20', '2016-04-26');
INSERT INTO `t_surveyor_experience` VALUES ('20', '2016-05-01', 'CHEMICAL', 'GGGGGG.CO.LTD', 'RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR', null, null, null, null, '0', '20', '2017-01-01');
INSERT INTO `t_surveyor_experience` VALUES ('21', '2017-01-02', 'REEFER', 'PPPPPPPPP.CO,LTD', '9999999999999999999999999999999', null, null, null, null, '0', '20', '2017-06-30');
INSERT INTO `t_surveyor_experience` VALUES ('22', null, '', '', '', null, null, null, null, '1', '17', null);
INSERT INTO `t_surveyor_experience` VALUES ('23', '2017-07-18', 'sdasd', 'sadsad', 'asdasdads', null, null, null, null, '1', '17', '2017-08-03');
INSERT INTO `t_surveyor_experience` VALUES ('24', '2017-07-11', 'asdsad', 'sadasd', 'dsasadas', null, null, null, null, '0', '17', '2017-07-26');

-- ----------------------------
-- Table structure for t_surveyor_info
-- ----------------------------
DROP TABLE IF EXISTS `t_surveyor_info`;
CREATE TABLE `t_surveyor_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inspection_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(4) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `passport_url` varchar(255) DEFAULT NULL,
  `loi_url` varchar(255) DEFAULT NULL,
  `report_url` varchar(255) DEFAULT NULL,
  `cv_url` varchar(255) DEFAULT NULL,
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
-- Table structure for t_technical_appendix
-- ----------------------------
DROP TABLE IF EXISTS `t_technical_appendix`;
CREATE TABLE `t_technical_appendix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inspection_report_id` int(11) DEFAULT NULL,
  `catagory` varchar(155) DEFAULT NULL COMMENT '大标题类型',
  `title1` varchar(155) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  `title2` varchar(155) DEFAULT NULL,
  `title3` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_technical_appendix
-- ----------------------------
INSERT INTO `t_technical_appendix` VALUES ('196', '14', 'Navigation & Communications Equipments', 'Equipment', null, null, null, null, null, 'Maker', 'Type');
INSERT INTO `t_technical_appendix` VALUES ('197', '14', 'Cargo hold capacities(Only Bulker)', 'Hold #', null, null, null, null, null, '(m3)', null);
INSERT INTO `t_technical_appendix` VALUES ('198', '14', 'Hatch dimensions(Only Bulker)', 'Hold #', null, null, null, null, null, 'm×m', null);
INSERT INTO `t_technical_appendix` VALUES ('199', '14', 'Cargo tank capacities(Only tanker)', 'Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('200', '14', 'Vessel tank capacity', 'Ballast Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('201', '14', 'Vessel tank capacity', 'Heavy Fuel Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('202', '14', 'Vessel tank capacity', 'Diesel Oil Capacity  Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('203', '14', 'Vessel tank capacity', 'Fresh Water Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('204', '14', 'Vessel tank capacity', 'Lube Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('205', '14', 'Vessel tank capacity', 'Miscellaneous Tanks Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('206', '14', 'Propulsion machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('207', '14', 'Auxilliaries machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('208', '14', 'Main deck and equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('209', '14', 'Cargo handling equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('210', '14', 'Lifesaving & firefighting equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('211', '15', 'Navigation & Communications Equipments', 'Equipment', null, null, null, null, null, 'Maker', 'Type');
INSERT INTO `t_technical_appendix` VALUES ('212', '15', 'Cargo hold capacities(Only Bulker)', 'Hold #', null, null, null, null, null, '(m3)', null);
INSERT INTO `t_technical_appendix` VALUES ('213', '15', 'Hatch dimensions(Only Bulker)', 'Hold #', null, null, null, null, null, 'm×m', null);
INSERT INTO `t_technical_appendix` VALUES ('214', '15', 'Cargo tank capacities(Only tanker)', 'Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('215', '15', 'Vessel tank capacity', 'Ballast Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('216', '15', 'Vessel tank capacity', 'Heavy Fuel Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('217', '15', 'Vessel tank capacity', 'Diesel Oil Capacity  Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('218', '15', 'Vessel tank capacity', 'Fresh Water Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('219', '15', 'Vessel tank capacity', 'Lube Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('220', '15', 'Vessel tank capacity', 'Miscellaneous Tanks Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('221', '15', 'Propulsion machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('222', '15', 'Auxilliaries machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('223', '15', 'Main deck and equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('224', '15', 'Cargo handling equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('225', '15', 'Lifesaving & firefighting equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('226', '16', 'Navigation & Communications Equipments', 'Equipment', null, null, null, null, null, 'Maker', 'Type');
INSERT INTO `t_technical_appendix` VALUES ('227', '16', 'Cargo hold capacities(Only Bulker)', 'Hold #', null, null, null, null, null, '(m3)', null);
INSERT INTO `t_technical_appendix` VALUES ('228', '16', 'Hatch dimensions(Only Bulker)', 'Hold #', null, null, null, null, null, 'm×m', null);
INSERT INTO `t_technical_appendix` VALUES ('229', '16', 'Cargo tank capacities(Only tanker)', 'Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('230', '16', 'Vessel tank capacity', 'Ballast Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('231', '16', 'Vessel tank capacity', 'Heavy Fuel Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('232', '16', 'Vessel tank capacity', 'Diesel Oil Capacity  Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('233', '16', 'Vessel tank capacity', 'Fresh Water Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('234', '16', 'Vessel tank capacity', 'Lube Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('235', '16', 'Vessel tank capacity', 'Miscellaneous Tanks Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('236', '16', 'Propulsion machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('237', '16', 'Auxilliaries machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('238', '16', 'Main deck and equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('239', '16', 'Cargo handling equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('240', '16', 'Lifesaving & firefighting equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('241', '17', 'Navigation & Communications Equipments', 'Equipment', null, null, null, null, null, 'Maker', 'Type');
INSERT INTO `t_technical_appendix` VALUES ('242', '17', 'Cargo hold capacities(Only Bulker)', 'Hold #', null, null, null, null, null, '(m3)', null);
INSERT INTO `t_technical_appendix` VALUES ('243', '17', 'Hatch dimensions(Only Bulker)', 'Hold #', null, null, null, null, null, 'm×m', null);
INSERT INTO `t_technical_appendix` VALUES ('244', '17', 'Cargo tank capacities(Only tanker)', 'Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('245', '17', 'Vessel tank capacity', 'Ballast Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('246', '17', 'Vessel tank capacity', 'Heavy Fuel Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('247', '17', 'Vessel tank capacity', 'Diesel Oil Capacity  Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('248', '17', 'Vessel tank capacity', 'Fresh Water Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('249', '17', 'Vessel tank capacity', 'Lube Oil Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('250', '17', 'Vessel tank capacity', 'Miscellaneous Tanks Capacity Tank #', null, null, null, null, null, 'Frames', '(m3)');
INSERT INTO `t_technical_appendix` VALUES ('251', '17', 'Propulsion machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('252', '17', 'Auxilliaries machinery', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('253', '17', 'Main deck and equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('254', '17', 'Cargo handling equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);
INSERT INTO `t_technical_appendix` VALUES ('255', '17', 'Lifesaving & firefighting equipment', 'Name of Equipmet', null, null, null, null, null, 'Frames', null);

-- ----------------------------
-- Table structure for t_technical_appendix_info
-- ----------------------------
DROP TABLE IF EXISTS `t_technical_appendix_info`;
CREATE TABLE `t_technical_appendix_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `one` varchar(155) DEFAULT NULL,
  `two` varchar(155) DEFAULT NULL,
  `three` varchar(155) DEFAULT NULL,
  `technical_appendix_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `create_by` varchar(45) DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(45) DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_technical_appendix_info
-- ----------------------------
INSERT INTO `t_technical_appendix_info` VALUES ('28', 'HFO Sett. Tank (P)', '', '222', '201', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('29', 'No.1 WBT (P)', '', '1211', '200', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('30', 'No.1 WBT (S)', '', '111', '200', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('31', 'No.2 WBT (P)', '', '111', '200', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('32', 'No.2 WBT (S)', '', '111', '200', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('33', 'No. 1', '123', null, '197', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('34', 'No. 2', '456', null, '197', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('35', 'No. 1', '12*12', null, '198', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('36', 'No.1 D.O. Serv. Tank (P)', '111', '111', '202', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('37', 'No. 3', '789', null, '197', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('38', 'No. 2', '12*12', null, '198', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('39', 'Magnetic Compass', 'AAAAA', 'AAAA', '196', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('40', 'No. 3', '12*12', null, '198', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('41', 'No. 4', '789', null, '197', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('42', 'No. 4', '12*12', null, '198', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('43', 'Navtex Receiver', 'AAAA', 'AAAA', '196', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('44', 'No. 1 C.C.O Tank', '15-16', '111', '199', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('45', 'No. 5', '789', null, '197', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('46', 'Common antenna', 'AAAAAAA', 'AAAAAAA', '196', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('47', 'No. 4', '12*12', null, '198', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('48', 'F.W. Tank (P)', '111', '222', '203', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('49', 'M/E Sys. Oil Store Tank', '222', '222', '204', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('50', 'No. 2 C.C.O Tank', '12-13', '222', '199', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('51', 'No. 5', '12*12', null, '198', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('52', 'No. 3 C.C.O Tank', '18-19', '444', '199', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('53', 'H.F.O. Overf. Tank', '222', '111', '205', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('54', 'No. 4 C.C.O Tank', '78-89', '222', '199', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('55', 'No. 5 C.C.O Tank', '56-98', '777', '199', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('56', 'No. 5 S.C.O Tank (P)', '56-98', '222', '199', null, null, null, null, null);
INSERT INTO `t_technical_appendix_info` VALUES ('57', 'Slop Tank (S)', '58-78', '444', '199', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_technical_model
-- ----------------------------
DROP TABLE IF EXISTS `t_technical_model`;
CREATE TABLE `t_technical_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catagory` varchar(155) DEFAULT NULL,
  `title` varchar(155) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_technical_model
-- ----------------------------
INSERT INTO `t_technical_model` VALUES ('1', 'Navigation & Communications Equipments', 'Equipment', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('2', 'Navigation & Communications Equipments', 'Maker', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('3', 'Cargo hold capacities(Only Bulker)', 'Hold #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('4', 'Hatch dimensions(Only Bulker)', 'Hold #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('5', 'Cargo tank capacities(Only tanker)', 'Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('6', 'Vessel tank capacity', 'Ballast Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('7', 'Vessel tank capacity', 'Heavy Fuel Oil Capacity Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('8', 'Vessel tank capacity', 'Diesel Oil Capacity  Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('9', 'Vessel tank capacity', 'Fresh Water Capacity Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('10', 'Vessel tank capacity', 'Lube Oil Capacity Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('11', 'Vessel tank capacity', 'Miscellaneous Tanks Capacity Tank #', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('12', 'Propulsion machinery', 'Name of Equipmet', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('13', 'Auxilliaries machinery', 'Name of Equipmet', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('14', 'Main deck and equipment', 'Name of Equipmet', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('15', 'Cargo handling equipment', 'Name of Equipmet', null, null, null, null, '0');
INSERT INTO `t_technical_model` VALUES ('16', 'Lifesaving & firefighting equipment', 'Name of Equipmet', null, null, null, null, '0');

-- ----------------------------
-- Table structure for t_technical_model_content
-- ----------------------------
DROP TABLE IF EXISTS `t_technical_model_content`;
CREATE TABLE `t_technical_model_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(155) DEFAULT NULL,
  `technical_model_id` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(45) DEFAULT NULL COMMENT '创建用户',
  `update_date` date DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(45) DEFAULT NULL COMMENT '修改用户',
  `del_flag` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_technical_model_content
-- ----------------------------
INSERT INTO `t_technical_model_content` VALUES ('1', 'Magnetic Compass', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('2', 'Gyro Compass', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('3', 'X-Radar', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('4', 'S-Radar', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('5', 'INMARSAT-C No.1', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('6', 'INMARSAT-C No.2', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('7', 'FBB', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('8', 'GPS 1', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('9', 'GPS 2', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('10', 'Echo Sounder', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('11', 'Speed Log', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('12', 'Weather Facsimile', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('13', 'Navtex Receiver', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('14', 'AIS', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('15', 'Anemometer', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('16', 'GMDSS', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('17', 'ECDIS NO.1', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('18', 'ECDIS NO.2', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('19', 'MF/HF', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('20', 'V-sat', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('21', 'VHF/DSC', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('22', 'UHF', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('23', 'Two way VHF', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('24', 'EPIRB', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('25', 'SART', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('26', 'Public address', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('27', 'Auto tel.', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('28', 'Sound/Com tel.', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('29', 'Talk back', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('30', 'Common antenna', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('31', 'Whistle', '1', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('32', 'FURUNO', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('33', 'JRC', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('34', 'TKC', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('35', 'OKI', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('36', 'MRC', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('37', 'ZOLLER', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('38', 'IBUKI', '2', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('39', 'No. 1', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('40', 'No. 2', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('41', 'No. 3', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('42', 'No. 4', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('43', 'No. 5', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('44', 'No. 6', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('45', 'No. 7', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('46', 'No. 8', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('47', 'No. 9', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('48', 'No. 10', '3', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('49', 'No. 1', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('50', 'No. 2', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('51', 'No. 3', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('52', 'No. 4', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('53', 'No. 5', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('54', 'No. 6', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('55', 'No. 7', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('56', 'No. 8', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('57', 'No. 9', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('58', 'No. 10', '4', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('59', 'No. 1 C.C.O Tank', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('60', 'No. 2 C.C.O Tank', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('61', 'No. 3 C.C.O Tank', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('62', 'No. 4 C.C.O Tank', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('63', 'No. 5 C.C.O Tank', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('64', 'No. 1 S.C.O Tank (P)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('65', 'No. 1 S.C.O Tank (S)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('66', 'No. 2 S.C.O Tank (P)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('67', 'No. 2 S.C.O Tank (S)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('68', 'No. 3 S.C.O Tank (P)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('69', 'No. 3 S.C.O Tank (S)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('70', 'No. 4 S.C.O Tank (P)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('71', 'No. 4 S.C.O Tank (S)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('72', 'No. 5 S.C.O Tank (P)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('73', 'No. 5 S.C.O Tank (S)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('74', 'Slop Tank (P)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('75', 'Slop Tank (S)', '5', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('76', 'FPT (Lower)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('77', 'FPT (Upper)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('78', 'No.1 WBT (P)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('79', 'No.1 WBT (S)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('80', 'No.2 WBT (P)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('81', 'No.2 WBT (S)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('82', 'No.3 WBT (P)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('83', 'No.3 WBT (S)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('84', 'No.4 WBT (P)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('85', 'No.4 WBT (S)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('86', 'No.5 WBT (P)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('87', 'No.5 WBT (S)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('88', 'E/R WBT (P)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('89', 'E/R WBT (S)', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('90', 'APT', '6', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('91', 'HFO (P)', '7', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('92', 'HFO (S)', '7', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('93', 'HFO Sett. Tank (P)', '7', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('94', 'No.1 HFO Serv. Tank (P)', '7', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('95', 'No.2 HFO Serv. Tank (P)', '7', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('96', 'D.O. Store Tank (P)', '8', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('97', 'D.O. Store Tank (S)', '8', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('98', 'No.1 D.O. Serv. Tank (P)', '8', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('99', 'No.2 D.O. Serv. Tank (P)', '8', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('100', 'F.W. Tank (P)', '9', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('101', 'F.W. Tank (S)', '9', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('102', 'M/E Cyl. Oil Store Tank', '10', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('103', 'M/E Sys. Oil Store Tank', '10', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('104', 'M/E Cyl. Oil Sett. Tank', '10', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('105', 'A/E L.O. Store Tank (P)', '10', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('106', 'A/E L.O. Store Tank (P)', '10', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('107', 'M/E L.O. Sump Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('108', 'H.F.O. Overf. Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('109', 'Bilge Holding Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('110', 'S/T C.F.W Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('111', 'Waste Oil Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('112', 'Sludge Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('113', 'S/T L.O. Sump Tank', '11', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('114', 'Main Engine', '12', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('115', 'Shaft', '12', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('116', 'Propeller', '12', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('117', 'Rudder', '12', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('118', 'Oil Gland', '12', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('119', 'AUX. Engine', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('120', 'Emergency Diesel Engine', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('121', 'Boilers', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('122', 'Air Compressors', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('123', 'Main Starting Air Compressor', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('124', 'Service Air Compressor', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('125', 'Deck Air Compressor', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('126', 'Emergency Air Compressor', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('127', 'Steering gear', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('128', 'Level Measuring Equipment', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('129', 'Valve Control', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('130', 'Bow Thruster', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('131', 'Ballast pump', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('132', 'Purifiers', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('133', 'Fresh Water Generator', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('134', 'Bilge Water Separator', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('135', 'Air Condition', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('136', 'Refrigerating', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('137', 'Ballast Water Treatment System', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('138', 'Elevator', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('139', 'Sewage Plant', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('140', 'Incinerator', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('141', 'Fresh water generator', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('142', 'Oily Bilge Separator', '13', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('143', 'Windlass', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('144', 'Mooring Winches', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('145', 'Anchor', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('146', 'Emergency Towing Arrangement', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('147', 'Provisions Cranes', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('148', 'Chains', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('149', 'Stores Cranes', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('150', 'Cranes', '14', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('151', 'Cargo Pumps', '15', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('152', 'Manifold Cranes', '15', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('153', 'Cranes', '15', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('154', 'Hatch cover', '15', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('155', 'Rescue Boat Cranes', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('156', 'Rescue Boats', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('157', 'Lifeboats', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('158', 'Liferafts', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('159', 'CO2 System', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('160', 'Foam System', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('161', 'Fire Pumps', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('162', 'Emergency Fire Pump', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('163', 'Firefighting outfits', '16', null, null, null, null, '0');
INSERT INTO `t_technical_model_content` VALUES ('164', 'EEDB', '16', null, null, null, null, '0');

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
