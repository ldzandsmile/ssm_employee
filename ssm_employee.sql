/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 80011
Source Host           : 127.0.0.1:3306
Source Database       : ssm_employee

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-09-18 08:04:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '开发部');
INSERT INTO `department` VALUES ('2', '市场部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_email` varchar(255) NOT NULL,
  `employee_departmentId` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `employee_departmentId` (`employee_departmentId`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`employee_departmentId`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('5', '张9', 'aa@qq.com', '1');
INSERT INTO `employee` VALUES ('6', '张5', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('7', '张6', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('8', '张7', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('9', '张8', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('10', '张9', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('11', '张10', 'aa@qq.com', '1');
INSERT INTO `employee` VALUES ('12', '张11', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('13', '张12', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('14', '张14', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('15', '张15', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('16', '张16', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('17', '张17', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('18', '张18', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('19', '张19', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('20', '张20', 'a1@qq.com', '2');
INSERT INTO `employee` VALUES ('21', '张21', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('22', '张22', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('23', '张23', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('24', '张24', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('25', '张25', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('26', '张26', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('27', '张27', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('28', '张28', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('29', '张29', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('30', '张30', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('31', '张31', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('32', '张32', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('33', '张33', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('34', '张34', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('35', '张35', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('36', '张36', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('37', '张37', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('38', '张38', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('39', '张39', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('40', '张40', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('41', '张41', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('42', '张42', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('43', '张43', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('44', '张44', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('45', '张45', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('46', '张46', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('47', '张47', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('48', '张48', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('49', '张49', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('50', '张50', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('51', '张51', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('52', '张52', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('53', '张53', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('54', '张54', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('55', '张55', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('56', '张56', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('57', '张57', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('58', '张58', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('59', '张59', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('60', '张60', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('61', '张61', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('62', '张62', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('63', '张63', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('64', '张64', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('65', '张65', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('66', '张66', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('67', '张67', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('68', '张68', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('69', '张69', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('70', '张70', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('71', '张71', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('72', '张72', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('73', '张73', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('74', '张74', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('75', '张75', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('76', '张76', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('77', '张77', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('78', '张78', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('79', '张79', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('80', '张80', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('81', '张81', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('82', '张82', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('83', '张83', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('84', '张84', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('85', '张85', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('86', '张86', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('87', '张87', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('88', '张88', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('89', '张89', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('90', '张90', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('91', '张91', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('92', '张92', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('93', '张93', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('94', '张94', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('95', '张95', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('96', '张96', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('97', '张97', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('98', '张98', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('99', '张99', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('100', '张100', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('101', '张101', 'a@qq.com', '2');
INSERT INTO `employee` VALUES ('102', '张三101', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1106', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1107', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1108', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1109', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1110', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1111', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1112', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1113', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1114', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1115', '张三丰', '1@qq.com', '1');
INSERT INTO `employee` VALUES ('1116', '张三丰', '1@qq.com', '1');
INSERT INTO `employee` VALUES ('1117', '只是那干啥', '7@qq.com', '1');
INSERT INTO `employee` VALUES ('1118', '只是那干啥', '7@qq.com', '1');
INSERT INTO `employee` VALUES ('1119', 'asdsdfsdf', 'dsf@qq.com', '1');
INSERT INTO `employee` VALUES ('1120', 'asdsdfsdf', 'dsf@qq.com', '1');
INSERT INTO `employee` VALUES ('1121', '张三丰', 'a@qq.com', '1');
INSERT INTO `employee` VALUES ('1122', '张三丰', 'q@qq.com', '1');
INSERT INTO `employee` VALUES ('1123', '改回是否', '1@qq.com', '1');
INSERT INTO `employee` VALUES ('1124', '掌上飞车', 'q@qq.com', '1');
INSERT INTO `employee` VALUES ('1125', '张0', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('1126', '张0', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('1127', '张0', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('1128', '张0', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('1129', '张0', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('1130', '张0', 'a1@qq.com', '1');
INSERT INTO `employee` VALUES ('1131', '张0', 'ao@qq.com', '1');
INSERT INTO `employee` VALUES ('1132', '张0', 'aq@qq.com', '1');
INSERT INTO `employee` VALUES ('1133', '张0', 'am@qq.com', '1');
INSERT INTO `employee` VALUES ('1134', '张00', 'a2a@qq.com', '2');
INSERT INTO `employee` VALUES ('1135', 'asdasd', '1@qq.com', '1');
