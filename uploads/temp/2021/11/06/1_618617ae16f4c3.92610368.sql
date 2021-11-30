/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : hsreport

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2021-11-03 16:42:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '123', '123', '123');

-- ----------------------------
-- Table structure for `anwser_record`
-- ----------------------------
DROP TABLE IF EXISTS `anwser_record`;
CREATE TABLE `anwser_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `article_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章名称',
  `date` date NOT NULL,
  `score` int(10) NOT NULL,
  `right_num` int(10) NOT NULL,
  `question_num` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anwser_record
-- ----------------------------
INSERT INTO `anwser_record` VALUES ('2', '7', null, '2019-11-08', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('3', '7', null, '2019-11-10', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('4', '7', null, '2019-11-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('5', '7', null, '2019-11-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('6', '7', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('7', '7', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('8', '7', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('9', '7', null, '2019-12-09', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('10', '7', null, '2019-12-09', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('11', '7', null, '2019-12-09', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('12', 'obO635YhDHsBbjBwrAA4', null, '2019-12-09', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('13', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('14', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('15', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('16', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('17', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('18', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('19', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('20', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('21', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('22', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('23', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('24', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2019-12-09', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('25', '-1', null, '2020-01-08', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('26', '-1', null, '2020-01-09', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('27', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('28', '-1', null, '2020-01-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('29', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-09', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('30', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-09', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('31', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-10', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('32', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('33', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('34', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('35', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('36', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('37', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('38', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('39', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('40', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('41', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-11', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('42', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('43', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('44', '-1', null, '2020-01-11', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('45', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('46', '-1', null, '2020-01-11', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('47', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('48', '-1', null, '2020-01-11', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('49', '-1', null, '2020-01-11', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('50', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('51', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('52', '-1', null, '2020-01-11', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('53', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('54', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('55', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('56', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('57', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('58', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('59', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('60', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('61', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('62', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('63', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('64', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('65', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('66', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('67', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('68', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('69', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('70', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('71', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('72', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('73', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('74', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('75', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('76', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('77', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('78', '-1', null, '2020-01-12', '50', '5', '5');
INSERT INTO `anwser_record` VALUES ('79', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('80', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('81', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('82', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('83', '-1', null, '2020-01-12', '50', '5', '5');
INSERT INTO `anwser_record` VALUES ('84', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('85', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('86', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('87', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('88', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('89', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('90', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('91', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('92', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('93', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('94', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('95', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('96', '-1', null, '2020-01-12', '40', '4', '5');
INSERT INTO `anwser_record` VALUES ('97', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('98', '-1', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('99', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('100', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('101', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('102', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('103', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('104', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('105', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('106', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('107', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('108', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('109', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('110', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('111', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('112', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('113', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('114', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('115', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('116', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('117', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('118', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('119', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('120', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('121', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('122', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('123', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('124', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('125', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('126', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('127', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('128', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('129', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('130', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('131', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('132', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('133', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('134', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('135', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('136', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('137', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('138', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('139', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('140', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('141', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('142', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('143', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('144', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('145', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('146', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('147', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('148', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('149', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('150', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('151', '-1', null, '2020-01-12', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('152', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('153', '-1', null, '2020-01-12', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('154', '-1', null, '2020-01-12', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('155', '-1', null, '2020-02-10', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('156', '-1', null, '2020-02-10', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('157', '-1', null, '2020-02-10', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('158', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-02-14', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('159', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-02-14', '20', '2', '5');
INSERT INTO `anwser_record` VALUES ('160', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-02-14', '10', '1', '5');
INSERT INTO `anwser_record` VALUES ('161', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-03-03', '30', '3', '5');
INSERT INTO `anwser_record` VALUES ('162', 'obO635YhDHsBbjBwrAA4beShJDqE', null, '2020-03-03', '0', '0', '1');
INSERT INTO `anwser_record` VALUES ('163', '-1', null, '2020-03-06', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('164', '-1', null, '2020-03-06', '0', '0', '5');
INSERT INTO `anwser_record` VALUES ('165', '-1', null, '2021-07-10', '20', '2', '5');

-- ----------------------------
-- Table structure for `anwser_record_detail`
-- ----------------------------
DROP TABLE IF EXISTS `anwser_record_detail`;
CREATE TABLE `anwser_record_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `anwser_record_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `anwser` varchar(255) NOT NULL,
  `is_right` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=807 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anwser_record_detail
-- ----------------------------
INSERT INTO `anwser_record_detail` VALUES ('1', '2', '40', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('2', '2', '26', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('3', '2', '46', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('4', '2', '35', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('5', '2', '47', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('6', '3', '35', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('7', '3', '29', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('8', '3', '44', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('9', '3', '33', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('10', '3', '45', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('11', '6', '23', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('12', '6', '3', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('13', '6', '6', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('14', '6', '9', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('15', '6', '22', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('16', '7', '23', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('17', '7', '10', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('18', '7', '20', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('19', '7', '2', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('20', '7', '21', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('21', '8', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('22', '8', '7', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('23', '8', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('24', '8', '16', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('25', '8', '14', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('26', '9', '19', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('27', '9', '22', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('28', '9', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('29', '9', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('30', '9', '4', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('31', '10', '21', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('32', '10', '4', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('33', '10', '16', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('34', '10', '11', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('35', '10', '10', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('36', '11', '11', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('37', '11', '24', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('38', '11', '22', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('39', '11', '19', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('40', '11', '4', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('41', '12', '3', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('42', '12', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('43', '12', '8', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('44', '12', '22', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('45', '12', '21', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('46', '13', '24', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('47', '13', '10', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('48', '13', '16', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('49', '13', '7', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('50', '13', '15', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('51', '14', '7', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('52', '14', '17', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('53', '14', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('54', '14', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('55', '14', '15', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('56', '15', '9', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('57', '15', '24', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('58', '15', '19', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('59', '15', '15', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('60', '15', '2', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('61', '16', '7', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('62', '16', '21', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('63', '16', '2', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('64', '16', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('65', '16', '20', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('66', '17', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('67', '17', '6', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('68', '17', '4', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('69', '17', '9', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('70', '17', '15', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('71', '18', '22', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('72', '18', '8', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('73', '18', '19', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('74', '18', '24', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('75', '18', '11', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('76', '19', '20', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('77', '19', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('78', '19', '19', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('79', '19', '16', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('80', '19', '22', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('81', '20', '3', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('82', '20', '17', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('83', '20', '8', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('84', '20', '16', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('85', '20', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('86', '21', '4', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('87', '21', '24', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('88', '21', '7', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('89', '21', '19', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('90', '21', '11', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('91', '22', '13', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('92', '22', '7', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('93', '22', '2', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('94', '22', '24', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('95', '22', '12', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('96', '23', '6', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('97', '23', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('98', '23', '11', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('99', '23', '3', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('100', '23', '14', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('101', '24', '32', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('102', '24', '27', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('103', '24', '36', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('104', '24', '45', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('105', '24', '26', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('106', '25', '453', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('107', '25', '465', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('108', '25', '456', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('109', '25', '455', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('110', '25', '469', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('111', '26', '397', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('112', '26', '392', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('113', '26', '400', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('114', '26', '403', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('115', '26', '402', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('116', '27', '274', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('117', '27', '283', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('118', '27', '276', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('119', '27', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('120', '27', '281', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('121', '28', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('122', '28', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('123', '28', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('124', '28', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('125', '28', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('126', '29', '276', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('127', '29', '285', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('128', '29', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('129', '29', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('130', '29', '284', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('131', '30', '285', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('132', '30', '269', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('133', '30', '270', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('134', '30', '279', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('135', '30', '278', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('136', '31', '300', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('137', '31', '305', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('138', '31', '295', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('139', '31', '301', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('140', '31', '290', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('141', '32', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('142', '32', '68', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('143', '32', '67', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('144', '32', '74', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('145', '32', '70', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('146', '33', '74', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('147', '33', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('148', '33', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('149', '33', '68', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('150', '33', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('151', '34', '72', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('152', '34', '73', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('153', '34', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('154', '34', '70', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('155', '34', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('156', '35', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('157', '35', '72', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('158', '35', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('159', '35', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('160', '35', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('161', '36', '70', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('162', '36', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('163', '36', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('164', '36', '73', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('165', '36', '68', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('166', '37', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('167', '37', '70', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('168', '37', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('169', '37', '67', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('170', '37', '73', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('171', '38', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('172', '38', '67', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('173', '38', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('174', '38', '72', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('175', '38', '73', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('176', '39', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('177', '39', '70', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('178', '39', '72', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('179', '39', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('180', '39', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('181', '40', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('182', '40', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('183', '40', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('184', '40', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('185', '40', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('186', '41', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('187', '41', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('188', '41', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('189', '41', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('190', '41', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('191', '42', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('192', '42', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('193', '42', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('194', '42', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('195', '42', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('196', '43', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('197', '43', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('198', '43', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('199', '43', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('200', '43', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('201', '44', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('202', '44', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('203', '44', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('204', '44', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('205', '44', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('206', '45', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('207', '45', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('208', '45', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('209', '45', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('210', '45', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('211', '46', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('212', '46', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('213', '46', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('214', '46', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('215', '46', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('216', '47', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('217', '47', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('218', '47', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('219', '47', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('220', '47', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('221', '48', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('222', '48', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('223', '48', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('224', '48', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('225', '48', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('226', '49', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('227', '49', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('228', '49', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('229', '49', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('230', '49', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('231', '50', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('232', '50', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('233', '50', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('234', '50', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('235', '50', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('236', '51', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('237', '51', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('238', '51', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('239', '51', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('240', '51', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('241', '52', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('242', '52', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('243', '52', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('244', '52', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('245', '52', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('246', '53', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('247', '53', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('248', '53', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('249', '53', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('250', '53', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('251', '54', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('252', '54', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('253', '54', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('254', '54', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('255', '54', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('256', '55', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('257', '55', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('258', '55', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('259', '55', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('260', '55', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('261', '56', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('262', '56', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('263', '56', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('264', '56', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('265', '56', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('266', '57', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('267', '57', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('268', '57', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('269', '57', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('270', '57', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('271', '58', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('272', '58', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('273', '58', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('274', '58', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('275', '58', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('276', '59', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('277', '59', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('278', '59', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('279', '59', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('280', '59', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('281', '60', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('282', '60', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('283', '60', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('284', '60', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('285', '60', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('286', '61', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('287', '61', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('288', '61', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('289', '61', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('290', '61', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('291', '62', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('292', '62', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('293', '62', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('294', '62', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('295', '62', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('296', '63', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('297', '63', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('298', '63', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('299', '63', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('300', '63', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('301', '64', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('302', '64', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('303', '64', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('304', '64', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('305', '64', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('306', '65', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('307', '65', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('308', '65', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('309', '65', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('310', '65', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('311', '66', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('312', '66', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('313', '66', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('314', '66', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('315', '66', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('316', '67', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('317', '67', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('318', '67', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('319', '67', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('320', '67', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('321', '68', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('322', '68', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('323', '68', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('324', '68', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('325', '68', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('326', '69', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('327', '69', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('328', '69', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('329', '69', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('330', '69', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('331', '70', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('332', '70', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('333', '70', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('334', '70', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('335', '70', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('336', '71', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('337', '71', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('338', '71', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('339', '71', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('340', '71', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('341', '72', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('342', '72', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('343', '72', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('344', '72', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('345', '72', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('346', '73', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('347', '73', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('348', '73', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('349', '73', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('350', '73', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('351', '74', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('352', '74', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('353', '74', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('354', '74', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('355', '74', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('356', '75', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('357', '75', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('358', '75', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('359', '75', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('360', '75', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('361', '76', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('362', '76', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('363', '76', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('364', '76', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('365', '76', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('366', '77', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('367', '77', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('368', '77', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('369', '77', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('370', '77', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('371', '78', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('372', '78', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('373', '78', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('374', '78', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('375', '78', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('376', '79', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('377', '79', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('378', '79', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('379', '79', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('380', '79', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('381', '80', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('382', '80', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('383', '80', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('384', '80', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('385', '80', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('386', '81', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('387', '81', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('388', '81', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('389', '81', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('390', '81', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('391', '82', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('392', '82', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('393', '82', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('394', '82', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('395', '82', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('396', '83', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('397', '83', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('398', '83', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('399', '83', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('400', '83', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('401', '84', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('402', '84', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('403', '84', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('404', '84', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('405', '84', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('406', '85', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('407', '85', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('408', '85', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('409', '85', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('410', '85', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('411', '86', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('412', '86', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('413', '86', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('414', '86', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('415', '86', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('416', '87', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('417', '87', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('418', '87', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('419', '87', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('420', '87', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('421', '88', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('422', '88', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('423', '88', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('424', '88', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('425', '88', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('426', '89', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('427', '89', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('428', '89', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('429', '89', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('430', '89', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('431', '90', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('432', '90', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('433', '90', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('434', '90', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('435', '90', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('436', '91', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('437', '91', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('438', '91', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('439', '91', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('440', '91', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('441', '92', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('442', '92', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('443', '92', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('444', '92', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('445', '92', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('446', '93', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('447', '93', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('448', '93', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('449', '93', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('450', '93', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('451', '94', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('452', '94', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('453', '94', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('454', '94', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('455', '94', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('456', '95', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('457', '95', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('458', '95', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('459', '95', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('460', '95', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('461', '96', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('462', '96', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('463', '96', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('464', '96', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('465', '96', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('466', '97', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('467', '97', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('468', '97', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('469', '97', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('470', '97', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('471', '98', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('472', '98', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('473', '98', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('474', '98', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('475', '98', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('476', '99', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('477', '99', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('478', '99', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('479', '99', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('480', '99', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('481', '100', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('482', '100', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('483', '100', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('484', '100', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('485', '100', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('486', '101', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('487', '101', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('488', '101', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('489', '101', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('490', '101', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('491', '102', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('492', '102', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('493', '102', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('494', '102', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('495', '102', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('496', '103', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('497', '103', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('498', '103', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('499', '103', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('500', '103', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('501', '104', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('502', '104', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('503', '104', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('504', '104', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('505', '104', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('506', '105', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('507', '105', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('508', '105', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('509', '105', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('510', '105', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('511', '106', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('512', '106', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('513', '106', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('514', '106', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('515', '106', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('516', '107', '267', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('517', '107', '286', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('518', '107', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('519', '107', '279', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('520', '107', '276', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('521', '108', '269', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('522', '108', '267', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('523', '108', '275', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('524', '108', '280', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('525', '108', '283', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('526', '109', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('527', '109', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('528', '109', '285', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('529', '109', '284', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('530', '109', '276', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('531', '110', '285', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('532', '110', '268', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('533', '110', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('534', '110', '275', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('535', '110', '271', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('536', '111', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('537', '111', '275', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('538', '111', '284', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('539', '111', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('540', '111', '267', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('541', '112', '268', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('542', '112', '270', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('543', '112', '269', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('544', '112', '280', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('545', '112', '267', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('546', '113', '267', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('547', '113', '282', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('548', '113', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('549', '113', '281', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('550', '113', '286', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('551', '114', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('552', '114', '274', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('553', '114', '279', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('554', '114', '284', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('555', '114', '280', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('556', '115', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('557', '115', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('558', '115', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('559', '115', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('560', '115', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('561', '116', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('562', '116', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('563', '116', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('564', '116', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('565', '116', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('566', '117', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('567', '117', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('568', '117', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('569', '117', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('570', '117', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('571', '118', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('572', '118', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('573', '118', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('574', '118', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('575', '118', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('576', '119', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('577', '119', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('578', '119', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('579', '119', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('580', '119', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('581', '120', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('582', '120', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('583', '120', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('584', '120', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('585', '120', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('586', '121', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('587', '121', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('588', '121', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('589', '121', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('590', '121', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('591', '122', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('592', '122', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('593', '122', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('594', '122', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('595', '122', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('596', '123', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('597', '123', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('598', '123', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('599', '123', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('600', '123', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('601', '124', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('602', '124', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('603', '124', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('604', '124', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('605', '124', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('606', '125', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('607', '125', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('608', '125', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('609', '125', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('610', '125', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('611', '126', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('612', '126', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('613', '126', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('614', '126', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('615', '126', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('616', '127', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('617', '127', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('618', '127', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('619', '127', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('620', '127', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('621', '128', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('622', '128', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('623', '128', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('624', '128', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('625', '128', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('626', '129', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('627', '129', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('628', '129', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('629', '129', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('630', '129', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('631', '130', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('632', '130', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('633', '130', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('634', '130', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('635', '130', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('636', '131', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('637', '131', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('638', '131', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('639', '131', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('640', '131', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('641', '132', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('642', '132', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('643', '132', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('644', '132', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('645', '132', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('646', '133', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('647', '133', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('648', '133', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('649', '133', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('650', '133', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('651', '134', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('652', '134', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('653', '134', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('654', '134', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('655', '134', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('656', '135', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('657', '135', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('658', '135', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('659', '135', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('660', '135', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('661', '136', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('662', '136', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('663', '136', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('664', '136', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('665', '136', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('666', '137', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('667', '137', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('668', '137', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('669', '137', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('670', '137', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('671', '138', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('672', '138', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('673', '138', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('674', '138', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('675', '138', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('676', '139', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('677', '139', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('678', '139', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('679', '139', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('680', '139', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('681', '140', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('682', '140', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('683', '140', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('684', '140', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('685', '140', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('686', '141', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('687', '141', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('688', '141', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('689', '141', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('690', '141', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('691', '142', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('692', '142', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('693', '142', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('694', '142', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('695', '142', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('696', '143', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('697', '143', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('698', '143', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('699', '143', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('700', '143', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('701', '144', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('702', '144', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('703', '144', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('704', '144', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('705', '144', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('706', '145', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('707', '145', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('708', '145', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('709', '145', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('710', '145', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('711', '146', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('712', '146', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('713', '146', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('714', '146', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('715', '146', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('716', '147', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('717', '147', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('718', '147', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('719', '147', '177', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('720', '147', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('721', '148', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('722', '148', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('723', '148', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('724', '148', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('725', '148', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('726', '149', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('727', '149', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('728', '149', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('729', '149', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('730', '149', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('731', '150', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('732', '150', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('733', '150', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('734', '150', '526', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('735', '150', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('736', '151', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('737', '151', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('738', '151', '178', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('739', '151', '529', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('740', '151', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('741', '152', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('742', '152', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('743', '152', '179', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('744', '152', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('745', '152', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('746', '153', '527', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('747', '153', '174', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('748', '153', '531', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('749', '153', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('750', '153', '528', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('751', '154', '175', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('752', '154', '176', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('753', '154', '173', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('754', '154', '525', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('755', '154', '172', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('756', '155', '12', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('757', '155', '15', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('758', '155', '20', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('759', '155', '5', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('760', '155', '3', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('761', '156', '37', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('762', '156', '33', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('763', '156', '32', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('764', '156', '40', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('765', '156', '44', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('766', '157', '328', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('767', '157', '319', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('768', '157', '324', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('769', '157', '329', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('770', '157', '326', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('771', '158', '284', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('772', '158', '270', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('773', '158', '276', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('774', '158', '273', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('775', '158', '275', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('776', '159', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('777', '159', '275', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('778', '159', '272', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('779', '159', '268', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('780', '159', '283', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('781', '160', '276', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('782', '160', '285', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('783', '160', '280', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('784', '160', '277', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('785', '160', '271', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('786', '161', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('787', '161', '67', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('788', '161', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('789', '161', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('790', '161', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('791', '162', '544', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('792', '163', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('793', '163', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('794', '163', '69', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('795', '163', '72', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('796', '163', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('797', '164', '73', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('798', '164', '75', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('799', '164', '71', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('800', '164', '66', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('801', '164', '72', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('802', '165', '10', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('803', '165', '12', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('804', '165', '9', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('805', '165', '1', '', '0');
INSERT INTO `anwser_record_detail` VALUES ('806', '165', '21', '', '0');

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci COMMENT '标题',
  `user_id` int(12) DEFAULT NULL,
  `introduce` text COLLATE utf8_unicode_ci COMMENT '文章内容',
  `content` text COLLATE utf8_unicode_ci COMMENT '内容',
  `image` text CHARACTER SET utf8,
  `author_id` int(11) DEFAULT NULL,
  `author` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者',
  `grade` int(11) DEFAULT NULL,
  `submit_time` datetime DEFAULT NULL COMMENT '投稿时间',
  `column_id` int(11) DEFAULT NULL COMMENT '投稿栏目id',
  `status` int(2) unsigned zerofill DEFAULT NULL COMMENT '状态',
  `status_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章状态名',
  `file` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_state` int(2) DEFAULT NULL COMMENT '是否展示，1是，0否',
  `type_id` int(4) DEFAULT NULL COMMENT '文章类型id',
  `type_name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章类型名称',
  `good_mark` int(11) DEFAULT NULL COMMENT '点赞数',
  `opinion0` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '拒稿/收稿原因',
  `opinion1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '一审意见(退稿则反馈给作者，否则展示给之后审核人参考)',
  `opinion2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '二审意见(退稿则反馈给作者，否则展示给之后审核人参考)',
  `opinion3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '总审意见(反馈给作者)',
  `publish_column` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `frequency_id` int(11) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firsttrialtime` datetime DEFAULT NULL,
  `secondtrialtime` datetime DEFAULT NULL,
  `finaltrialtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('118', '毕棚沟之旅', null, '这个周末，我和爸爸妈妈还有外婆一起去毕棚沟玩。到了住的地方已经晚上十二点了，伴着窗外“哗哗”的溪水声，坐了六个小时\r\n车的我们很快就进入了甜甜的梦乡。', '这个周末，我和爸爸妈妈还有外婆一起去毕棚沟玩。到了住的地方已经晚上十二点了，伴着窗外“哗哗”的溪水声，坐了六个小时\r\n车的我们很快就进入了甜甜的梦乡。\r\n　　早上起来，天还没亮，我们就匆匆赶去买票，在景区门口简单吃过早餐，我们就乘上了大巴。车在崎岖的山路上前行，窗外是秀美\r\n的秋色。\r\n　　我们在上海子下了车，从步行到开始游毕棚沟。树木在阳光的照射下是那么亮丽，树叶显现出鹅黄、金黄的色彩，树枝上垂挂着长\r\n长的松萝，风一吹，像女孩子的裙子样飘动起来。沟里的溪水潺潺地流着，我用手一摸，冰凉刺骨，妈妈说是因为那是从雪山上流下来\r\n的水，所以才会那么冷。\r\n　　一路所赏着美景，很快我们就到了磐羊湖，这个湖就像是掉落在地上湖蓝色珍珠，在阳光的照射下闪闪发光。湖边有很多具有挑战\r\n性的娱乐设施，我也去玩了很久，由于爸爸的脚崴了，我们不得不提前下山。\r\n　　毕棚沟绚丽多彩的秋色，壮美的雪山，给我们留下了深刻的记忆，有机会我还会再来的。\r\r', '37037455645cf6dcefe21441fe0e125.png', '123', '李若歆', '3', '2021-06-19 14:28:23', null, '07', '录用', '2021/06/19/1_60cd8e860d41b7.77360318.doc', null, null, '写景', null, '收稿通过', '高分通过', '高分通过', '高分通过', null, null, null, '150000', '150300', null, '光明小学', null, null, '2021-06-19 14:35:34', '2021-06-19 14:36:54', '2021-06-19 14:37:55');
INSERT INTO `article` VALUES ('119', '微 笑', null, '微笑能给人带来愉悦与快乐，微笑能给人带来开心与兴奋。我有一个爱微笑的爸爸，每次看见爸爸的时候，他的脸上总是挂着一丝\r\n微笑。\r\r', '微笑能给人带来愉悦与快乐，微笑能给人带来开心与兴奋。我有一个爱微笑的爸爸，每次看见爸爸的时候，他的脸上总是挂着一丝\r\n微笑。\r\n　　记得有一次，妈妈和姐姐去买衣服了，家里只有我和爸爸。当我一个人正在阳台上玩得正起劲时，突然我口渴了，我飞快地跑向厨\r\n房，当我经过客厅时，不小心将妈妈新买的玻璃杯给打碎了。我害怕极了，心想着妈妈回来后会怎么惩罚我。我情不自禁地哭了起来。\r\n听见我的哭声，正在睡觉的爸爸醒来了，爸爸看到了当时的画面后，一句话也没有说，赶忙清理战场。清理完后，妈妈也回来了，妈妈\r\n很生气，后来在爸爸的庇护下，我没有受罚。爸爸只是对着我微笑，好像在说，下次可要小心哦。\r\n　　记得还有一次，爸爸要回北京工作了，我们将爸爸送到了机场。我们都舍不得爸爸离开，虽然只有短短的瞬间，却让人感到是永生\r\n难忘的几个小时。在走之前，爸爸还是与往常一样，露出一丝的微笑。好像再对我说：“在家里要听妈妈的话，要好好学习。”我期待\r\n着下一次的见面早点到来。\r\n　　世上有着许多的笑，有大笑，有冷笑，有哭笑……但是只有爸爸的微笑让人难忘。\r', 'd0341fcc6b675c1edccf0682c634430.png', null, '王晓', '3', '2021-06-19 14:28:55', null, '07', '录用', '2021/06/19/1_60cd8ea6a35587.44187410.doc', null, null, '写事', null, '收稿通过', '高分通过', '高分通过', null, null, null, null, '130000', '130100', null, '光明小学', null, null, '2021-06-19 14:35:44', '2021-06-19 14:37:02', null);
INSERT INTO `article` VALUES ('120', '第一次做饭', null, '我的第一次做饭留下了难忘的经历', '我的第一次做饭，让我留下了非常难忘的经历\r', 'f46e464f4f5d4a1951ce8db9389d164.png', null, '陈子轩', '3', '2021-06-19 14:29:22', null, '07', '录用', '2021/06/19/1_60cd8ec1aac227.64582738.doc', null, null, '写事', null, '收稿通过', '高分通过', '高分通过', null, null, null, null, '130000', '130100', '130102', '光明小学', null, null, '2021-06-19 14:35:53', '2021-06-19 14:37:40', null);
INSERT INTO `article` VALUES ('121', '我的母亲', null, '', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '悦读悦美.jpg', null, '张四', '6', '2021-06-19 14:29:57', null, '07', '录用', '2021/06/19/1_60cd8ee421cab3.73726349.doc', null, null, '写人', null, '收稿通过', '高分通过', '高分通过', '', null, null, null, '210000', '210300', null, '光明小学', null, null, '2021-06-19 14:36:01', '2021-11-03 14:08:07', '2021-11-03 14:08:17');
INSERT INTO `article` VALUES ('122', '四库全书', null, '《四库全书》全称《钦定四库全书》，是清代乾隆时期编修的大型丛书。', '《四库全书》全称《钦定四库全书》，是清代乾隆时期编修的大型丛书。在清高宗乾隆帝的主持下，由纪昀等360多位高官、学者编撰，3800多人抄写，耗时十三年编成。分经、史、子、集四部，故名“四库”。据文津阁藏本，共收录3462种图书，共计79338卷（相当于《永乐大典》的3.5倍 [1]  ），36000余册，约八亿字 [2]  。\r\n乾隆四十七年（1782年）初稿完成，乾隆五十七年（1792年）全部完成。 [3]  乾隆帝命人手抄了7部《四库全书》，下令分别藏于全国各地。先抄好的四部分贮于紫禁城文渊阁、辽宁沈阳文溯阁、圆明园文源阁、河北承德文津阁珍藏，这就是所谓的“北四阁”。后抄好的三部分贮扬州文汇阁、镇江文宗阁和杭州文澜阁珍藏，这就是所谓的“南三阁”。\r\n《四库全书》是中国古代最大的文化工程，对中国古典文化进行了一次最系统、最全面的总结，呈现出了中国古典文化的知识体系。 [4]  《四库全书》可以称为中华传统文化最丰富最完备的集成之作。\r\n中国文、史、哲、理、工、农、医，几乎所有的学科都能够从中找到源头和血脉。', '阅读.jpg', null, '永瑢、纪昀等主编', '3', '2021-06-19 14:30:32', null, '02', '一审通过', '2021/06/19/1_60cd8f07065af3.85164575.doc', null, null, '写事', null, '收稿通过', '高分通过', null, null, null, null, null, '120000', '120200', null, '新华小学', null, null, '2021-06-19 14:37:25', null, null);
INSERT INTO `article` VALUES ('123', '我的父亲', null, '我的父亲是一个慈善的人，我经常跟他说', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '妙笔生花.jpg', '123', '张三', '3', '2021-06-19 14:31:32', null, '02', '一审通过', '2021/06/19/1_60cd8f43670ea0.52363921.doc', null, null, '写人', null, '收稿通过', '通过', null, null, null, null, null, '150000', '150200', '150203', '新华小学', null, null, '2021-06-26 23:05:04', null, null);
INSERT INTO `article` VALUES ('124', '广州郊游记录', null, '广州是个好地方，我经常去广州旅游', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '读读乐.jpg', '123', '张三', '3', '2021-06-19 14:31:56', null, '02', '一审通过', '2021/06/19/1_60cd8f5ba2f273.95778245.doc', null, null, '写景', null, '收稿通过', 'asd', null, null, null, null, null, '130000', '130200', '130203', '光明小学', null, null, '2021-07-10 19:56:44', null, null);
INSERT INTO `article` VALUES ('125', '我的生日', null, '我的第一次生日我非常难忘，这是我一个难忘的生日', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '祖国大地.jpg', '123', '张三', '4', '2021-06-19 14:32:28', null, '02', '一审通过', '2021/06/19/1_60cd8f7bcac1f2.76012602.doc', null, null, '写事', null, '收稿通过', '', null, null, null, null, null, '120000', '120100', null, '万科小学', null, null, '2021-11-03 14:07:26', null, null);
INSERT INTO `article` VALUES ('126', '我的第一次', null, '我的第一次生日我非常难忘，这是我一个难忘的生日', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '趣味语文.jpg', '123', '张三', '3', '2021-06-19 14:32:52', null, '03', '退稿重改', '2021/06/19/1_60cd8f93c9ffd5.26388318.doc', null, null, '写事', null, '收稿通过', '', null, null, null, null, null, '110000', '110100', null, '万科小学', null, null, '2021-11-03 14:07:33', null, null);
INSERT INTO `article` VALUES ('136', '我的母亲', null, '我的母亲是一个慈善的人', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '阅读.jpg', '123', '张三', '2', '2021-07-19 11:00:09', null, '01', '待收稿', '2021/07/19/1_60f4eab838afa2.07565924.docx', null, null, '写事', null, null, null, null, null, null, null, null, null, null, '130303', null, null, null, null, null, null);
INSERT INTO `article` VALUES ('137', '我的父亲', null, '我的父亲是一个慈善的人', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', '曲苑杂谈.jpg', null, '王石', '5', '2021-07-19 13:32:18', null, '01', '待收稿', '2021/07/19/1_60f50e60edd3a2.95247081.docx', null, null, '写事', null, null, null, null, null, null, null, null, null, null, '430203', null, null, null, null, null, null);
INSERT INTO `article` VALUES ('138', 'asd', null, 'asd', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', null, null, '', null, '2021-07-24 15:33:39', null, '01', '待收稿', '2021/07/24/1_60fbc252b1fd26.05841492.docx', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('139', 'asd', null, '', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', null, null, '', null, '2021-07-24 15:35:23', null, '01', '待收稿', '2021/07/24/1_60fbc2ba31b8f4.06147720.docx', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('140', 'sd', null, '', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', null, null, '', null, '2021-07-24 15:38:34', null, '01', '待收稿', '2021/07/24/1_60fbc3799cba31.61043414.docx', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('141', 'sd', null, '', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', null, null, '', null, '2021-07-24 15:46:15', null, '01', '待收稿', '2021/07/24/1_60fbc546164659.78373253.docx', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('143', 'sd', null, '', '我有一个胖胖的、穿着西装、满脸都是胡子、留着平头的爸爸。 　　三年级时，我做书上的思考题，非常粗心，怎么做都是错的。过了一会儿，爸爸来到我的面 前。看见这熟悉的身影，我想他一定是来帮我解答难题。但是，爸爸却对我说：“自己还思考一 下。”他这么一说，我心里就不太耐烦了。 　　过了一会儿，爸爸见我还没有动笔做，就专专心心地给我讲解。他给我讲解，就象老师给我上 课一样。他虽然讲得象老师，但和我一样，还是有一点粗心。 　　听奶奶说，小时候叫爸爸去当兵他不去。他学习也不太好。奶奶叫我不要向爸爸学习。可是我 很惭愧，每次考试，总也考不好。唉！ 　　爸爸时常睡到中午十二点钟才起床。他很讲究卫生，就是有时候不爱洗衣服。他很爱打牌，有 时候玩通宵。我最烦爸爸打牌了，虽然他给我找钱读书很辛苦，可总是输，多可惜呀！ 　　爸爸最爱吃鱼和辣椒，不喜欢吃稀饭。这些都是听我奶奶说的。 　　爸爸最烦我考试不及格，他希望我每学期能拿着好成绩回家，我争取吧。 　　爸爸给我讲作业讲得很好。我希望他在这一点上继续努力，同时，我也希望他能改正打牌玩通 宵和睡懒觉的习惯。\r', null, null, '', null, '2021-07-24 16:04:09', null, '01', '待收稿', '2021/07/24/1_60fbc978049b89.08148575.docx', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('144', '美丽的油菜花\r', null, '春天一到，大片大片的油菜花盛开了。这油菜花可真美呀！', '春天一到，大片大片的油菜花盛开了。这油菜花可真美呀！\r\n　　我闻到了一阵阵淡淡的清香，忍不住往油菜花地跑去，站在油菜花的跟前仔细观察。油菜花是金黄色的，它的花一共有四片花瓣。\r\n这些花在茎的顶部簇拥着，中间还夹杂着一些很小的球，这就是油菜花的花苞。别看油菜花这么小，可油菜花那绿绿的茎可高着呢！如\r\n果去掉茎的皮，就可以直接生吃，味道还不错呢！在茎上，还长着几片碧绿的大叶子，叶子的边缘呈锯齿状，就像花边一样。也许是保\r\n护小金花的吧！站在远处眺望，油菜花田就像一片金黄色的海洋，一阵微风吹过，卷起万千波浪，蔚为壮观。\r\n　　油菜田里，许多勤劳的小蜜蜂嗡嗡地叫着、忙碌着，在油菜花上争先恐后地采蜜，好像在说：“别抢，这是我的，这是我的！”\r\n　　我们喜欢在油菜花田里玩捉迷藏，可是出来以后，头上身上就沾满花粉，一个个像刚刚忙完工作的粉刷匠。\r\n　　油菜花是春天的象征，我喜欢这油菜花，更喜欢这万紫千红的春天！\r\r', '55c65e408a9b33617fb7b73994a32a7.png', null, '丁磊', '6', '2021-07-24 16:04:36', null, '07', '待收稿', '2021/07/24/1_60fbc993bebf38.27923457.docx', null, null, '写物', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('145', '班干部竞选\r', null, '今天下午，我们班举行了班干部竞选活动。我们接连竞选了班长、副班长、体育委员等等，同学们认真的选择自己认可的班干部，\r\n气氛紧张又热烈。', '　今天下午，我们班举行了班干部竞选活动。我们接连竞选了班长、副班长、体育委员等等，同学们认真的选择自己认可的班干部，\r\n气氛紧张又热烈。\r\n　　竞选结束后，我选上了副班长。我有些高兴，也有些失望。高兴是因为我从来没有当过副班长；失望是因为我感觉压力有点大，因\r\n为我的成绩不是那么好，偶尔还会犯一些小错误。作为副班长，我要给同学们做榜样，努力把成绩提高上去，同时我也要改掉以前那些\r\n小错误，比如在走廊讲话、跑导致扣分。\r\n　　这次比赛让我成长，我一定会当好副班长，认真负责，全心全意为大家服务！\r', '918eca78e65726de871b4e86d550e69.png', null, '赵明', '5', '2021-07-24 16:07:11', null, '07', '待收稿', '2021/07/24/1_60fbca2e7d7fc9.77317336.docx', null, null, '写事', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `article` VALUES ('146', '我心爱的“甜筒”', null, '我家养了一只人见人爱，花见花开的小仓鼠，它的名字叫“甜筒”。', '　　我家养了一只人见人爱，花见花开的小仓鼠，它的名字叫“甜筒”。\r\n　　甜筒小小的身体，穿着棕黄色的毛衣，只要摸上去就会让你爱不释手。它滚圆的身体，从远处看就像一个小绒球，可爱极了！\r\n　　别看甜筒小小的，可是它的食量可是真的可以雷倒每个人。甜筒不仅能吃，而且非常贪吃，绝对是仓鼠家族中名副其实的小吃货，\r\n不信我把甜筒一天的食谱亮出来，给大家看看：半碟花生碎、半块钙片、一勺松肉、三颗杏仁、两块小饼干、五块小鱼干……怎么样？\r\n说它是大胃王是不是一点都不夸张呀！\r\n　　甜筒很有个性，它最讨厌有人摸它乳红色的小爪子，只要你一摸，它就全身充满了杀气，用一双大眼睛怒视着你，好像在说：“别\r\n碰我，这粉嫩嫩的小爪子，可是我的宝贝，碰脏了，你赔得起呀？”\r\n　　甜筒非常怕黑，夜晚，你只要一关灯，它就一刻都不得安宁，又跳又蹦，甚至把笼子磕得“吱吱”响，直闹到你为它把灯打开，他\r\n才肯罢休。\r\n　　甜筒不仅长得可爱，趣事也很多，这不，最近学会爬笼子顶了，所以时不时就会炫技，瞧，又开始施展才艺了，看它抓着一根铁\r\n丝，使劲一窜，顺利爬上了笼顶，这时的甜筒，头抬得高高的，骄傲地看着四周，嘴里还发出了“吱吱呀呀”的叫声，好像在向全世界\r\n宣布：“看，我——甜筒，轻松征服了世界第一峰！”哈哈，也许是乐极生悲，前一秒还神气十足的甜筒，后一秒就从笼顶跌落下来，\r\n摔了个四脚朝天，幸亏下边是保暖的木屑堆。\r\n　　甜筒不仅是我的开心果还是我的玩伴，我会永远爱它。\r\r', '4db94fffd7b0393ad781ba259cb4df2.png', null, '繁露', '4', '2021-07-24 16:07:36', null, '07', '待收稿', '2021/07/24/1_60fbca47d09767.59329688.docx', null, null, '写物', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `articlenum_detail`
-- ----------------------------
DROP TABLE IF EXISTS `articlenum_detail`;
CREATE TABLE `articlenum_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_num` int(11) DEFAULT '0' COMMENT '各个学校的投稿数',
  `refused_num` int(11) DEFAULT '0' COMMENT '拒稿数（包含淘汰和退稿重改）',
  `accepted_num` int(11) DEFAULT '0' COMMENT '发表稿件数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articlenum_detail
-- ----------------------------
INSERT INTO `articlenum_detail` VALUES ('1', '华南师范大学附属小学', '0', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('2', '梅北小学', '0', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('3', '敦南小学', '0', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('24', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('25', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('26', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('27', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('28', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('29', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('30', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('31', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('32', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('33', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('34', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('35', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('36', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('37', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('38', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('39', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('40', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('41', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('42', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('43', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('44', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('45', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('46', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('47', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('48', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('49', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('50', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('51', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('52', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('53', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('54', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('55', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('56', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('57', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('58', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('59', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('60', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('61', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('62', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('63', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('64', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('65', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('66', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('67', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('68', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('69', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('70', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('71', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('72', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('73', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('74', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('75', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('76', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('77', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('78', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('79', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('80', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('81', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('82', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('83', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('84', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('85', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('86', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('87', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('88', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('89', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('90', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('91', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('92', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('93', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('94', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('95', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('96', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('97', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('98', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('99', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('100', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('101', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('102', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('103', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('104', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('105', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('106', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('107', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('108', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('109', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('110', null, '1', '0', '0');
INSERT INTO `articlenum_detail` VALUES ('111', null, '1', '0', '0');

-- ----------------------------
-- Table structure for `article_status`
-- ----------------------------
DROP TABLE IF EXISTS `article_status`;
CREATE TABLE `article_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(12) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article_status
-- ----------------------------
INSERT INTO `article_status` VALUES ('1', '未审核');
INSERT INTO `article_status` VALUES ('2', '一审通过');
INSERT INTO `article_status` VALUES ('3', '退稿重改');
INSERT INTO `article_status` VALUES ('4', '收稿');
INSERT INTO `article_status` VALUES ('5', '淘汰');
INSERT INTO `article_status` VALUES ('6', '二审通过');
INSERT INTO `article_status` VALUES ('7', '录用');
INSERT INTO `article_status` VALUES ('8', '发表');

-- ----------------------------
-- Table structure for `article_type`
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id` int(11) NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article_type
-- ----------------------------
INSERT INTO `article_type` VALUES ('1', '写人');
INSERT INTO `article_type` VALUES ('2', '写事');
INSERT INTO `article_type` VALUES ('3', '写景');
INSERT INTO `article_type` VALUES ('4', '状物');
INSERT INTO `article_type` VALUES ('5', '想象文');
INSERT INTO `article_type` VALUES ('6', '应用文');
INSERT INTO `article_type` VALUES ('7', '其他');

-- ----------------------------
-- Table structure for `base_code`
-- ----------------------------
DROP TABLE IF EXISTS `base_code`;
CREATE TABLE `base_code` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表示',
  `F_TCODE` varchar(20) DEFAULT '' COMMENT '类型编码',
  `F_TYPECODE` char(20) DEFAULT '' COMMENT 'l类型编码 树结构',
  `F_CODE` char(16) DEFAULT '' COMMENT '类型内部编码',
  `F_NAME` char(30) DEFAULT '' COMMENT '类型内的名称',
  `F_SHORTNAME` char(90) DEFAULT '' COMMENT '短名称，用于输入时使用',
  `F_ADD` int(11) DEFAULT '1' COMMENT '说明上课处理采用加或减进行计算',
  `F_LEN` int(4) DEFAULT '0',
  `F_TYPE` int(4) DEFAULT '0' COMMENT '分类类型',
  `F_COL1` int(4) DEFAULT '0' COMMENT '表单位置1/转换GF服务者分值',
  `F_COL2` int(4) DEFAULT '0' COMMENT '表单位置2，/转换GF排名分值',
  `f_value` char(4) DEFAULT '' COMMENT '开放购买折扣，1是 2否',
  `user_table` char(50) DEFAULT NULL COMMENT '使用表',
  `user_table_where` varchar(300) DEFAULT NULL COMMENT '使用表条件',
  `user_table_list` char(200) DEFAULT NULL COMMENT '使用表列表名称',
  `F_IMAG` char(3) DEFAULT '' COMMENT '图片类型',
  `F_IMAGEBK` char(1) DEFAULT '' COMMENT '图片分界符',
  `F_VIEWNAME` varchar(30) DEFAULT '' COMMENT '关联视图文件名',
  `age_pre` char(6) DEFAULT '' COMMENT '年龄上限',
  `age_suf` char(6) DEFAULT '' COMMENT '年龄下限',
  `PRODUCT_ID` int(4) DEFAULT '0' COMMENT '关联商品名称IDmall_products',
  `sql_select` varchar(200) DEFAULT NULL COMMENT 'sql查询备注',
  `fater_id` int(8) DEFAULT NULL COMMENT '父级ID',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=770 DEFAULT CHARSET=utf8 COMMENT='各类代码规范表说明，是公共基础表';

-- ----------------------------
-- Records of base_code
-- ----------------------------
INSERT INTO `base_code` VALUES ('1', 'CLASS', 'CLASS01', 'CLASS', '1', '', '1', '0', '0', '0', '0', '1', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('2', 'CLASS', 'CLASS02', 'CLASS', '2', '', '1', '0', '0', '1', '1', '2', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('3', 'CLASS', 'CLASS03', 'CLASS', '3', '', '1', '0', '0', '2', '1', '3', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('4', 'CLASS', 'CLASS04', 'CLASS', '4', '', '1', '0', '0', '3', '1', '4', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('5', 'CLASS', 'CLASS05', 'CLASS', '5', '', '1', '0', '0', '4', '1', '5', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('6', 'CLASS', 'CLASS06', 'CLASS', '6', '', '1', '0', '0', '5', '1', '6', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('8', 'CLASS', 'CLASS07', 'CLASS', '7', '', '1', '0', '0', '1', '1', '7', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('9', 'CLASS', 'CLASS08', 'CLASS', '8', '', '1', '0', '0', '2', '1', '8', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('10', 'CLASS', 'CLASS09', 'CLASS', '9', '', '1', '0', '0', '0', '0', '9', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('11', 'CLASS', 'CLASS10', 'CLASS', '10', '', '1', '0', '0', '1', '1', '10', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('12', 'CLASS', 'CLASS11', 'CLASS', '11', '', '1', '0', '0', '2', '1', '11', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('13', 'CLASS', 'CLASS12', 'CLASS', '12', '', '1', '0', '0', '3', '1', '12', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('14', 'CLASS', 'CLASS13', 'CLASS', '13', '', '1', '0', '0', '4', '1', '13', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('15', 'CLASS', 'CLASS14', 'CLASS', '14', '', '1', '0', '0', '5', '1', '14', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('16', 'CLASS', 'CLASS15', 'CLASS', '15', '', '1', '0', '0', '6', '1', '15', null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('17', 'TERM', 'TERM1', 'TERM', '第一段', '', '1', '0', '0', '0', '0', '1', null, null, null, '', '', '', '', '', '0', null, '17');
INSERT INTO `base_code` VALUES ('18', 'TERM', 'TERM2', 'TERM', '第二段', '', '1', '0', '1', '1', '1', '2', null, null, null, '', '', '', '', '', '0', null, '17');
INSERT INTO `base_code` VALUES ('19', 'TERM', 'TERM3', 'TERM', '第三段', '', '1', '0', '2', '2', '1', '3', null, null, null, '', '', '', '', '', '0', null, '17');
INSERT INTO `base_code` VALUES ('20', 'TERM', 'TERM4', 'TERM', '第四段', '', '1', '0', '3', '3', '1', '4', null, null, null, '', '', '', '', '', '0', null, '17');
INSERT INTO `base_code` VALUES ('21', 'YEAR', 'YEAR2017', 'YEAR', '2017', '', '1', '1', '1', '1', '1', '2017', null, null, null, '', '', '', '', '', '0', null, '21');
INSERT INTO `base_code` VALUES ('22', 'YEAR', 'YEAR2018', 'YEAR', '2018', '', '1', '2', '2', '2', '1', '2018', null, null, null, '', '', '', '', '', '0', null, '21');
INSERT INTO `base_code` VALUES ('23', 'YEAR', 'YEAR2019', 'YEAR', '2019', '', '1', '3', '3', '3', '1', '2019', null, null, null, '', '', '', '', '', '0', null, '21');
INSERT INTO `base_code` VALUES ('24', 'YEAR', 'YEAR2020', 'YEAR', '2020', '', '1', '3', '4', '4', '1', '2010', null, null, null, '', '', '', '', '', '0', null, '21');
INSERT INTO `base_code` VALUES ('25', 'YEAR', 'YEAR2021', 'YEAR', '2021', '', '1', '0', '5', '5', '1', '2021', null, null, null, '', '', '', '', '', '0', null, '21');
INSERT INTO `base_code` VALUES ('26', 'YEAR', 'YEAR2022', 'YEAR', '2022', '', '1', '0', '6', '6', '1', '2022', null, null, null, '', '', '', '', '', '0', null, '21');
INSERT INTO `base_code` VALUES ('27', 'YEAR', 'YEAR', 'YEAR', '', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '0');
INSERT INTO `base_code` VALUES ('28', 'LEVEL', 'LEVEL2', 'LEVEL2', '初二', '', '1', '0', '1', '1', '1', '1', null, null, null, '', '', '', '', '', '0', null, '233');
INSERT INTO `base_code` VALUES ('29', 'LEVEL', 'LEVEL3', 'LEVEL3', '初三', '', '1', '0', '2', '2', '1', '2', null, null, null, '', '', '', '', '', '0', null, '233');
INSERT INTO `base_code` VALUES ('30', 'LEVEL', 'LEVEL4', 'LEVEL4', '高一', '', '1', '0', '3', '3', '1', '3', null, null, null, '', '', '', '', '', '0', null, '233');
INSERT INTO `base_code` VALUES ('31', 'LEVEL', 'LEVEL5', 'LEVEL5', '高二', '', '1', '0', '4', '4', '1', '4', null, null, null, '', '', '', '', '', '0', null, '233');
INSERT INTO `base_code` VALUES ('32', 'CLUB', 'CLUB', 'CLUB', '表现', '', '1', '0', '0', '0', '0', '5', null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('33', 'CLUB', 'CLUB10', 'CLUB10', '一般', 'club_lgo_pic', '1', '0', '1', '1', '1', '1', null, null, null, 'ICO', '|', '', '', '', '0', null, '32');
INSERT INTO `base_code` VALUES ('34', 'CLUB', 'CLUB21', 'CLUB21', '社区banner图1', 'club_banner_pic', '1', '0', '2', '5', '1', '1', null, null, null, 'BNA', '|', '', '', '', '0', null, '32');
INSERT INTO `base_code` VALUES ('35', 'CLUB', 'CLUB30', 'CLUB30', '营业照副本', 'certificates', '1', '0', '3', '1', '1', '1', null, null, null, 'YYB', '|', '', '', '', '0', null, '32');
INSERT INTO `base_code` VALUES ('36', 'CLASS', 'CLASS90', 'CLASS', '-1', '', '1', '0', '4', '1', '1', '1', null, null, null, 'SWB', '|', '', '', '', '0', null, '32');
INSERT INTO `base_code` VALUES ('37', 'CLUB', 'CLUB50', 'CLUB50', '身份证正面', 'id_card_face', '1', '0', '5', '1', '1', '1', null, null, null, 'SFA', '|', '', '', '', '0', null, '32');
INSERT INTO `base_code` VALUES ('38', 'S0', 'S07', 'S07', '缺席', '', '1', '0', '6', '1', '1', '1', null, null, null, 'SFB', '|', '', '', '', '0', null, '39');
INSERT INTO `base_code` VALUES ('39', 'S0', 'S06', 'S06', '遲到', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '39');
INSERT INTO `base_code` VALUES ('40', 'S0', 'S01', 'S01', '一般', '', '1', '0', '0', '1', '0', null, null, null, null, '', '，', '', '', '', '0', null, '39');
INSERT INTO `base_code` VALUES ('41', 'S0', 'S02', 'S02', '良好', '', '1', '0', '0', '2', '0', null, null, null, null, '', '，', '', '', '', '0', null, '39');
INSERT INTO `base_code` VALUES ('42', 'S0', 'S03', 'S03', '優秀', '', '1', '0', '0', '3', '0', null, null, null, null, '', '，', '', '', '', '0', null, '39');
INSERT INTO `base_code` VALUES ('43', 'S0', 'S04', 'S04', '特優', '', '1', '0', '0', '4', '0', null, null, null, null, '', '，', '', '', '', '0', null, '39');
INSERT INTO `base_code` VALUES ('44', 'late', 'late1', 'late1', '迟到', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '40');
INSERT INTO `base_code` VALUES ('45', 'late', 'late2', 'late2', '请假', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '40');
INSERT INTO `base_code` VALUES ('46', 'late', 'late3', 'late3', '缺课', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '40');
INSERT INTO `base_code` VALUES ('47', 'X0', 'X01', 'X01', 'A', '', '1', '0', '1', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '46');
INSERT INTO `base_code` VALUES ('48', 'X0', 'X02', 'X02', 'B', '', '1', '0', '2', '2', '1', null, null, null, null, '', '', '', '', '', '0', null, '46');
INSERT INTO `base_code` VALUES ('49', 'X0', 'X03', 'X03', 'O', '', '1', '0', '3', '3', '1', null, null, null, null, '', '', '', '', '', '0', null, '46');
INSERT INTO `base_code` VALUES ('50', 'X0', 'X04', 'X04', 'AB', '', '1', '0', '4', '4', '11', null, null, null, null, '', '', '', '', '', '0', null, '46');
INSERT INTO `base_code` VALUES ('99', 'CS', 'CS', 'CS', '客户对客服投诉的评价', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('100', 'CS', 'CS1', 'CS1', '优秀', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '99');
INSERT INTO `base_code` VALUES ('101', 'CS', 'CS2', 'CS2', '良好', '', '1', '0', '0', '2', '1', null, null, null, null, '', '', '', '', '', '0', null, '99');
INSERT INTO `base_code` VALUES ('102', 'CS', 'CS3', 'CS3', '好', '', '1', '0', '0', '3', '1', null, null, null, null, '', '', '', '', '', '0', null, '99');
INSERT INTO `base_code` VALUES ('103', 'CS', 'CS4', 'CS4', '中等', '', '1', '0', '0', '4', '1', null, null, null, null, '', '', '', '', '', '0', null, '99');
INSERT INTO `base_code` VALUES ('104', 'CS', 'CS5', 'CS5', '一般', '', '1', '0', '0', '5', '1', null, null, null, null, '', '', '', '', '', '0', null, '99');
INSERT INTO `base_code` VALUES ('105', 'CS', 'CS6', 'CS6', '差', '', '1', '0', '0', '6', '0', null, null, null, null, '', '', '', '', '', '0', null, '99');
INSERT INTO `base_code` VALUES ('106', 'PT', 'PT', 'PT', '商品上架摊位名称', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('107', 'PT', 'PT01', 'PT01', '名牌街', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '106');
INSERT INTO `base_code` VALUES ('108', 'PT', 'PT02', 'PT02', '赛事馆', '', '1', '0', '0', '2', '1', null, null, null, null, '', '', '', '', '', '0', null, '106');
INSERT INTO `base_code` VALUES ('111', 'E', 'E22', 'E22', '签收', '', '1', '0', '0', '7', '1', null, null, null, null, '', '', '', '', '', '0', null, '232');
INSERT INTO `base_code` VALUES ('112', 'E', 'E16', 'E16', '派送', '', '1', '0', '0', '6', '1', null, null, null, null, '', '', '', '', '', '0', null, '232');
INSERT INTO `base_code` VALUES ('114', 'E', 'E92', 'E92', '换货处理', '', '1', '0', '0', '11', '1', null, null, null, null, '', '', '', '', '', '0', null, '232');
INSERT INTO `base_code` VALUES ('189', 'PARTNAME', 'PARTNAME2', 'PARTNAME2', '战略伙伴', '', '1', '0', '0', '3', '1', null, null, null, null, '', '', '', '', '', '0', null, '10');
INSERT INTO `base_code` VALUES ('190', 'QUAIMG', 'QUAIMG', 'QUAIMG', '资质人相关相片', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('191', 'QUAIMG', 'QUAIMG10', 'QUAIMG10', '头相片', 'head_pic', '1', '0', '1', '1', '1', null, null, null, null, 'QHD', ',', '', '', '', '0', null, '190');
INSERT INTO `base_code` VALUES ('192', 'USRIMG', 'USRIMG', 'USRIMG', '会员图片', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '190');
INSERT INTO `base_code` VALUES ('193', 'USRIMG', 'USRIMG10', 'USRIMG10', '会员信息', '', '1', '0', '1', '1', '1', null, null, null, null, 'USR', ',', '', '', '', '0', null, '192');
INSERT INTO `base_code` VALUES ('194', 'USRIMG', 'USRIMG20', 'USRIMG20', '会员信息', '', '1', '0', '2', '2', '1', null, null, null, null, 'USB', ',', '', '', '', '0', null, '192');
INSERT INTO `base_code` VALUES ('195', 'QUAIMG', 'QUAIMG20', 'QUAIMG20', '资质扫描图', 'qualification_image', '1', '0', '2', '2', '1', null, null, null, null, 'QUA', ',', '', '', '', '0', null, '190');
INSERT INTO `base_code` VALUES ('196', 'REALNAME', 'REALNAME', 'REALNAME', '学员信息', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('197', 'REALNAME', 'REALNAME10', 'REALNAME10', '身份照片', '', '1', '0', '1', '1', '1', null, null, null, null, 'HAD', ',', '', '', '', '0', null, '196');
INSERT INTO `base_code` VALUES ('198', 'REALNAME', 'REALNAME20', 'REALNAME20', '身份证扫描件', '', '1', '0', '2', '2', '1', null, null, null, null, 'IDC', ',', '', '', '', '0', null, '196');
INSERT INTO `base_code` VALUES ('199', 'REALNAME', 'REALNAME30', 'REALNAME30', '其他1', '', '1', '0', '3', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '196');
INSERT INTO `base_code` VALUES ('200', 'REALNAME', 'REALNAME40', 'REALNAME40', '其他2', '', '1', '0', '4', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '196');
INSERT INTO `base_code` VALUES ('204', 'GAMESEX', 'GAMESEX', 'GAMESEX', '比赛性别', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('205', 'GAMESEX', 'GAMESEX1', 'GAMESEX1', '男', '', '1', '0', '0', '2', '1', null, null, null, null, '', '', '', '', '', '0', null, '204');
INSERT INTO `base_code` VALUES ('206', 'GAMESEX', 'GAMESEX2', 'GAMESEX2', '男女混合', '', '1', '0', '0', '3', '1', null, null, null, null, '', '', '', '', '', '0', null, '204');
INSERT INTO `base_code` VALUES ('207', 'GAMESEX', 'GAMESEX0', 'GAMESEX0', '女', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '204');
INSERT INTO `base_code` VALUES ('208', 'MEMBERTYPE', 'MEMBERTYPE', 'MEMBERTYPE', 'GF会员类型', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('209', 'MEMBERTYPE', 'MEMBERTYPE0', 'MEMBERTYPE0', '单位学员', '学员', '1', '0', '1', '1', '1', '2', null, null, null, '', '', '', '', '', '0', null, '208');
INSERT INTO `base_code` VALUES ('210', 'MEMBERTYPE', 'MEMBERTYPE1', 'MEMBERTYPE1', 'GF会员', '会员', '1', '0', '1', '2', '1', '1', null, null, null, '', '', '', '', '', '0', null, '208');
INSERT INTO `base_code` VALUES ('211', 'CLUPROJ', 'CLUPROJ', 'CLUPROJ', '', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('212', 'CLUPROJ', 'CLUPROJ1', 'CLUPROJ1', '项目图片1', 'qualification_pics', '1', '0', '1', '1', '1', null, null, null, null, 'PRA', ',', '', '', '', '0', null, '211');
INSERT INTO `base_code` VALUES ('213', 'CLUPROJ', 'CLUPROJ2', 'CLUPROJ2', '项目图片2', 'qualification_pics', '1', '0', '2', '2', '1', null, null, null, null, 'PRB', ',', '', '', '', '0', null, '211');
INSERT INTO `base_code` VALUES ('214', 'CLUPROJ', 'CLUPROJ3', 'CLUPROJ3', '项目图片3', 'qualification_pics', '1', '0', '3', '3', '1', null, null, null, null, 'PRC', ',', '', '', '', '0', null, '211');
INSERT INTO `base_code` VALUES ('215', 'CLUPROJ', 'CLUPROJ4', 'CLUPROJ4', '项目图片4', 'qualification_pics', '1', '0', '4', '4', '1', null, null, null, null, 'PRD', ',', '', '', '', '0', null, '211');
INSERT INTO `base_code` VALUES ('216', 'CLUPROJ', 'CLUPROJ5', 'CLUPROJ5', '项目图片5', 'qualification_pics', '1', '0', '5', '5', '1', null, null, null, null, 'PRE', ',', '', '', '', '0', null, '211');
INSERT INTO `base_code` VALUES ('217', 'APPSTATE', 'APPSTATE6', 'APPSTATE6', '申请受理', '', '1', '0', '6', '6', '1', null, null, null, null, '', '', '', '', '', '0', null, '1');
INSERT INTO `base_code` VALUES ('218', 'PRJSTATE', 'PRJSTATE6', 'PRJSTATE6', '申请受理', '', '1', '0', '6', '6', '1', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('219', 'GAMESTATE', 'GAMESTATE9', 'GAMESTATE9', '尚未开通报名', '', '1', '0', '9', '9', '1', null, null, null, null, '', '', '', '', '', '0', null, '144');
INSERT INTO `base_code` VALUES ('220', 'GAMESEX', 'GAMESEX9', 'GAMESEX9', '其他', '', '1', '0', '9', '9', '1', null, null, null, null, '', '', '', '', '', '0', null, '204');
INSERT INTO `base_code` VALUES ('221', 'GAMELEVEL', 'GAMELEVEL9', 'GAMELEVEL9', '其他', '', '1', '0', '9', '9', '1', null, null, null, null, '', '', '', '', '', '0', null, '163');
INSERT INTO `base_code` VALUES ('222', 'GAMEGROUP', 'GAMEGROUP9', 'GAMEGROUP9', '其他', '', '1', '0', '9', '9', '1', null, null, null, null, '', '', '', '', '', '0', null, '152');
INSERT INTO `base_code` VALUES ('223', 'GAMEAREA', 'GAMEAREA9', 'GAMEAREA9', '其他', '', '1', '0', '9', '9', '1', null, null, null, null, '', '', '', '', '', '0', null, '158');
INSERT INTO `base_code` VALUES ('224', 'LIVEROOM', 'LIVEROOM', 'LIVEROOM', '直播大厅', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('225', 'LIVEROOM', 'LIVEROOM10', 'LIVEROOM10', '常规图文', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', 'CLUB_NEWSA', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('226', 'LIVEROOM', 'LIVEROOM20', 'LIVEROOM20', '图集', '', '1', '0', '0', '2', '1', null, null, null, null, '', '', 'CLUB_NEWSB', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('227', 'LIVEROOM', 'LIVEROOM30', 'LIVEROOM30', '视频', '', '1', '0', '0', '3', '1', null, null, null, null, '', '', 'CLUB_NEWSC', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('228', 'LIVEROOM', 'LIVEROOM40', 'LIVEROOM40', '赛事', '', '1', '0', '0', '4', '1', null, null, null, null, '', '', 'GAME_LIST', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('229', 'LIVEROOM', 'LIVEROOM50', 'LIVEROOM50', '场地', '', '1', '0', '0', '5', '1', null, null, null, null, '', '', '', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('230', 'LIVEROOM', 'LIVEROOM60', 'LIVEROOM60', '导师服务', '', '1', '0', '0', '6', '1', null, null, null, null, '', '', '', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('231', 'LIVEROOM', 'LIVEROOM66', 'LIVEROOM66', '赛事服务', '', '1', '0', '0', '7', '1', null, null, null, null, '', '', '', '', '', '0', null, '224');
INSERT INTO `base_code` VALUES ('232', 'E', 'E', 'E', '商品状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('233', 'F', 'F', 'F', '国家地区', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('234', 'TRAIN', 'TRAIN', 'TRAIN', '培训分类', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('235', 'TRAIN', 'TRAIN01', 'TRAIN01', '教练', '教练', '1', '0', '1', '1', '1', null, null, null, null, '', '', '', '', '', '2037', null, '234');
INSERT INTO `base_code` VALUES ('236', 'TRAIN', 'TRAIN02', 'TRAIN02', '裁判', '裁判', '1', '0', '2', '2', '1', null, null, null, null, '', '', '', '', '', '2037', null, '234');
INSERT INTO `base_code` VALUES ('237', 'TRAIN', 'TRAIN03', 'TRAIN03', '导师', '导师', '1', '0', '3', '3', '1', null, null, null, null, '', '', '', '', '', '2037', null, '234');
INSERT INTO `base_code` VALUES ('238', 'TRAIN', 'TRAIN04', 'TRAIN04', '管理员', '管理员', '1', '0', '4', '4', '1', null, null, null, null, '', '', '', '', '', '2037', null, '234');
INSERT INTO `base_code` VALUES ('239', 'SERVICETYPE', 'SERVICETYPE0', 'SERVICETYPE0', '赛事活动服务', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '243');
INSERT INTO `base_code` VALUES ('240', 'SERVICETYPE', 'SERVICETYPE1', 'SERVICETYPE1', '场地服务', '', '1', '1', '1', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '243');
INSERT INTO `base_code` VALUES ('241', 'SERVICETYPE', 'SERVICETYPE2', 'SERVICETYPE2', '导师培训服务', '', '1', '2', '2', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '243');
INSERT INTO `base_code` VALUES ('242', 'SERVICETYPE', 'SERVICETYPE3', 'SERVICETYPE3', '异常类型', '', '1', '3', '3', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '243');
INSERT INTO `base_code` VALUES ('243', 'SERVICETYPE', 'SERVICETYPE', 'SERVICETYPE', '赛事活动服务', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('244', 'SIGNSTATE', 'SIGNSTATE0', 'SIGNSTATE0', '等待签注', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '250');
INSERT INTO `base_code` VALUES ('246', 'SIGNSTATE', 'SIGNSTATE2', 'SIGNSTATE2', '已付款，待服务', '', '1', '2', '2', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '250');
INSERT INTO `base_code` VALUES ('247', 'SIGNSTATE', 'SIGNSTATE3', 'SIGNSTATE3', '订单失效', '', '1', '3', '3', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '250');
INSERT INTO `base_code` VALUES ('248', 'SIGNSTATE', 'SIGNSTATE4', 'SIGNSTATE4', '服务完成，待评价', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '250');
INSERT INTO `base_code` VALUES ('249', 'SIGNSTATE', 'SIGNSTATE9', 'SIGNSTATE9', '', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '250');
INSERT INTO `base_code` VALUES ('250', 'SIGNSTATE', 'SIGNSTATE', 'SIGNSTATE', '', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('251', 'IMAGETYPE', 'IMAGETYPE', 'IMAGETYPE', '', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('252', 'IMAGETYPE', 'IMAGETYPE0', 'IMAGETYPE0', '图集', '', '1', '1', '1', '0', '1', null, null, null, null, '', '', '', '', '', '0', null, '251');
INSERT INTO `base_code` VALUES ('253', 'IMAGETYPE', 'IMAGETYPE1', 'IMAGETYPE1', '视频', '', '1', '2', '2', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '251');
INSERT INTO `base_code` VALUES ('254', 'IMAGETYPE', 'IMAGETYPE2', 'IMAGETYPE2', '音频', '', '1', '3', '3', '2', '1', null, null, null, null, '', '', '', '', '', '0', null, '251');
INSERT INTO `base_code` VALUES ('255', 'IMAGEDNAME', 'IMAGEDNAME', 'IMAGEDNAME', '', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('256', 'IMAGEDNAME', 'IMAGEDNAME0', 'IMAGEDNAME0', '普通', '', '1', '1', '1', '0', '1', null, null, null, null, '', '', '', '', '', '0', null, '255');
INSERT INTO `base_code` VALUES ('257', 'IMAGEDNAME', 'IMAGEDNAME1', 'IMAGEDNAME1', '培训', '', '1', '2', '2', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '255');
INSERT INTO `base_code` VALUES ('258', 'IMAGEDNAME', 'IMAGEDNAME2', 'IMAGEDNAME2', '赛事', '', '1', '3', '3', '2', '1', null, null, null, null, '', '', '', '', '', '0', null, '255');
INSERT INTO `base_code` VALUES ('259', 'QUANAME', 'QUANAME3', 'QUANAME3', '摄影师', '', '1', '0', '4', '4', '1', null, null, null, null, '', '', '', '', '', '0', null, '17');
INSERT INTO `base_code` VALUES ('260', 'QUANAME', 'QUANAME4', 'QUANAME4', '摄像师', '', '1', '0', '5', '5', '1', null, null, null, null, '', '', '', '', '', '0', null, '17');
INSERT INTO `base_code` VALUES ('336', 'CSNAME', 'CSNAME01', 'CSNAME01', '单位状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('337', 'CSNAME', 'CSNAME0101', 'CSNAME0101', '在位', '在职', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('338', 'CSNAME', 'CSNAME0102', 'CSNAME0102', '已退出', '已退出', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('339', 'CSNAME', 'CSNAME0103', 'CSNAME0103', '申请退出', '申请退出', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('340', 'ASNAME', 'ASNAME01', 'ASNAME01', '单位回复', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('341', 'ASNAME', 'ASNAME0101', 'ASNAME0101', '通过', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '340');
INSERT INTO `base_code` VALUES ('342', 'ASNAME', 'ASNAME0102', 'ASNAME0102', '不通过', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '340');
INSERT INTO `base_code` VALUES ('343', 'ASNAME', 'ASNAME0103', 'ASNAME0103', '删除', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '340');
INSERT INTO `base_code` VALUES ('344', 'LVNAME', 'LVNAME01', 'LVNAME01', '等级名称', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('345', 'LVNAME', 'LVNAME0101', 'LVNAME0101', '实习', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '344');
INSERT INTO `base_code` VALUES ('346', 'LVNAME', 'LVNAME0102', 'LVNAME0102', '铜牌', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '344');
INSERT INTO `base_code` VALUES ('347', 'LVNAME', 'LVNAME0103', 'LVNAME0103', '银牌', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '344');
INSERT INTO `base_code` VALUES ('348', 'LVNAME', 'LVNAME0104', 'LVNAME0104', '金牌', '', '1', '0', '0', '1', '0', null, null, null, null, '', '', '', '', '', '0', null, '344');
INSERT INTO `base_code` VALUES ('380', 'CLUTYPE', 'PARTNAME3', 'PARTNAME3', '供应商', '供应商', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '10');
INSERT INTO `base_code` VALUES ('381', 'PARTNAME', 'PARTNAME106', 'PARTNAME106', 'GF官方', 'GF官方', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '9');
INSERT INTO `base_code` VALUES ('382', 'PARTNAME', 'PARTNAME307', 'PARTNAME307', '供应商', '供应商', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '380');
INSERT INTO `base_code` VALUES ('383', 'WAITER', 'WAITER', 'WAITER', '资质类型', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '501');
INSERT INTO `base_code` VALUES ('384', 'TRAIN', 'TRAIN05', 'TRAIN05', '普通培训', '普通', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '234');
INSERT INTO `base_code` VALUES ('385', 'ORDER', 'ORDER0305', 'ORDER0305', '发票运费', '运费', '1', '0', '0', '0', '0', null, 'invoice_request_list', null, 'order_num', '', '', '', '', '', '0', null, '362');
INSERT INTO `base_code` VALUES ('451', 'PRJSTATE', 'PRJSTATE0', 'PRJSTATE0', '冻结项目', '', '1', '0', '0', '1', '1', null, null, null, null, '', '', '', '', '', '0', null, '115');
INSERT INTO `base_code` VALUES ('495', 'PARTNAME', 'PARTNAME4', 'PARTNAME4', '项目公司', '项目公司', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '10');
INSERT INTO `base_code` VALUES ('496', 'CSNAME', 'CSNAME0104', 'CSNAME0104', '申请加入', '申请加入', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('497', 'CSNAME', 'CSNAME0105', 'CSNAME0105', '解除中', '解除中', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('498', 'CSNAME', 'CSNAME0106', 'CSNAME0106', '邀请中', '邀请中', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('499', 'CSNAME', 'CSNAME0107', 'CSNAME0107', '无效', '无效', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '336');
INSERT INTO `base_code` VALUES ('500', 'LOGISTICSTATE', 'LOGISTICSTATE05', 'LOGISTICSTATE05', '配送中', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '471');
INSERT INTO `base_code` VALUES ('501', 'MEMBERTYPE', 'MEMBERTYPE2', 'MEMBERTYPE2', '服务者', '服务者', '1', '0', '0', '0', '0', '2', null, null, null, '', '', '', '', '', '0', null, '208');
INSERT INTO `base_code` VALUES ('502', 'MEMBERTYPE', 'MEMBERTYPE3', 'MEMBERTYPE3', '服务机构', '服务机构', '1', '0', '0', '0', '0', '1', null, null, null, '', '', '', '', '', '0', null, '208');
INSERT INTO `base_code` VALUES ('503', 'ORDER', 'ORDER0113', 'ORDER0113', '广告', '广告', '1', '0', '0', '0', '0', null, 'advertisement', null, 'advertisement_type', '', '', '', '', '', '0', null, '350');
INSERT INTO `base_code` VALUES ('505', 'USERSTATE', 'USERSTATE', 'USERSTATE', '用户状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('506', 'USERSTATE', 'USERSTATE0', 'USERSTATE0', '正常', '正常', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '505');
INSERT INTO `base_code` VALUES ('507', 'USERSTATE', 'USERSTATE1', 'USERSTATE1', '冻结', '冻结', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '505');
INSERT INTO `base_code` VALUES ('508', 'DATA', 'DATA', 'DATA', '逻辑删状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('509', 'DATA', 'DATA1', 'DATA1', '逻辑删除', '逻辑删除', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '508');
INSERT INTO `base_code` VALUES ('510', 'DATA', 'DATA0', 'DATA0', '正常', '正常', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '508');
INSERT INTO `base_code` VALUES ('511', 'STATE', 'STATE05', 'STATE05', '系统审核通过', '系统通过', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '370');
INSERT INTO `base_code` VALUES ('512', 'INVOICESTATE', 'INVOICESTATE', 'INVOICESTATE', '发票状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('513', 'INVOICESTATE', 'INVOICESTATE1', 'INVOICESTATE1', '处理中', '处理中', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '512');
INSERT INTO `base_code` VALUES ('514', 'INVOICESTATE', 'INVOICESTATE2', 'INVOICESTATE2', '已开发票', '已开票', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '512');
INSERT INTO `base_code` VALUES ('515', 'RECOMMEND', 'RECOMMEND', 'RECOMMEND', '推荐状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('516', 'RECOMMEND', 'RECOMMEND0', 'RECOMMEND0', '搜索时显示', '不推荐', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '515');
INSERT INTO `base_code` VALUES ('517', 'RECOMMEND', 'RECOMMEND1', 'RECOMMEND1', '推荐至列表', '推荐', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '515');
INSERT INTO `base_code` VALUES ('518', 'RECOMMEND', 'RECOMMEND2', 'RECOMMEND2', '不显示在前端', '不显示', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '515');
INSERT INTO `base_code` VALUES ('519', 'ABOUT', 'ABOUT', 'ABOUT', '动坳约类型', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('520', 'ABOUT', 'ABOUT0', 'ABOUT0', '用户约起', '约起', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '519');
INSERT INTO `base_code` VALUES ('521', 'ABOUT', 'ABOUT1', 'ABOUT1', '单位服务', '服务', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '519');
INSERT INTO `base_code` VALUES ('522', 'ADDRESS', 'ADDRESS', 'ADDRESS', '地址状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('523', 'ADDRESS', 'ADDRESS0', 'ADDRESS0', '默认地址', '默认地址', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '522');
INSERT INTO `base_code` VALUES ('526', 'ADDRESS', 'ADDRESS1', 'ADDRESS1', '非默认', '非默认', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '522');
INSERT INTO `base_code` VALUES ('527', 'QUESTIONS', 'QUESTIONS', 'QUESTIONS', '题目类型', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('528', 'QUESTIONS', 'QUESTIONS1', 'QUESTIONS1', '单选题', '单选', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '527');
INSERT INTO `base_code` VALUES ('529', 'QUESTIONS', 'QUESTIONS2', 'QUESTIONS2', '多选题', '多选题', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '527');
INSERT INTO `base_code` VALUES ('530', 'QUESTIONS', 'QUESTIONS3', 'QUESTIONS3', '判断题', '判断题', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '527');
INSERT INTO `base_code` VALUES ('531', 'ANSWER', 'ANSWER', 'ANSWER', '答案状态', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('532', 'ANSWER', 'ANSWER1', 'ANSWER1', '正确', '正确', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '531');
INSERT INTO `base_code` VALUES ('533', 'ANSWER', 'ANSWER2', 'ANSWER2', '不正确', '不正确', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '531');
INSERT INTO `base_code` VALUES ('534', '待处理', '待处理', '待处理', '待处理', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('634', 'game_type', 'game_type0', 'game_type0', '赛事', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '636');
INSERT INTO `base_code` VALUES ('635', 'game_type', 'game_type1', 'game_type1', '活动', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '636');
INSERT INTO `base_code` VALUES ('636', 'game_type', 'game_type', 'game_type', '赛事类别', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('637', 'game_live', 'game_live', 'game_live', '是否开通直播', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('638', 'game_live', 'game_live0', 'game_live0', '不开', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '637');
INSERT INTO `base_code` VALUES ('639', 'game_live', 'game_live1', 'game_live1', '开通', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '637');
INSERT INTO `base_code` VALUES ('640', 'sign_online', 'sign_online', 'sign_online', '线上报名', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('641', 'sign_online', 'sign_online0', 'sign_online0', '线下', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '640');
INSERT INTO `base_code` VALUES ('642', 'sign_online', 'sign_online1', 'sign_online1', '线上', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '640');
INSERT INTO `base_code` VALUES ('643', 'score_way', 'score_way', 'score_way', '得分方式', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('644', 'score_way', 'score_way0', 'score_way0', '平台默认', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '643');
INSERT INTO `base_code` VALUES ('645', 'score_way', 'score_way1', 'score_way1', '排名得分', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '643');
INSERT INTO `base_code` VALUES ('646', 'score_way', 'score_way2', 'score_way2', '胜负平得分', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '643');
INSERT INTO `base_code` VALUES ('647', 'Yes_No', 'Yes_No', 'Yes_No', '是否模式', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('648', 'Yes_No', 'Yes_No0', 'Yes_No0', '否', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '647');
INSERT INTO `base_code` VALUES ('649', 'Yes_No', 'Yes_No1', 'Yes_No1', '是', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '647');
INSERT INTO `base_code` VALUES ('719', 'W', 'W08', 'W08', '退货/下架', '退货/下架', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '831');
INSERT INTO `base_code` VALUES ('720', 'INPUT', 'INPUT5', 'INPUT5', '手功录入+下拉选择', '手功录入+下拉选择', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '676');
INSERT INTO `base_code` VALUES ('721', 'STATE', 'STATE06', 'STATE06', '编辑中', '编辑中', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '370');
INSERT INTO `base_code` VALUES ('722', 'W', 'W09', 'W09', '上架', '上架', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '831');
INSERT INTO `base_code` VALUES ('723', 'LIVETYPE', 'LIVETYPE3', 'LIVETYPE3', '培训直播', '培训直播', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '703');
INSERT INTO `base_code` VALUES ('756', 'ORDERITME', 'ORDERITME', 'ORDERITME', '订单项目', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('757', 'ORDERITME', 'ORDERITME0', 'ORDERITME0', '卖出订单', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '756');
INSERT INTO `base_code` VALUES ('758', 'ORDERITME', 'ORDERITME1', 'ORDERITME1', '退货订单', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '756');
INSERT INTO `base_code` VALUES ('759', 'ORDERITME', 'ORDERITME2', 'ORDERITME2', '换货订单', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '756');
INSERT INTO `base_code` VALUES ('760', 'VOTES', 'VOTES', 'VOTES', '投票类型', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('761', 'VOTES', 'VOTES01', 'VOTES01', '实时排名榜', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '760');
INSERT INTO `base_code` VALUES ('762', 'VOTES', 'VOTES02', 'VOTES02', '候选排名榜', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '760');
INSERT INTO `base_code` VALUES ('763', 'VOTES', 'VOTES03', 'VOTES03', '明星排名榜', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '760');
INSERT INTO `base_code` VALUES ('764', 'VOTES', 'VOTES04', 'VOTES04', '赛事活动', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '760');
INSERT INTO `base_code` VALUES ('765', 'VOTES', 'VOTES05', 'VOTES05', '单位排名榜', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '760');
INSERT INTO `base_code` VALUES ('766', 'VOTESTYPE', 'VOTESTYPE', 'VOTESTYPE', '投票方式', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, null);
INSERT INTO `base_code` VALUES ('767', 'VOTESTYPE', 'VOTESTYPE01', 'VOTESTYPE01', '体育豆', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '766');
INSERT INTO `base_code` VALUES ('768', 'VOTESTYPE', 'VOTESTYPE02', 'VOTESTYPE02', '短信', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '766');
INSERT INTO `base_code` VALUES ('769', 'VOTESTYPE', 'VOTESTYPE03', 'VOTESTYPE03', '支付平台', '', '1', '0', '0', '0', '0', null, null, null, null, '', '', '', '', '', '0', null, '766');

-- ----------------------------
-- Table structure for `base_sex`
-- ----------------------------
DROP TABLE IF EXISTS `base_sex`;
CREATE TABLE `base_sex` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sexname` varchar(5) DEFAULT '' COMMENT '性别',
  `sexid` varchar(5) DEFAULT '' COMMENT '性别编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_sex
-- ----------------------------
INSERT INTO `base_sex` VALUES ('1', '男', '1');
INSERT INTO `base_sex` VALUES ('2', '女', '2');

-- ----------------------------
-- Table structure for `base_term`
-- ----------------------------
DROP TABLE IF EXISTS `base_term`;
CREATE TABLE `base_term` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表示',
  `F_CODE` char(4) DEFAULT '' COMMENT '类型内部编码',
  `F_NAME` char(30) DEFAULT '' COMMENT '类型内的名称',
  `F_value` char(20) DEFAULT '' COMMENT '短名称，用于输入时使用',
  `F_SHOW` int(4) DEFAULT '0',
  `F_NEXTTERM` varchar(10) DEFAULT '' COMMENT '下一段',
  `F_COL1` int(4) DEFAULT '0' COMMENT '表单位置1',
  `F_COL2` int(4) DEFAULT '0' COMMENT '表单位置2',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='各类代码规范表说明，是公共基础表';

-- ----------------------------
-- Records of base_term
-- ----------------------------
INSERT INTO `base_term` VALUES ('229', '25', '上学期', '1', '0', '30', '1', '1');
INSERT INTO `base_term` VALUES ('230', '45', '下学期', '2', '0', '50', '1', '1');

-- ----------------------------
-- Table structure for `base_year`
-- ----------------------------
DROP TABLE IF EXISTS `base_year`;
CREATE TABLE `base_year` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表示',
  `F_CODE` char(20) DEFAULT '' COMMENT 'l类型编码 树结构',
  `F_NAME` char(30) DEFAULT '' COMMENT '类型内的名称',
  `F_value` char(20) DEFAULT '' COMMENT '短名称，用于输入时使用',
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `TYPECODE` (`F_CODE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8 COMMENT='各类代码规范表说明，是公共基础表';

-- ----------------------------
-- Records of base_year
-- ----------------------------
INSERT INTO `base_year` VALUES ('227', '1', '2020-2021', '2020-2021');
INSERT INTO `base_year` VALUES ('228', '2', '2021-2022', '2021-2022');
INSERT INTO `base_year` VALUES ('229', '3', '2022-2023', '2022-2023');
INSERT INTO `base_year` VALUES ('230', '4', '2023-2024', '2023-2024');

-- ----------------------------
-- Table structure for `club_list`
-- ----------------------------
DROP TABLE IF EXISTS `club_list`;
CREATE TABLE `club_list` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `club_code` char(16) DEFAULT '' COMMENT '社区编码，采用树结构方式表示 年份+6位数序号   如2016000001',
  `club_name` varchar(30) DEFAULT '' COMMENT '社区单位名称',
  `pic` varchar(100) DEFAULT '' COMMENT '社区缩略图',
  `apply_club_phone` char(11) DEFAULT '' COMMENT '申请法人联系电话',
  `apply_club_email` varchar(40) DEFAULT '' COMMENT '申请法人电子邮箱',
  `apply_name` varchar(30) DEFAULT '' COMMENT '联系人电话',
  `contact_phone` char(11) DEFAULT NULL COMMENT '联系人电话',
  `email` varchar(40) DEFAULT '' COMMENT '联系人电子邮箱',
  `club_address` varchar(60) DEFAULT '' COMMENT '详细地址',
  `if_del` int(4) DEFAULT '510' COMMENT '逻辑删除，base_code表DATA类型 509-逻辑删除 510正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of club_list
-- ----------------------------
INSERT INTO `club_list` VALUES ('1', '9001', '1社区', '2021/10/27/1_61794c962f5350.07859517.jpg', '', '', '李达良', '1', '', '1', '510');
INSERT INTO `club_list` VALUES ('2', '1001', '1中学', '', '', '', 'gjy', '1', '', '1', '510');
INSERT INTO `club_list` VALUES ('3', '1002', '2中学', '', '', '', 'ly', '1', '', '1', '510');
INSERT INTO `club_list` VALUES ('5', '9002', '2社区', '', '', '', '', '', '', '', '510');

-- ----------------------------
-- Table structure for `club_news`
-- ----------------------------
DROP TABLE IF EXISTS `club_news`;
CREATE TABLE `club_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_year` int(11) DEFAULT '0',
  `f_term` int(4) DEFAULT '0',
  `f_order` int(4) DEFAULT '0',
  `news_code` char(12) DEFAULT '' COMMENT '新闻编码，前面是年月日后加四位表示',
  `news_title` varchar(100) NOT NULL DEFAULT '' COMMENT '信息标题 ',
  `news_pic` varchar(50) DEFAULT '' COMMENT '信息图片',
  `news_type` int(4) DEFAULT '225' COMMENT '信息类型，关联base_code表LIVEROOM类型225-常规图文，226-图集，227-视频',
  `news_type_name` varchar(10) DEFAULT '' COMMENT '信息类型名字，关联base_code表LIVEROOM类型225-常规图文，226-图集，227-视频',
  `news_introduction` varchar(2000) DEFAULT '' COMMENT '内容简介',
  `news_content` varchar(200) DEFAULT '' COMMENT '信息内容HTML文件名， 路径及命名规范查base_parh表',
  `news_date` datetime DEFAULT NULL COMMENT '活动时间',
  `club_id` varchar(200) DEFAULT '0' COMMENT '俱乐部ID',
  `club_list` varchar(300) DEFAULT '' COMMENT ' `club_list` varchar(300) DEFAULT '''' COMMENT ''同是兼报社区'',',
  `news_club_name` varchar(30) DEFAULT '' COMMENT '社区信息',
  `news_clicked` int(11) DEFAULT '0' COMMENT '点击量',
  `collection_num` int(11) unsigned DEFAULT '0' COMMENT '收藏数',
  `version` int(11) DEFAULT '0' COMMENT '信息版本号',
  `order_num` int(11) DEFAULT '0' COMMENT '排序号，越大越靠前',
  `news_date_start` datetime DEFAULT NULL COMMENT '上线日期',
  `news_date_end` datetime DEFAULT NULL COMMENT '上线结束日期',
  `uDate` datetime DEFAULT NULL COMMENT '更新时间',
  `state` int(4) DEFAULT '371' COMMENT '状态，关联base_code表STATE类型状态id：371-374',
  `state_name` varchar(20) DEFAULT '' COMMENT '审核名称',
  `reasons_for_failure` varchar(100) DEFAULT '' COMMENT '审核未通过原因，state状态等于1时才有',
  `state_qmddid` int(11) DEFAULT '0' COMMENT '审核管理员GFID，关联qmdd_administrators表ID',
  `state_qmddname` varchar(30) DEFAULT NULL COMMENT '管理员名称',
  `state_time` datetime DEFAULT NULL COMMENT '审核时间',
  `if_del` int(4) DEFAULT '510' COMMENT '是否删除下架，关联base_code表DATA类型 509-逻辑删除 510正常',
  `Longitude` varchar(10) DEFAULT '',
  `latitude` varchar(10) DEFAULT '',
  `sign_dist` int(4) DEFAULT '100' COMMENT '签到距离米',
  `news_address` varchar(60) DEFAULT '' COMMENT '活动地址',
  `is_online` int(11) DEFAULT '1' COMMENT '0，下线，1上线',
  `sign_date_start` datetime DEFAULT NULL COMMENT '报名开始日期',
  `sign_date_end` datetime DEFAULT NULL COMMENT '报名结束日期',
  `sign_max` int(11) DEFAULT '0' COMMENT '报名最多人数',
  `sign_num` int(11) DEFAULT '0' COMMENT '报名人数',
  `signIn_date_start` datetime DEFAULT NULL COMMENT '活动开始时间/签到开始时间',
  `signIn_date_end` datetime DEFAULT NULL COMMENT '活动结束时间/签到结束时间',
  PRIMARY KEY (`id`),
  KEY `state_qmddid` (`state_qmddid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=780 DEFAULT CHARSET=utf8 COMMENT='社区动态信息';

-- ----------------------------
-- Records of club_news
-- ----------------------------
INSERT INTO `club_news` VALUES ('779', '2016', '1', '0', '', '1', '2021/10/27/1_61791f1b8dc691.67572603.gif', '225', '', '1', '', null, '3', '1', 'kkkkkk', '0', '0', '0', '0', null, null, '2021-10-27 22:15:41', '371', '', '', '0', null, null, '510', '117.51164', '40.040794', '100', '天津市,天津市,蓟县,, ', '1', '2021-10-26 17:19:02', '2021-10-28 10:37:30', '0', '0', null, null);

-- ----------------------------
-- Table structure for `collect`
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `user_id` int(11) NOT NULL,
  `article_id` int(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('1', '100', '2');
INSERT INTO `collect` VALUES ('1', '108', '4');

-- ----------------------------
-- Table structure for `courseinfo`
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `courseyear` varchar(20) DEFAULT '' COMMENT '学年',
  `courseterm` varchar(20) DEFAULT '' COMMENT '学期',
  `courseid` varchar(20) DEFAULT '' COMMENT '课程编号',
  `coursename` varchar(20) DEFAULT '' COMMENT '课程名称',
  `courseteacher` varchar(20) DEFAULT '' COMMENT '课程教师',
  `coursetime` varchar(20) DEFAULT '' COMMENT '上课时间',
  `reportcnt` int(4) DEFAULT NULL COMMENT '报告提交次数',
  `homeworkcnt` int(4) DEFAULT NULL COMMENT '作业提交次数',
  `examcnt` int(4) DEFAULT NULL COMMENT '考试次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseinfo
-- ----------------------------
INSERT INTO `courseinfo` VALUES ('1', '2020-2021', '上学期', '33333', '程序设计基础', '曾锡山', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `coursestu`
-- ----------------------------
DROP TABLE IF EXISTS `coursestu`;
CREATE TABLE `coursestu` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `courseyear` varchar(20) DEFAULT '' COMMENT '学年',
  `courseterm` varchar(20) DEFAULT '' COMMENT '学期',
  `courseid` varchar(20) DEFAULT '' COMMENT '课程编号',
  `coursename` varchar(20) DEFAULT '' COMMENT '课程名称',
  `courseteacher` varchar(20) DEFAULT '' COMMENT '课程教师',
  `stuid` varchar(20) DEFAULT '' COMMENT '学生学号',
  `stugrade` varchar(20) DEFAULT '' COMMENT '学生年级',
  `stuscore` varchar(20) DEFAULT '' COMMENT '学生分数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursestu
-- ----------------------------

-- ----------------------------
-- Table structure for `coursework`
-- ----------------------------
DROP TABLE IF EXISTS `coursework`;
CREATE TABLE `coursework` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `workyear` varchar(20) DEFAULT '' COMMENT '学年',
  `workterm` varchar(20) DEFAULT '' COMMENT '学期',
  `workid` varchar(20) DEFAULT '' COMMENT '作业编号',
  `workname` varchar(20) DEFAULT '' COMMENT '作业名称',
  `workstart` datetime DEFAULT NULL COMMENT '提交开始时间',
  `workend` datetime DEFAULT NULL COMMENT '结束时间',
  `workcourse` varchar(20) DEFAULT '' COMMENT '绑定课程',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursework
-- ----------------------------
INSERT INTO `coursework` VALUES ('1', '2020-2021', '上学期', '1', '1', '2021-11-12 00:05:29', '2021-12-31 00:05:31', '程序设计基础');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(20) DEFAULT '' COMMENT '院系名称',
  `d_id` varchar(20) DEFAULT '' COMMENT '院系编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for `frequency`
-- ----------------------------
DROP TABLE IF EXISTS `frequency`;
CREATE TABLE `frequency` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of frequency
-- ----------------------------
INSERT INTO `frequency` VALUES ('1', '季刊');
INSERT INTO `frequency` VALUES ('2', '双单月刊');
INSERT INTO `frequency` VALUES ('3', '月刊');
INSERT INTO `frequency` VALUES ('4', '半月刊');
INSERT INTO `frequency` VALUES ('5', '旬刊');
INSERT INTO `frequency` VALUES ('6', '周刊');

-- ----------------------------
-- Table structure for `hand`
-- ----------------------------
DROP TABLE IF EXISTS `hand`;
CREATE TABLE `hand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `time` date DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `type_name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hand
-- ----------------------------
INSERT INTO `hand` VALUES ('1', '123', '随手记', '今天早上，我一觉醒来。发现爸爸已经去工作了，妈妈还在睡懒觉。我连忙叫醒妈妈，妈妈给我\r\n了衣服，我先听妈妈讲了两个故事，然后我又跟妈妈讲了两个故事。讲完了，妈妈去做饭，我就去买菜\r\n一共拿了两元钱，妈妈说一元买油炸饼，一元买菜。我拿着钱来到了菜市场，先买了油炸饼，将另外一\r\n了窄耳根，卖菜的婆婆夸我真能干。我心里真高兴。', '2021-07-24', '趣味语文.jpg', '写事');
INSERT INTO `hand` VALUES ('2', '123', '有感而发', '一天早上，我滑着滑板车去邻居家玩，不一会，后面追来了一条黄狗，我躲在朋友的门后面，我\r\n时，又看见了一条，幸亏它没有发现我。\r\n　　我回到家把这件事告诉了妈妈，妈妈说：“你以后看到狗不要怕，也别跑，你越跑它越追，你就站\r\n装要打它一样，它就会逃跑。”我试了试，这办法果然很灵，从今以后我再也不怕狗了。', '2021-07-24', '妙笔生花.jpg', '写事');
INSERT INTO `hand` VALUES ('3', '123', '我随便写点东西', '今天吃完早饭后，我和姥姥在家，我说：“姥姥你每天都要打扫卫生，很辛苦，今天我帮你打扫\r\n吧。”姥姥说：“好的”姥姥拿起了扫把，我也拿起了扫把学着姥姥的样子扫了起来，我对姥姥说：“\r\n底下我来扫吧，我个子小，好弯腰。”我就扫了起来。扫完后我就拖地，拖完了地，头上冒出了满头大\r\n姥姥天天打扫卫生可真辛苦啊!', '2021-07-24', '阅读.jpg', '写事');
INSERT INTO `hand` VALUES ('4', '123', '随便写写', '今天，天气凉爽，我和妈妈一起去小商品市场去逛街。\r\n2021/7/24 2019小学一、二年级暑假日记50字精选40篇 暑假日记100字范文\r\nhttps://www.5068.com/rj/50zi/938151.html 2/7\r\n　　小商品市场很大，里面的东西非常丰富。我一眼就看中了一辆赛车。这车是黑色和蓝色相间的，速\r\n快。我问营业员这辆车多少钱，他说30元。可是我的零用钱没有那么多。我和妈妈商量，妈妈说：“等\r\n到下个星期的零用钱就可以买了。”', '2021-07-24', '社团之花.jpg', '写事');
INSERT INTO `hand` VALUES ('5', '123', '我今天很高兴', '今天下午，我和妈妈还有弟弟到小商品市场帮表弟选机器人玩具。\r\n　　我们过了马路到了一家玩具店，店里有许许多多的玩具，我和弟弟眼里闪着兴奋的光芒，可妈妈是\r\n弟买玩具，可这家玩具店没有表弟要的机器人，过了一段时间我们已经去了许多玩具店了，可玩具店的\r\n人有的贵有的便宜，可便宜的质量不好。\r\n　　我们的脚已经累了，终于买了一个不便宜也不贵的机器人。然后我们高高兴兴地回家了', '2021-07-24', '科技博览.jpg', '写事');
INSERT INTO `hand` VALUES ('6', '123', '今天天气很晴朗', '今天，我看了一个人。他是一个残疾的人。但他很认真。他大学考了5次，后来第6次才考上。他\r\n的9月份又要去上大学了。我看了他的事，被他的精神深深感动了。我要向他一样努力学习不怕困难，长\r\n作一个有教养的人。', '2021-07-24', '社团之花.jpg', '写事');
INSERT INTO `hand` VALUES ('13', '123', '我的一天', '今天我在家里呆了一整天，感觉一点都不新\r\n鲜。马上就要期未考试了，妈妈想让我好好\r\n复习，考一个满意的成绩，这样寒假里就可\r\n以开心的玩了，所以今天我一直在家里做卷\r\n子。', '2021-07-28', '6f4699f6170f6455ae9eae07f487119.png', '日记 写事');

-- ----------------------------
-- Table structure for `hand_type`
-- ----------------------------
DROP TABLE IF EXISTS `hand_type`;
CREATE TABLE `hand_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of hand_type
-- ----------------------------
INSERT INTO `hand_type` VALUES ('1', '写景');
INSERT INTO `hand_type` VALUES ('2', '写人');
INSERT INTO `hand_type` VALUES ('3', '写事');
INSERT INTO `hand_type` VALUES ('4', '日记');

-- ----------------------------
-- Table structure for `institutions`
-- ----------------------------
DROP TABLE IF EXISTS `institutions`;
CREATE TABLE `institutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `introduce` text,
  `column` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of institutions
-- ----------------------------
INSERT INTO `institutions` VALUES ('1', 'sad', 'sda', 'asd');
INSERT INTO `institutions` VALUES ('2', 'sad', 'asd', 'asd');
INSERT INTO `institutions` VALUES ('21', 'asd', 'asd', 'asd');
INSERT INTO `institutions` VALUES ('22', 'sadgg', 'asd', 'gsad');
INSERT INTO `institutions` VALUES ('23', 'dsfdfddfs', 'ghhhhhhhhhhhhhhhgggg', 'sdfdf');

-- ----------------------------
-- Table structure for `location`
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL COMMENT '上级id',
  PRIMARY KEY (`id`),
  KEY `index` (`pid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('0', '中国', '-1');
INSERT INTO `location` VALUES ('110000', '北京市', '0');
INSERT INTO `location` VALUES ('110100', '东城区', '110000');
INSERT INTO `location` VALUES ('110200', '西城区', '110000');
INSERT INTO `location` VALUES ('110500', '朝阳区', '110000');
INSERT INTO `location` VALUES ('110600', '丰台区', '110000');
INSERT INTO `location` VALUES ('110700', '石景山区', '110000');
INSERT INTO `location` VALUES ('110800', '海淀区', '110000');
INSERT INTO `location` VALUES ('110900', '门头沟区', '110000');
INSERT INTO `location` VALUES ('111100', '房山区', '110000');
INSERT INTO `location` VALUES ('111200', '通州区', '110000');
INSERT INTO `location` VALUES ('111300', '顺义区', '110000');
INSERT INTO `location` VALUES ('111400', '昌平区', '110000');
INSERT INTO `location` VALUES ('111500', '大兴区', '110000');
INSERT INTO `location` VALUES ('111600', '怀柔区', '110000');
INSERT INTO `location` VALUES ('111700', '平谷区', '110000');
INSERT INTO `location` VALUES ('112800', '密云县', '110000');
INSERT INTO `location` VALUES ('112900', '延庆县', '110000');
INSERT INTO `location` VALUES ('120000', '天津市', '0');
INSERT INTO `location` VALUES ('120100', '和平区', '120000');
INSERT INTO `location` VALUES ('120200', '河东区', '120000');
INSERT INTO `location` VALUES ('120300', '河西区', '120000');
INSERT INTO `location` VALUES ('120400', '南开区', '120000');
INSERT INTO `location` VALUES ('120500', '河北区', '120000');
INSERT INTO `location` VALUES ('120600', '红桥区', '120000');
INSERT INTO `location` VALUES ('120900', '滨海新区', '120000');
INSERT INTO `location` VALUES ('121000', '东丽区', '120000');
INSERT INTO `location` VALUES ('121100', '西青区', '120000');
INSERT INTO `location` VALUES ('121200', '津南区', '120000');
INSERT INTO `location` VALUES ('121300', '北辰区', '120000');
INSERT INTO `location` VALUES ('121400', '武清区', '120000');
INSERT INTO `location` VALUES ('121500', '宝坻区', '120000');
INSERT INTO `location` VALUES ('122100', '宁河县', '120000');
INSERT INTO `location` VALUES ('122300', '静海县', '120000');
INSERT INTO `location` VALUES ('122500', '蓟县', '120000');
INSERT INTO `location` VALUES ('130000', '河北省', '0');
INSERT INTO `location` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `location` VALUES ('130102', '长安区', '130100');
INSERT INTO `location` VALUES ('130103', '桥东区', '130100');
INSERT INTO `location` VALUES ('130104', '桥西区', '130100');
INSERT INTO `location` VALUES ('130105', '新华区', '130100');
INSERT INTO `location` VALUES ('130107', '井陉矿区', '130100');
INSERT INTO `location` VALUES ('130108', '裕华区', '130100');
INSERT INTO `location` VALUES ('130121', '井陉县', '130100');
INSERT INTO `location` VALUES ('130123', '正定县', '130100');
INSERT INTO `location` VALUES ('130124', '栾城县', '130100');
INSERT INTO `location` VALUES ('130125', '行唐县', '130100');
INSERT INTO `location` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `location` VALUES ('130127', '高邑县', '130100');
INSERT INTO `location` VALUES ('130128', '深泽县', '130100');
INSERT INTO `location` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `location` VALUES ('130130', '无极县', '130100');
INSERT INTO `location` VALUES ('130131', '平山县', '130100');
INSERT INTO `location` VALUES ('130132', '元氏县', '130100');
INSERT INTO `location` VALUES ('130133', '赵县', '130100');
INSERT INTO `location` VALUES ('130181', '辛集市', '130100');
INSERT INTO `location` VALUES ('130182', '藁城市', '130100');
INSERT INTO `location` VALUES ('130183', '晋州市', '130100');
INSERT INTO `location` VALUES ('130184', '新乐市', '130100');
INSERT INTO `location` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `location` VALUES ('130200', '唐山市', '130000');
INSERT INTO `location` VALUES ('130202', '路南区', '130200');
INSERT INTO `location` VALUES ('130203', '路北区', '130200');
INSERT INTO `location` VALUES ('130204', '古冶区', '130200');
INSERT INTO `location` VALUES ('130205', '开平区', '130200');
INSERT INTO `location` VALUES ('130207', '丰南区', '130200');
INSERT INTO `location` VALUES ('130208', '丰润区', '130200');
INSERT INTO `location` VALUES ('130223', '滦县', '130200');
INSERT INTO `location` VALUES ('130224', '滦南县', '130200');
INSERT INTO `location` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `location` VALUES ('130227', '迁西县', '130200');
INSERT INTO `location` VALUES ('130229', '玉田县', '130200');
INSERT INTO `location` VALUES ('130230', '唐海县', '130200');
INSERT INTO `location` VALUES ('130281', '遵化市', '130200');
INSERT INTO `location` VALUES ('130283', '迁安市', '130200');
INSERT INTO `location` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `location` VALUES ('130301', '海港区', '130300');
INSERT INTO `location` VALUES ('130303', '山海关区', '130300');
INSERT INTO `location` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `location` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `location` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `location` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `location` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `location` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `location` VALUES ('130402', '邯山区', '130400');
INSERT INTO `location` VALUES ('130403', '丛台区', '130400');
INSERT INTO `location` VALUES ('130404', '复兴区', '130400');
INSERT INTO `location` VALUES ('130406', '峰峰矿区', '130400');
INSERT INTO `location` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `location` VALUES ('130423', '临漳县', '130400');
INSERT INTO `location` VALUES ('130424', '成安县', '130400');
INSERT INTO `location` VALUES ('130425', '大名县', '130400');
INSERT INTO `location` VALUES ('130426', '涉县', '130400');
INSERT INTO `location` VALUES ('130427', '磁县', '130400');
INSERT INTO `location` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `location` VALUES ('130429', '永年县', '130400');
INSERT INTO `location` VALUES ('130430', '邱县', '130400');
INSERT INTO `location` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `location` VALUES ('130432', '广平县', '130400');
INSERT INTO `location` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `location` VALUES ('130434', '魏县', '130400');
INSERT INTO `location` VALUES ('130435', '曲周县', '130400');
INSERT INTO `location` VALUES ('130481', '武安市', '130400');
INSERT INTO `location` VALUES ('130500', '邢台市', '130000');
INSERT INTO `location` VALUES ('130502', '桥东区', '130500');
INSERT INTO `location` VALUES ('130503', '桥西区', '130500');
INSERT INTO `location` VALUES ('130521', '邢台县', '130500');
INSERT INTO `location` VALUES ('130522', '临城县', '130500');
INSERT INTO `location` VALUES ('130523', '内丘县', '130500');
INSERT INTO `location` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `location` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `location` VALUES ('130526', '任县', '130500');
INSERT INTO `location` VALUES ('130527', '南和县', '130500');
INSERT INTO `location` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `location` VALUES ('130529', '巨鹿县', '130529');
INSERT INTO `location` VALUES ('130530', '新河县', '130500');
INSERT INTO `location` VALUES ('130531', '广宗县', '130500');
INSERT INTO `location` VALUES ('130532', '平乡县', '130500');
INSERT INTO `location` VALUES ('130533', '威县', '130500');
INSERT INTO `location` VALUES ('130534', '清河县', '130500');
INSERT INTO `location` VALUES ('130535', '临西县', '130500');
INSERT INTO `location` VALUES ('130581', '南宫市', '130500');
INSERT INTO `location` VALUES ('130582', '沙河市', '130500');
INSERT INTO `location` VALUES ('130600', '保定市', '130000');
INSERT INTO `location` VALUES ('130601', '新市区', '130600');
INSERT INTO `location` VALUES ('130603', '北市区', '130600');
INSERT INTO `location` VALUES ('130604', '南市区', '130600');
INSERT INTO `location` VALUES ('130621', '满城县', '130600');
INSERT INTO `location` VALUES ('130622', '清苑县', '130600');
INSERT INTO `location` VALUES ('130623', '涞水县', '130600');
INSERT INTO `location` VALUES ('130624', '阜平县', '130600');
INSERT INTO `location` VALUES ('130625', '徐水县', '130600');
INSERT INTO `location` VALUES ('130626', '定兴县', '130600');
INSERT INTO `location` VALUES ('130627', '唐县', '130600');
INSERT INTO `location` VALUES ('130628', '高阳县', '130600');
INSERT INTO `location` VALUES ('130629', '容城县', '130600');
INSERT INTO `location` VALUES ('130630', '涞源县', '130600');
INSERT INTO `location` VALUES ('130631', '望都县', '130600');
INSERT INTO `location` VALUES ('130632', '安新县', '130600');
INSERT INTO `location` VALUES ('130633', '易县', '130600');
INSERT INTO `location` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `location` VALUES ('130635', '蠡县', '130600');
INSERT INTO `location` VALUES ('130636', '顺平县', '130600');
INSERT INTO `location` VALUES ('130637', '博野县', '130600');
INSERT INTO `location` VALUES ('130638', '雄县', '130600');
INSERT INTO `location` VALUES ('130681', '涿州市', '130600');
INSERT INTO `location` VALUES ('130682', '定州市', '130600');
INSERT INTO `location` VALUES ('130683', '安国市', '130600');
INSERT INTO `location` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `location` VALUES ('130685', '白沟新城县', '130600');
INSERT INTO `location` VALUES ('130700', '张家口市', '130000');
INSERT INTO `location` VALUES ('130702', '桥东区', '130700');
INSERT INTO `location` VALUES ('130703', '桥西区', '130700');
INSERT INTO `location` VALUES ('130705', '宣化区', '130700');
INSERT INTO `location` VALUES ('130706', '下花园区', '130700');
INSERT INTO `location` VALUES ('130721', '宣化县', '130700');
INSERT INTO `location` VALUES ('130722', '张北县', '130700');
INSERT INTO `location` VALUES ('130723', '康保县', '130700');
INSERT INTO `location` VALUES ('130724', '沽源县', '130700');
INSERT INTO `location` VALUES ('130725', '尚义县', '130700');
INSERT INTO `location` VALUES ('130726', '蔚县', '130700');
INSERT INTO `location` VALUES ('130727', '阳原县', '130700');
INSERT INTO `location` VALUES ('130728', '怀安县', '130700');
INSERT INTO `location` VALUES ('130729', '万全县', '130700');
INSERT INTO `location` VALUES ('130730', '怀来县', '130700');
INSERT INTO `location` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `location` VALUES ('130732', '赤城县', '130700');
INSERT INTO `location` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `location` VALUES ('130800', '承德市', '130000');
INSERT INTO `location` VALUES ('130802', '双桥区', '130800');
INSERT INTO `location` VALUES ('130803', '双滦区', '130800');
INSERT INTO `location` VALUES ('130804', '鹰手营子矿区', '130800');
INSERT INTO `location` VALUES ('130821', '承德县', '130800');
INSERT INTO `location` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `location` VALUES ('130823', '平泉县', '130800');
INSERT INTO `location` VALUES ('130824', '滦平县', '130800');
INSERT INTO `location` VALUES ('130825', '隆化县', '130800');
INSERT INTO `location` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `location` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `location` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `location` VALUES ('130900', '沧州市', '130000');
INSERT INTO `location` VALUES ('130902', '新华区', '130900');
INSERT INTO `location` VALUES ('130903', '运河区', '130900');
INSERT INTO `location` VALUES ('130921', '沧县', '130900');
INSERT INTO `location` VALUES ('130922', '青县', '130900');
INSERT INTO `location` VALUES ('130923', '东光县', '130900');
INSERT INTO `location` VALUES ('130924', '海兴县', '130900');
INSERT INTO `location` VALUES ('130925', '盐山县', '130900');
INSERT INTO `location` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `location` VALUES ('130927', '南皮县', '130900');
INSERT INTO `location` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `location` VALUES ('130929', '献县', '130900');
INSERT INTO `location` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `location` VALUES ('130981', '泊头市', '130900');
INSERT INTO `location` VALUES ('130982', '任丘市', '130900');
INSERT INTO `location` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `location` VALUES ('130984', '河间市', '130900');
INSERT INTO `location` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `location` VALUES ('131002', '安次区', '131000');
INSERT INTO `location` VALUES ('131003', '广阳区', '131000');
INSERT INTO `location` VALUES ('131022', '固安县', '131000');
INSERT INTO `location` VALUES ('131023', '永清县', '131000');
INSERT INTO `location` VALUES ('131024', '香河县', '131000');
INSERT INTO `location` VALUES ('131025', '大城县', '131000');
INSERT INTO `location` VALUES ('131026', '文安县', '131000');
INSERT INTO `location` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `location` VALUES ('131081', '霸州市', '131000');
INSERT INTO `location` VALUES ('131082', '三河市', '131000');
INSERT INTO `location` VALUES ('131100', '衡水市', '130000');
INSERT INTO `location` VALUES ('131102', '桃城区', '131100');
INSERT INTO `location` VALUES ('131121', '枣强县', '131100');
INSERT INTO `location` VALUES ('131122', '武邑县', '131100');
INSERT INTO `location` VALUES ('131123', '武强县', '131100');
INSERT INTO `location` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `location` VALUES ('131125', '安平县', '131100');
INSERT INTO `location` VALUES ('131126', '故城县', '131100');
INSERT INTO `location` VALUES ('131127', '景县', '131100');
INSERT INTO `location` VALUES ('131128', '阜城县', '131100');
INSERT INTO `location` VALUES ('131181', '冀州市', '131100');
INSERT INTO `location` VALUES ('131182', '深州市', '131100');
INSERT INTO `location` VALUES ('140000', '山西省', '0');
INSERT INTO `location` VALUES ('140100', '太原市', '140000');
INSERT INTO `location` VALUES ('140105', '小店区', '140100');
INSERT INTO `location` VALUES ('140106', '迎泽区', '140100');
INSERT INTO `location` VALUES ('140107', '杏花岭区', '140100');
INSERT INTO `location` VALUES ('140108', '尖草坪区', '140100');
INSERT INTO `location` VALUES ('140109', '万柏林区', '140100');
INSERT INTO `location` VALUES ('140110', '晋源区', '140100');
INSERT INTO `location` VALUES ('140121', '清徐县', '140100');
INSERT INTO `location` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `location` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `location` VALUES ('140181', '古交市', '140100');
INSERT INTO `location` VALUES ('140200', '大同市', '140000');
INSERT INTO `location` VALUES ('140202', '城区', '140200');
INSERT INTO `location` VALUES ('140203', '矿区', '140200');
INSERT INTO `location` VALUES ('140211', '南郊区', '140200');
INSERT INTO `location` VALUES ('140212', '新荣区', '140200');
INSERT INTO `location` VALUES ('140221', '阳高县', '140200');
INSERT INTO `location` VALUES ('140222', '天镇县', '140200');
INSERT INTO `location` VALUES ('140223', '广灵县', '140200');
INSERT INTO `location` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `location` VALUES ('140225', '浑源县', '140200');
INSERT INTO `location` VALUES ('140226', '左云县', '140200');
INSERT INTO `location` VALUES ('140227', '大同县', '140200');
INSERT INTO `location` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `location` VALUES ('140302', '城区', '140300');
INSERT INTO `location` VALUES ('140303', '矿区', '140300');
INSERT INTO `location` VALUES ('140311', '郊区', '140300');
INSERT INTO `location` VALUES ('140321', '平定县', '140300');
INSERT INTO `location` VALUES ('140322', '盂县', '140300');
INSERT INTO `location` VALUES ('140400', '长治市', '140000');
INSERT INTO `location` VALUES ('140402', '城区', '140400');
INSERT INTO `location` VALUES ('140411', '郊区', '140400');
INSERT INTO `location` VALUES ('140421', '长治县', '140400');
INSERT INTO `location` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `location` VALUES ('140424', '屯留县', '140400');
INSERT INTO `location` VALUES ('140425', '平顺县', '140400');
INSERT INTO `location` VALUES ('140426', '黎城县', '140400');
INSERT INTO `location` VALUES ('140427', '壶关县', '140400');
INSERT INTO `location` VALUES ('140428', '长子县', '140400');
INSERT INTO `location` VALUES ('140429', '武乡县', '140400');
INSERT INTO `location` VALUES ('140430', '沁县', '140400');
INSERT INTO `location` VALUES ('140431', '沁源县', '140400');
INSERT INTO `location` VALUES ('140481', '潞城市', '140400');
INSERT INTO `location` VALUES ('140500', '晋城市', '140000');
INSERT INTO `location` VALUES ('140502', '城区', '140500');
INSERT INTO `location` VALUES ('140521', '沁水县', '140500');
INSERT INTO `location` VALUES ('140522', '阳城县', '140500');
INSERT INTO `location` VALUES ('140524', '陵川县', '140500');
INSERT INTO `location` VALUES ('140525', '泽州县', '140500');
INSERT INTO `location` VALUES ('140581', '高平市', '140500');
INSERT INTO `location` VALUES ('140600', '朔州市', '140000');
INSERT INTO `location` VALUES ('140602', '朔城区', '140600');
INSERT INTO `location` VALUES ('140603', '平鲁区', '140600');
INSERT INTO `location` VALUES ('140621', '山阴县', '140600');
INSERT INTO `location` VALUES ('140622', '应县', '140600');
INSERT INTO `location` VALUES ('140623', '右玉县', '140600');
INSERT INTO `location` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `location` VALUES ('140700', '晋中市', '140000');
INSERT INTO `location` VALUES ('140702', '榆次区', '140700');
INSERT INTO `location` VALUES ('140721', '榆社县', '140700');
INSERT INTO `location` VALUES ('140722', '左权县', '140700');
INSERT INTO `location` VALUES ('140723', '和顺县', '140700');
INSERT INTO `location` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `location` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `location` VALUES ('140726', '太谷县', '140700');
INSERT INTO `location` VALUES ('140727', '祁县', '140700');
INSERT INTO `location` VALUES ('140728', '平遥县', '140700');
INSERT INTO `location` VALUES ('140729', '灵石县', '140700');
INSERT INTO `location` VALUES ('140781', '介休市', '140700');
INSERT INTO `location` VALUES ('140800', '运城市', '140000');
INSERT INTO `location` VALUES ('140802', '盐湖区', '140800');
INSERT INTO `location` VALUES ('140821', '临猗县', '140800');
INSERT INTO `location` VALUES ('140822', '万荣县', '140800');
INSERT INTO `location` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `location` VALUES ('140824', '稷山县', '140800');
INSERT INTO `location` VALUES ('140825', '新绛县', '140800');
INSERT INTO `location` VALUES ('140826', '绛县', '140800');
INSERT INTO `location` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `location` VALUES ('140828', '夏县', '140800');
INSERT INTO `location` VALUES ('140829', '平陆县', '140800');
INSERT INTO `location` VALUES ('140830', '芮城县', '140800');
INSERT INTO `location` VALUES ('140881', '永济市', '140800');
INSERT INTO `location` VALUES ('140882', '河津市', '140800');
INSERT INTO `location` VALUES ('140900', '忻州市', '140000');
INSERT INTO `location` VALUES ('140901', '忻府区', '140900');
INSERT INTO `location` VALUES ('140921', '定襄县', '140900');
INSERT INTO `location` VALUES ('140922', '五台县', '140900');
INSERT INTO `location` VALUES ('140923', '代县', '140900');
INSERT INTO `location` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `location` VALUES ('140925', '宁武县', '140900');
INSERT INTO `location` VALUES ('140926', '静乐县', '140900');
INSERT INTO `location` VALUES ('140927', '神池县', '140900');
INSERT INTO `location` VALUES ('140928', '五寨县', '140900');
INSERT INTO `location` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `location` VALUES ('140930', '河曲县', '140900');
INSERT INTO `location` VALUES ('140931', '保德县', '140900');
INSERT INTO `location` VALUES ('140932', '偏关县', '140900');
INSERT INTO `location` VALUES ('140981', '原平市', '140900');
INSERT INTO `location` VALUES ('141000', '临汾市', '140000');
INSERT INTO `location` VALUES ('141002', '尧都区', '141000');
INSERT INTO `location` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `location` VALUES ('141022', '翼城县', '141000');
INSERT INTO `location` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `location` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `location` VALUES ('141025', '古县', '141000');
INSERT INTO `location` VALUES ('141026', '安泽县', '141000');
INSERT INTO `location` VALUES ('141027', '浮山县', '141000');
INSERT INTO `location` VALUES ('141028', '吉县', '141000');
INSERT INTO `location` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `location` VALUES ('141030', '大宁县', '141000');
INSERT INTO `location` VALUES ('141031', '隰县', '141000');
INSERT INTO `location` VALUES ('141032', '永和县', '141000');
INSERT INTO `location` VALUES ('141033', '蒲县', '141000');
INSERT INTO `location` VALUES ('141034', '汾西县', '141000');
INSERT INTO `location` VALUES ('141081', '侯马市', '141000');
INSERT INTO `location` VALUES ('141082', '霍州市', '141000');
INSERT INTO `location` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `location` VALUES ('141102', '离石区', '141100');
INSERT INTO `location` VALUES ('141121', '文水县', '141100');
INSERT INTO `location` VALUES ('141122', '交城县', '141100');
INSERT INTO `location` VALUES ('141123', '兴县', '141100');
INSERT INTO `location` VALUES ('141124', '临县', '141100');
INSERT INTO `location` VALUES ('141125', '柳林县', '141100');
INSERT INTO `location` VALUES ('141126', '石楼县', '141100');
INSERT INTO `location` VALUES ('141127', '岚县', '141100');
INSERT INTO `location` VALUES ('141128', '方山县', '141100');
INSERT INTO `location` VALUES ('141129', '中阳县', '141100');
INSERT INTO `location` VALUES ('141130', '交口县', '141100');
INSERT INTO `location` VALUES ('141181', '孝义市', '141100');
INSERT INTO `location` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `location` VALUES ('150000', '内蒙古自治区', '0');
INSERT INTO `location` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `location` VALUES ('150102', '新城区', '150100');
INSERT INTO `location` VALUES ('150103', '回民区', '150100');
INSERT INTO `location` VALUES ('150104', '玉泉区', '150100');
INSERT INTO `location` VALUES ('150105', '赛罕区', '150100');
INSERT INTO `location` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `location` VALUES ('150122', '托克托县', '150100');
INSERT INTO `location` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `location` VALUES ('150124', '清水河县', '150100');
INSERT INTO `location` VALUES ('150125', '武川县', '150100');
INSERT INTO `location` VALUES ('150200', '包头市', '150000');
INSERT INTO `location` VALUES ('150202', '东河区', '150200');
INSERT INTO `location` VALUES ('150203', '昆都仑区', '150200');
INSERT INTO `location` VALUES ('150204', '青山区', '150200');
INSERT INTO `location` VALUES ('150205', '石拐区', '150200');
INSERT INTO `location` VALUES ('150206', '白云矿区', '150200');
INSERT INTO `location` VALUES ('150207', '九原区', '150200');
INSERT INTO `location` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `location` VALUES ('150222', '固阳县', '150200');
INSERT INTO `location` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `location` VALUES ('150300', '乌海市', '150000');
INSERT INTO `location` VALUES ('150302', '海勃湾区', '150300');
INSERT INTO `location` VALUES ('150303', '海南区', '150300');
INSERT INTO `location` VALUES ('150304', '乌达区', '150300');
INSERT INTO `location` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `location` VALUES ('150402', '红山区', '150400');
INSERT INTO `location` VALUES ('150403', '元宝山区', '150400');
INSERT INTO `location` VALUES ('150404', '松山区', '150400');
INSERT INTO `location` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `location` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `location` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `location` VALUES ('150424', '林西县', '150400');
INSERT INTO `location` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `location` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `location` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `location` VALUES ('150429', '宁城县', '150400');
INSERT INTO `location` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `location` VALUES ('150500', '通辽市', '150000');
INSERT INTO `location` VALUES ('150502', '科尔沁区', '150500');
INSERT INTO `location` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `location` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `location` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `location` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `location` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `location` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `location` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `location` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `location` VALUES ('150602', '东胜区', '150600');
INSERT INTO `location` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `location` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `location` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `location` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `location` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `location` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `location` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `location` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `location` VALUES ('150702', '海拉尔区', '150700');
INSERT INTO `location` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `location` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `location` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `location` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `location` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `location` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `location` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `location` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `location` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `location` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `location` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `location` VALUES ('150785', '根河市', '150700');
INSERT INTO `location` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `location` VALUES ('150802', '临河区', '150800');
INSERT INTO `location` VALUES ('150821', '五原县', '150800');
INSERT INTO `location` VALUES ('150822', '磴口县', '150800');
INSERT INTO `location` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `location` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `location` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `location` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `location` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `location` VALUES ('150902', '集宁区', '150900');
INSERT INTO `location` VALUES ('150921', '卓资县', '150900');
INSERT INTO `location` VALUES ('150922', '化德县', '150900');
INSERT INTO `location` VALUES ('150923', '商都县', '150900');
INSERT INTO `location` VALUES ('150924', '兴和县', '150900');
INSERT INTO `location` VALUES ('150925', '凉城县', '150900');
INSERT INTO `location` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `location` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `location` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `location` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `location` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `location` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `location` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `location` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `location` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `location` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `location` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `location` VALUES ('152224', '突泉县', '152200');
INSERT INTO `location` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `location` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `location` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `location` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `location` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `location` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `location` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `location` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `location` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `location` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `location` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `location` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `location` VALUES ('152531', '多伦县', '152500');
INSERT INTO `location` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `location` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `location` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `location` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `location` VALUES ('210000', '辽宁省', '0');
INSERT INTO `location` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `location` VALUES ('210102', '和平区', '210100');
INSERT INTO `location` VALUES ('210103', '沈河区', '210100');
INSERT INTO `location` VALUES ('210104', '大东区', '210100');
INSERT INTO `location` VALUES ('210105', '皇姑区', '210100');
INSERT INTO `location` VALUES ('210106', '铁西区', '210100');
INSERT INTO `location` VALUES ('210111', '苏家屯区', '210100');
INSERT INTO `location` VALUES ('210112', '东陵区', '210100');
INSERT INTO `location` VALUES ('210113', '新城子区', '210100');
INSERT INTO `location` VALUES ('210114', '于洪区', '210100');
INSERT INTO `location` VALUES ('210122', '辽中县', '210100');
INSERT INTO `location` VALUES ('210123', '康平县', '210100');
INSERT INTO `location` VALUES ('210124', '法库县', '210100');
INSERT INTO `location` VALUES ('210181', '新民市', '210100');
INSERT INTO `location` VALUES ('210182', '沈北新区', '210100');
INSERT INTO `location` VALUES ('210200', '大连市', '210000');
INSERT INTO `location` VALUES ('210202', '中山区', '210200');
INSERT INTO `location` VALUES ('210203', '西岗区', '210200');
INSERT INTO `location` VALUES ('210204', '沙河口区', '210200');
INSERT INTO `location` VALUES ('210211', '甘井子区', '210200');
INSERT INTO `location` VALUES ('210212', '旅顺口区', '210200');
INSERT INTO `location` VALUES ('210213', '金州区', '210200');
INSERT INTO `location` VALUES ('210224', '长海县', '210200');
INSERT INTO `location` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `location` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `location` VALUES ('210283', '庄河市', '210200');
INSERT INTO `location` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `location` VALUES ('210302', '铁东区', '210300');
INSERT INTO `location` VALUES ('210303', '铁西区', '210300');
INSERT INTO `location` VALUES ('210304', '立山区', '210300');
INSERT INTO `location` VALUES ('210311', '千山区', '210300');
INSERT INTO `location` VALUES ('210321', '台安县', '210300');
INSERT INTO `location` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `location` VALUES ('210381', '海城市', '210300');
INSERT INTO `location` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `location` VALUES ('210402', '新抚区', '210400');
INSERT INTO `location` VALUES ('210403', '东洲区', '210400');
INSERT INTO `location` VALUES ('210404', '望花区', '210400');
INSERT INTO `location` VALUES ('210411', '顺城区', '210400');
INSERT INTO `location` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `location` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `location` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `location` VALUES ('210500', '本溪市', '210000');
INSERT INTO `location` VALUES ('210502', '平山区', '210500');
INSERT INTO `location` VALUES ('210503', '溪湖??', '210500');
INSERT INTO `location` VALUES ('210504', '明山区', '210500');
INSERT INTO `location` VALUES ('210505', '南芬区', '210500');
INSERT INTO `location` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `location` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `location` VALUES ('210600', '丹东市', '210000');
INSERT INTO `location` VALUES ('210602', '元宝区', '210600');
INSERT INTO `location` VALUES ('210603', '振兴区', '210600');
INSERT INTO `location` VALUES ('210604', '振安区', '210600');
INSERT INTO `location` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `location` VALUES ('210681', '东港市', '210600');
INSERT INTO `location` VALUES ('210682', '凤城市', '210600');
INSERT INTO `location` VALUES ('210700', '锦州市', '210000');
INSERT INTO `location` VALUES ('210702', '古塔区', '210700');
INSERT INTO `location` VALUES ('210703', '凌河区', '210700');
INSERT INTO `location` VALUES ('210711', '太和区', '210700');
INSERT INTO `location` VALUES ('210726', '黑山县', '210700');
INSERT INTO `location` VALUES ('210727', '义县', '210700');
INSERT INTO `location` VALUES ('210781', '凌海市', '210700');
INSERT INTO `location` VALUES ('210782', '北宁市', '210700');
INSERT INTO `location` VALUES ('210800', '营口市', '210000');
INSERT INTO `location` VALUES ('210802', '站前区', '210800');
INSERT INTO `location` VALUES ('210803', '西市区', '210800');
INSERT INTO `location` VALUES ('210804', '鲅鱼圈区', '210800');
INSERT INTO `location` VALUES ('210811', '老边区', '210800');
INSERT INTO `location` VALUES ('210881', '盖州市', '210800');
INSERT INTO `location` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `location` VALUES ('210900', '阜新市', '210000');
INSERT INTO `location` VALUES ('210902', '海州区', '210900');
INSERT INTO `location` VALUES ('210903', '新邱区', '210900');
INSERT INTO `location` VALUES ('210904', '太平区', '210900');
INSERT INTO `location` VALUES ('210905', '清河门区', '210900');
INSERT INTO `location` VALUES ('210911', '细河区', '210900');
INSERT INTO `location` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `location` VALUES ('210922', '彰武县', '210900');
INSERT INTO `location` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `location` VALUES ('211002', '白塔区', '211000');
INSERT INTO `location` VALUES ('211003', '文圣区', '211000');
INSERT INTO `location` VALUES ('211004', '宏伟区', '211000');
INSERT INTO `location` VALUES ('211005', '弓长岭区', '211000');
INSERT INTO `location` VALUES ('211011', '太子河区', '211000');
INSERT INTO `location` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `location` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `location` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `location` VALUES ('211102', '双台子区', '211100');
INSERT INTO `location` VALUES ('211103', '兴隆台区', '211100');
INSERT INTO `location` VALUES ('211121', '大洼县', '211100');
INSERT INTO `location` VALUES ('211122', '盘山县', '211100');
INSERT INTO `location` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `location` VALUES ('211202', '银州区', '211200');
INSERT INTO `location` VALUES ('211204', '清河区', '211200');
INSERT INTO `location` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `location` VALUES ('211223', '西丰县', '211200');
INSERT INTO `location` VALUES ('211224', '昌图县', '211200');
INSERT INTO `location` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `location` VALUES ('211282', '开原市', '211200');
INSERT INTO `location` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `location` VALUES ('211302', '双塔区', '211300');
INSERT INTO `location` VALUES ('211303', '龙城区', '211300');
INSERT INTO `location` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `location` VALUES ('211322', '建平县', '211300');
INSERT INTO `location` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `location` VALUES ('211381', '北票市', '211300');
INSERT INTO `location` VALUES ('211382', '凌源市', '211300');
INSERT INTO `location` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `location` VALUES ('211402', '连山区', '211400');
INSERT INTO `location` VALUES ('211403', '龙港区', '211400');
INSERT INTO `location` VALUES ('211404', '南票区', '211400');
INSERT INTO `location` VALUES ('211421', '绥中县', '211400');
INSERT INTO `location` VALUES ('211422', '建昌县', '211400');
INSERT INTO `location` VALUES ('211481', '兴城市', '211400');
INSERT INTO `location` VALUES ('220000', '吉林省', '0');
INSERT INTO `location` VALUES ('220100', '长春市', '220000');
INSERT INTO `location` VALUES ('220102', '南关区', '220100');
INSERT INTO `location` VALUES ('220103', '宽城区', '220100');
INSERT INTO `location` VALUES ('220104', '朝阳区', '220100');
INSERT INTO `location` VALUES ('220105', '二道区', '220100');
INSERT INTO `location` VALUES ('220106', '绿园区', '220100');
INSERT INTO `location` VALUES ('220112', '双阳区', '220100');
INSERT INTO `location` VALUES ('220122', '农安县', '220100');
INSERT INTO `location` VALUES ('220181', '九台市', '220100');
INSERT INTO `location` VALUES ('220182', '榆树市', '220100');
INSERT INTO `location` VALUES ('220183', '德惠市', '220100');
INSERT INTO `location` VALUES ('220200', '吉林市', '220000');
INSERT INTO `location` VALUES ('220202', '昌邑区', '220200');
INSERT INTO `location` VALUES ('220203', '龙潭区', '220200');
INSERT INTO `location` VALUES ('220204', '船营区', '220200');
INSERT INTO `location` VALUES ('220211', '丰满区', '220200');
INSERT INTO `location` VALUES ('220221', '永吉县', '220200');
INSERT INTO `location` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `location` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `location` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `location` VALUES ('220284', '磐石市', '220200');
INSERT INTO `location` VALUES ('220300', '四平市', '220000');
INSERT INTO `location` VALUES ('220302', '铁西区', '220300');
INSERT INTO `location` VALUES ('220303', '铁东区', '220300');
INSERT INTO `location` VALUES ('220322', '梨树县', '220300');
INSERT INTO `location` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `location` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `location` VALUES ('220382', '双辽市', '220300');
INSERT INTO `location` VALUES ('220400', '辽源市', '220000');
INSERT INTO `location` VALUES ('220402', '龙山区', '220400');
INSERT INTO `location` VALUES ('220403', '西安区', '220400');
INSERT INTO `location` VALUES ('220421', '东丰县', '220400');
INSERT INTO `location` VALUES ('220422', '东辽县', '220400');
INSERT INTO `location` VALUES ('220500', '通化市', '220000');
INSERT INTO `location` VALUES ('220502', '东昌区', '220500');
INSERT INTO `location` VALUES ('220503', '二道江区', '220500');
INSERT INTO `location` VALUES ('220521', '通化县', '220500');
INSERT INTO `location` VALUES ('220523', '辉南县', '220500');
INSERT INTO `location` VALUES ('220524', '柳河县', '220500');
INSERT INTO `location` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `location` VALUES ('220582', '集安市', '220500');
INSERT INTO `location` VALUES ('220600', '白山市', '220000');
INSERT INTO `location` VALUES ('220602', '八道江区', '220600');
INSERT INTO `location` VALUES ('220621', '抚松县', '220600');
INSERT INTO `location` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `location` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `location` VALUES ('220625', '江源区', '220600');
INSERT INTO `location` VALUES ('220681', '临江市', '220600');
INSERT INTO `location` VALUES ('220700', '松原市', '220000');
INSERT INTO `location` VALUES ('220702', '宁江区', '220700');
INSERT INTO `location` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `location` VALUES ('220722', '长岭县', '220700');
INSERT INTO `location` VALUES ('220723', '乾安县', '220700');
INSERT INTO `location` VALUES ('220724', '扶余市', '220700');
INSERT INTO `location` VALUES ('220800', '白城市', '220000');
INSERT INTO `location` VALUES ('220802', '洮北区', '220800');
INSERT INTO `location` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `location` VALUES ('220822', '通榆县', '220800');
INSERT INTO `location` VALUES ('220881', '洮南市', '220800');
INSERT INTO `location` VALUES ('220882', '大安市', '220800');
INSERT INTO `location` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `location` VALUES ('222401', '延吉市', '222400');
INSERT INTO `location` VALUES ('222402', '图们市', '222400');
INSERT INTO `location` VALUES ('222403', '敦化市', '222400');
INSERT INTO `location` VALUES ('222404', '珲春市', '222400');
INSERT INTO `location` VALUES ('222405', '龙井市', '222400');
INSERT INTO `location` VALUES ('222406', '和龙市', '222400');
INSERT INTO `location` VALUES ('222424', '汪清县', '222400');
INSERT INTO `location` VALUES ('222426', '安图县', '222400');
INSERT INTO `location` VALUES ('230000', '黑龙江省', '0');
INSERT INTO `location` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `location` VALUES ('230102', '道里区', '230100');
INSERT INTO `location` VALUES ('230103', '南岗区', '230100');
INSERT INTO `location` VALUES ('230104', '道外区', '230100');
INSERT INTO `location` VALUES ('230106', '香坊区', '230100');
INSERT INTO `location` VALUES ('230107', '动力区', '230100');
INSERT INTO `location` VALUES ('230108', '平房区', '230100');
INSERT INTO `location` VALUES ('230109', '松北区', '230100');
INSERT INTO `location` VALUES ('230111', '呼兰区', '230100');
INSERT INTO `location` VALUES ('230123', '依兰县', '230100');
INSERT INTO `location` VALUES ('230124', '方正县', '230100');
INSERT INTO `location` VALUES ('230125', '宾县', '230100');
INSERT INTO `location` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `location` VALUES ('230127', '木兰县', '230100');
INSERT INTO `location` VALUES ('230128', '通河县', '230100');
INSERT INTO `location` VALUES ('230129', '延寿县', '230100');
INSERT INTO `location` VALUES ('230181', '阿城市', '230100');
INSERT INTO `location` VALUES ('230182', '双城市', '230100');
INSERT INTO `location` VALUES ('230183', '尚志市', '230100');
INSERT INTO `location` VALUES ('230184', '五常市', '230100');
INSERT INTO `location` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `location` VALUES ('230202', '龙沙区', '230200');
INSERT INTO `location` VALUES ('230203', '建华区', '230200');
INSERT INTO `location` VALUES ('230204', '铁锋区', '230200');
INSERT INTO `location` VALUES ('230205', '昂昂溪区', '230200');
INSERT INTO `location` VALUES ('230206', '富拉尔基区', '230200');
INSERT INTO `location` VALUES ('230207', '碾子山区', '230200');
INSERT INTO `location` VALUES ('230208', '梅里斯达斡尔族区', '230200');
INSERT INTO `location` VALUES ('230221', '龙江县', '230200');
INSERT INTO `location` VALUES ('230223', '依安县', '230200');
INSERT INTO `location` VALUES ('230224', '泰来县', '230200');
INSERT INTO `location` VALUES ('230225', '甘南县', '230200');
INSERT INTO `location` VALUES ('230227', '富裕县', '230200');
INSERT INTO `location` VALUES ('230229', '克山县', '230200');
INSERT INTO `location` VALUES ('230230', '克东县', '230200');
INSERT INTO `location` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `location` VALUES ('230281', '讷河市', '230200');
INSERT INTO `location` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `location` VALUES ('230302', '鸡冠区', '230300');
INSERT INTO `location` VALUES ('230303', '恒山区', '230300');
INSERT INTO `location` VALUES ('230304', '滴道区', '230300');
INSERT INTO `location` VALUES ('230305', '梨树区', '230300');
INSERT INTO `location` VALUES ('230306', '城子河区', '230300');
INSERT INTO `location` VALUES ('230307', '麻山区', '230300');
INSERT INTO `location` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `location` VALUES ('230381', '虎林市', '230300');
INSERT INTO `location` VALUES ('230382', '密山市', '230300');
INSERT INTO `location` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `location` VALUES ('230402', '向阳区', '230400');
INSERT INTO `location` VALUES ('230403', '工农区', '230400');
INSERT INTO `location` VALUES ('230404', '南山区', '230400');
INSERT INTO `location` VALUES ('230405', '兴安区', '230400');
INSERT INTO `location` VALUES ('230406', '东山区', '230400');
INSERT INTO `location` VALUES ('230407', '兴山区', '230400');
INSERT INTO `location` VALUES ('230421', '萝北县', '230400');
INSERT INTO `location` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `location` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `location` VALUES ('230502', '尖山区', '230500');
INSERT INTO `location` VALUES ('230503', '岭东区', '230500');
INSERT INTO `location` VALUES ('230505', '四方台区', '230500');
INSERT INTO `location` VALUES ('230506', '宝山区', '230500');
INSERT INTO `location` VALUES ('230521', '集贤县', '230500');
INSERT INTO `location` VALUES ('230522', '友谊县', '230500');
INSERT INTO `location` VALUES ('230523', '宝清县', '230500');
INSERT INTO `location` VALUES ('230524', '饶河县', '230500');
INSERT INTO `location` VALUES ('230600', '大庆市', '230000');
INSERT INTO `location` VALUES ('230602', '萨尔图区', '230600');
INSERT INTO `location` VALUES ('230603', '龙凤区', '230600');
INSERT INTO `location` VALUES ('230604', '让胡路区', '230600');
INSERT INTO `location` VALUES ('230605', '红岗区', '230600');
INSERT INTO `location` VALUES ('230606', '大同区', '230600');
INSERT INTO `location` VALUES ('230621', '肇州县', '230600');
INSERT INTO `location` VALUES ('230622', '肇源县', '230600');
INSERT INTO `location` VALUES ('230623', '林甸县', '230600');
INSERT INTO `location` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `location` VALUES ('230700', '伊春市', '230000');
INSERT INTO `location` VALUES ('230702', '伊春区', '230700');
INSERT INTO `location` VALUES ('230703', '南岔区', '230700');
INSERT INTO `location` VALUES ('230704', '友好区', '230700');
INSERT INTO `location` VALUES ('230705', '西林区', '230700');
INSERT INTO `location` VALUES ('230706', '翠峦区', '230700');
INSERT INTO `location` VALUES ('230707', '新青区', '230700');
INSERT INTO `location` VALUES ('230708', '美溪区', '230700');
INSERT INTO `location` VALUES ('230709', '金山屯区', '230700');
INSERT INTO `location` VALUES ('230710', '五营区', '230700');
INSERT INTO `location` VALUES ('230711', '乌马河区', '230700');
INSERT INTO `location` VALUES ('230712', '汤旺河区', '230700');
INSERT INTO `location` VALUES ('230713', '带岭区', '230700');
INSERT INTO `location` VALUES ('230714', '乌伊岭区', '230700');
INSERT INTO `location` VALUES ('230715', '红星区', '230700');
INSERT INTO `location` VALUES ('230716', '上甘岭区', '230700');
INSERT INTO `location` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `location` VALUES ('230781', '铁力市', '230700');
INSERT INTO `location` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `location` VALUES ('230803', '向阳区', '230800');
INSERT INTO `location` VALUES ('230804', '前进区', '230800');
INSERT INTO `location` VALUES ('230805', '东风区', '230800');
INSERT INTO `location` VALUES ('230811', '郊区', '230800');
INSERT INTO `location` VALUES ('230822', '桦南县', '230800');
INSERT INTO `location` VALUES ('230826', '桦川县', '230800');
INSERT INTO `location` VALUES ('230828', '汤原县', '230800');
INSERT INTO `location` VALUES ('230833', '抚远县', '230800');
INSERT INTO `location` VALUES ('230881', '同江市', '230800');
INSERT INTO `location` VALUES ('230882', '富锦市', '230800');
INSERT INTO `location` VALUES ('230900', '七台河市', '230000');
INSERT INTO `location` VALUES ('230902', '新兴区', '230900');
INSERT INTO `location` VALUES ('230903', '桃山区', '230900');
INSERT INTO `location` VALUES ('230904', '茄子河区', '230900');
INSERT INTO `location` VALUES ('230921', '勃利县', '230900');
INSERT INTO `location` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `location` VALUES ('231002', '东安区', '231000');
INSERT INTO `location` VALUES ('231003', '阳明区', '231000');
INSERT INTO `location` VALUES ('231004', '爱民区', '231000');
INSERT INTO `location` VALUES ('231005', '西安区', '231000');
INSERT INTO `location` VALUES ('231024', '东宁县', '231000');
INSERT INTO `location` VALUES ('231025', '林口县', '231000');
INSERT INTO `location` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `location` VALUES ('231083', '海林市', '231000');
INSERT INTO `location` VALUES ('231084', '宁安市', '231000');
INSERT INTO `location` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `location` VALUES ('231100', '黑河市', '230000');
INSERT INTO `location` VALUES ('231102', '爱辉区', '231100');
INSERT INTO `location` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `location` VALUES ('231123', '逊克县', '231100');
INSERT INTO `location` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `location` VALUES ('231181', '北安市', '231100');
INSERT INTO `location` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `location` VALUES ('231200', '绥化市', '230000');
INSERT INTO `location` VALUES ('231201', '北林区', '231200');
INSERT INTO `location` VALUES ('231221', '望奎县', '231200');
INSERT INTO `location` VALUES ('231222', '兰西县', '231200');
INSERT INTO `location` VALUES ('231223', '青冈县', '231200');
INSERT INTO `location` VALUES ('231224', '庆安县', '231200');
INSERT INTO `location` VALUES ('231225', '明水县', '231200');
INSERT INTO `location` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `location` VALUES ('231281', '安达市', '231200');
INSERT INTO `location` VALUES ('231282', '肇东市', '231200');
INSERT INTO `location` VALUES ('231283', '海伦市', '231200');
INSERT INTO `location` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `location` VALUES ('232701', '加格达奇区', '232700');
INSERT INTO `location` VALUES ('232702', '松岭区', '232700');
INSERT INTO `location` VALUES ('232703', '新林区', '232700');
INSERT INTO `location` VALUES ('232704', '呼中区', '232700');
INSERT INTO `location` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `location` VALUES ('232722', '塔河县', '232700');
INSERT INTO `location` VALUES ('232723', '漠河县', '232700');
INSERT INTO `location` VALUES ('310000', '上海市', '0');
INSERT INTO `location` VALUES ('310100', '黄浦区', '310000');
INSERT INTO `location` VALUES ('310300', '卢湾区', '310000');
INSERT INTO `location` VALUES ('310400', '徐汇区', '310000');
INSERT INTO `location` VALUES ('310500', '长宁区', '310000');
INSERT INTO `location` VALUES ('310600', '静安区', '310000');
INSERT INTO `location` VALUES ('310700', '普陀区', '310000');
INSERT INTO `location` VALUES ('310800', '闸北区', '310000');
INSERT INTO `location` VALUES ('310900', '虹口区', '310000');
INSERT INTO `location` VALUES ('311000', '杨浦区', '310000');
INSERT INTO `location` VALUES ('311200', '闵行区', '310000');
INSERT INTO `location` VALUES ('311300', '宝山区', '310000');
INSERT INTO `location` VALUES ('311400', '嘉定区', '310000');
INSERT INTO `location` VALUES ('311500', '浦东新区', '310000');
INSERT INTO `location` VALUES ('311600', '金山区', '310000');
INSERT INTO `location` VALUES ('311700', '松江区', '310000');
INSERT INTO `location` VALUES ('311800', '青浦区', '310000');
INSERT INTO `location` VALUES ('311900', '南汇区', '310000');
INSERT INTO `location` VALUES ('312000', '奉贤区', '310000');
INSERT INTO `location` VALUES ('313000', '崇明县', '310000');
INSERT INTO `location` VALUES ('320000', '江苏省', '0');
INSERT INTO `location` VALUES ('320100', '南京市', '320000');
INSERT INTO `location` VALUES ('320102', '玄武区', '320100');
INSERT INTO `location` VALUES ('320103', '白下区', '320100');
INSERT INTO `location` VALUES ('320104', '秦淮区', '320100');
INSERT INTO `location` VALUES ('320105', '建邺区', '320100');
INSERT INTO `location` VALUES ('320106', '鼓楼区', '320100');
INSERT INTO `location` VALUES ('320107', '下关区', '320100');
INSERT INTO `location` VALUES ('320111', '浦口区', '320100');
INSERT INTO `location` VALUES ('320113', '栖霞区', '320100');
INSERT INTO `location` VALUES ('320114', '雨花台区', '320100');
INSERT INTO `location` VALUES ('320115', '江宁区', '320100');
INSERT INTO `location` VALUES ('320116', '六合区', '320100');
INSERT INTO `location` VALUES ('320124', '溧水区', '320100');
INSERT INTO `location` VALUES ('320125', '高淳区', '320100');
INSERT INTO `location` VALUES ('320200', '无锡市', '320000');
INSERT INTO `location` VALUES ('320202', '崇安区', '320200');
INSERT INTO `location` VALUES ('320203', '南长区', '320200');
INSERT INTO `location` VALUES ('320204', '北塘区', '320200');
INSERT INTO `location` VALUES ('320205', '锡山区', '320200');
INSERT INTO `location` VALUES ('320206', '惠山区', '320200');
INSERT INTO `location` VALUES ('320211', '滨湖区', '320200');
INSERT INTO `location` VALUES ('320281', '江阴市', '320200');
INSERT INTO `location` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `location` VALUES ('320300', '徐州市', '320000');
INSERT INTO `location` VALUES ('320301', '泉山区', '320300');
INSERT INTO `location` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `location` VALUES ('320303', '云龙区', '320300');
INSERT INTO `location` VALUES ('320304', '九里区', '320301');
INSERT INTO `location` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `location` VALUES ('320321', '丰县', '320300');
INSERT INTO `location` VALUES ('320322', '沛县', '320300');
INSERT INTO `location` VALUES ('320323', '铜山县', '320300');
INSERT INTO `location` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `location` VALUES ('320381', '新沂市', '320300');
INSERT INTO `location` VALUES ('320382', '邳州市', '320300');
INSERT INTO `location` VALUES ('320400', '常州市', '320000');
INSERT INTO `location` VALUES ('320402', '天宁区', '320400');
INSERT INTO `location` VALUES ('320404', '钟楼区', '320400');
INSERT INTO `location` VALUES ('320405', '戚墅堰区', '320400');
INSERT INTO `location` VALUES ('320411', '新北区', '320400');
INSERT INTO `location` VALUES ('320412', '武进区', '320400');
INSERT INTO `location` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `location` VALUES ('320482', '金坛市', '320400');
INSERT INTO `location` VALUES ('320500', '苏州市', '320000');
INSERT INTO `location` VALUES ('320502', '沧浪区', '320500');
INSERT INTO `location` VALUES ('320503', '平江区', '320500');
INSERT INTO `location` VALUES ('320504', '金阊区', '320500');
INSERT INTO `location` VALUES ('320505', '虎丘区', '320500');
INSERT INTO `location` VALUES ('320506', '吴中区', '320500');
INSERT INTO `location` VALUES ('320507', '相城区', '320500');
INSERT INTO `location` VALUES ('320581', '常熟市', '320500');
INSERT INTO `location` VALUES ('320582', '张家港市', '320500');
INSERT INTO `location` VALUES ('320583', '昆山市', '320500');
INSERT INTO `location` VALUES ('320584', '吴江市', '320500');
INSERT INTO `location` VALUES ('320585', '太仓市', '320500');
INSERT INTO `location` VALUES ('320600', '南通市', '320000');
INSERT INTO `location` VALUES ('320602', '崇川区', '320600');
INSERT INTO `location` VALUES ('320611', '港闸区', '320600');
INSERT INTO `location` VALUES ('320621', '海安县', '320600');
INSERT INTO `location` VALUES ('320623', '如东县', '320600');
INSERT INTO `location` VALUES ('320681', '启东市', '320600');
INSERT INTO `location` VALUES ('320682', '如皋市', '320600');
INSERT INTO `location` VALUES ('320683', '通州市', '320600');
INSERT INTO `location` VALUES ('320684', '海门市', '320600');
INSERT INTO `location` VALUES ('320700', '连云港市', '320000');
INSERT INTO `location` VALUES ('320703', '连云区', '320700');
INSERT INTO `location` VALUES ('320705', '新浦区', '320700');
INSERT INTO `location` VALUES ('320706', '海州区', '320700');
INSERT INTO `location` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `location` VALUES ('320722', '东海县', '320700');
INSERT INTO `location` VALUES ('320723', '灌云县', '320700');
INSERT INTO `location` VALUES ('320724', '灌南县', '320700');
INSERT INTO `location` VALUES ('320800', '淮安市', '320000');
INSERT INTO `location` VALUES ('320802', '清河区', '320800');
INSERT INTO `location` VALUES ('320803', '楚州区', '320800');
INSERT INTO `location` VALUES ('320804', '淮阴区', '320800');
INSERT INTO `location` VALUES ('320811', '清浦区', '320800');
INSERT INTO `location` VALUES ('320826', '涟水县', '320800');
INSERT INTO `location` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `location` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `location` VALUES ('320831', '金湖县', '320800');
INSERT INTO `location` VALUES ('320900', '盐城市', '320000');
INSERT INTO `location` VALUES ('320902', '亭湖区', '320900');
INSERT INTO `location` VALUES ('320903', '盐都区', '320900');
INSERT INTO `location` VALUES ('320921', '响水县', '320900');
INSERT INTO `location` VALUES ('320922', '滨海县', '320900');
INSERT INTO `location` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `location` VALUES ('320924', '射阳县', '320900');
INSERT INTO `location` VALUES ('320925', '建湖县', '320900');
INSERT INTO `location` VALUES ('320981', '东台市', '320900');
INSERT INTO `location` VALUES ('320982', '大丰市', '320900');
INSERT INTO `location` VALUES ('321000', '扬州市', '320000');
INSERT INTO `location` VALUES ('321002', '广陵区', '321000');
INSERT INTO `location` VALUES ('321003', '邗江区', '321000');
INSERT INTO `location` VALUES ('321011', '维扬区', '321000');
INSERT INTO `location` VALUES ('321023', '宝应县', '321000');
INSERT INTO `location` VALUES ('321081', '仪征市', '321000');
INSERT INTO `location` VALUES ('321084', '高邮市', '321000');
INSERT INTO `location` VALUES ('321088', '江都市', '321000');
INSERT INTO `location` VALUES ('321100', '镇江市', '320000');
INSERT INTO `location` VALUES ('321102', '京口区', '321100');
INSERT INTO `location` VALUES ('321111', '润州区', '321100');
INSERT INTO `location` VALUES ('321112', '丹徒区', '321100');
INSERT INTO `location` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `location` VALUES ('321182', '扬中市', '321100');
INSERT INTO `location` VALUES ('321183', '句容市', '321100');
INSERT INTO `location` VALUES ('321200', '泰州市', '320000');
INSERT INTO `location` VALUES ('321202', '海陵区', '321200');
INSERT INTO `location` VALUES ('321203', '高港区', '321200');
INSERT INTO `location` VALUES ('321281', '兴化市', '321200');
INSERT INTO `location` VALUES ('321282', '靖江市', '321200');
INSERT INTO `location` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `location` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `location` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `location` VALUES ('321302', '宿城区', '321300');
INSERT INTO `location` VALUES ('321311', '宿豫区', '321300');
INSERT INTO `location` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `location` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `location` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `location` VALUES ('330000', '浙江省', '0');
INSERT INTO `location` VALUES ('330100', '杭州市', '330000');
INSERT INTO `location` VALUES ('330102', '上城区', '330100');
INSERT INTO `location` VALUES ('330103', '下城区', '330100');
INSERT INTO `location` VALUES ('330104', '江干区', '330100');
INSERT INTO `location` VALUES ('330105', '拱墅区', '330100');
INSERT INTO `location` VALUES ('330106', '西湖区', '330100');
INSERT INTO `location` VALUES ('330108', '滨江区', '330100');
INSERT INTO `location` VALUES ('330109', '萧山区', '330100');
INSERT INTO `location` VALUES ('330110', '余杭区', '330100');
INSERT INTO `location` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `location` VALUES ('330127', '淳安县', '330100');
INSERT INTO `location` VALUES ('330182', '建德市', '330100');
INSERT INTO `location` VALUES ('330183', '富阳市', '330100');
INSERT INTO `location` VALUES ('330185', '临安市', '330100');
INSERT INTO `location` VALUES ('330200', '宁波市', '330000');
INSERT INTO `location` VALUES ('330203', '海曙区', '330200');
INSERT INTO `location` VALUES ('330204', '江东区', '330200');
INSERT INTO `location` VALUES ('330205', '江北区', '330200');
INSERT INTO `location` VALUES ('330206', '北仑区', '330200');
INSERT INTO `location` VALUES ('330211', '镇海区', '330200');
INSERT INTO `location` VALUES ('330212', '鄞州区', '330200');
INSERT INTO `location` VALUES ('330225', '象山县', '330200');
INSERT INTO `location` VALUES ('330226', '宁海县', '330200');
INSERT INTO `location` VALUES ('330281', '余姚市', '330200');
INSERT INTO `location` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `location` VALUES ('330283', '奉化市', '330200');
INSERT INTO `location` VALUES ('330300', '温州市', '330000');
INSERT INTO `location` VALUES ('330302', '鹿城区', '330300');
INSERT INTO `location` VALUES ('330303', '龙湾区', '330300');
INSERT INTO `location` VALUES ('330304', '瓯海区', '330300');
INSERT INTO `location` VALUES ('330322', '洞头县', '330300');
INSERT INTO `location` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `location` VALUES ('330326', '平阳县', '330300');
INSERT INTO `location` VALUES ('330327', '苍南县', '330300');
INSERT INTO `location` VALUES ('330328', '文成县', '330300');
INSERT INTO `location` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `location` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `location` VALUES ('330382', '乐清市', '330300');
INSERT INTO `location` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `location` VALUES ('330402', '南湖区', '330400');
INSERT INTO `location` VALUES ('330411', '秀洲区', '330400');
INSERT INTO `location` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `location` VALUES ('330424', '海盐县', '330400');
INSERT INTO `location` VALUES ('330481', '海宁市', '330400');
INSERT INTO `location` VALUES ('330482', '平湖市', '330400');
INSERT INTO `location` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `location` VALUES ('330500', '湖州市', '330000');
INSERT INTO `location` VALUES ('330502', '吴兴区', '330500');
INSERT INTO `location` VALUES ('330503', '南浔区', '330500');
INSERT INTO `location` VALUES ('330521', '德清县', '330500');
INSERT INTO `location` VALUES ('330522', '长兴县', '330500');
INSERT INTO `location` VALUES ('330523', '安吉县', '330500');
INSERT INTO `location` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `location` VALUES ('330602', '越城区', '330600');
INSERT INTO `location` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `location` VALUES ('330624', '新昌县', '330600');
INSERT INTO `location` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `location` VALUES ('330682', '上虞市', '330600');
INSERT INTO `location` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `location` VALUES ('330700', '金华市', '330000');
INSERT INTO `location` VALUES ('330702', '婺城区', '330700');
INSERT INTO `location` VALUES ('330703', '金东区', '330700');
INSERT INTO `location` VALUES ('330723', '武义县', '330700');
INSERT INTO `location` VALUES ('330726', '浦江县', '330700');
INSERT INTO `location` VALUES ('330727', '磐安县', '330700');
INSERT INTO `location` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `location` VALUES ('330782', '义乌市', '330700');
INSERT INTO `location` VALUES ('330783', '东阳市', '330700');
INSERT INTO `location` VALUES ('330784', '永康市', '330700');
INSERT INTO `location` VALUES ('330800', '衢州市', '330000');
INSERT INTO `location` VALUES ('330802', '柯城区', '330800');
INSERT INTO `location` VALUES ('330803', '衢江区', '330800');
INSERT INTO `location` VALUES ('330822', '常山县', '330800');
INSERT INTO `location` VALUES ('330824', '开化县', '330800');
INSERT INTO `location` VALUES ('330825', '龙游县', '330800');
INSERT INTO `location` VALUES ('330881', '江山市', '330800');
INSERT INTO `location` VALUES ('330900', '舟山市', '330000');
INSERT INTO `location` VALUES ('330902', '定海区', '330900');
INSERT INTO `location` VALUES ('330903', '普陀区', '330900');
INSERT INTO `location` VALUES ('330921', '岱山县', '330900');
INSERT INTO `location` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `location` VALUES ('331000', '台州市', '330000');
INSERT INTO `location` VALUES ('331002', '椒江区', '331000');
INSERT INTO `location` VALUES ('331003', '黄岩区', '331000');
INSERT INTO `location` VALUES ('331004', '路桥区', '331000');
INSERT INTO `location` VALUES ('331021', '玉环县', '331000');
INSERT INTO `location` VALUES ('331022', '三门县', '331000');
INSERT INTO `location` VALUES ('331023', '天台县', '331000');
INSERT INTO `location` VALUES ('331024', '仙居县', '331000');
INSERT INTO `location` VALUES ('331081', '温岭市', '331000');
INSERT INTO `location` VALUES ('331082', '临海市', '331000');
INSERT INTO `location` VALUES ('331100', '丽水市', '330000');
INSERT INTO `location` VALUES ('331102', '莲都区', '331100');
INSERT INTO `location` VALUES ('331121', '青田县', '331100');
INSERT INTO `location` VALUES ('331122', '缙云县', '331100');
INSERT INTO `location` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `location` VALUES ('331124', '松阳县', '331100');
INSERT INTO `location` VALUES ('331125', '云和县', '331100');
INSERT INTO `location` VALUES ('331126', '庆元县', '331100');
INSERT INTO `location` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `location` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `location` VALUES ('340000', '安徽省', '0');
INSERT INTO `location` VALUES ('340100', '合肥市', '340000');
INSERT INTO `location` VALUES ('340102', '瑶海区', '340100');
INSERT INTO `location` VALUES ('340103', '庐阳区', '340100');
INSERT INTO `location` VALUES ('340104', '蜀山区', '340100');
INSERT INTO `location` VALUES ('340111', '包河区', '340100');
INSERT INTO `location` VALUES ('340121', '长丰县', '340100');
INSERT INTO `location` VALUES ('340122', '肥东县', '340100');
INSERT INTO `location` VALUES ('340123', '肥西县', '340100');
INSERT INTO `location` VALUES ('340124', '庐江县', '340100');
INSERT INTO `location` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `location` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `location` VALUES ('340202', '镜湖区', '340200');
INSERT INTO `location` VALUES ('340203', '马塘区', '340200');
INSERT INTO `location` VALUES ('340207', '鸠江区', '340200');
INSERT INTO `location` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `location` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `location` VALUES ('340223', '南陵县', '340200');
INSERT INTO `location` VALUES ('340225', '无为县', '340200');
INSERT INTO `location` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `location` VALUES ('340302', '龙子湖区', '340300');
INSERT INTO `location` VALUES ('340303', '蚌山区', '340300');
INSERT INTO `location` VALUES ('340304', '禹会区', '340300');
INSERT INTO `location` VALUES ('340311', '淮上区', '340300');
INSERT INTO `location` VALUES ('340321', '怀远县', '340300');
INSERT INTO `location` VALUES ('340322', '五河县', '340300');
INSERT INTO `location` VALUES ('340323', '固镇县', '340300');
INSERT INTO `location` VALUES ('340400', '淮南市', '340000');
INSERT INTO `location` VALUES ('340402', '大通区', '340400');
INSERT INTO `location` VALUES ('340403', '田家庵区', '340400');
INSERT INTO `location` VALUES ('340404', '谢家集区', '340400');
INSERT INTO `location` VALUES ('340405', '八公山区', '340400');
INSERT INTO `location` VALUES ('340406', '潘集区', '340400');
INSERT INTO `location` VALUES ('340421', '凤台县', '340400');
INSERT INTO `location` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `location` VALUES ('340502', '金家庄区', '340500');
INSERT INTO `location` VALUES ('340503', '花山区', '340500');
INSERT INTO `location` VALUES ('340504', '雨山区', '340500');
INSERT INTO `location` VALUES ('340521', '当涂县', '340500');
INSERT INTO `location` VALUES ('340522', '含山县', '340500');
INSERT INTO `location` VALUES ('340523', '和县', '340500');
INSERT INTO `location` VALUES ('340600', '淮北市', '340000');
INSERT INTO `location` VALUES ('340602', '杜集区', '340600');
INSERT INTO `location` VALUES ('340603', '相山区', '340600');
INSERT INTO `location` VALUES ('340604', '烈山区', '340600');
INSERT INTO `location` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `location` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `location` VALUES ('340702', '铜官山区', '340700');
INSERT INTO `location` VALUES ('340703', '狮子山区', '340700');
INSERT INTO `location` VALUES ('340711', '郊区', '340700');
INSERT INTO `location` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `location` VALUES ('340800', '安庆市', '340000');
INSERT INTO `location` VALUES ('340802', '迎江区', '340800');
INSERT INTO `location` VALUES ('340803', '大观区', '340800');
INSERT INTO `location` VALUES ('340811', '宜秀区', '340800');
INSERT INTO `location` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `location` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `location` VALUES ('340824', '潜山县', '340800');
INSERT INTO `location` VALUES ('340825', '太湖县', '340800');
INSERT INTO `location` VALUES ('340826', '宿松县', '340800');
INSERT INTO `location` VALUES ('340827', '望江县', '340800');
INSERT INTO `location` VALUES ('340828', '岳西县', '340800');
INSERT INTO `location` VALUES ('340881', '桐城市', '340800');
INSERT INTO `location` VALUES ('341000', '黄山市', '340000');
INSERT INTO `location` VALUES ('341001', '黄山区', '341000');
INSERT INTO `location` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `location` VALUES ('341004', '徽州区', '341000');
INSERT INTO `location` VALUES ('341021', '歙县', '341000');
INSERT INTO `location` VALUES ('341022', '休宁县', '341000');
INSERT INTO `location` VALUES ('341023', '黟县', '341000');
INSERT INTO `location` VALUES ('341024', '祁门县', '341000');
INSERT INTO `location` VALUES ('341091', '汤口镇', '341000');
INSERT INTO `location` VALUES ('341100', '滁州市', '340000');
INSERT INTO `location` VALUES ('341102', '琅琊区', '341100');
INSERT INTO `location` VALUES ('341103', '南谯区', '341100');
INSERT INTO `location` VALUES ('341122', '来安县', '341100');
INSERT INTO `location` VALUES ('341124', '全椒县', '341100');
INSERT INTO `location` VALUES ('341125', '定远县', '341100');
INSERT INTO `location` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `location` VALUES ('341181', '天长市', '341100');
INSERT INTO `location` VALUES ('341182', '明光市', '341100');
INSERT INTO `location` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `location` VALUES ('341201', '颍泉区', '341200');
INSERT INTO `location` VALUES ('341202', '颍州区', '341200');
INSERT INTO `location` VALUES ('341203', '颍东区', '341200');
INSERT INTO `location` VALUES ('341221', '临泉县', '341200');
INSERT INTO `location` VALUES ('341222', '太和县', '341200');
INSERT INTO `location` VALUES ('341225', '阜南县', '341200');
INSERT INTO `location` VALUES ('341226', '颍上县', '341200');
INSERT INTO `location` VALUES ('341282', '界首市', '341200');
INSERT INTO `location` VALUES ('341300', '宿州市', '340000');
INSERT INTO `location` VALUES ('341302', '埇桥区', '341300');
INSERT INTO `location` VALUES ('341321', '砀山县', '341300');
INSERT INTO `location` VALUES ('341322', '萧县', '341300');
INSERT INTO `location` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `location` VALUES ('341324', '泗县', '341300');
INSERT INTO `location` VALUES ('341500', '六安市', '340000');
INSERT INTO `location` VALUES ('341502', '金安区', '341500');
INSERT INTO `location` VALUES ('341503', '裕安区', '341500');
INSERT INTO `location` VALUES ('341521', '寿县', '341500');
INSERT INTO `location` VALUES ('341522', '霍邱县', '341500');
INSERT INTO `location` VALUES ('341523', '舒城县', '341500');
INSERT INTO `location` VALUES ('341524', '金寨县', '341500');
INSERT INTO `location` VALUES ('341525', '霍山县', '341500');
INSERT INTO `location` VALUES ('341600', '亳州市', '340000');
INSERT INTO `location` VALUES ('341601', '谯城区', '341600');
INSERT INTO `location` VALUES ('341621', '涡阳县', '341600');
INSERT INTO `location` VALUES ('341622', '蒙城县', '341600');
INSERT INTO `location` VALUES ('341623', '利辛县', '341600');
INSERT INTO `location` VALUES ('341700', '池州市', '340000');
INSERT INTO `location` VALUES ('341702', '贵池区', '341700');
INSERT INTO `location` VALUES ('341721', '东至县', '341700');
INSERT INTO `location` VALUES ('341722', '石台县', '341700');
INSERT INTO `location` VALUES ('341723', '青阳县', '341700');
INSERT INTO `location` VALUES ('341800', '宣城市', '340000');
INSERT INTO `location` VALUES ('341802', '宣州区', '341800');
INSERT INTO `location` VALUES ('341821', '郎溪县', '341800');
INSERT INTO `location` VALUES ('341822', '广德县', '341800');
INSERT INTO `location` VALUES ('341823', '泾县', '341800');
INSERT INTO `location` VALUES ('341824', '绩溪县', '341800');
INSERT INTO `location` VALUES ('341825', '旌德县', '341800');
INSERT INTO `location` VALUES ('341881', '宁国市', '341800');
INSERT INTO `location` VALUES ('350000', '福建省', '0');
INSERT INTO `location` VALUES ('350100', '福州市', '350000');
INSERT INTO `location` VALUES ('350102', '鼓楼区', '350100');
INSERT INTO `location` VALUES ('350103', '台江区', '350100');
INSERT INTO `location` VALUES ('350104', '仓山区', '350100');
INSERT INTO `location` VALUES ('350105', '马尾区', '350100');
INSERT INTO `location` VALUES ('350111', '晋安区', '350100');
INSERT INTO `location` VALUES ('350121', '闽侯县', '350100');
INSERT INTO `location` VALUES ('350122', '连江县', '350100');
INSERT INTO `location` VALUES ('350123', '罗源县', '350100');
INSERT INTO `location` VALUES ('350124', '闽清县', '350100');
INSERT INTO `location` VALUES ('350125', '永泰县', '350100');
INSERT INTO `location` VALUES ('350128', '平潭县', '350100');
INSERT INTO `location` VALUES ('350181', '福清市', '350100');
INSERT INTO `location` VALUES ('350182', '长乐市', '350100');
INSERT INTO `location` VALUES ('350200', '厦门市', '350000');
INSERT INTO `location` VALUES ('350203', '思明区', '350200');
INSERT INTO `location` VALUES ('350205', '海沧区', '350200');
INSERT INTO `location` VALUES ('350206', '湖里区', '350200');
INSERT INTO `location` VALUES ('350211', '集美区', '350200');
INSERT INTO `location` VALUES ('350212', '同安区', '350200');
INSERT INTO `location` VALUES ('350213', '翔安区', '350200');
INSERT INTO `location` VALUES ('350300', '莆田市', '350000');
INSERT INTO `location` VALUES ('350302', '城厢区', '350300');
INSERT INTO `location` VALUES ('350303', '涵江区', '350300');
INSERT INTO `location` VALUES ('350304', '荔城区', '350300');
INSERT INTO `location` VALUES ('350305', '秀屿区', '350300');
INSERT INTO `location` VALUES ('350322', '仙游县', '350300');
INSERT INTO `location` VALUES ('350400', '三明市', '350000');
INSERT INTO `location` VALUES ('350402', '梅列区', '350400');
INSERT INTO `location` VALUES ('350403', '三元区', '350400');
INSERT INTO `location` VALUES ('350421', '明溪县', '350400');
INSERT INTO `location` VALUES ('350423', '清流县', '350400');
INSERT INTO `location` VALUES ('350424', '宁化县', '350400');
INSERT INTO `location` VALUES ('350425', '大田县', '350400');
INSERT INTO `location` VALUES ('350426', '尤溪县', '350400');
INSERT INTO `location` VALUES ('350427', '沙县', '350400');
INSERT INTO `location` VALUES ('350428', '将乐县', '350400');
INSERT INTO `location` VALUES ('350429', '泰宁县', '350400');
INSERT INTO `location` VALUES ('350430', '建宁县', '350400');
INSERT INTO `location` VALUES ('350481', '永安市', '350400');
INSERT INTO `location` VALUES ('350500', '泉州市', '350000');
INSERT INTO `location` VALUES ('350502', '鲤城区', '350500');
INSERT INTO `location` VALUES ('350503', '丰泽区', '350500');
INSERT INTO `location` VALUES ('350504', '洛江区', '350500');
INSERT INTO `location` VALUES ('350505', '泉港区', '350500');
INSERT INTO `location` VALUES ('350521', '惠安县', '350500');
INSERT INTO `location` VALUES ('350524', '安溪县', '350500');
INSERT INTO `location` VALUES ('350525', '永春县', '350500');
INSERT INTO `location` VALUES ('350526', '德化县', '350500');
INSERT INTO `location` VALUES ('350527', '金门县', '350500');
INSERT INTO `location` VALUES ('350581', '石狮市', '350500');
INSERT INTO `location` VALUES ('350582', '晋江市', '350500');
INSERT INTO `location` VALUES ('350583', '南安市', '350500');
INSERT INTO `location` VALUES ('350600', '漳州市', '350000');
INSERT INTO `location` VALUES ('350602', '芗城区', '350600');
INSERT INTO `location` VALUES ('350603', '龙文区', '350600');
INSERT INTO `location` VALUES ('350622', '云霄县', '350600');
INSERT INTO `location` VALUES ('350623', '漳浦县', '350600');
INSERT INTO `location` VALUES ('350624', '诏安县', '350600');
INSERT INTO `location` VALUES ('350625', '长泰县', '350600');
INSERT INTO `location` VALUES ('350626', '东山县', '350600');
INSERT INTO `location` VALUES ('350627', '南靖县', '350600');
INSERT INTO `location` VALUES ('350628', '平和县', '350600');
INSERT INTO `location` VALUES ('350629', '华安县', '350600');
INSERT INTO `location` VALUES ('350681', '龙海市', '350600');
INSERT INTO `location` VALUES ('350700', '南平市', '350000');
INSERT INTO `location` VALUES ('350702', '延平区', '350700');
INSERT INTO `location` VALUES ('350721', '顺昌县', '350700');
INSERT INTO `location` VALUES ('350722', '浦城县', '350700');
INSERT INTO `location` VALUES ('350723', '光泽县', '350700');
INSERT INTO `location` VALUES ('350724', '松溪县', '350700');
INSERT INTO `location` VALUES ('350725', '政和县', '350700');
INSERT INTO `location` VALUES ('350781', '邵武市', '350700');
INSERT INTO `location` VALUES ('350782', '武夷山市', '350700');
INSERT INTO `location` VALUES ('350783', '建瓯市', '350700');
INSERT INTO `location` VALUES ('350784', '建阳市', '350700');
INSERT INTO `location` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `location` VALUES ('350802', '新罗区', '350800');
INSERT INTO `location` VALUES ('350821', '长汀县', '350800');
INSERT INTO `location` VALUES ('350822', '永定县', '350800');
INSERT INTO `location` VALUES ('350823', '上杭县', '350800');
INSERT INTO `location` VALUES ('350824', '武平县', '350800');
INSERT INTO `location` VALUES ('350825', '连城县', '350800');
INSERT INTO `location` VALUES ('350881', '漳平市', '350800');
INSERT INTO `location` VALUES ('350900', '宁德市', '350000');
INSERT INTO `location` VALUES ('350902', '蕉城区', '350900');
INSERT INTO `location` VALUES ('350921', '霞浦县', '350900');
INSERT INTO `location` VALUES ('350922', '古田县', '350900');
INSERT INTO `location` VALUES ('350923', '屏南县', '350900');
INSERT INTO `location` VALUES ('350924', '寿宁县', '350900');
INSERT INTO `location` VALUES ('350925', '周宁县', '350900');
INSERT INTO `location` VALUES ('350926', '柘荣县', '350900');
INSERT INTO `location` VALUES ('350981', '福安市', '350900');
INSERT INTO `location` VALUES ('350982', '福鼎市', '350900');
INSERT INTO `location` VALUES ('360000', '江西省', '0');
INSERT INTO `location` VALUES ('360100', '南昌市', '360000');
INSERT INTO `location` VALUES ('360102', '东湖区', '360100');
INSERT INTO `location` VALUES ('360103', '西湖区', '360100');
INSERT INTO `location` VALUES ('360104', '青云谱区', '360100');
INSERT INTO `location` VALUES ('360105', '湾里区', '360100');
INSERT INTO `location` VALUES ('360111', '青山湖区', '360100');
INSERT INTO `location` VALUES ('360121', '南昌县', '360100');
INSERT INTO `location` VALUES ('360122', '新建县', '360100');
INSERT INTO `location` VALUES ('360123', '安义县', '360100');
INSERT INTO `location` VALUES ('360124', '进贤县', '360100');
INSERT INTO `location` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `location` VALUES ('360202', '昌江区', '360200');
INSERT INTO `location` VALUES ('360203', '珠山区', '360200');
INSERT INTO `location` VALUES ('360222', '浮梁县', '360200');
INSERT INTO `location` VALUES ('360281', '乐平市', '360200');
INSERT INTO `location` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `location` VALUES ('360302', '安源区', '360300');
INSERT INTO `location` VALUES ('360313', '湘东区', '360300');
INSERT INTO `location` VALUES ('360321', '莲花县', '360300');
INSERT INTO `location` VALUES ('360322', '上栗县', '360300');
INSERT INTO `location` VALUES ('360323', '芦溪县', '360300');
INSERT INTO `location` VALUES ('360400', '九江市', '360000');
INSERT INTO `location` VALUES ('360402', '庐山区', '360400');
INSERT INTO `location` VALUES ('360403', '浔阳区', '360400');
INSERT INTO `location` VALUES ('360421', '九江县', '360400');
INSERT INTO `location` VALUES ('360423', '武宁县', '360400');
INSERT INTO `location` VALUES ('360424', '修水县', '360400');
INSERT INTO `location` VALUES ('360425', '永修县', '360400');
INSERT INTO `location` VALUES ('360426', '德安县', '360400');
INSERT INTO `location` VALUES ('360427', '星子县', '360400');
INSERT INTO `location` VALUES ('360428', '都昌县', '360400');
INSERT INTO `location` VALUES ('360429', '湖口县', '360400');
INSERT INTO `location` VALUES ('360430', '彭泽县', '360400');
INSERT INTO `location` VALUES ('360481', '瑞昌市', '360400');
INSERT INTO `location` VALUES ('360482', '共青城市', '360400');
INSERT INTO `location` VALUES ('360500', '新余市', '360000');
INSERT INTO `location` VALUES ('360502', '渝水区', '360500');
INSERT INTO `location` VALUES ('360521', '分宜县', '360500');
INSERT INTO `location` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `location` VALUES ('360602', '月湖区', '360600');
INSERT INTO `location` VALUES ('360622', '余江县', '360600');
INSERT INTO `location` VALUES ('360681', '贵溪市', '360600');
INSERT INTO `location` VALUES ('360700', '赣州市', '360000');
INSERT INTO `location` VALUES ('360702', '章贡区', '360700');
INSERT INTO `location` VALUES ('360721', '赣县', '360700');
INSERT INTO `location` VALUES ('360722', '信丰县', '360700');
INSERT INTO `location` VALUES ('360723', '大余县', '360700');
INSERT INTO `location` VALUES ('360724', '上犹县', '360700');
INSERT INTO `location` VALUES ('360725', '崇义县', '360700');
INSERT INTO `location` VALUES ('360726', '安远县', '360700');
INSERT INTO `location` VALUES ('360727', '龙南县', '360700');
INSERT INTO `location` VALUES ('360728', '定南县', '360700');
INSERT INTO `location` VALUES ('360729', '全南县', '360700');
INSERT INTO `location` VALUES ('360730', '宁都县', '360700');
INSERT INTO `location` VALUES ('360731', '于都县', '360700');
INSERT INTO `location` VALUES ('360732', '兴国县', '360700');
INSERT INTO `location` VALUES ('360733', '会昌县', '360700');
INSERT INTO `location` VALUES ('360734', '寻乌县', '360700');
INSERT INTO `location` VALUES ('360735', '石城县', '360700');
INSERT INTO `location` VALUES ('360781', '瑞金市', '360700');
INSERT INTO `location` VALUES ('360782', '南康市', '360700');
INSERT INTO `location` VALUES ('360800', '吉安市', '360000');
INSERT INTO `location` VALUES ('360802', '吉州区', '360800');
INSERT INTO `location` VALUES ('360803', '青原区', '360800');
INSERT INTO `location` VALUES ('360821', '吉安县', '360800');
INSERT INTO `location` VALUES ('360822', '吉水县', '360800');
INSERT INTO `location` VALUES ('360823', '峡江县', '360800');
INSERT INTO `location` VALUES ('360824', '新干县', '360800');
INSERT INTO `location` VALUES ('360825', '永丰县', '360800');
INSERT INTO `location` VALUES ('360826', '泰和县', '360800');
INSERT INTO `location` VALUES ('360827', '遂川县', '360800');
INSERT INTO `location` VALUES ('360828', '万安县', '360800');
INSERT INTO `location` VALUES ('360829', '安福县', '360800');
INSERT INTO `location` VALUES ('360830', '永新县', '360800');
INSERT INTO `location` VALUES ('360881', '井冈山市', '360800');
INSERT INTO `location` VALUES ('360900', '宜春市', '360000');
INSERT INTO `location` VALUES ('360902', '袁州区', '360900');
INSERT INTO `location` VALUES ('360921', '奉新县', '360900');
INSERT INTO `location` VALUES ('360922', '万载县', '360900');
INSERT INTO `location` VALUES ('360923', '上高县', '360900');
INSERT INTO `location` VALUES ('360924', '宜丰县', '360900');
INSERT INTO `location` VALUES ('360925', '靖安县', '360900');
INSERT INTO `location` VALUES ('360926', '铜鼓县', '360900');
INSERT INTO `location` VALUES ('360981', '丰城市', '360900');
INSERT INTO `location` VALUES ('360982', '樟树市', '360900');
INSERT INTO `location` VALUES ('360983', '高安市', '360900');
INSERT INTO `location` VALUES ('361000', '抚州市', '360000');
INSERT INTO `location` VALUES ('361002', '临川区', '361000');
INSERT INTO `location` VALUES ('361021', '南城县', '361000');
INSERT INTO `location` VALUES ('361022', '黎川县', '361000');
INSERT INTO `location` VALUES ('361023', '南丰县', '361000');
INSERT INTO `location` VALUES ('361024', '崇仁县', '361000');
INSERT INTO `location` VALUES ('361025', '乐安县', '361000');
INSERT INTO `location` VALUES ('361026', '宜黄县', '361000');
INSERT INTO `location` VALUES ('361027', '金溪县', '361000');
INSERT INTO `location` VALUES ('361028', '资溪县', '361000');
INSERT INTO `location` VALUES ('361029', '东乡县', '361000');
INSERT INTO `location` VALUES ('361030', '广昌县', '361000');
INSERT INTO `location` VALUES ('361100', '上饶市', '360000');
INSERT INTO `location` VALUES ('361102', '信州区', '361100');
INSERT INTO `location` VALUES ('361121', '上饶县', '361100');
INSERT INTO `location` VALUES ('361122', '广丰县', '361100');
INSERT INTO `location` VALUES ('361123', '玉山县', '361100');
INSERT INTO `location` VALUES ('361124', '铅山县', '361100');
INSERT INTO `location` VALUES ('361125', '横峰县', '361100');
INSERT INTO `location` VALUES ('361126', '弋阳县', '361100');
INSERT INTO `location` VALUES ('361127', '余干县', '361100');
INSERT INTO `location` VALUES ('361128', '鄱阳县', '361100');
INSERT INTO `location` VALUES ('361129', '万年县', '361100');
INSERT INTO `location` VALUES ('361130', '婺源县', '361100');
INSERT INTO `location` VALUES ('361181', '德兴市', '361100');
INSERT INTO `location` VALUES ('370000', '山东省', '0');
INSERT INTO `location` VALUES ('370100', '济南市', '370000');
INSERT INTO `location` VALUES ('370102', '历下区', '370100');
INSERT INTO `location` VALUES ('370103', '市中区', '370100');
INSERT INTO `location` VALUES ('370104', '槐荫区', '370100');
INSERT INTO `location` VALUES ('370105', '天桥区', '370100');
INSERT INTO `location` VALUES ('370112', '历城区', '370100');
INSERT INTO `location` VALUES ('370113', '长清区', '370100');
INSERT INTO `location` VALUES ('370124', '平阴县', '370100');
INSERT INTO `location` VALUES ('370125', '济阳县', '370100');
INSERT INTO `location` VALUES ('370126', '商河县', '370100');
INSERT INTO `location` VALUES ('370181', '章丘市', '370100');
INSERT INTO `location` VALUES ('370200', '青岛市', '370000');
INSERT INTO `location` VALUES ('370202', '市南区', '370200');
INSERT INTO `location` VALUES ('370203', '市北区', '370200');
INSERT INTO `location` VALUES ('370205', '四方区', '370200');
INSERT INTO `location` VALUES ('370211', '黄岛区', '370200');
INSERT INTO `location` VALUES ('370212', '崂山区', '370200');
INSERT INTO `location` VALUES ('370213', '李沧区', '370200');
INSERT INTO `location` VALUES ('370214', '城阳区', '370200');
INSERT INTO `location` VALUES ('370281', '胶州市', '370200');
INSERT INTO `location` VALUES ('370282', '即墨市', '370200');
INSERT INTO `location` VALUES ('370283', '平度市', '370200');
INSERT INTO `location` VALUES ('370284', '胶南市', '370200');
INSERT INTO `location` VALUES ('370285', '莱西市', '370200');
INSERT INTO `location` VALUES ('370300', '淄博市', '370000');
INSERT INTO `location` VALUES ('370302', '淄川区', '370300');
INSERT INTO `location` VALUES ('370303', '张店区', '370300');
INSERT INTO `location` VALUES ('370304', '博山区', '370300');
INSERT INTO `location` VALUES ('370305', '临淄区', '370300');
INSERT INTO `location` VALUES ('370306', '周村区', '370300');
INSERT INTO `location` VALUES ('370321', '桓台县', '370300');
INSERT INTO `location` VALUES ('370322', '高青县', '370300');
INSERT INTO `location` VALUES ('370323', '沂源县', '370300');
INSERT INTO `location` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `location` VALUES ('370402', '市中区', '370400');
INSERT INTO `location` VALUES ('370403', '薛城区', '370400');
INSERT INTO `location` VALUES ('370404', '峄城区', '370400');
INSERT INTO `location` VALUES ('370405', '台儿庄区', '370400');
INSERT INTO `location` VALUES ('370406', '山亭区', '370400');
INSERT INTO `location` VALUES ('370481', '滕州市', '370400');
INSERT INTO `location` VALUES ('370500', '东营市', '370000');
INSERT INTO `location` VALUES ('370502', '东营区', '370500');
INSERT INTO `location` VALUES ('370503', '河口区', '370500');
INSERT INTO `location` VALUES ('370521', '垦利县', '370500');
INSERT INTO `location` VALUES ('370522', '利津县', '370500');
INSERT INTO `location` VALUES ('370523', '广饶县', '370500');
INSERT INTO `location` VALUES ('370600', '烟台市', '370000');
INSERT INTO `location` VALUES ('370602', '芝罘区', '370600');
INSERT INTO `location` VALUES ('370611', '福山区', '370600');
INSERT INTO `location` VALUES ('370612', '牟平区', '370600');
INSERT INTO `location` VALUES ('370613', '莱山区', '370600');
INSERT INTO `location` VALUES ('370634', '长岛县', '370600');
INSERT INTO `location` VALUES ('370681', '龙口市', '370600');
INSERT INTO `location` VALUES ('370682', '莱阳市', '370600');
INSERT INTO `location` VALUES ('370683', '莱州市', '370600');
INSERT INTO `location` VALUES ('370684', '蓬莱市', '370600');
INSERT INTO `location` VALUES ('370685', '招远市', '370600');
INSERT INTO `location` VALUES ('370686', '栖霞市', '370600');
INSERT INTO `location` VALUES ('370687', '海阳市', '370600');
INSERT INTO `location` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `location` VALUES ('370702', '潍城区', '370700');
INSERT INTO `location` VALUES ('370703', '寒亭区', '370700');
INSERT INTO `location` VALUES ('370704', '坊子区', '370700');
INSERT INTO `location` VALUES ('370705', '奎文区', '370700');
INSERT INTO `location` VALUES ('370724', '临朐县', '370700');
INSERT INTO `location` VALUES ('370725', '昌乐县', '370700');
INSERT INTO `location` VALUES ('370781', '青州市', '370700');
INSERT INTO `location` VALUES ('370782', '诸城市', '370700');
INSERT INTO `location` VALUES ('370783', '寿光市', '370700');
INSERT INTO `location` VALUES ('370784', '安丘市', '370700');
INSERT INTO `location` VALUES ('370785', '高密市', '370700');
INSERT INTO `location` VALUES ('370786', '昌邑市', '370700');
INSERT INTO `location` VALUES ('370800', '济宁市', '370000');
INSERT INTO `location` VALUES ('370802', '市中区', '370800');
INSERT INTO `location` VALUES ('370811', '任城区', '370800');
INSERT INTO `location` VALUES ('370826', '微山县', '370800');
INSERT INTO `location` VALUES ('370827', '鱼台县', '370800');
INSERT INTO `location` VALUES ('370828', '金乡县', '370800');
INSERT INTO `location` VALUES ('370829', '嘉祥县', '370800');
INSERT INTO `location` VALUES ('370830', '汶上县', '370800');
INSERT INTO `location` VALUES ('370831', '泗水县', '370800');
INSERT INTO `location` VALUES ('370832', '梁山县', '370800');
INSERT INTO `location` VALUES ('370881', '曲阜市', '370800');
INSERT INTO `location` VALUES ('370882', '兖州市', '370800');
INSERT INTO `location` VALUES ('370883', '邹城市', '370800');
INSERT INTO `location` VALUES ('370900', '泰安市', '370000');
INSERT INTO `location` VALUES ('370901', '岱岳区', '370900');
INSERT INTO `location` VALUES ('370902', '泰山区', '370900');
INSERT INTO `location` VALUES ('370921', '宁阳县', '370900');
INSERT INTO `location` VALUES ('370923', '东平县', '370900');
INSERT INTO `location` VALUES ('370982', '新泰市', '370900');
INSERT INTO `location` VALUES ('370983', '肥城市', '370900');
INSERT INTO `location` VALUES ('371000', '威海市', '370000');
INSERT INTO `location` VALUES ('371002', '环翠区', '371000');
INSERT INTO `location` VALUES ('371081', '文登市', '371000');
INSERT INTO `location` VALUES ('371082', '荣成市', '371000');
INSERT INTO `location` VALUES ('371083', '乳山市', '371000');
INSERT INTO `location` VALUES ('371100', '日照市', '370000');
INSERT INTO `location` VALUES ('371102', '东港区', '371100');
INSERT INTO `location` VALUES ('371103', '岚山区', '371100');
INSERT INTO `location` VALUES ('371121', '五莲县', '371100');
INSERT INTO `location` VALUES ('371122', '莒县', '371100');
INSERT INTO `location` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `location` VALUES ('371202', '莱城区', '371200');
INSERT INTO `location` VALUES ('371203', '钢城区', '371200');
INSERT INTO `location` VALUES ('371300', '临沂市', '370000');
INSERT INTO `location` VALUES ('371302', '兰山区', '371300');
INSERT INTO `location` VALUES ('371311', '罗庄区', '371300');
INSERT INTO `location` VALUES ('371312', '河东区', '371300');
INSERT INTO `location` VALUES ('371321', '沂南县', '371300');
INSERT INTO `location` VALUES ('371322', '郯城县', '371300');
INSERT INTO `location` VALUES ('371323', '沂水县', '371300');
INSERT INTO `location` VALUES ('371324', '苍山县', '371300');
INSERT INTO `location` VALUES ('371325', '费县', '371300');
INSERT INTO `location` VALUES ('371326', '平邑县', '371300');
INSERT INTO `location` VALUES ('371327', '莒南县', '371300');
INSERT INTO `location` VALUES ('371328', '蒙阴县', '371300');
INSERT INTO `location` VALUES ('371329', '临沭县', '371300');
INSERT INTO `location` VALUES ('371400', '德州市', '370000');
INSERT INTO `location` VALUES ('371402', '德城区', '371400');
INSERT INTO `location` VALUES ('371421', '陵县', '371400');
INSERT INTO `location` VALUES ('371422', '宁津县', '371400');
INSERT INTO `location` VALUES ('371423', '庆云县', '371400');
INSERT INTO `location` VALUES ('371424', '临邑县', '371400');
INSERT INTO `location` VALUES ('371425', '齐河县', '371400');
INSERT INTO `location` VALUES ('371426', '平原县', '371400');
INSERT INTO `location` VALUES ('371427', '夏津县', '371400');
INSERT INTO `location` VALUES ('371428', '武城县', '371400');
INSERT INTO `location` VALUES ('371481', '乐陵市', '371400');
INSERT INTO `location` VALUES ('371482', '禹城市', '371400');
INSERT INTO `location` VALUES ('371500', '聊城市', '370000');
INSERT INTO `location` VALUES ('371502', '东昌府区', '371500');
INSERT INTO `location` VALUES ('371521', '阳谷县', '371500');
INSERT INTO `location` VALUES ('371522', '莘县', '371500');
INSERT INTO `location` VALUES ('371523', '茌平县', '371500');
INSERT INTO `location` VALUES ('371524', '东阿县', '371500');
INSERT INTO `location` VALUES ('371525', '冠县', '371500');
INSERT INTO `location` VALUES ('371526', '高唐县', '371500');
INSERT INTO `location` VALUES ('371581', '临清市', '371500');
INSERT INTO `location` VALUES ('371600', '滨州市', '370000');
INSERT INTO `location` VALUES ('371602', '滨城区', '371600');
INSERT INTO `location` VALUES ('371621', '惠民县', '371600');
INSERT INTO `location` VALUES ('371622', '阳信县', '371600');
INSERT INTO `location` VALUES ('371623', '无棣县', '371600');
INSERT INTO `location` VALUES ('371624', '沾化县', '371600');
INSERT INTO `location` VALUES ('371625', '博兴县', '371600');
INSERT INTO `location` VALUES ('371626', '邹平县', '371600');
INSERT INTO `location` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `location` VALUES ('371702', '牡丹区', '371700');
INSERT INTO `location` VALUES ('371721', '曹县', '371700');
INSERT INTO `location` VALUES ('371722', '单县', '371700');
INSERT INTO `location` VALUES ('371723', '成武县', '371700');
INSERT INTO `location` VALUES ('371724', '巨野县', '371700');
INSERT INTO `location` VALUES ('371725', '郓城县', '371700');
INSERT INTO `location` VALUES ('371726', '鄄城县', '371700');
INSERT INTO `location` VALUES ('371727', '定陶县', '371700');
INSERT INTO `location` VALUES ('371728', '东明县', '371700');
INSERT INTO `location` VALUES ('410000', '河南省', '0');
INSERT INTO `location` VALUES ('410100', '郑州市', '410000');
INSERT INTO `location` VALUES ('410101', '金水区', '410100');
INSERT INTO `location` VALUES ('410102', '中原区', '410100');
INSERT INTO `location` VALUES ('410103', '二七区', '410100');
INSERT INTO `location` VALUES ('410104', '管城回族区', '410100');
INSERT INTO `location` VALUES ('410106', '上街区', '410100');
INSERT INTO `location` VALUES ('410108', '惠济区', '410100');
INSERT INTO `location` VALUES ('410122', '中牟县', '410100');
INSERT INTO `location` VALUES ('410181', '巩义市', '410100');
INSERT INTO `location` VALUES ('410182', '荥阳市', '410100');
INSERT INTO `location` VALUES ('410183', '新密市', '410100');
INSERT INTO `location` VALUES ('410184', '新郑市', '410100');
INSERT INTO `location` VALUES ('410185', '登封市', '410100');
INSERT INTO `location` VALUES ('410200', '开封市', '410000');
INSERT INTO `location` VALUES ('410202', '龙亭区', '410200');
INSERT INTO `location` VALUES ('410203', '顺河回族区', '410200');
INSERT INTO `location` VALUES ('410204', '鼓楼区', '410200');
INSERT INTO `location` VALUES ('410205', '禹王台区', '410200');
INSERT INTO `location` VALUES ('410211', '金明区', '410200');
INSERT INTO `location` VALUES ('410221', '杞县', '410200');
INSERT INTO `location` VALUES ('410222', '通许县', '410200');
INSERT INTO `location` VALUES ('410223', '尉氏县', '410200');
INSERT INTO `location` VALUES ('410224', '开封县', '410200');
INSERT INTO `location` VALUES ('410225', '兰考县', '410200');
INSERT INTO `location` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `location` VALUES ('410302', '老城区', '410300');
INSERT INTO `location` VALUES ('410303', '西工区', '410300');
INSERT INTO `location` VALUES ('410304', '廛河回族区', '410300');
INSERT INTO `location` VALUES ('410305', '涧西区', '410300');
INSERT INTO `location` VALUES ('410306', '吉利区', '410300');
INSERT INTO `location` VALUES ('410307', '洛龙区', '410300');
INSERT INTO `location` VALUES ('410322', '孟津县', '410300');
INSERT INTO `location` VALUES ('410323', '新安县', '410300');
INSERT INTO `location` VALUES ('410324', '栾川县', '410300');
INSERT INTO `location` VALUES ('410325', '嵩县', '410300');
INSERT INTO `location` VALUES ('410326', '汝阳县', '410300');
INSERT INTO `location` VALUES ('410327', '宜阳县', '410300');
INSERT INTO `location` VALUES ('410328', '洛宁县', '410300');
INSERT INTO `location` VALUES ('410329', '伊川县', '410300');
INSERT INTO `location` VALUES ('410381', '偃师市', '410300');
INSERT INTO `location` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `location` VALUES ('410402', '新华区', '410400');
INSERT INTO `location` VALUES ('410403', '卫东区', '410400');
INSERT INTO `location` VALUES ('410404', '石龙区', '410400');
INSERT INTO `location` VALUES ('410411', '湛河区', '410400');
INSERT INTO `location` VALUES ('410421', '宝丰县', '410400');
INSERT INTO `location` VALUES ('410422', '叶县', '410400');
INSERT INTO `location` VALUES ('410423', '鲁山县', '410400');
INSERT INTO `location` VALUES ('410425', '郏县', '410400');
INSERT INTO `location` VALUES ('410481', '舞钢市', '410400');
INSERT INTO `location` VALUES ('410482', '汝州市', '410400');
INSERT INTO `location` VALUES ('410500', '安阳市', '410000');
INSERT INTO `location` VALUES ('410502', '文峰区', '410500');
INSERT INTO `location` VALUES ('410503', '北关区', '410500');
INSERT INTO `location` VALUES ('410505', '殷都区', '410500');
INSERT INTO `location` VALUES ('410506', '龙安区', '410500');
INSERT INTO `location` VALUES ('410522', '安阳县', '410500');
INSERT INTO `location` VALUES ('410523', '汤阴县', '410500');
INSERT INTO `location` VALUES ('410526', '滑县', '410500');
INSERT INTO `location` VALUES ('410527', '内黄县', '410500');
INSERT INTO `location` VALUES ('410581', '林州市', '410500');
INSERT INTO `location` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `location` VALUES ('410602', '鹤山区', '410600');
INSERT INTO `location` VALUES ('410603', '山城区', '410600');
INSERT INTO `location` VALUES ('410611', '淇滨区', '410600');
INSERT INTO `location` VALUES ('410621', '浚县', '410600');
INSERT INTO `location` VALUES ('410622', '淇县', '410600');
INSERT INTO `location` VALUES ('410700', '新乡市', '410000');
INSERT INTO `location` VALUES ('410702', '红旗区', '410700');
INSERT INTO `location` VALUES ('410703', '卫滨区', '410700');
INSERT INTO `location` VALUES ('410704', '凤泉区', '410700');
INSERT INTO `location` VALUES ('410711', '牧野区', '410700');
INSERT INTO `location` VALUES ('410721', '新乡县', '410700');
INSERT INTO `location` VALUES ('410724', '获嘉县', '410700');
INSERT INTO `location` VALUES ('410725', '原阳县', '410700');
INSERT INTO `location` VALUES ('410726', '延津县', '410700');
INSERT INTO `location` VALUES ('410727', '封丘县', '410700');
INSERT INTO `location` VALUES ('410728', '长垣县', '410700');
INSERT INTO `location` VALUES ('410781', '卫辉市', '410700');
INSERT INTO `location` VALUES ('410782', '辉县市', '410700');
INSERT INTO `location` VALUES ('410800', '焦作市', '410000');
INSERT INTO `location` VALUES ('410802', '解放区', '410800');
INSERT INTO `location` VALUES ('410803', '中站区', '410800');
INSERT INTO `location` VALUES ('410804', '马村区', '410800');
INSERT INTO `location` VALUES ('410811', '山阳区', '410800');
INSERT INTO `location` VALUES ('410821', '修武县', '410800');
INSERT INTO `location` VALUES ('410822', '博爱县', '410800');
INSERT INTO `location` VALUES ('410823', '武陟县', '410800');
INSERT INTO `location` VALUES ('410825', '温县', '410800');
INSERT INTO `location` VALUES ('410882', '沁阳市', '410800');
INSERT INTO `location` VALUES ('410883', '孟州市', '410800');
INSERT INTO `location` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `location` VALUES ('410902', '华龙区', '410900');
INSERT INTO `location` VALUES ('410922', '清丰县', '410900');
INSERT INTO `location` VALUES ('410923', '南乐县', '410900');
INSERT INTO `location` VALUES ('410926', '范县', '410900');
INSERT INTO `location` VALUES ('410927', '台前县', '410900');
INSERT INTO `location` VALUES ('410928', '濮阳县', '410900');
INSERT INTO `location` VALUES ('411000', '许昌市', '410000');
INSERT INTO `location` VALUES ('411002', '魏都区', '411000');
INSERT INTO `location` VALUES ('411023', '许昌县', '411000');
INSERT INTO `location` VALUES ('411024', '鄢陵县', '411000');
INSERT INTO `location` VALUES ('411025', '襄城县', '411000');
INSERT INTO `location` VALUES ('411081', '禹州市', '411000');
INSERT INTO `location` VALUES ('411082', '长葛市', '411000');
INSERT INTO `location` VALUES ('411100', '漯河市', '410000');
INSERT INTO `location` VALUES ('411101', '召陵区', '411100');
INSERT INTO `location` VALUES ('411102', '源汇区', '411100');
INSERT INTO `location` VALUES ('411103', '郾城区', '411100');
INSERT INTO `location` VALUES ('411121', '舞阳县', '411100');
INSERT INTO `location` VALUES ('411122', '临颍县', '411100');
INSERT INTO `location` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `location` VALUES ('411202', '湖滨区', '411200');
INSERT INTO `location` VALUES ('411221', '渑池县', '411200');
INSERT INTO `location` VALUES ('411222', '陕县', '411200');
INSERT INTO `location` VALUES ('411224', '卢氏县', '411200');
INSERT INTO `location` VALUES ('411281', '义马市', '411200');
INSERT INTO `location` VALUES ('411282', '灵宝市', '411200');
INSERT INTO `location` VALUES ('411300', '南阳市', '410000');
INSERT INTO `location` VALUES ('411302', '宛城区', '411300');
INSERT INTO `location` VALUES ('411303', '卧龙区', '411300');
INSERT INTO `location` VALUES ('411321', '南召县', '411300');
INSERT INTO `location` VALUES ('411322', '方城县', '411300');
INSERT INTO `location` VALUES ('411323', '西峡县', '411300');
INSERT INTO `location` VALUES ('411324', '镇平县', '411300');
INSERT INTO `location` VALUES ('411325', '内乡县', '411300');
INSERT INTO `location` VALUES ('411326', '淅川县', '411300');
INSERT INTO `location` VALUES ('411327', '社旗县', '411300');
INSERT INTO `location` VALUES ('411328', '唐河县', '411300');
INSERT INTO `location` VALUES ('411329', '新野县', '411300');
INSERT INTO `location` VALUES ('411330', '桐柏县', '411300');
INSERT INTO `location` VALUES ('411381', '邓州市', '411300');
INSERT INTO `location` VALUES ('411400', '商丘市', '410000');
INSERT INTO `location` VALUES ('411402', '梁园区', '411400');
INSERT INTO `location` VALUES ('411403', '睢阳区', '411400');
INSERT INTO `location` VALUES ('411421', '民权县', '411400');
INSERT INTO `location` VALUES ('411422', '睢县', '411400');
INSERT INTO `location` VALUES ('411423', '宁陵县', '411400');
INSERT INTO `location` VALUES ('411424', '柘城县', '411400');
INSERT INTO `location` VALUES ('411425', '虞城县', '411400');
INSERT INTO `location` VALUES ('411426', '夏邑县', '411400');
INSERT INTO `location` VALUES ('411481', '永城市', '411400');
INSERT INTO `location` VALUES ('411482', '新区', '411400');
INSERT INTO `location` VALUES ('411500', '信阳市', '410000');
INSERT INTO `location` VALUES ('411502', '浉河区', '411500');
INSERT INTO `location` VALUES ('411503', '平桥区', '411500');
INSERT INTO `location` VALUES ('411521', '罗山县', '411500');
INSERT INTO `location` VALUES ('411522', '光山县', '411500');
INSERT INTO `location` VALUES ('411523', '新县', '411500');
INSERT INTO `location` VALUES ('411524', '商城县', '411500');
INSERT INTO `location` VALUES ('411525', '固始县', '411500');
INSERT INTO `location` VALUES ('411526', '潢川县', '411500');
INSERT INTO `location` VALUES ('411527', '淮滨县', '411500');
INSERT INTO `location` VALUES ('411528', '息县', '411500');
INSERT INTO `location` VALUES ('411600', '周口市', '410000');
INSERT INTO `location` VALUES ('411602', '川汇区', '411600');
INSERT INTO `location` VALUES ('411621', '扶沟县', '411600');
INSERT INTO `location` VALUES ('411622', '西华县', '411600');
INSERT INTO `location` VALUES ('411623', '商水县', '411600');
INSERT INTO `location` VALUES ('411624', '沈丘县', '411600');
INSERT INTO `location` VALUES ('411625', '郸城县', '411600');
INSERT INTO `location` VALUES ('411626', '淮阳县', '411600');
INSERT INTO `location` VALUES ('411627', '太康县', '411600');
INSERT INTO `location` VALUES ('411628', '鹿邑县', '411600');
INSERT INTO `location` VALUES ('411681', '项城市', '411600');
INSERT INTO `location` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `location` VALUES ('411702', '驿城区', '411700');
INSERT INTO `location` VALUES ('411721', '西平县', '411700');
INSERT INTO `location` VALUES ('411722', '上蔡县', '411700');
INSERT INTO `location` VALUES ('411723', '平舆县', '411700');
INSERT INTO `location` VALUES ('411724', '正阳县', '411700');
INSERT INTO `location` VALUES ('411725', '确山县', '411700');
INSERT INTO `location` VALUES ('411726', '泌阳县', '411700');
INSERT INTO `location` VALUES ('411727', '汝南县', '411700');
INSERT INTO `location` VALUES ('411728', '遂平县', '411700');
INSERT INTO `location` VALUES ('411729', '新蔡县', '411700');
INSERT INTO `location` VALUES ('411800', '济源市', '410000');
INSERT INTO `location` VALUES ('420000', '湖北省', '0');
INSERT INTO `location` VALUES ('420100', '武汉市', '420000');
INSERT INTO `location` VALUES ('420102', '江岸区', '420100');
INSERT INTO `location` VALUES ('420103', '江汉区', '420100');
INSERT INTO `location` VALUES ('420104', '硚口区', '420100');
INSERT INTO `location` VALUES ('420105', '汉阳区', '420100');
INSERT INTO `location` VALUES ('420106', '武昌区', '420100');
INSERT INTO `location` VALUES ('420107', '青山区', '420100');
INSERT INTO `location` VALUES ('420111', '洪山区', '420100');
INSERT INTO `location` VALUES ('420112', '东西湖区', '420100');
INSERT INTO `location` VALUES ('420113', '汉南区', '420100');
INSERT INTO `location` VALUES ('420114', '蔡甸区', '420100');
INSERT INTO `location` VALUES ('420115', '江夏区', '420100');
INSERT INTO `location` VALUES ('420116', '黄陂区', '420100');
INSERT INTO `location` VALUES ('420117', '新洲区', '420100');
INSERT INTO `location` VALUES ('420200', '黄石市', '420000');
INSERT INTO `location` VALUES ('420202', '黄石港区', '420200');
INSERT INTO `location` VALUES ('420203', '西塞山区', '420200');
INSERT INTO `location` VALUES ('420204', '下陆区', '420200');
INSERT INTO `location` VALUES ('420205', '铁山区', '420200');
INSERT INTO `location` VALUES ('420222', '阳新县', '420200');
INSERT INTO `location` VALUES ('420281', '大冶市', '420200');
INSERT INTO `location` VALUES ('420300', '十堰市', '420000');
INSERT INTO `location` VALUES ('420302', '茅箭区', '420300');
INSERT INTO `location` VALUES ('420303', '张湾区', '420300');
INSERT INTO `location` VALUES ('420321', '郧县', '420300');
INSERT INTO `location` VALUES ('420322', '郧西县', '420300');
INSERT INTO `location` VALUES ('420323', '竹山县', '420300');
INSERT INTO `location` VALUES ('420324', '竹溪县', '420300');
INSERT INTO `location` VALUES ('420325', '房县', '420300');
INSERT INTO `location` VALUES ('420381', '丹江口市', '420300');
INSERT INTO `location` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `location` VALUES ('420502', '西陵区', '420500');
INSERT INTO `location` VALUES ('420503', '伍家岗区', '420500');
INSERT INTO `location` VALUES ('420504', '点军区', '420500');
INSERT INTO `location` VALUES ('420505', '猇亭区', '420500');
INSERT INTO `location` VALUES ('420506', '夷陵区', '420500');
INSERT INTO `location` VALUES ('420525', '远安县', '420500');
INSERT INTO `location` VALUES ('420526', '兴山县', '420500');
INSERT INTO `location` VALUES ('420527', '秭归县', '420500');
INSERT INTO `location` VALUES ('420528', '长阳土家族自治县', '420500');
INSERT INTO `location` VALUES ('420529', '五峰土家族自治县', '420500');
INSERT INTO `location` VALUES ('420581', '宜都市', '420500');
INSERT INTO `location` VALUES ('420582', '当阳市', '420500');
INSERT INTO `location` VALUES ('420583', '枝江市', '420500');
INSERT INTO `location` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `location` VALUES ('420602', '襄城区', '420600');
INSERT INTO `location` VALUES ('420606', '樊城区', '420600');
INSERT INTO `location` VALUES ('420607', '襄州区', '420600');
INSERT INTO `location` VALUES ('420624', '南漳县', '420600');
INSERT INTO `location` VALUES ('420625', '谷城县', '420600');
INSERT INTO `location` VALUES ('420626', '保康县', '420600');
INSERT INTO `location` VALUES ('420682', '老河口市', '420600');
INSERT INTO `location` VALUES ('420683', '枣阳市', '420600');
INSERT INTO `location` VALUES ('420684', '宜城市', '420600');
INSERT INTO `location` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `location` VALUES ('420702', '梁子湖区', '420700');
INSERT INTO `location` VALUES ('420703', '华容区', '420700');
INSERT INTO `location` VALUES ('420704', '鄂城区', '420700');
INSERT INTO `location` VALUES ('420800', '荆门市', '420000');
INSERT INTO `location` VALUES ('420802', '东宝区', '420800');
INSERT INTO `location` VALUES ('420804', '掇刀区', '420800');
INSERT INTO `location` VALUES ('420821', '京山县', '420800');
INSERT INTO `location` VALUES ('420822', '沙洋县', '420800');
INSERT INTO `location` VALUES ('420881', '钟祥市', '420800');
INSERT INTO `location` VALUES ('420900', '孝感市', '420000');
INSERT INTO `location` VALUES ('420902', '孝南区', '420900');
INSERT INTO `location` VALUES ('420921', '孝昌县', '420900');
INSERT INTO `location` VALUES ('420922', '大悟县', '420900');
INSERT INTO `location` VALUES ('420923', '云梦县', '420900');
INSERT INTO `location` VALUES ('420981', '应城市', '420900');
INSERT INTO `location` VALUES ('420982', '安陆市', '420900');
INSERT INTO `location` VALUES ('420984', '汉川市', '420900');
INSERT INTO `location` VALUES ('421000', '荆州市', '420000');
INSERT INTO `location` VALUES ('421002', '沙市区', '421000');
INSERT INTO `location` VALUES ('421003', '荆州区', '421000');
INSERT INTO `location` VALUES ('421022', '公安县', '421000');
INSERT INTO `location` VALUES ('421023', '监利县', '421000');
INSERT INTO `location` VALUES ('421024', '江陵县', '421000');
INSERT INTO `location` VALUES ('421081', '石首市', '421000');
INSERT INTO `location` VALUES ('421083', '洪湖市', '421000');
INSERT INTO `location` VALUES ('421087', '松滋市', '421000');
INSERT INTO `location` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `location` VALUES ('421102', '黄州区', '421100');
INSERT INTO `location` VALUES ('421121', '团风县', '421100');
INSERT INTO `location` VALUES ('421122', '红安县', '421100');
INSERT INTO `location` VALUES ('421123', '罗田县', '421100');
INSERT INTO `location` VALUES ('421124', '英山县', '421100');
INSERT INTO `location` VALUES ('421125', '浠水县', '421100');
INSERT INTO `location` VALUES ('421126', '蕲春县', '421100');
INSERT INTO `location` VALUES ('421127', '黄梅县', '421100');
INSERT INTO `location` VALUES ('421181', '麻城市', '421100');
INSERT INTO `location` VALUES ('421182', '武穴市', '421100');
INSERT INTO `location` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `location` VALUES ('421202', '咸安区', '421200');
INSERT INTO `location` VALUES ('421221', '嘉鱼县', '421200');
INSERT INTO `location` VALUES ('421222', '通城县', '421200');
INSERT INTO `location` VALUES ('421223', '崇阳县', '421200');
INSERT INTO `location` VALUES ('421224', '通山县', '421200');
INSERT INTO `location` VALUES ('421281', '赤壁市', '421200');
INSERT INTO `location` VALUES ('421300', '随州市', '420000');
INSERT INTO `location` VALUES ('421302', '曾都区', '421300');
INSERT INTO `location` VALUES ('421381', '广水市', '421300');
INSERT INTO `location` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `location` VALUES ('422801', '恩施市', '422800');
INSERT INTO `location` VALUES ('422802', '利川市', '422800');
INSERT INTO `location` VALUES ('422822', '建始县', '422800');
INSERT INTO `location` VALUES ('422823', '巴东县', '422800');
INSERT INTO `location` VALUES ('422825', '宣恩县', '422800');
INSERT INTO `location` VALUES ('422826', '咸丰县', '422800');
INSERT INTO `location` VALUES ('422827', '来凤县', '422800');
INSERT INTO `location` VALUES ('422828', '鹤峰县', '422800');
INSERT INTO `location` VALUES ('429000', '省直辖行政单位', '420000');
INSERT INTO `location` VALUES ('429004', '仙桃市', '429000');
INSERT INTO `location` VALUES ('429005', '潜江市', '429000');
INSERT INTO `location` VALUES ('429006', '天门市', '429000');
INSERT INTO `location` VALUES ('429021', '神农架林区', '429000');
INSERT INTO `location` VALUES ('430000', '湖南省', '0');
INSERT INTO `location` VALUES ('430100', '长沙市', '430000');
INSERT INTO `location` VALUES ('430102', '芙蓉区', '430100');
INSERT INTO `location` VALUES ('430103', '天心区', '430100');
INSERT INTO `location` VALUES ('430104', '岳麓区', '430100');
INSERT INTO `location` VALUES ('430105', '开福区', '430100');
INSERT INTO `location` VALUES ('430111', '雨花区', '430100');
INSERT INTO `location` VALUES ('430121', '长沙县', '430100');
INSERT INTO `location` VALUES ('430122', '望城县', '430100');
INSERT INTO `location` VALUES ('430124', '宁乡县', '430100');
INSERT INTO `location` VALUES ('430181', '浏阳市', '430100');
INSERT INTO `location` VALUES ('430200', '株洲市', '430000');
INSERT INTO `location` VALUES ('430202', '荷塘区', '430200');
INSERT INTO `location` VALUES ('430203', '芦淞区', '430200');
INSERT INTO `location` VALUES ('430204', '石峰区', '430200');
INSERT INTO `location` VALUES ('430211', '天元区', '430200');
INSERT INTO `location` VALUES ('430221', '株洲县', '430200');
INSERT INTO `location` VALUES ('430223', '攸县', '430200');
INSERT INTO `location` VALUES ('430224', '茶陵县', '430200');
INSERT INTO `location` VALUES ('430225', '炎陵县', '430200');
INSERT INTO `location` VALUES ('430281', '醴陵市', '430200');
INSERT INTO `location` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `location` VALUES ('430302', '雨湖区', '430300');
INSERT INTO `location` VALUES ('430304', '岳塘区', '430300');
INSERT INTO `location` VALUES ('430321', '湘潭县', '430300');
INSERT INTO `location` VALUES ('430381', '湘乡市', '430300');
INSERT INTO `location` VALUES ('430382', '韶山市', '430300');
INSERT INTO `location` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `location` VALUES ('430405', '珠晖区', '430400');
INSERT INTO `location` VALUES ('430406', '雁峰区', '430400');
INSERT INTO `location` VALUES ('430407', '石鼓区', '430400');
INSERT INTO `location` VALUES ('430408', '蒸湘区', '430400');
INSERT INTO `location` VALUES ('430412', '南岳区', '430400');
INSERT INTO `location` VALUES ('430421', '衡阳县', '430400');
INSERT INTO `location` VALUES ('430422', '衡南县', '430400');
INSERT INTO `location` VALUES ('430423', '衡山县', '430400');
INSERT INTO `location` VALUES ('430424', '衡东县', '430400');
INSERT INTO `location` VALUES ('430426', '祁东县', '430400');
INSERT INTO `location` VALUES ('430481', '耒阳市', '430400');
INSERT INTO `location` VALUES ('430482', '常宁市', '430400');
INSERT INTO `location` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `location` VALUES ('430502', '双清区', '430500');
INSERT INTO `location` VALUES ('430503', '大祥区', '430500');
INSERT INTO `location` VALUES ('430511', '北塔区', '430500');
INSERT INTO `location` VALUES ('430521', '邵东县', '430500');
INSERT INTO `location` VALUES ('430522', '新邵县', '430500');
INSERT INTO `location` VALUES ('430523', '邵阳县', '430500');
INSERT INTO `location` VALUES ('430524', '隆回县', '430500');
INSERT INTO `location` VALUES ('430525', '洞口县', '430500');
INSERT INTO `location` VALUES ('430527', '绥宁县', '430500');
INSERT INTO `location` VALUES ('430528', '新宁县', '430500');
INSERT INTO `location` VALUES ('430529', '城步苗族自治县', '430500');
INSERT INTO `location` VALUES ('430581', '武冈市', '430500');
INSERT INTO `location` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `location` VALUES ('430602', '岳阳楼区', '430600');
INSERT INTO `location` VALUES ('430603', '云溪区', '430600');
INSERT INTO `location` VALUES ('430611', '君山区', '430600');
INSERT INTO `location` VALUES ('430621', '岳阳县', '430600');
INSERT INTO `location` VALUES ('430623', '华容县', '430600');
INSERT INTO `location` VALUES ('430624', '湘阴县', '430600');
INSERT INTO `location` VALUES ('430626', '平江县', '430600');
INSERT INTO `location` VALUES ('430681', '汨罗市', '430600');
INSERT INTO `location` VALUES ('430682', '临湘市', '430600');
INSERT INTO `location` VALUES ('430700', '常德市', '430000');
INSERT INTO `location` VALUES ('430702', '武陵区', '430700');
INSERT INTO `location` VALUES ('430703', '鼎城区', '430700');
INSERT INTO `location` VALUES ('430721', '安乡县', '430700');
INSERT INTO `location` VALUES ('430722', '汉寿县', '430700');
INSERT INTO `location` VALUES ('430723', '澧县', '430700');
INSERT INTO `location` VALUES ('430724', '临澧县', '430700');
INSERT INTO `location` VALUES ('430725', '桃源县', '430700');
INSERT INTO `location` VALUES ('430726', '石门县', '430700');
INSERT INTO `location` VALUES ('430781', '津市市', '430700');
INSERT INTO `location` VALUES ('430800', '张家界市', '430000');
INSERT INTO `location` VALUES ('430802', '永定区', '430800');
INSERT INTO `location` VALUES ('430811', '武陵源区', '430800');
INSERT INTO `location` VALUES ('430821', '慈利县', '430800');
INSERT INTO `location` VALUES ('430822', '桑植县', '430800');
INSERT INTO `location` VALUES ('430900', '益阳市', '430000');
INSERT INTO `location` VALUES ('430902', '资阳区', '430900');
INSERT INTO `location` VALUES ('430903', '赫山区', '430900');
INSERT INTO `location` VALUES ('430921', '南县', '430900');
INSERT INTO `location` VALUES ('430922', '桃江县', '430900');
INSERT INTO `location` VALUES ('430923', '安化县', '430900');
INSERT INTO `location` VALUES ('430981', '沅江市', '430900');
INSERT INTO `location` VALUES ('431000', '郴州市', '430000');
INSERT INTO `location` VALUES ('431002', '北湖区', '431000');
INSERT INTO `location` VALUES ('431003', '苏仙区', '431000');
INSERT INTO `location` VALUES ('431021', '桂阳县', '431000');
INSERT INTO `location` VALUES ('431022', '宜章县', '431000');
INSERT INTO `location` VALUES ('431023', '永兴县', '431000');
INSERT INTO `location` VALUES ('431024', '嘉禾县', '431000');
INSERT INTO `location` VALUES ('431025', '临武县', '431000');
INSERT INTO `location` VALUES ('431026', '汝城县', '431000');
INSERT INTO `location` VALUES ('431027', '桂东县', '431000');
INSERT INTO `location` VALUES ('431028', '安仁县', '431000');
INSERT INTO `location` VALUES ('431081', '资兴市', '431000');
INSERT INTO `location` VALUES ('431100', '永州市', '430000');
INSERT INTO `location` VALUES ('431102', '零陵区', '431100');
INSERT INTO `location` VALUES ('431103', '冷水滩区', '431100');
INSERT INTO `location` VALUES ('431121', '祁阳县', '431100');
INSERT INTO `location` VALUES ('431122', '东安县', '431100');
INSERT INTO `location` VALUES ('431123', '双牌县', '431100');
INSERT INTO `location` VALUES ('431124', '道县', '431100');
INSERT INTO `location` VALUES ('431125', '江永县', '431100');
INSERT INTO `location` VALUES ('431126', '宁远县', '431100');
INSERT INTO `location` VALUES ('431127', '蓝山县', '431100');
INSERT INTO `location` VALUES ('431128', '新田县', '431100');
INSERT INTO `location` VALUES ('431129', '江华瑶族自治县', '431100');
INSERT INTO `location` VALUES ('431200', '怀化市', '430000');
INSERT INTO `location` VALUES ('431202', '鹤城区', '431200');
INSERT INTO `location` VALUES ('431221', '中方县', '431200');
INSERT INTO `location` VALUES ('431222', '沅陵县', '431200');
INSERT INTO `location` VALUES ('431223', '辰溪县', '431200');
INSERT INTO `location` VALUES ('431224', '溆浦县', '431200');
INSERT INTO `location` VALUES ('431225', '会同县', '431200');
INSERT INTO `location` VALUES ('431226', '麻阳苗族自治县', '431200');
INSERT INTO `location` VALUES ('431227', '新晃侗族自治县', '431200');
INSERT INTO `location` VALUES ('431228', '芷江侗族自治县', '431200');
INSERT INTO `location` VALUES ('431229', '靖州苗族侗族自治县', '431200');
INSERT INTO `location` VALUES ('431230', '通道侗族自治县', '431200');
INSERT INTO `location` VALUES ('431281', '洪江市', '431200');
INSERT INTO `location` VALUES ('431300', '娄底市', '430000');
INSERT INTO `location` VALUES ('431302', '娄星区', '431300');
INSERT INTO `location` VALUES ('431321', '双峰县', '431300');
INSERT INTO `location` VALUES ('431322', '新化县', '431300');
INSERT INTO `location` VALUES ('431381', '冷水江市', '431300');
INSERT INTO `location` VALUES ('431382', '涟源市', '431300');
INSERT INTO `location` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `location` VALUES ('433101', '吉首市', '433100');
INSERT INTO `location` VALUES ('433122', '泸溪县', '433100');
INSERT INTO `location` VALUES ('433123', '凤凰县', '433100');
INSERT INTO `location` VALUES ('433124', '花垣县', '433100');
INSERT INTO `location` VALUES ('433125', '保靖县', '433100');
INSERT INTO `location` VALUES ('433126', '古丈县', '433100');
INSERT INTO `location` VALUES ('433127', '永顺县', '433100');
INSERT INTO `location` VALUES ('433130', '龙山县', '433100');
INSERT INTO `location` VALUES ('440000', '广东省', '0');
INSERT INTO `location` VALUES ('440100', '广州市', '440000');
INSERT INTO `location` VALUES ('440103', '荔湾区', '440100');
INSERT INTO `location` VALUES ('440104', '越秀区', '440100');
INSERT INTO `location` VALUES ('440105', '海珠区', '440100');
INSERT INTO `location` VALUES ('440106', '天河区', '440100');
INSERT INTO `location` VALUES ('440111', '白云区', '440100');
INSERT INTO `location` VALUES ('440112', '黄埔区', '440100');
INSERT INTO `location` VALUES ('440113', '番禺区', '440100');
INSERT INTO `location` VALUES ('440114', '花都区', '440100');
INSERT INTO `location` VALUES ('440115', '南沙区', '440100');
INSERT INTO `location` VALUES ('440116', '萝岗区', '440100');
INSERT INTO `location` VALUES ('440183', '增城市', '440100');
INSERT INTO `location` VALUES ('440184', '从化市', '440100');
INSERT INTO `location` VALUES ('440200', '韶关市', '440000');
INSERT INTO `location` VALUES ('440203', '武江区', '440200');
INSERT INTO `location` VALUES ('440204', '浈江区', '440200');
INSERT INTO `location` VALUES ('440205', '曲江区', '440200');
INSERT INTO `location` VALUES ('440222', '始兴县', '440200');
INSERT INTO `location` VALUES ('440224', '仁化县', '440200');
INSERT INTO `location` VALUES ('440229', '翁源县', '440200');
INSERT INTO `location` VALUES ('440232', '乳源瑶族自治县', '440200');
INSERT INTO `location` VALUES ('440233', '新丰县', '440200');
INSERT INTO `location` VALUES ('440281', '乐昌市', '440200');
INSERT INTO `location` VALUES ('440282', '南雄市', '440200');
INSERT INTO `location` VALUES ('440300', '深圳市', '440000');
INSERT INTO `location` VALUES ('440303', '罗湖区', '440300');
INSERT INTO `location` VALUES ('440304', '福田区', '440300');
INSERT INTO `location` VALUES ('440305', '南山区', '440300');
INSERT INTO `location` VALUES ('440306', '宝安区', '440300');
INSERT INTO `location` VALUES ('440307', '龙岗区', '440300');
INSERT INTO `location` VALUES ('440308', '盐田区', '440300');
INSERT INTO `location` VALUES ('440400', '珠海市', '440000');
INSERT INTO `location` VALUES ('440402', '香洲区', '440400');
INSERT INTO `location` VALUES ('440403', '斗门区', '440400');
INSERT INTO `location` VALUES ('440404', '金湾区', '440400');
INSERT INTO `location` VALUES ('440500', '汕头市', '440000');
INSERT INTO `location` VALUES ('440507', '龙湖区', '440500');
INSERT INTO `location` VALUES ('440511', '金平区', '440500');
INSERT INTO `location` VALUES ('440512', '濠江区', '440500');
INSERT INTO `location` VALUES ('440513', '潮阳区', '440500');
INSERT INTO `location` VALUES ('440514', '潮南区', '440500');
INSERT INTO `location` VALUES ('440515', '澄海区', '440500');
INSERT INTO `location` VALUES ('440523', '南澳县', '440500');
INSERT INTO `location` VALUES ('440600', '佛山市', '440000');
INSERT INTO `location` VALUES ('440604', '禅城区', '440600');
INSERT INTO `location` VALUES ('440605', '南海区', '440600');
INSERT INTO `location` VALUES ('440606', '顺德区', '440600');
INSERT INTO `location` VALUES ('440607', '三水区', '440600');
INSERT INTO `location` VALUES ('440608', '高明区', '440600');
INSERT INTO `location` VALUES ('440700', '江门市', '440000');
INSERT INTO `location` VALUES ('440703', '蓬江区', '440700');
INSERT INTO `location` VALUES ('440704', '江海区', '440700');
INSERT INTO `location` VALUES ('440705', '新会区', '440700');
INSERT INTO `location` VALUES ('440781', '台山市', '440700');
INSERT INTO `location` VALUES ('440783', '开平市', '440700');
INSERT INTO `location` VALUES ('440784', '鹤山市', '440700');
INSERT INTO `location` VALUES ('440785', '恩平市', '440700');
INSERT INTO `location` VALUES ('440800', '湛江市', '440000');
INSERT INTO `location` VALUES ('440802', '赤坎区', '440800');
INSERT INTO `location` VALUES ('440803', '霞山区', '440800');
INSERT INTO `location` VALUES ('440804', '坡头区', '440800');
INSERT INTO `location` VALUES ('440811', '麻章区', '440800');
INSERT INTO `location` VALUES ('440823', '遂溪县', '440800');
INSERT INTO `location` VALUES ('440825', '徐闻县', '440800');
INSERT INTO `location` VALUES ('440881', '廉江市', '440800');
INSERT INTO `location` VALUES ('440882', '雷州市', '440800');
INSERT INTO `location` VALUES ('440883', '吴川市', '440800');
INSERT INTO `location` VALUES ('440900', '茂名市', '440000');
INSERT INTO `location` VALUES ('440902', '茂南区', '440900');
INSERT INTO `location` VALUES ('440903', '茂港区', '440900');
INSERT INTO `location` VALUES ('440923', '电白县', '440900');
INSERT INTO `location` VALUES ('440981', '高州市', '440900');
INSERT INTO `location` VALUES ('440982', '化州市', '440900');
INSERT INTO `location` VALUES ('440983', '信宜市', '440900');
INSERT INTO `location` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `location` VALUES ('441202', '端州区', '441200');
INSERT INTO `location` VALUES ('441203', '鼎湖区', '441200');
INSERT INTO `location` VALUES ('441223', '广宁县', '441200');
INSERT INTO `location` VALUES ('441224', '怀集县', '441200');
INSERT INTO `location` VALUES ('441225', '封开县', '441200');
INSERT INTO `location` VALUES ('441226', '德庆县', '441200');
INSERT INTO `location` VALUES ('441283', '高要市', '441200');
INSERT INTO `location` VALUES ('441284', '四会市', '441200');
INSERT INTO `location` VALUES ('441300', '惠州市', '440000');
INSERT INTO `location` VALUES ('441302', '惠城区', '441300');
INSERT INTO `location` VALUES ('441303', '惠阳区', '441300');
INSERT INTO `location` VALUES ('441322', '博罗县', '441300');
INSERT INTO `location` VALUES ('441323', '惠东县', '441300');
INSERT INTO `location` VALUES ('441324', '龙门县', '441300');
INSERT INTO `location` VALUES ('441400', '梅州市', '440000');
INSERT INTO `location` VALUES ('441402', '梅江区', '441400');
INSERT INTO `location` VALUES ('441421', '梅县', '441400');
INSERT INTO `location` VALUES ('441422', '大埔县', '441400');
INSERT INTO `location` VALUES ('441423', '丰顺县', '441400');
INSERT INTO `location` VALUES ('441424', '五华县', '441400');
INSERT INTO `location` VALUES ('441426', '平远县', '441400');
INSERT INTO `location` VALUES ('441427', '蕉岭县', '441400');
INSERT INTO `location` VALUES ('441481', '兴宁市', '441400');
INSERT INTO `location` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `location` VALUES ('441502', '城区', '441500');
INSERT INTO `location` VALUES ('441521', '海丰县', '441500');
INSERT INTO `location` VALUES ('441523', '陆河县', '441500');
INSERT INTO `location` VALUES ('441581', '陆丰市', '441500');
INSERT INTO `location` VALUES ('441600', '河源市', '440000');
INSERT INTO `location` VALUES ('441602', '源城区', '441600');
INSERT INTO `location` VALUES ('441621', '紫金县', '441600');
INSERT INTO `location` VALUES ('441622', '龙川县', '441600');
INSERT INTO `location` VALUES ('441623', '连平县', '441600');
INSERT INTO `location` VALUES ('441624', '和平县', '441600');
INSERT INTO `location` VALUES ('441625', '东源县', '441600');
INSERT INTO `location` VALUES ('441700', '阳江市', '440000');
INSERT INTO `location` VALUES ('441702', '江城区', '441700');
INSERT INTO `location` VALUES ('441721', '阳西县', '441700');
INSERT INTO `location` VALUES ('441723', '阳东县', '441700');
INSERT INTO `location` VALUES ('441781', '阳春市', '441700');
INSERT INTO `location` VALUES ('441800', '清远市', '440000');
INSERT INTO `location` VALUES ('441802', '清城区', '441800');
INSERT INTO `location` VALUES ('441821', '佛冈县', '441800');
INSERT INTO `location` VALUES ('441823', '阳山县', '441800');
INSERT INTO `location` VALUES ('441825', '连山壮族瑶族自治县', '441800');
INSERT INTO `location` VALUES ('441826', '连南瑶族自治县', '441800');
INSERT INTO `location` VALUES ('441827', '清新县', '441800');
INSERT INTO `location` VALUES ('441881', '英德市', '441800');
INSERT INTO `location` VALUES ('441882', '连州市', '441800');
INSERT INTO `location` VALUES ('441900', '东莞市', '440000');
INSERT INTO `location` VALUES ('442000', '中山市', '440000');
INSERT INTO `location` VALUES ('445100', '潮州市', '440000');
INSERT INTO `location` VALUES ('445102', '湘桥区', '445100');
INSERT INTO `location` VALUES ('445121', '潮安区', '445100');
INSERT INTO `location` VALUES ('445122', '饶平县', '445100');
INSERT INTO `location` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `location` VALUES ('445202', '榕城区', '445200');
INSERT INTO `location` VALUES ('445221', '揭东县', '445200');
INSERT INTO `location` VALUES ('445222', '揭西县', '445200');
INSERT INTO `location` VALUES ('445224', '惠来县', '445200');
INSERT INTO `location` VALUES ('445281', '普宁市', '445200');
INSERT INTO `location` VALUES ('445300', '云浮市', '440000');
INSERT INTO `location` VALUES ('445302', '云城区', '445300');
INSERT INTO `location` VALUES ('445321', '新兴县', '445300');
INSERT INTO `location` VALUES ('445322', '郁南县', '445300');
INSERT INTO `location` VALUES ('445323', '云安县', '445300');
INSERT INTO `location` VALUES ('445381', '罗定市', '445300');
INSERT INTO `location` VALUES ('450000', '广西壮族自治区', '0');
INSERT INTO `location` VALUES ('450100', '南宁市', '450000');
INSERT INTO `location` VALUES ('450102', '兴宁区', '450100');
INSERT INTO `location` VALUES ('450103', '青秀区', '450100');
INSERT INTO `location` VALUES ('450105', '江南区', '450100');
INSERT INTO `location` VALUES ('450107', '西乡塘区', '450100');
INSERT INTO `location` VALUES ('450108', '良庆区', '450100');
INSERT INTO `location` VALUES ('450109', '邕宁区', '450100');
INSERT INTO `location` VALUES ('450122', '武鸣县', '450100');
INSERT INTO `location` VALUES ('450123', '隆安县', '450100');
INSERT INTO `location` VALUES ('450124', '马山县', '450100');
INSERT INTO `location` VALUES ('450125', '上林县', '450100');
INSERT INTO `location` VALUES ('450126', '宾阳县', '450100');
INSERT INTO `location` VALUES ('450127', '横县', '450100');
INSERT INTO `location` VALUES ('450200', '柳州市', '450000');
INSERT INTO `location` VALUES ('450202', '城中区', '450200');
INSERT INTO `location` VALUES ('450203', '鱼峰区', '450200');
INSERT INTO `location` VALUES ('450204', '柳南区', '450200');
INSERT INTO `location` VALUES ('450205', '柳北区', '450200');
INSERT INTO `location` VALUES ('450221', '柳江县', '450200');
INSERT INTO `location` VALUES ('450222', '柳城县', '450200');
INSERT INTO `location` VALUES ('450223', '鹿寨县', '450200');
INSERT INTO `location` VALUES ('450224', '融安县', '450200');
INSERT INTO `location` VALUES ('450225', '融水苗族自治县', '450200');
INSERT INTO `location` VALUES ('450226', '三江侗族自治县', '450200');
INSERT INTO `location` VALUES ('450300', '桂林市', '450000');
INSERT INTO `location` VALUES ('450302', '秀峰区', '450300');
INSERT INTO `location` VALUES ('450303', '叠彩区', '450300');
INSERT INTO `location` VALUES ('450304', '象山区', '450300');
INSERT INTO `location` VALUES ('450305', '七星区', '450300');
INSERT INTO `location` VALUES ('450311', '雁山区', '450300');
INSERT INTO `location` VALUES ('450321', '阳朔县', '450300');
INSERT INTO `location` VALUES ('450322', '临桂区', '450300');
INSERT INTO `location` VALUES ('450323', '灵川县', '450300');
INSERT INTO `location` VALUES ('450324', '全州县', '450300');
INSERT INTO `location` VALUES ('450325', '兴安县', '450300');
INSERT INTO `location` VALUES ('450326', '永福县', '450300');
INSERT INTO `location` VALUES ('450327', '灌阳县', '450300');
INSERT INTO `location` VALUES ('450328', '龙胜各族自治县', '450300');
INSERT INTO `location` VALUES ('450329', '资源县', '450300');
INSERT INTO `location` VALUES ('450330', '平乐县', '450300');
INSERT INTO `location` VALUES ('450331', '荔浦县', '450300');
INSERT INTO `location` VALUES ('450332', '恭城瑶族自治县', '450300');
INSERT INTO `location` VALUES ('450400', '梧州市', '450000');
INSERT INTO `location` VALUES ('450403', '万秀区', '450400');
INSERT INTO `location` VALUES ('450404', '蝶山区', '450400');
INSERT INTO `location` VALUES ('450405', '长洲区', '450400');
INSERT INTO `location` VALUES ('450421', '苍梧县', '450400');
INSERT INTO `location` VALUES ('450422', '藤县', '450400');
INSERT INTO `location` VALUES ('450423', '蒙山县', '450400');
INSERT INTO `location` VALUES ('450481', '岑溪市', '450400');
INSERT INTO `location` VALUES ('450500', '北海市', '450000');
INSERT INTO `location` VALUES ('450502', '海城区', '450500');
INSERT INTO `location` VALUES ('450503', '银海区', '450500');
INSERT INTO `location` VALUES ('450512', '铁山港区', '450500');
INSERT INTO `location` VALUES ('450521', '合浦县', '450500');
INSERT INTO `location` VALUES ('450600', '防城港市', '450000');
INSERT INTO `location` VALUES ('450602', '港口区', '450600');
INSERT INTO `location` VALUES ('450603', '防城区', '450600');
INSERT INTO `location` VALUES ('450621', '上思县', '450600');
INSERT INTO `location` VALUES ('450681', '东兴市', '450600');
INSERT INTO `location` VALUES ('450700', '钦州市', '450000');
INSERT INTO `location` VALUES ('450702', '钦南区', '450700');
INSERT INTO `location` VALUES ('450703', '钦北区', '450700');
INSERT INTO `location` VALUES ('450721', '灵山县', '450700');
INSERT INTO `location` VALUES ('450722', '浦北县', '450700');
INSERT INTO `location` VALUES ('450800', '贵港市', '450000');
INSERT INTO `location` VALUES ('450802', '港北区', '450800');
INSERT INTO `location` VALUES ('450803', '港南区', '450800');
INSERT INTO `location` VALUES ('450804', '覃塘区', '450800');
INSERT INTO `location` VALUES ('450821', '平南县', '450800');
INSERT INTO `location` VALUES ('450881', '桂平市', '450800');
INSERT INTO `location` VALUES ('450900', '玉林市', '450000');
INSERT INTO `location` VALUES ('450902', '玉州区', '450900');
INSERT INTO `location` VALUES ('450921', '容县', '450900');
INSERT INTO `location` VALUES ('450922', '陆川县', '450900');
INSERT INTO `location` VALUES ('450923', '博白县', '450900');
INSERT INTO `location` VALUES ('450924', '兴业县', '450900');
INSERT INTO `location` VALUES ('450981', '北流市', '450900');
INSERT INTO `location` VALUES ('451000', '百色市', '450000');
INSERT INTO `location` VALUES ('451002', '右江区', '451000');
INSERT INTO `location` VALUES ('451021', '田阳县', '451000');
INSERT INTO `location` VALUES ('451022', '田东县', '451000');
INSERT INTO `location` VALUES ('451023', '平果县', '451000');
INSERT INTO `location` VALUES ('451024', '德保县', '451000');
INSERT INTO `location` VALUES ('451025', '靖西县', '451000');
INSERT INTO `location` VALUES ('451026', '那坡县', '451000');
INSERT INTO `location` VALUES ('451027', '凌云县', '451000');
INSERT INTO `location` VALUES ('451028', '乐业县', '451000');
INSERT INTO `location` VALUES ('451029', '田林县', '451000');
INSERT INTO `location` VALUES ('451030', '西林县', '451000');
INSERT INTO `location` VALUES ('451031', '隆林各族自治县', '451000');
INSERT INTO `location` VALUES ('451100', '贺州市', '450000');
INSERT INTO `location` VALUES ('451102', '八步区', '451100');
INSERT INTO `location` VALUES ('451121', '昭平县', '451100');
INSERT INTO `location` VALUES ('451122', '钟山县', '451100');
INSERT INTO `location` VALUES ('451123', '富川瑶族自治县', '451100');
INSERT INTO `location` VALUES ('451200', '河池市', '450000');
INSERT INTO `location` VALUES ('451202', '金城江区', '451200');
INSERT INTO `location` VALUES ('451221', '南丹县', '451200');
INSERT INTO `location` VALUES ('451222', '天峨县', '451200');
INSERT INTO `location` VALUES ('451223', '凤山县', '451200');
INSERT INTO `location` VALUES ('451224', '东兰县', '451200');
INSERT INTO `location` VALUES ('451225', '罗城仫佬族自治县', '451200');
INSERT INTO `location` VALUES ('451226', '环江毛南族自治县', '451200');
INSERT INTO `location` VALUES ('451227', '巴马瑶族自治县', '451200');
INSERT INTO `location` VALUES ('451228', '都安瑶族自治县', '451200');
INSERT INTO `location` VALUES ('451229', '大化瑶族自治县', '451200');
INSERT INTO `location` VALUES ('451281', '宜州市', '451200');
INSERT INTO `location` VALUES ('451300', '来宾市', '450000');
INSERT INTO `location` VALUES ('451302', '兴宾区', '451300');
INSERT INTO `location` VALUES ('451321', '忻城县', '451300');
INSERT INTO `location` VALUES ('451322', '象州县', '451300');
INSERT INTO `location` VALUES ('451323', '武宣县', '451300');
INSERT INTO `location` VALUES ('451324', '金秀瑶族自治县', '451300');
INSERT INTO `location` VALUES ('451381', '合山市', '451300');
INSERT INTO `location` VALUES ('451400', '崇左市', '450000');
INSERT INTO `location` VALUES ('451402', '江洲区', '451400');
INSERT INTO `location` VALUES ('451421', '扶绥县', '451400');
INSERT INTO `location` VALUES ('451422', '宁明县', '451400');
INSERT INTO `location` VALUES ('451423', '龙州县', '451400');
INSERT INTO `location` VALUES ('451424', '大新县', '451400');
INSERT INTO `location` VALUES ('451425', '天等县', '451400');
INSERT INTO `location` VALUES ('451481', '凭祥市', '451400');
INSERT INTO `location` VALUES ('460000', '海南省', '0');
INSERT INTO `location` VALUES ('460100', '海口市', '460000');
INSERT INTO `location` VALUES ('460105', '秀英区', '460100');
INSERT INTO `location` VALUES ('460106', '龙华区', '460100');
INSERT INTO `location` VALUES ('460107', '琼山区', '460100');
INSERT INTO `location` VALUES ('460108', '美兰区', '460100');
INSERT INTO `location` VALUES ('460200', '三亚市', '460000');
INSERT INTO `location` VALUES ('469000', '省直辖县级行政单位', '460000');
INSERT INTO `location` VALUES ('469001', '五指山市', '469000');
INSERT INTO `location` VALUES ('469002', '琼海市', '469000');
INSERT INTO `location` VALUES ('469003', '儋州市', '469000');
INSERT INTO `location` VALUES ('469005', '文昌市', '469000');
INSERT INTO `location` VALUES ('469006', '万宁市', '469000');
INSERT INTO `location` VALUES ('469007', '东方市', '469000');
INSERT INTO `location` VALUES ('469025', '定安县', '469000');
INSERT INTO `location` VALUES ('469026', '屯昌县', '469000');
INSERT INTO `location` VALUES ('469027', '澄迈县', '469000');
INSERT INTO `location` VALUES ('469028', '临高县', '469000');
INSERT INTO `location` VALUES ('469030', '白沙黎族自治县', '469000');
INSERT INTO `location` VALUES ('469031', '昌江黎族自治县', '469000');
INSERT INTO `location` VALUES ('469033', '乐东黎族自治县', '469000');
INSERT INTO `location` VALUES ('469034', '陵水黎族自治县', '469000');
INSERT INTO `location` VALUES ('469035', '保亭黎族苗族自治县', '469000');
INSERT INTO `location` VALUES ('469036', '琼中黎族苗族自治县', '469000');
INSERT INTO `location` VALUES ('469037', '西沙群岛', '469000');
INSERT INTO `location` VALUES ('469038', '南沙群岛', '469000');
INSERT INTO `location` VALUES ('469039', '中沙群岛的岛礁及其海域', '469000');
INSERT INTO `location` VALUES ('500000', '重庆市', '0');
INSERT INTO `location` VALUES ('500100', '万州区', '500000');
INSERT INTO `location` VALUES ('500101', '万州区', '500100');
INSERT INTO `location` VALUES ('500200', '涪陵区', '500000');
INSERT INTO `location` VALUES ('500201', '涪陵区', '500200');
INSERT INTO `location` VALUES ('500300', '渝中区', '500000');
INSERT INTO `location` VALUES ('500301', '渝中区', '500300');
INSERT INTO `location` VALUES ('500400', '大渡口区', '500000');
INSERT INTO `location` VALUES ('500401', '大渡口区', '500400');
INSERT INTO `location` VALUES ('500500', '江北区', '500000');
INSERT INTO `location` VALUES ('500501', '江北区', '500500');
INSERT INTO `location` VALUES ('500600', '沙坪坝区', '500000');
INSERT INTO `location` VALUES ('500601', '沙坪坝区', '500600');
INSERT INTO `location` VALUES ('500700', '九龙坡区', '500000');
INSERT INTO `location` VALUES ('500701', '九龙坡区', '500700');
INSERT INTO `location` VALUES ('500800', '南岸区', '500000');
INSERT INTO `location` VALUES ('500801', '南岸区', '500800');
INSERT INTO `location` VALUES ('500900', '北碚区', '500000');
INSERT INTO `location` VALUES ('500901', '北碚区', '500900');
INSERT INTO `location` VALUES ('501000', '万盛区', '500000');
INSERT INTO `location` VALUES ('501001', '万盛区', '501000');
INSERT INTO `location` VALUES ('501100', '双桥区', '500000');
INSERT INTO `location` VALUES ('501101', '双桥区', '501100');
INSERT INTO `location` VALUES ('501200', '渝北区', '500000');
INSERT INTO `location` VALUES ('501201', '渝北区', '501200');
INSERT INTO `location` VALUES ('501300', '巴南区', '500000');
INSERT INTO `location` VALUES ('501301', '巴南区', '501300');
INSERT INTO `location` VALUES ('501400', '黔江区', '500000');
INSERT INTO `location` VALUES ('501401', '黔江区', '501400');
INSERT INTO `location` VALUES ('501500', '长寿区', '500000');
INSERT INTO `location` VALUES ('501501', '长寿区', '501500');
INSERT INTO `location` VALUES ('502200', '綦江区', '500000');
INSERT INTO `location` VALUES ('502201', '綦江区', '502200');
INSERT INTO `location` VALUES ('502300', '潼南县', '500000');
INSERT INTO `location` VALUES ('502301', '潼南县', '502300');
INSERT INTO `location` VALUES ('502400', '铜梁县', '500000');
INSERT INTO `location` VALUES ('502401', '铜梁县', '502400');
INSERT INTO `location` VALUES ('502500', '大足区', '500000');
INSERT INTO `location` VALUES ('502501', '大足区', '502500');
INSERT INTO `location` VALUES ('502600', '荣昌县', '500000');
INSERT INTO `location` VALUES ('502601', '荣昌县', '502600');
INSERT INTO `location` VALUES ('502700', '璧山县', '500000');
INSERT INTO `location` VALUES ('502701', '璧山县', '502700');
INSERT INTO `location` VALUES ('502800', '梁平县', '500000');
INSERT INTO `location` VALUES ('502801', '梁平县', '502800');
INSERT INTO `location` VALUES ('502900', '城口县', '500000');
INSERT INTO `location` VALUES ('502901', '城口县', '502900');
INSERT INTO `location` VALUES ('503000', '丰都县', '500000');
INSERT INTO `location` VALUES ('503001', '丰都县', '503000');
INSERT INTO `location` VALUES ('503100', '垫江县', '500000');
INSERT INTO `location` VALUES ('503101', '垫江县', '503100');
INSERT INTO `location` VALUES ('503200', '武隆县', '500000');
INSERT INTO `location` VALUES ('503201', '武隆县', '503200');
INSERT INTO `location` VALUES ('503300', '忠县', '500000');
INSERT INTO `location` VALUES ('503301', '忠县', '503300');
INSERT INTO `location` VALUES ('503400', '开县', '500000');
INSERT INTO `location` VALUES ('503401', '开县', '503400');
INSERT INTO `location` VALUES ('503500', '云阳县', '500000');
INSERT INTO `location` VALUES ('503501', '云阳县', '503500');
INSERT INTO `location` VALUES ('503600', '奉节县', '500000');
INSERT INTO `location` VALUES ('503601', '奉节县', '503600');
INSERT INTO `location` VALUES ('503700', '巫山县', '500000');
INSERT INTO `location` VALUES ('503701', '巫山县', '503700');
INSERT INTO `location` VALUES ('503800', '巫溪县', '500000');
INSERT INTO `location` VALUES ('503801', '巫溪县', '503800');
INSERT INTO `location` VALUES ('504000', '石柱县', '500000');
INSERT INTO `location` VALUES ('504001', '石柱县', '504000');
INSERT INTO `location` VALUES ('504100', '秀山县', '500000');
INSERT INTO `location` VALUES ('504101', '秀山县', '504100');
INSERT INTO `location` VALUES ('504200', '酉阳县', '500000');
INSERT INTO `location` VALUES ('504201', '酉阳县', '504200');
INSERT INTO `location` VALUES ('504300', '彭水县', '500000');
INSERT INTO `location` VALUES ('504301', '彭水县', '504300');
INSERT INTO `location` VALUES ('508100', '江津区', '500000');
INSERT INTO `location` VALUES ('508101', '江津区', '508100');
INSERT INTO `location` VALUES ('508200', '合川区', '500000');
INSERT INTO `location` VALUES ('508201', '合川区', '508200');
INSERT INTO `location` VALUES ('508300', '永川区', '500000');
INSERT INTO `location` VALUES ('508301', '永川区', '508300');
INSERT INTO `location` VALUES ('508400', '南川区', '500000');
INSERT INTO `location` VALUES ('508401', '南川区', '508400');
INSERT INTO `location` VALUES ('510000', '四川省', '0');
INSERT INTO `location` VALUES ('510100', '成都市', '510000');
INSERT INTO `location` VALUES ('510104', '锦江区', '510100');
INSERT INTO `location` VALUES ('510105', '青羊区', '510100');
INSERT INTO `location` VALUES ('510106', '金牛区', '510100');
INSERT INTO `location` VALUES ('510107', '武侯区', '510100');
INSERT INTO `location` VALUES ('510108', '成华区', '510100');
INSERT INTO `location` VALUES ('510112', '龙泉驿区', '510100');
INSERT INTO `location` VALUES ('510113', '青白江区', '510100');
INSERT INTO `location` VALUES ('510114', '新都区', '510100');
INSERT INTO `location` VALUES ('510115', '温江区', '510100');
INSERT INTO `location` VALUES ('510121', '金堂县', '510100');
INSERT INTO `location` VALUES ('510122', '双流县', '510100');
INSERT INTO `location` VALUES ('510124', '郫县', '510100');
INSERT INTO `location` VALUES ('510129', '大邑县', '510100');
INSERT INTO `location` VALUES ('510131', '蒲江县', '510100');
INSERT INTO `location` VALUES ('510132', '新津县', '510100');
INSERT INTO `location` VALUES ('510181', '都江堰市', '510100');
INSERT INTO `location` VALUES ('510182', '彭州市', '510100');
INSERT INTO `location` VALUES ('510183', '邛崃市', '510100');
INSERT INTO `location` VALUES ('510184', '崇州市', '510100');
INSERT INTO `location` VALUES ('510300', '自贡市', '510000');
INSERT INTO `location` VALUES ('510302', '自流井区', '510300');
INSERT INTO `location` VALUES ('510303', '贡井区', '510300');
INSERT INTO `location` VALUES ('510304', '大安区', '510300');
INSERT INTO `location` VALUES ('510311', '沿滩区', '510300');
INSERT INTO `location` VALUES ('510321', '荣县', '510300');
INSERT INTO `location` VALUES ('510322', '富顺县', '510300');
INSERT INTO `location` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `location` VALUES ('510402', '东区', '510400');
INSERT INTO `location` VALUES ('510403', '西区', '510400');
INSERT INTO `location` VALUES ('510411', '仁和区', '510400');
INSERT INTO `location` VALUES ('510421', '米易县', '510400');
INSERT INTO `location` VALUES ('510422', '盐边县', '510400');
INSERT INTO `location` VALUES ('510500', '泸州市', '510000');
INSERT INTO `location` VALUES ('510502', '江阳区', '510500');
INSERT INTO `location` VALUES ('510503', '纳溪区', '510500');
INSERT INTO `location` VALUES ('510504', '龙马潭区', '510500');
INSERT INTO `location` VALUES ('510521', '泸县', '510500');
INSERT INTO `location` VALUES ('510522', '合江县', '510500');
INSERT INTO `location` VALUES ('510524', '叙永县', '510500');
INSERT INTO `location` VALUES ('510525', '古蔺县', '510500');
INSERT INTO `location` VALUES ('510600', '德阳市', '510000');
INSERT INTO `location` VALUES ('510603', '旌阳区', '510600');
INSERT INTO `location` VALUES ('510623', '中江县', '510600');
INSERT INTO `location` VALUES ('510626', '罗江县', '510600');
INSERT INTO `location` VALUES ('510681', '广汉市', '510600');
INSERT INTO `location` VALUES ('510682', '什邡市', '510600');
INSERT INTO `location` VALUES ('510683', '绵竹市', '510600');
INSERT INTO `location` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `location` VALUES ('510703', '涪城区', '510700');
INSERT INTO `location` VALUES ('510704', '游仙区', '510700');
INSERT INTO `location` VALUES ('510722', '三台县', '510700');
INSERT INTO `location` VALUES ('510723', '盐亭县', '510700');
INSERT INTO `location` VALUES ('510724', '安县', '510700');
INSERT INTO `location` VALUES ('510725', '梓潼县', '510700');
INSERT INTO `location` VALUES ('510726', '北川羌族自治县', '510700');
INSERT INTO `location` VALUES ('510727', '平武县', '510700');
INSERT INTO `location` VALUES ('510781', '江油市', '510700');
INSERT INTO `location` VALUES ('510800', '广元市', '510000');
INSERT INTO `location` VALUES ('510802', '市中区', '510800');
INSERT INTO `location` VALUES ('510811', '元坝区', '510800');
INSERT INTO `location` VALUES ('510812', '朝天区', '510800');
INSERT INTO `location` VALUES ('510821', '旺苍县', '510800');
INSERT INTO `location` VALUES ('510822', '青川县', '510800');
INSERT INTO `location` VALUES ('510823', '剑阁县', '510800');
INSERT INTO `location` VALUES ('510824', '苍溪县', '510800');
INSERT INTO `location` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `location` VALUES ('510903', '船山区', '510900');
INSERT INTO `location` VALUES ('510904', '安居区', '510900');
INSERT INTO `location` VALUES ('510921', '蓬溪县', '510900');
INSERT INTO `location` VALUES ('510922', '射洪县', '510900');
INSERT INTO `location` VALUES ('510923', '大英县', '510900');
INSERT INTO `location` VALUES ('511000', '内江市', '510000');
INSERT INTO `location` VALUES ('511002', '市中区', '511000');
INSERT INTO `location` VALUES ('511011', '东兴区', '511000');
INSERT INTO `location` VALUES ('511024', '威远县', '511000');
INSERT INTO `location` VALUES ('511025', '资中县', '511000');
INSERT INTO `location` VALUES ('511028', '隆昌县', '511000');
INSERT INTO `location` VALUES ('511100', '乐山市', '510000');
INSERT INTO `location` VALUES ('511102', '市中区', '511100');
INSERT INTO `location` VALUES ('511111', '沙湾区', '511100');
INSERT INTO `location` VALUES ('511112', '五通桥区', '511100');
INSERT INTO `location` VALUES ('511113', '金口河区', '511100');
INSERT INTO `location` VALUES ('511123', '犍为县', '511100');
INSERT INTO `location` VALUES ('511124', '井研县', '511100');
INSERT INTO `location` VALUES ('511126', '夹江县', '511100');
INSERT INTO `location` VALUES ('511129', '沐川县', '511100');
INSERT INTO `location` VALUES ('511132', '峨边彝族自治县', '511100');
INSERT INTO `location` VALUES ('511133', '马边彝族自治县', '511100');
INSERT INTO `location` VALUES ('511181', '峨眉山市', '511100');
INSERT INTO `location` VALUES ('511300', '南充市', '510000');
INSERT INTO `location` VALUES ('511302', '顺庆区', '511300');
INSERT INTO `location` VALUES ('511303', '高坪区', '511300');
INSERT INTO `location` VALUES ('511304', '嘉陵区', '511300');
INSERT INTO `location` VALUES ('511321', '南部县', '511300');
INSERT INTO `location` VALUES ('511322', '营山县', '511300');
INSERT INTO `location` VALUES ('511323', '蓬安县', '511300');
INSERT INTO `location` VALUES ('511324', '仪陇县', '511300');
INSERT INTO `location` VALUES ('511325', '西充县', '511300');
INSERT INTO `location` VALUES ('511381', '阆中市', '511300');
INSERT INTO `location` VALUES ('511400', '眉山市', '510000');
INSERT INTO `location` VALUES ('511402', '东坡区', '511400');
INSERT INTO `location` VALUES ('511421', '仁寿县', '511400');
INSERT INTO `location` VALUES ('511422', '彭山县', '511400');
INSERT INTO `location` VALUES ('511423', '洪雅县', '511400');
INSERT INTO `location` VALUES ('511424', '丹棱县', '511400');
INSERT INTO `location` VALUES ('511425', '青神县', '511400');
INSERT INTO `location` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `location` VALUES ('511502', '翠屏区', '511500');
INSERT INTO `location` VALUES ('511521', '宜宾县', '511500');
INSERT INTO `location` VALUES ('511522', '南溪县', '511500');
INSERT INTO `location` VALUES ('511523', '江安县', '511500');
INSERT INTO `location` VALUES ('511524', '长宁县', '511500');
INSERT INTO `location` VALUES ('511525', '高县', '511500');
INSERT INTO `location` VALUES ('511526', '珙县', '511500');
INSERT INTO `location` VALUES ('511527', '筠连县', '511500');
INSERT INTO `location` VALUES ('511528', '兴文县', '511500');
INSERT INTO `location` VALUES ('511529', '屏山县', '511500');
INSERT INTO `location` VALUES ('511600', '广安市', '510000');
INSERT INTO `location` VALUES ('511602', '广安区', '511600');
INSERT INTO `location` VALUES ('511621', '岳池县', '511600');
INSERT INTO `location` VALUES ('511622', '武胜县', '511600');
INSERT INTO `location` VALUES ('511623', '邻水县', '511600');
INSERT INTO `location` VALUES ('511681', '华蓥市', '511600');
INSERT INTO `location` VALUES ('511682', '广安区', '511600');
INSERT INTO `location` VALUES ('511700', '达州市', '510000');
INSERT INTO `location` VALUES ('511702', '通川区', '511700');
INSERT INTO `location` VALUES ('511721', '达川区', '511700');
INSERT INTO `location` VALUES ('511722', '宣汉县', '511700');
INSERT INTO `location` VALUES ('511723', '开江县', '511700');
INSERT INTO `location` VALUES ('511724', '大竹县', '511700');
INSERT INTO `location` VALUES ('511725', '渠县', '511700');
INSERT INTO `location` VALUES ('511781', '万源市', '511700');
INSERT INTO `location` VALUES ('511800', '雅安市', '510000');
INSERT INTO `location` VALUES ('511801', '雨城区', '511800');
INSERT INTO `location` VALUES ('511802', '雨城区', '511801');
INSERT INTO `location` VALUES ('511821', '名山区', '511800');
INSERT INTO `location` VALUES ('511822', '荥经县', '511800');
INSERT INTO `location` VALUES ('511823', '汉源县', '511800');
INSERT INTO `location` VALUES ('511824', '石棉县', '511800');
INSERT INTO `location` VALUES ('511825', '天全县', '511800');
INSERT INTO `location` VALUES ('511826', '芦山县', '511800');
INSERT INTO `location` VALUES ('511827', '宝兴县', '511800');
INSERT INTO `location` VALUES ('511900', '巴中市', '510000');
INSERT INTO `location` VALUES ('511902', '巴州区', '511900');
INSERT INTO `location` VALUES ('511921', '通江县', '511900');
INSERT INTO `location` VALUES ('511922', '南江县', '511900');
INSERT INTO `location` VALUES ('511923', '平昌县', '511900');
INSERT INTO `location` VALUES ('512000', '资阳市', '510000');
INSERT INTO `location` VALUES ('512002', '雁江区', '512000');
INSERT INTO `location` VALUES ('512021', '安岳县', '512000');
INSERT INTO `location` VALUES ('512022', '乐至县', '512000');
INSERT INTO `location` VALUES ('512081', '简阳市', '512000');
INSERT INTO `location` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `location` VALUES ('513221', '汶川县', '513200');
INSERT INTO `location` VALUES ('513222', '理县', '513200');
INSERT INTO `location` VALUES ('513223', '茂县', '513200');
INSERT INTO `location` VALUES ('513224', '松潘县', '513200');
INSERT INTO `location` VALUES ('513225', '九寨沟县', '513200');
INSERT INTO `location` VALUES ('513226', '金川县', '513200');
INSERT INTO `location` VALUES ('513227', '小金县', '513200');
INSERT INTO `location` VALUES ('513228', '黑水县', '513200');
INSERT INTO `location` VALUES ('513229', '马尔康县', '513200');
INSERT INTO `location` VALUES ('513230', '壤塘县', '513200');
INSERT INTO `location` VALUES ('513231', '阿坝县', '513200');
INSERT INTO `location` VALUES ('513232', '若尔盖县', '513200');
INSERT INTO `location` VALUES ('513233', '红原县', '513200');
INSERT INTO `location` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `location` VALUES ('513321', '康定县', '513300');
INSERT INTO `location` VALUES ('513322', '泸定县', '513300');
INSERT INTO `location` VALUES ('513323', '丹巴县', '513300');
INSERT INTO `location` VALUES ('513324', '九龙县', '513300');
INSERT INTO `location` VALUES ('513325', '雅江县', '513300');
INSERT INTO `location` VALUES ('513326', '道孚县', '513300');
INSERT INTO `location` VALUES ('513327', '炉霍县', '513300');
INSERT INTO `location` VALUES ('513328', '甘孜县', '513300');
INSERT INTO `location` VALUES ('513329', '新龙县', '513300');
INSERT INTO `location` VALUES ('513330', '德格县', '513300');
INSERT INTO `location` VALUES ('513331', '白玉县', '513300');
INSERT INTO `location` VALUES ('513332', '石渠县', '513300');
INSERT INTO `location` VALUES ('513333', '色达县', '513300');
INSERT INTO `location` VALUES ('513334', '理塘县', '513300');
INSERT INTO `location` VALUES ('513335', '巴塘县', '513300');
INSERT INTO `location` VALUES ('513336', '乡城县', '513300');
INSERT INTO `location` VALUES ('513337', '稻城县', '513300');
INSERT INTO `location` VALUES ('513338', '得荣县', '513300');
INSERT INTO `location` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `location` VALUES ('513401', '西昌市', '513400');
INSERT INTO `location` VALUES ('513422', '木里藏族自治县', '513400');
INSERT INTO `location` VALUES ('513423', '盐源县', '513400');
INSERT INTO `location` VALUES ('513424', '德昌县', '513400');
INSERT INTO `location` VALUES ('513425', '会理县', '513400');
INSERT INTO `location` VALUES ('513426', '会东县', '513400');
INSERT INTO `location` VALUES ('513427', '宁南县', '513400');
INSERT INTO `location` VALUES ('513428', '普格县', '513400');
INSERT INTO `location` VALUES ('513429', '布拖县', '513400');
INSERT INTO `location` VALUES ('513430', '金阳县', '513400');
INSERT INTO `location` VALUES ('513431', '昭觉县', '513400');
INSERT INTO `location` VALUES ('513432', '喜德县', '513400');
INSERT INTO `location` VALUES ('513433', '冕宁县', '513400');
INSERT INTO `location` VALUES ('513434', '越西县', '513400');
INSERT INTO `location` VALUES ('513435', '甘洛县', '513400');
INSERT INTO `location` VALUES ('513436', '美姑县', '513400');
INSERT INTO `location` VALUES ('513437', '雷波县', '513400');
INSERT INTO `location` VALUES ('520000', '贵州省', '0');
INSERT INTO `location` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `location` VALUES ('520102', '南明区', '520100');
INSERT INTO `location` VALUES ('520103', '云岩区', '520100');
INSERT INTO `location` VALUES ('520111', '花溪区', '520100');
INSERT INTO `location` VALUES ('520112', '乌当区', '520100');
INSERT INTO `location` VALUES ('520113', '白云区', '520100');
INSERT INTO `location` VALUES ('520114', '小河区', '520100');
INSERT INTO `location` VALUES ('520121', '开阳县', '520100');
INSERT INTO `location` VALUES ('520122', '息烽县', '520100');
INSERT INTO `location` VALUES ('520123', '修文县', '520100');
INSERT INTO `location` VALUES ('520181', '清镇市', '520100');
INSERT INTO `location` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `location` VALUES ('520201', '钟山区', '520200');
INSERT INTO `location` VALUES ('520203', '六枝特区', '520200');
INSERT INTO `location` VALUES ('520221', '水城县', '520200');
INSERT INTO `location` VALUES ('520222', '盘县', '520200');
INSERT INTO `location` VALUES ('520300', '遵义市', '520000');
INSERT INTO `location` VALUES ('520302', '红花岗区', '520300');
INSERT INTO `location` VALUES ('520303', '汇川区', '520300');
INSERT INTO `location` VALUES ('520321', '遵义县', '520300');
INSERT INTO `location` VALUES ('520322', '桐梓县', '520300');
INSERT INTO `location` VALUES ('520323', '绥阳县', '520300');
INSERT INTO `location` VALUES ('520324', '正安县', '520300');
INSERT INTO `location` VALUES ('520325', '道真仡佬族苗族自治县', '520300');
INSERT INTO `location` VALUES ('520326', '务川仡佬族苗族自治县', '520300');
INSERT INTO `location` VALUES ('520327', '凤冈县', '520300');
INSERT INTO `location` VALUES ('520328', '湄潭县', '520300');
INSERT INTO `location` VALUES ('520329', '余庆县', '520300');
INSERT INTO `location` VALUES ('520330', '习水县', '520300');
INSERT INTO `location` VALUES ('520381', '赤水市', '520300');
INSERT INTO `location` VALUES ('520382', '仁怀市', '520300');
INSERT INTO `location` VALUES ('520400', '安顺市', '520000');
INSERT INTO `location` VALUES ('520402', '西秀区', '520400');
INSERT INTO `location` VALUES ('520421', '平坝县', '520400');
INSERT INTO `location` VALUES ('520422', '普定县', '520400');
INSERT INTO `location` VALUES ('520423', '镇宁布依族苗族自治县', '520400');
INSERT INTO `location` VALUES ('520424', '关岭布依族苗族自治县', '520400');
INSERT INTO `location` VALUES ('520425', '紫云苗族布依族自治县', '520400');
INSERT INTO `location` VALUES ('522200', '铜仁市', '520000');
INSERT INTO `location` VALUES ('522201', '碧江区', '522200');
INSERT INTO `location` VALUES ('522222', '江口县', '522200');
INSERT INTO `location` VALUES ('522223', '玉屏侗族自治县', '522200');
INSERT INTO `location` VALUES ('522224', '石阡县', '522200');
INSERT INTO `location` VALUES ('522225', '思南县', '522200');
INSERT INTO `location` VALUES ('522226', '印江土家族苗族自治县', '522200');
INSERT INTO `location` VALUES ('522227', '德江县', '522200');
INSERT INTO `location` VALUES ('522228', '沿河土家族自治县', '522200');
INSERT INTO `location` VALUES ('522229', '松桃苗族自治县', '522200');
INSERT INTO `location` VALUES ('522230', '万山区', '522200');
INSERT INTO `location` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `location` VALUES ('522301', '兴义市', '522300');
INSERT INTO `location` VALUES ('522322', '兴仁县', '522300');
INSERT INTO `location` VALUES ('522323', '普安县', '522300');
INSERT INTO `location` VALUES ('522324', '晴隆县', '522300');
INSERT INTO `location` VALUES ('522325', '贞丰县', '522300');
INSERT INTO `location` VALUES ('522326', '望谟县', '522300');
INSERT INTO `location` VALUES ('522327', '册亨县', '522300');
INSERT INTO `location` VALUES ('522328', '安龙县', '522300');
INSERT INTO `location` VALUES ('522400', '毕节市', '520000');
INSERT INTO `location` VALUES ('522401', '七星关区', '522400');
INSERT INTO `location` VALUES ('522422', '大方县', '522400');
INSERT INTO `location` VALUES ('522423', '黔西县', '522400');
INSERT INTO `location` VALUES ('522424', '金沙县', '522400');
INSERT INTO `location` VALUES ('522425', '织金县', '522400');
INSERT INTO `location` VALUES ('522426', '纳雍县', '522400');
INSERT INTO `location` VALUES ('522427', '威宁彝族回族苗族自治县', '522400');
INSERT INTO `location` VALUES ('522428', '赫章县', '522400');
INSERT INTO `location` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `location` VALUES ('522601', '凯里市', '522600');
INSERT INTO `location` VALUES ('522622', '黄平县', '522600');
INSERT INTO `location` VALUES ('522623', '施秉县', '522600');
INSERT INTO `location` VALUES ('522624', '三穗县', '522600');
INSERT INTO `location` VALUES ('522625', '镇远县', '522600');
INSERT INTO `location` VALUES ('522626', '岑巩县', '522600');
INSERT INTO `location` VALUES ('522627', '天柱县', '522600');
INSERT INTO `location` VALUES ('522628', '锦屏县', '522600');
INSERT INTO `location` VALUES ('522629', '剑河县', '522600');
INSERT INTO `location` VALUES ('522630', '台江县', '522600');
INSERT INTO `location` VALUES ('522631', '黎平县', '522600');
INSERT INTO `location` VALUES ('522632', '榕江县', '522600');
INSERT INTO `location` VALUES ('522633', '从江县', '522600');
INSERT INTO `location` VALUES ('522634', '雷山县', '522600');
INSERT INTO `location` VALUES ('522635', '麻江县', '522600');
INSERT INTO `location` VALUES ('522636', '丹寨县', '522600');
INSERT INTO `location` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `location` VALUES ('522701', '都匀市', '522700');
INSERT INTO `location` VALUES ('522702', '福泉市', '522700');
INSERT INTO `location` VALUES ('522722', '荔波县', '522700');
INSERT INTO `location` VALUES ('522723', '贵定县', '522700');
INSERT INTO `location` VALUES ('522725', '瓮安县', '522700');
INSERT INTO `location` VALUES ('522726', '独山县', '522700');
INSERT INTO `location` VALUES ('522727', '平塘县', '522700');
INSERT INTO `location` VALUES ('522728', '罗甸县', '522700');
INSERT INTO `location` VALUES ('522729', '长顺县', '522700');
INSERT INTO `location` VALUES ('522730', '龙里县', '522700');
INSERT INTO `location` VALUES ('522731', '惠水县', '522700');
INSERT INTO `location` VALUES ('522732', '三都水族自治县', '522700');
INSERT INTO `location` VALUES ('530000', '云南省', '0');
INSERT INTO `location` VALUES ('530100', '昆明市', '530000');
INSERT INTO `location` VALUES ('530102', '五华区', '530100');
INSERT INTO `location` VALUES ('530103', '盘龙区', '530100');
INSERT INTO `location` VALUES ('530111', '官渡区', '530100');
INSERT INTO `location` VALUES ('530112', '西山区', '530100');
INSERT INTO `location` VALUES ('530113', '东川区', '530100');
INSERT INTO `location` VALUES ('530121', '呈贡县', '530100');
INSERT INTO `location` VALUES ('530122', '晋宁县', '530100');
INSERT INTO `location` VALUES ('530124', '富民县', '530100');
INSERT INTO `location` VALUES ('530125', '宜良县', '530100');
INSERT INTO `location` VALUES ('530126', '石林彝族自治县', '530100');
INSERT INTO `location` VALUES ('530127', '嵩明县', '530100');
INSERT INTO `location` VALUES ('530128', '禄劝彝族苗族自治县', '530100');
INSERT INTO `location` VALUES ('530129', '寻甸回族彝族自治县', '530100');
INSERT INTO `location` VALUES ('530181', '安宁市', '530100');
INSERT INTO `location` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `location` VALUES ('530302', '麒麟区', '530300');
INSERT INTO `location` VALUES ('530321', '马龙县', '530300');
INSERT INTO `location` VALUES ('530322', '陆良县', '530300');
INSERT INTO `location` VALUES ('530323', '师宗县', '530300');
INSERT INTO `location` VALUES ('530324', '罗平县', '530300');
INSERT INTO `location` VALUES ('530325', '富源县', '530300');
INSERT INTO `location` VALUES ('530326', '会泽县', '530300');
INSERT INTO `location` VALUES ('530328', '沾益县', '530300');
INSERT INTO `location` VALUES ('530381', '宣威市', '530300');
INSERT INTO `location` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `location` VALUES ('530402', '红塔区', '530400');
INSERT INTO `location` VALUES ('530421', '江川县', '530400');
INSERT INTO `location` VALUES ('530422', '澄江县', '530400');
INSERT INTO `location` VALUES ('530423', '通海县', '530400');
INSERT INTO `location` VALUES ('530424', '华宁县', '530400');
INSERT INTO `location` VALUES ('530425', '易门县', '530400');
INSERT INTO `location` VALUES ('530426', '峨山彝族自治县', '530400');
INSERT INTO `location` VALUES ('530427', '新平彝族傣族自治县', '530400');
INSERT INTO `location` VALUES ('530428', '元江哈尼族彝族傣族自治县', '530400');
INSERT INTO `location` VALUES ('530500', '保山市', '530000');
INSERT INTO `location` VALUES ('530502', '隆阳区', '530500');
INSERT INTO `location` VALUES ('530521', '施甸县', '530500');
INSERT INTO `location` VALUES ('530522', '腾冲县', '530500');
INSERT INTO `location` VALUES ('530523', '龙陵县', '530500');
INSERT INTO `location` VALUES ('530524', '昌宁县', '530500');
INSERT INTO `location` VALUES ('530600', '昭通市', '530000');
INSERT INTO `location` VALUES ('530602', '昭阳区', '530600');
INSERT INTO `location` VALUES ('530621', '鲁甸县', '530600');
INSERT INTO `location` VALUES ('530622', '巧家县', '530600');
INSERT INTO `location` VALUES ('530623', '盐津县', '530600');
INSERT INTO `location` VALUES ('530624', '大关县', '530600');
INSERT INTO `location` VALUES ('530625', '永善县', '530600');
INSERT INTO `location` VALUES ('530626', '绥江县', '530600');
INSERT INTO `location` VALUES ('530627', '镇雄县', '530600');
INSERT INTO `location` VALUES ('530628', '彝良县', '530600');
INSERT INTO `location` VALUES ('530629', '威信县', '530600');
INSERT INTO `location` VALUES ('530630', '水富县', '530600');
INSERT INTO `location` VALUES ('530700', '丽江市', '530000');
INSERT INTO `location` VALUES ('530702', '古城区', '530700');
INSERT INTO `location` VALUES ('530721', '玉龙纳西族自治县', '530700');
INSERT INTO `location` VALUES ('530722', '永胜县', '530700');
INSERT INTO `location` VALUES ('530723', '华坪县', '530700');
INSERT INTO `location` VALUES ('530724', '宁蒗彝族自治县', '530700');
INSERT INTO `location` VALUES ('530800', '普洱市', '530000');
INSERT INTO `location` VALUES ('530802', '翠云区', '530800');
INSERT INTO `location` VALUES ('530821', '宁洱哈尼族彝族自治县', '530800');
INSERT INTO `location` VALUES ('530822', '墨江哈尼族自治县', '530800');
INSERT INTO `location` VALUES ('530823', '景东彝族自治县', '530800');
INSERT INTO `location` VALUES ('530824', '景谷傣族彝族自治县', '530800');
INSERT INTO `location` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县', '530800');
INSERT INTO `location` VALUES ('530826', '江城哈尼族彝族自治县', '530800');
INSERT INTO `location` VALUES ('530827', '孟连傣族拉祜族佤族自治县', '530800');
INSERT INTO `location` VALUES ('530828', '澜沧拉祜族自治县', '530800');
INSERT INTO `location` VALUES ('530829', '西盟佤族自治县', '530800');
INSERT INTO `location` VALUES ('530900', '临沧市', '530000');
INSERT INTO `location` VALUES ('530902', '临翔区', '530900');
INSERT INTO `location` VALUES ('530921', '凤庆县', '530900');
INSERT INTO `location` VALUES ('530922', '云县', '530900');
INSERT INTO `location` VALUES ('530923', '永德县', '530900');
INSERT INTO `location` VALUES ('530924', '镇康县', '530900');
INSERT INTO `location` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县', '530900');
INSERT INTO `location` VALUES ('530926', '耿马傣族佤族自治县', '530900');
INSERT INTO `location` VALUES ('530927', '沧源佤族自治县', '530900');
INSERT INTO `location` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `location` VALUES ('532301', '楚雄市', '532300');
INSERT INTO `location` VALUES ('532322', '双柏县', '532300');
INSERT INTO `location` VALUES ('532323', '牟定县', '532300');
INSERT INTO `location` VALUES ('532324', '南华县', '532300');
INSERT INTO `location` VALUES ('532325', '姚安县', '532300');
INSERT INTO `location` VALUES ('532326', '大姚县', '532300');
INSERT INTO `location` VALUES ('532327', '永仁县', '532300');
INSERT INTO `location` VALUES ('532328', '元谋县', '532300');
INSERT INTO `location` VALUES ('532329', '武定县', '532300');
INSERT INTO `location` VALUES ('532331', '禄丰县', '532300');
INSERT INTO `location` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `location` VALUES ('532501', '个旧市', '532500');
INSERT INTO `location` VALUES ('532502', '开远市', '532500');
INSERT INTO `location` VALUES ('532522', '蒙自市', '532500');
INSERT INTO `location` VALUES ('532523', '屏边苗族自治县', '532500');
INSERT INTO `location` VALUES ('532524', '建水县', '532500');
INSERT INTO `location` VALUES ('532525', '石屏县', '532500');
INSERT INTO `location` VALUES ('532526', '弥勒市', '532500');
INSERT INTO `location` VALUES ('532527', '泸西县', '532500');
INSERT INTO `location` VALUES ('532528', '元阳县', '532500');
INSERT INTO `location` VALUES ('532529', '红河县', '532500');
INSERT INTO `location` VALUES ('532530', '金平苗族瑶族傣族自治县', '532500');
INSERT INTO `location` VALUES ('532531', '绿春县', '532500');
INSERT INTO `location` VALUES ('532532', '河口瑶族自治县', '532500');
INSERT INTO `location` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `location` VALUES ('532621', '文山市', '532600');
INSERT INTO `location` VALUES ('532622', '砚山县', '532600');
INSERT INTO `location` VALUES ('532623', '西畴县', '532600');
INSERT INTO `location` VALUES ('532624', '麻栗坡县', '532600');
INSERT INTO `location` VALUES ('532625', '马关县', '532600');
INSERT INTO `location` VALUES ('532626', '丘北县', '532600');
INSERT INTO `location` VALUES ('532627', '广南县', '532600');
INSERT INTO `location` VALUES ('532628', '富宁县', '532600');
INSERT INTO `location` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `location` VALUES ('532801', '景洪市', '532800');
INSERT INTO `location` VALUES ('532822', '勐海县', '532800');
INSERT INTO `location` VALUES ('532823', '勐腊县', '532800');
INSERT INTO `location` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `location` VALUES ('532901', '大理市', '532900');
INSERT INTO `location` VALUES ('532922', '漾濞彝族自治县', '532900');
INSERT INTO `location` VALUES ('532923', '祥云县', '532900');
INSERT INTO `location` VALUES ('532924', '宾川县', '532900');
INSERT INTO `location` VALUES ('532925', '弥渡县', '532900');
INSERT INTO `location` VALUES ('532926', '南涧彝族自治县', '532900');
INSERT INTO `location` VALUES ('532927', '巍山彝族回族自治县', '532900');
INSERT INTO `location` VALUES ('532928', '永平县', '532900');
INSERT INTO `location` VALUES ('532929', '云龙县', '532900');
INSERT INTO `location` VALUES ('532930', '洱源县', '532900');
INSERT INTO `location` VALUES ('532931', '剑川县', '532900');
INSERT INTO `location` VALUES ('532932', '鹤庆县', '532900');
INSERT INTO `location` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `location` VALUES ('533102', '瑞丽市', '533100');
INSERT INTO `location` VALUES ('533103', '潞西市', '533100');
INSERT INTO `location` VALUES ('533122', '梁河县', '533100');
INSERT INTO `location` VALUES ('533123', '盈江县', '533100');
INSERT INTO `location` VALUES ('533124', '陇川县', '533100');
INSERT INTO `location` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `location` VALUES ('533321', '泸水县', '533300');
INSERT INTO `location` VALUES ('533323', '福贡县', '533300');
INSERT INTO `location` VALUES ('533324', '贡山独龙族怒族自治县', '533300');
INSERT INTO `location` VALUES ('533325', '兰坪白族普米族自治县', '533300');
INSERT INTO `location` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `location` VALUES ('533421', '香格里拉县', '533400');
INSERT INTO `location` VALUES ('533422', '德钦县', '533400');
INSERT INTO `location` VALUES ('533423', '维西傈僳族自治县', '533400');
INSERT INTO `location` VALUES ('540000', '西藏自治区', '0');
INSERT INTO `location` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `location` VALUES ('540102', '城关区', '540100');
INSERT INTO `location` VALUES ('540121', '林周县', '540100');
INSERT INTO `location` VALUES ('540122', '当雄县', '540100');
INSERT INTO `location` VALUES ('540123', '尼木县', '540100');
INSERT INTO `location` VALUES ('540124', '曲水县', '540100');
INSERT INTO `location` VALUES ('540125', '堆龙德庆县', '540100');
INSERT INTO `location` VALUES ('540126', '达孜县', '540100');
INSERT INTO `location` VALUES ('540127', '墨竹工卡县', '540100');
INSERT INTO `location` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `location` VALUES ('542121', '昌都县', '542100');
INSERT INTO `location` VALUES ('542122', '江达县', '542100');
INSERT INTO `location` VALUES ('542123', '贡觉县', '542100');
INSERT INTO `location` VALUES ('542124', '类乌齐县', '542100');
INSERT INTO `location` VALUES ('542125', '丁青县', '542100');
INSERT INTO `location` VALUES ('542126', '察雅县', '542100');
INSERT INTO `location` VALUES ('542127', '八宿县', '542100');
INSERT INTO `location` VALUES ('542128', '左贡县', '542100');
INSERT INTO `location` VALUES ('542129', '芒康县', '542100');
INSERT INTO `location` VALUES ('542132', '洛隆县', '542100');
INSERT INTO `location` VALUES ('542133', '边坝县', '542100');
INSERT INTO `location` VALUES ('542200', '山南地区', '540000');
INSERT INTO `location` VALUES ('542221', '乃东县', '542200');
INSERT INTO `location` VALUES ('542222', '扎囊县', '542200');
INSERT INTO `location` VALUES ('542223', '贡嘎县', '542200');
INSERT INTO `location` VALUES ('542224', '桑日县', '542200');
INSERT INTO `location` VALUES ('542225', '琼结县', '542200');
INSERT INTO `location` VALUES ('542226', '曲松县', '542200');
INSERT INTO `location` VALUES ('542227', '措美县', '542200');
INSERT INTO `location` VALUES ('542228', '洛扎县', '542200');
INSERT INTO `location` VALUES ('542229', '加查县', '542200');
INSERT INTO `location` VALUES ('542231', '隆子县', '542200');
INSERT INTO `location` VALUES ('542232', '错那县', '542200');
INSERT INTO `location` VALUES ('542233', '浪卡子县', '542200');
INSERT INTO `location` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `location` VALUES ('542301', '日喀则市', '542300');
INSERT INTO `location` VALUES ('542322', '南木林县', '542300');
INSERT INTO `location` VALUES ('542323', '江孜县', '542300');
INSERT INTO `location` VALUES ('542324', '定日县', '542300');
INSERT INTO `location` VALUES ('542325', '萨迦县', '542300');
INSERT INTO `location` VALUES ('542326', '拉孜县', '542300');
INSERT INTO `location` VALUES ('542327', '昂仁县', '542300');
INSERT INTO `location` VALUES ('542328', '谢通门县', '542300');
INSERT INTO `location` VALUES ('542329', '白朗县', '542300');
INSERT INTO `location` VALUES ('542330', '仁布县', '542300');
INSERT INTO `location` VALUES ('542331', '康马县', '542300');
INSERT INTO `location` VALUES ('542332', '定结县', '542300');
INSERT INTO `location` VALUES ('542333', '仲巴县', '542300');
INSERT INTO `location` VALUES ('542334', '亚东县', '542300');
INSERT INTO `location` VALUES ('542335', '吉隆县', '542300');
INSERT INTO `location` VALUES ('542336', '聂拉木县', '542300');
INSERT INTO `location` VALUES ('542337', '萨嘎县', '542300');
INSERT INTO `location` VALUES ('542338', '岗巴县', '542300');
INSERT INTO `location` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `location` VALUES ('542421', '那曲县', '542400');
INSERT INTO `location` VALUES ('542422', '嘉黎县', '542400');
INSERT INTO `location` VALUES ('542423', '比如县', '542400');
INSERT INTO `location` VALUES ('542424', '聂荣县', '542400');
INSERT INTO `location` VALUES ('542425', '安多县', '542400');
INSERT INTO `location` VALUES ('542426', '申扎县', '542400');
INSERT INTO `location` VALUES ('542427', '索县', '542400');
INSERT INTO `location` VALUES ('542428', '班戈县', '542400');
INSERT INTO `location` VALUES ('542429', '巴青县', '542400');
INSERT INTO `location` VALUES ('542430', '尼玛县', '542400');
INSERT INTO `location` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `location` VALUES ('542521', '普兰县', '542500');
INSERT INTO `location` VALUES ('542522', '札达县', '542500');
INSERT INTO `location` VALUES ('542523', '噶尔县', '542500');
INSERT INTO `location` VALUES ('542524', '日土县', '542500');
INSERT INTO `location` VALUES ('542525', '革吉县', '542500');
INSERT INTO `location` VALUES ('542526', '改则县', '542500');
INSERT INTO `location` VALUES ('542527', '措勤县', '542500');
INSERT INTO `location` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `location` VALUES ('542621', '林芝县', '542600');
INSERT INTO `location` VALUES ('542622', '工布江达县', '542600');
INSERT INTO `location` VALUES ('542623', '米林县', '542600');
INSERT INTO `location` VALUES ('542624', '墨脱县', '542600');
INSERT INTO `location` VALUES ('542625', '波密县', '542600');
INSERT INTO `location` VALUES ('542626', '察隅县', '542600');
INSERT INTO `location` VALUES ('542627', '朗县', '542600');
INSERT INTO `location` VALUES ('610000', '陕西省', '0');
INSERT INTO `location` VALUES ('610100', '西安市', '610000');
INSERT INTO `location` VALUES ('610101', '长安区', '610100');
INSERT INTO `location` VALUES ('610102', '新城区', '610100');
INSERT INTO `location` VALUES ('610103', '碑林区', '610100');
INSERT INTO `location` VALUES ('610104', '莲湖区', '610100');
INSERT INTO `location` VALUES ('610111', '灞桥区', '610100');
INSERT INTO `location` VALUES ('610112', '未央区', '610100');
INSERT INTO `location` VALUES ('610113', '雁塔区', '610100');
INSERT INTO `location` VALUES ('610114', '阎良区', '610100');
INSERT INTO `location` VALUES ('610115', '临潼区', '610100');
INSERT INTO `location` VALUES ('610122', '蓝田县', '610100');
INSERT INTO `location` VALUES ('610124', '周至县', '610100');
INSERT INTO `location` VALUES ('610125', '户县', '610100');
INSERT INTO `location` VALUES ('610126', '高陵县', '610100');
INSERT INTO `location` VALUES ('610200', '铜川市', '610000');
INSERT INTO `location` VALUES ('610202', '王益区', '610200');
INSERT INTO `location` VALUES ('610203', '印台区', '610200');
INSERT INTO `location` VALUES ('610204', '耀州区', '610200');
INSERT INTO `location` VALUES ('610222', '宜君县', '610200');
INSERT INTO `location` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `location` VALUES ('610302', '渭滨区', '610300');
INSERT INTO `location` VALUES ('610303', '金台区', '610300');
INSERT INTO `location` VALUES ('610304', '陈仓区', '610300');
INSERT INTO `location` VALUES ('610322', '凤翔县', '610300');
INSERT INTO `location` VALUES ('610323', '岐山县', '610300');
INSERT INTO `location` VALUES ('610324', '扶风县', '610300');
INSERT INTO `location` VALUES ('610326', '眉县', '610300');
INSERT INTO `location` VALUES ('610327', '陇县', '610300');
INSERT INTO `location` VALUES ('610328', '千阳县', '610300');
INSERT INTO `location` VALUES ('610329', '麟游县', '610300');
INSERT INTO `location` VALUES ('610330', '凤县', '610300');
INSERT INTO `location` VALUES ('610331', '太白县', '610300');
INSERT INTO `location` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `location` VALUES ('610402', '秦都区', '610400');
INSERT INTO `location` VALUES ('610404', '渭城区', '610400');
INSERT INTO `location` VALUES ('610422', '三原县', '610400');
INSERT INTO `location` VALUES ('610423', '泾阳县', '610400');
INSERT INTO `location` VALUES ('610424', '乾县', '610400');
INSERT INTO `location` VALUES ('610425', '礼泉县', '610400');
INSERT INTO `location` VALUES ('610426', '永寿县', '610400');
INSERT INTO `location` VALUES ('610427', '彬县', '610400');
INSERT INTO `location` VALUES ('610428', '长武县', '610400');
INSERT INTO `location` VALUES ('610429', '旬邑县', '610400');
INSERT INTO `location` VALUES ('610430', '淳化县', '610400');
INSERT INTO `location` VALUES ('610431', '武功县', '610400');
INSERT INTO `location` VALUES ('610481', '兴平市', '610400');
INSERT INTO `location` VALUES ('610500', '渭南市', '610000');
INSERT INTO `location` VALUES ('610502', '临渭区', '610500');
INSERT INTO `location` VALUES ('610521', '华县', '610500');
INSERT INTO `location` VALUES ('610522', '潼关县', '610500');
INSERT INTO `location` VALUES ('610523', '大荔县', '610500');
INSERT INTO `location` VALUES ('610524', '合阳县', '610500');
INSERT INTO `location` VALUES ('610525', '澄城县', '610500');
INSERT INTO `location` VALUES ('610526', '蒲城县', '610500');
INSERT INTO `location` VALUES ('610527', '白水县', '610500');
INSERT INTO `location` VALUES ('610528', '富平县', '610500');
INSERT INTO `location` VALUES ('610581', '韩城市', '610500');
INSERT INTO `location` VALUES ('610582', '华阴市', '610500');
INSERT INTO `location` VALUES ('610600', '延安市', '610000');
INSERT INTO `location` VALUES ('610602', '宝塔区', '610600');
INSERT INTO `location` VALUES ('610621', '延长县', '610600');
INSERT INTO `location` VALUES ('610622', '延川县', '610600');
INSERT INTO `location` VALUES ('610623', '子长县', '610600');
INSERT INTO `location` VALUES ('610624', '安塞县', '610600');
INSERT INTO `location` VALUES ('610625', '志丹县', '610600');
INSERT INTO `location` VALUES ('610626', '吴起县', '610600');
INSERT INTO `location` VALUES ('610627', '甘泉县', '610600');
INSERT INTO `location` VALUES ('610628', '富县', '610600');
INSERT INTO `location` VALUES ('610629', '洛川县', '610600');
INSERT INTO `location` VALUES ('610630', '宜川县', '610600');
INSERT INTO `location` VALUES ('610631', '黄龙县', '610600');
INSERT INTO `location` VALUES ('610632', '黄陵县', '610600');
INSERT INTO `location` VALUES ('610700', '汉中市', '610000');
INSERT INTO `location` VALUES ('610702', '汉台区', '610700');
INSERT INTO `location` VALUES ('610721', '南郑县', '610700');
INSERT INTO `location` VALUES ('610722', '城固县', '610700');
INSERT INTO `location` VALUES ('610723', '洋县', '610700');
INSERT INTO `location` VALUES ('610724', '西乡县', '610700');
INSERT INTO `location` VALUES ('610725', '勉县', '610700');
INSERT INTO `location` VALUES ('610726', '宁强县', '610700');
INSERT INTO `location` VALUES ('610727', '略阳县', '610700');
INSERT INTO `location` VALUES ('610728', '镇巴县', '610700');
INSERT INTO `location` VALUES ('610729', '留坝县', '610700');
INSERT INTO `location` VALUES ('610730', '佛坪县', '610700');
INSERT INTO `location` VALUES ('610800', '榆林市', '610000');
INSERT INTO `location` VALUES ('610802', '榆阳区', '610800');
INSERT INTO `location` VALUES ('610821', '神木县', '610800');
INSERT INTO `location` VALUES ('610822', '府谷县', '610800');
INSERT INTO `location` VALUES ('610823', '横山县', '610800');
INSERT INTO `location` VALUES ('610824', '靖边县', '610800');
INSERT INTO `location` VALUES ('610825', '定边县', '610800');
INSERT INTO `location` VALUES ('610826', '绥德县', '610800');
INSERT INTO `location` VALUES ('610827', '米脂县', '610800');
INSERT INTO `location` VALUES ('610828', '佳县', '610800');
INSERT INTO `location` VALUES ('610829', '吴堡县', '610800');
INSERT INTO `location` VALUES ('610830', '清涧县', '610800');
INSERT INTO `location` VALUES ('610831', '子洲县', '610800');
INSERT INTO `location` VALUES ('610900', '安康市', '610000');
INSERT INTO `location` VALUES ('610902', '汉滨区', '610900');
INSERT INTO `location` VALUES ('610921', '汉阴县', '610900');
INSERT INTO `location` VALUES ('610922', '石泉县', '610900');
INSERT INTO `location` VALUES ('610923', '宁陕县', '610900');
INSERT INTO `location` VALUES ('610924', '紫阳县', '610900');
INSERT INTO `location` VALUES ('610925', '岚皋县', '610900');
INSERT INTO `location` VALUES ('610926', '平利县', '610900');
INSERT INTO `location` VALUES ('610927', '镇坪县', '610900');
INSERT INTO `location` VALUES ('610928', '旬阳县', '610900');
INSERT INTO `location` VALUES ('610929', '白河县', '610900');
INSERT INTO `location` VALUES ('611000', '商洛市', '610000');
INSERT INTO `location` VALUES ('611002', '商州区', '611000');
INSERT INTO `location` VALUES ('611021', '洛南县', '611000');
INSERT INTO `location` VALUES ('611022', '丹凤县', '611000');
INSERT INTO `location` VALUES ('611023', '商南县', '611000');
INSERT INTO `location` VALUES ('611024', '山阳县', '611000');
INSERT INTO `location` VALUES ('611025', '镇安县', '611000');
INSERT INTO `location` VALUES ('611026', '柞水县', '611000');
INSERT INTO `location` VALUES ('611100', '杨凌示范区', '610000');
INSERT INTO `location` VALUES ('611103', '杨凌区', '611100');
INSERT INTO `location` VALUES ('620000', '甘肃省', '0');
INSERT INTO `location` VALUES ('620100', '兰州市', '620000');
INSERT INTO `location` VALUES ('620102', '城关区', '620100');
INSERT INTO `location` VALUES ('620103', '七里河区', '620100');
INSERT INTO `location` VALUES ('620104', '西固区', '620100');
INSERT INTO `location` VALUES ('620105', '安宁区', '620100');
INSERT INTO `location` VALUES ('620111', '红古区', '620100');
INSERT INTO `location` VALUES ('620121', '永登县', '620100');
INSERT INTO `location` VALUES ('620122', '皋兰县', '620100');
INSERT INTO `location` VALUES ('620123', '榆中县', '620100');
INSERT INTO `location` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `location` VALUES ('620300', '金昌市', '620000');
INSERT INTO `location` VALUES ('620301', '金川区', '620300');
INSERT INTO `location` VALUES ('620321', '永昌县', '620300');
INSERT INTO `location` VALUES ('620400', '白银市', '620000');
INSERT INTO `location` VALUES ('620402', '白银区', '620400');
INSERT INTO `location` VALUES ('620403', '平川区', '620400');
INSERT INTO `location` VALUES ('620421', '靖远县', '620400');
INSERT INTO `location` VALUES ('620422', '会宁县', '620400');
INSERT INTO `location` VALUES ('620423', '景泰县', '620400');
INSERT INTO `location` VALUES ('620500', '天水市', '620000');
INSERT INTO `location` VALUES ('620501', '麦积区', '620500');
INSERT INTO `location` VALUES ('620502', '秦州区', '620500');
INSERT INTO `location` VALUES ('620521', '清水县', '620500');
INSERT INTO `location` VALUES ('620522', '秦安县', '620500');
INSERT INTO `location` VALUES ('620523', '甘谷县', '620500');
INSERT INTO `location` VALUES ('620524', '武山县', '620500');
INSERT INTO `location` VALUES ('620525', '张家川回族自治县', '620500');
INSERT INTO `location` VALUES ('620600', '武威市', '620000');
INSERT INTO `location` VALUES ('620602', '凉州区', '620600');
INSERT INTO `location` VALUES ('620621', '民勤县', '620600');
INSERT INTO `location` VALUES ('620622', '古浪县', '620600');
INSERT INTO `location` VALUES ('620623', '天祝藏族自治县', '620600');
INSERT INTO `location` VALUES ('620700', '张掖市', '620000');
INSERT INTO `location` VALUES ('620702', '甘州区', '620700');
INSERT INTO `location` VALUES ('620721', '肃南裕固族自治县', '620700');
INSERT INTO `location` VALUES ('620722', '民乐县', '620700');
INSERT INTO `location` VALUES ('620723', '临泽县', '620700');
INSERT INTO `location` VALUES ('620724', '高台县', '620700');
INSERT INTO `location` VALUES ('620725', '山丹县', '620700');
INSERT INTO `location` VALUES ('620800', '平凉市', '620000');
INSERT INTO `location` VALUES ('620802', '崆峒区', '620800');
INSERT INTO `location` VALUES ('620821', '泾川县', '620800');
INSERT INTO `location` VALUES ('620822', '灵台县', '620800');
INSERT INTO `location` VALUES ('620823', '崇信县', '620800');
INSERT INTO `location` VALUES ('620824', '华亭县', '620800');
INSERT INTO `location` VALUES ('620825', '庄浪县', '620800');
INSERT INTO `location` VALUES ('620826', '静宁县', '620800');
INSERT INTO `location` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `location` VALUES ('620902', '肃州区', '620900');
INSERT INTO `location` VALUES ('620921', '金塔县', '620900');
INSERT INTO `location` VALUES ('620922', '瓜洲县', '620900');
INSERT INTO `location` VALUES ('620923', '肃北蒙古族自治县', '620900');
INSERT INTO `location` VALUES ('620924', '阿克塞哈萨克族自治县', '620900');
INSERT INTO `location` VALUES ('620981', '玉门市', '620900');
INSERT INTO `location` VALUES ('620982', '敦煌市', '620900');
INSERT INTO `location` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `location` VALUES ('621002', '西峰区', '621000');
INSERT INTO `location` VALUES ('621021', '庆城县', '621000');
INSERT INTO `location` VALUES ('621022', '环县', '621000');
INSERT INTO `location` VALUES ('621023', '华池县', '621000');
INSERT INTO `location` VALUES ('621024', '合水县', '621000');
INSERT INTO `location` VALUES ('621025', '正宁县', '621000');
INSERT INTO `location` VALUES ('621026', '宁县', '621000');
INSERT INTO `location` VALUES ('621027', '镇原县', '621000');
INSERT INTO `location` VALUES ('621100', '定西市', '620000');
INSERT INTO `location` VALUES ('621102', '安定区', '621100');
INSERT INTO `location` VALUES ('621121', '通渭县', '621100');
INSERT INTO `location` VALUES ('621122', '陇西县', '621100');
INSERT INTO `location` VALUES ('621123', '渭源县', '621100');
INSERT INTO `location` VALUES ('621124', '临洮县', '621100');
INSERT INTO `location` VALUES ('621125', '漳县', '621100');
INSERT INTO `location` VALUES ('621126', '岷县', '621100');
INSERT INTO `location` VALUES ('621200', '陇南市', '620000');
INSERT INTO `location` VALUES ('621201', '武都区', '621200');
INSERT INTO `location` VALUES ('621221', '成县', '621200');
INSERT INTO `location` VALUES ('621222', '文县', '621200');
INSERT INTO `location` VALUES ('621223', '宕昌县', '621200');
INSERT INTO `location` VALUES ('621224', '康县', '621200');
INSERT INTO `location` VALUES ('621225', '西和县', '621200');
INSERT INTO `location` VALUES ('621226', '礼县', '621200');
INSERT INTO `location` VALUES ('621227', '徽县', '621200');
INSERT INTO `location` VALUES ('621228', '两当县', '621200');
INSERT INTO `location` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `location` VALUES ('622901', '临夏市', '622900');
INSERT INTO `location` VALUES ('622921', '临夏县', '622900');
INSERT INTO `location` VALUES ('622922', '康乐县', '622900');
INSERT INTO `location` VALUES ('622923', '永靖县', '622900');
INSERT INTO `location` VALUES ('622924', '广河县', '622900');
INSERT INTO `location` VALUES ('622925', '和政县', '622900');
INSERT INTO `location` VALUES ('622926', '东乡族自治县', '622900');
INSERT INTO `location` VALUES ('622927', '积石山保安族东乡族撒拉族自治县', '622900');
INSERT INTO `location` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `location` VALUES ('623001', '合作市', '623000');
INSERT INTO `location` VALUES ('623021', '临潭县', '623000');
INSERT INTO `location` VALUES ('623022', '卓尼县', '623000');
INSERT INTO `location` VALUES ('623023', '舟曲县', '623000');
INSERT INTO `location` VALUES ('623024', '迭部县', '623000');
INSERT INTO `location` VALUES ('623025', '玛曲县', '623000');
INSERT INTO `location` VALUES ('623026', '碌曲县', '623000');
INSERT INTO `location` VALUES ('623027', '夏河县', '623000');
INSERT INTO `location` VALUES ('630000', '青海省', '0');
INSERT INTO `location` VALUES ('630100', '西宁市', '630000');
INSERT INTO `location` VALUES ('630102', '城东区', '630100');
INSERT INTO `location` VALUES ('630103', '城中区', '630100');
INSERT INTO `location` VALUES ('630104', '城西区', '630100');
INSERT INTO `location` VALUES ('630105', '城北区', '630100');
INSERT INTO `location` VALUES ('630121', '大通回族土族自治县', '630100');
INSERT INTO `location` VALUES ('630122', '湟中县', '630100');
INSERT INTO `location` VALUES ('630123', '湟源县', '630100');
INSERT INTO `location` VALUES ('632100', '海东市', '630000');
INSERT INTO `location` VALUES ('632121', '平安县', '632100');
INSERT INTO `location` VALUES ('632122', '民和回族土族自治县', '632100');
INSERT INTO `location` VALUES ('632123', '乐都区', '632100');
INSERT INTO `location` VALUES ('632126', '互助土族自治县', '632100');
INSERT INTO `location` VALUES ('632127', '化隆回族自治县', '632100');
INSERT INTO `location` VALUES ('632128', '循化撒拉族自治县', '632100');
INSERT INTO `location` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `location` VALUES ('632221', '门源回族自治县', '632200');
INSERT INTO `location` VALUES ('632222', '祁连县', '632200');
INSERT INTO `location` VALUES ('632223', '海晏县', '632200');
INSERT INTO `location` VALUES ('632224', '刚察县', '632200');
INSERT INTO `location` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `location` VALUES ('632321', '同仁县', '632300');
INSERT INTO `location` VALUES ('632322', '尖扎县', '632300');
INSERT INTO `location` VALUES ('632323', '泽库县', '632300');
INSERT INTO `location` VALUES ('632324', '河南蒙古族自治县', '632300');
INSERT INTO `location` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `location` VALUES ('632521', '共和县', '632500');
INSERT INTO `location` VALUES ('632522', '同德县', '632500');
INSERT INTO `location` VALUES ('632523', '贵德县', '632500');
INSERT INTO `location` VALUES ('632524', '兴海县', '632500');
INSERT INTO `location` VALUES ('632525', '贵南县', '632500');
INSERT INTO `location` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `location` VALUES ('632621', '玛沁县', '632600');
INSERT INTO `location` VALUES ('632622', '班玛县', '632600');
INSERT INTO `location` VALUES ('632623', '甘德县', '632600');
INSERT INTO `location` VALUES ('632624', '达日县', '632600');
INSERT INTO `location` VALUES ('632625', '久治县', '632600');
INSERT INTO `location` VALUES ('632626', '玛多县', '632600');
INSERT INTO `location` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `location` VALUES ('632721', '玉树县', '632700');
INSERT INTO `location` VALUES ('632722', '杂多县', '632700');
INSERT INTO `location` VALUES ('632723', '称多县', '632700');
INSERT INTO `location` VALUES ('632724', '治多县', '632700');
INSERT INTO `location` VALUES ('632725', '囊谦县', '632700');
INSERT INTO `location` VALUES ('632726', '曲麻莱县', '632700');
INSERT INTO `location` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `location` VALUES ('632801', '格尔木市', '632800');
INSERT INTO `location` VALUES ('632802', '德令哈市', '632800');
INSERT INTO `location` VALUES ('632821', '乌兰县', '632800');
INSERT INTO `location` VALUES ('632822', '都兰县', '632800');
INSERT INTO `location` VALUES ('632823', '天峻县', '632800');
INSERT INTO `location` VALUES ('640000', '宁夏回族自治区', '0');
INSERT INTO `location` VALUES ('640100', '银川市', '640000');
INSERT INTO `location` VALUES ('640104', '兴庆区', '640100');
INSERT INTO `location` VALUES ('640105', '西夏区', '640100');
INSERT INTO `location` VALUES ('640106', '金凤区', '640100');
INSERT INTO `location` VALUES ('640121', '永宁县', '640100');
INSERT INTO `location` VALUES ('640122', '贺兰县', '640100');
INSERT INTO `location` VALUES ('640181', '灵武市', '640100');
INSERT INTO `location` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `location` VALUES ('640202', '大武口区', '640200');
INSERT INTO `location` VALUES ('640205', '惠农县', '640200');
INSERT INTO `location` VALUES ('640221', '平罗县', '640200');
INSERT INTO `location` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `location` VALUES ('640301', '红寺堡区', '640300');
INSERT INTO `location` VALUES ('640302', '利通区', '640300');
INSERT INTO `location` VALUES ('640323', '盐池县', '640300');
INSERT INTO `location` VALUES ('640324', '同心县', '640300');
INSERT INTO `location` VALUES ('640381', '青铜峡市', '640300');
INSERT INTO `location` VALUES ('640400', '固原市', '640000');
INSERT INTO `location` VALUES ('640402', '原州区', '640400');
INSERT INTO `location` VALUES ('640422', '西吉县', '640400');
INSERT INTO `location` VALUES ('640423', '隆德县', '640400');
INSERT INTO `location` VALUES ('640424', '泾源县', '640400');
INSERT INTO `location` VALUES ('640425', '彭阳县', '640400');
INSERT INTO `location` VALUES ('640500', '中卫市', '640000');
INSERT INTO `location` VALUES ('640502', '沙坡头区', '640500');
INSERT INTO `location` VALUES ('640521', '中宁县', '640500');
INSERT INTO `location` VALUES ('640522', '海原县', '640500');
INSERT INTO `location` VALUES ('650000', '新疆维吾尔自治区', '0');
INSERT INTO `location` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `location` VALUES ('650102', '天山区', '650100');
INSERT INTO `location` VALUES ('650103', '沙依巴克区', '650100');
INSERT INTO `location` VALUES ('650104', '新市区', '650100');
INSERT INTO `location` VALUES ('650105', '水磨沟区', '650100');
INSERT INTO `location` VALUES ('650106', '头屯河区', '650100');
INSERT INTO `location` VALUES ('650107', '达坂城区', '650100');
INSERT INTO `location` VALUES ('650108', '东山区', '650100');
INSERT INTO `location` VALUES ('650121', '乌鲁木齐县', '650100');
INSERT INTO `location` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `location` VALUES ('650202', '独山子区', '650200');
INSERT INTO `location` VALUES ('650203', '克拉玛依区', '650200');
INSERT INTO `location` VALUES ('650204', '白碱滩区', '650200');
INSERT INTO `location` VALUES ('650205', '乌尔禾区', '650200');
INSERT INTO `location` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `location` VALUES ('652101', '吐鲁番市', '652100');
INSERT INTO `location` VALUES ('652122', '鄯善县', '652100');
INSERT INTO `location` VALUES ('652123', '托克逊县', '652100');
INSERT INTO `location` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `location` VALUES ('652201', '哈密市', '652200');
INSERT INTO `location` VALUES ('652222', '巴里坤哈萨克自治县', '652200');
INSERT INTO `location` VALUES ('652223', '伊吾县', '652200');
INSERT INTO `location` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `location` VALUES ('652301', '昌吉市', '652300');
INSERT INTO `location` VALUES ('652302', '阜康市', '652300');
INSERT INTO `location` VALUES ('652303', '米泉市', '652300');
INSERT INTO `location` VALUES ('652323', '呼图壁县', '652300');
INSERT INTO `location` VALUES ('652324', '玛纳斯县', '652300');
INSERT INTO `location` VALUES ('652325', '奇台县', '652300');
INSERT INTO `location` VALUES ('652327', '吉木萨尔县', '652300');
INSERT INTO `location` VALUES ('652328', '木垒哈萨克自治县', '652300');
INSERT INTO `location` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `location` VALUES ('652701', '博乐市', '652700');
INSERT INTO `location` VALUES ('652722', '精河县', '652700');
INSERT INTO `location` VALUES ('652723', '温泉县', '652700');
INSERT INTO `location` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `location` VALUES ('652801', '库尔勒市', '652800');
INSERT INTO `location` VALUES ('652822', '轮台县', '652800');
INSERT INTO `location` VALUES ('652823', '尉犁县', '652800');
INSERT INTO `location` VALUES ('652824', '若羌县', '652800');
INSERT INTO `location` VALUES ('652825', '且末县', '652800');
INSERT INTO `location` VALUES ('652826', '焉耆回族自治县', '652800');
INSERT INTO `location` VALUES ('652827', '和静县', '652800');
INSERT INTO `location` VALUES ('652828', '和硕县', '652800');
INSERT INTO `location` VALUES ('652829', '博湖县', '652800');
INSERT INTO `location` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `location` VALUES ('652901', '阿克苏市', '652900');
INSERT INTO `location` VALUES ('652922', '温宿县', '652900');
INSERT INTO `location` VALUES ('652923', '库车县', '652900');
INSERT INTO `location` VALUES ('652924', '沙雅县', '652900');
INSERT INTO `location` VALUES ('652925', '新和县', '652900');
INSERT INTO `location` VALUES ('652926', '拜城县', '652900');
INSERT INTO `location` VALUES ('652927', '乌什县', '652900');
INSERT INTO `location` VALUES ('652928', '阿瓦提县', '652900');
INSERT INTO `location` VALUES ('652929', '柯坪县', '652900');
INSERT INTO `location` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `location` VALUES ('653001', '阿图什市', '653000');
INSERT INTO `location` VALUES ('653022', '阿克陶县', '653000');
INSERT INTO `location` VALUES ('653023', '阿合奇县', '653000');
INSERT INTO `location` VALUES ('653024', '乌恰县', '653000');
INSERT INTO `location` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `location` VALUES ('653101', '喀什市', '653100');
INSERT INTO `location` VALUES ('653121', '疏附县', '653100');
INSERT INTO `location` VALUES ('653122', '疏勒县', '653100');
INSERT INTO `location` VALUES ('653123', '英吉沙县', '653100');
INSERT INTO `location` VALUES ('653124', '泽普县', '653100');
INSERT INTO `location` VALUES ('653125', '莎车县', '653100');
INSERT INTO `location` VALUES ('653126', '叶城县', '653100');
INSERT INTO `location` VALUES ('653127', '麦盖提县', '653100');
INSERT INTO `location` VALUES ('653128', '岳普湖县', '653100');
INSERT INTO `location` VALUES ('653129', '伽师县', '653100');
INSERT INTO `location` VALUES ('653130', '巴楚县', '653100');
INSERT INTO `location` VALUES ('653131', '塔什库尔干塔吉克自治县', '653100');
INSERT INTO `location` VALUES ('653200', '和田地区', '650000');
INSERT INTO `location` VALUES ('653201', '和田市', '653200');
INSERT INTO `location` VALUES ('653221', '和田县', '653200');
INSERT INTO `location` VALUES ('653222', '墨玉县', '653200');
INSERT INTO `location` VALUES ('653223', '皮山县', '653200');
INSERT INTO `location` VALUES ('653224', '洛浦县', '653200');
INSERT INTO `location` VALUES ('653225', '策勒县', '653200');
INSERT INTO `location` VALUES ('653226', '于田县', '653200');
INSERT INTO `location` VALUES ('653227', '民丰县', '653200');
INSERT INTO `location` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `location` VALUES ('654002', '伊宁市', '654000');
INSERT INTO `location` VALUES ('654003', '奎屯市', '654000');
INSERT INTO `location` VALUES ('654021', '伊宁县', '654000');
INSERT INTO `location` VALUES ('654022', '察布查尔锡伯自治县', '654000');
INSERT INTO `location` VALUES ('654023', '霍城县', '654000');
INSERT INTO `location` VALUES ('654024', '巩留县', '654000');
INSERT INTO `location` VALUES ('654025', '新源县', '654000');
INSERT INTO `location` VALUES ('654026', '昭苏县', '654000');
INSERT INTO `location` VALUES ('654027', '特克斯县', '654000');
INSERT INTO `location` VALUES ('654028', '尼勒克县', '654000');
INSERT INTO `location` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `location` VALUES ('654201', '塔城市', '654200');
INSERT INTO `location` VALUES ('654202', '乌苏市', '654200');
INSERT INTO `location` VALUES ('654221', '额敏县', '654200');
INSERT INTO `location` VALUES ('654223', '沙湾县', '654200');
INSERT INTO `location` VALUES ('654224', '托里县', '654200');
INSERT INTO `location` VALUES ('654225', '裕民县', '654200');
INSERT INTO `location` VALUES ('654226', '和布克赛尔蒙古自治县', '654200');
INSERT INTO `location` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `location` VALUES ('654301', '阿勒泰市', '654300');
INSERT INTO `location` VALUES ('654321', '布尔津县', '654300');
INSERT INTO `location` VALUES ('654322', '富蕴县', '654300');
INSERT INTO `location` VALUES ('654323', '福海县', '654300');
INSERT INTO `location` VALUES ('654324', '哈巴河县', '654300');
INSERT INTO `location` VALUES ('654325', '青河县', '654300');
INSERT INTO `location` VALUES ('654326', '吉木乃县', '654300');
INSERT INTO `location` VALUES ('659000', '省直辖行政单位', '650000');
INSERT INTO `location` VALUES ('659001', '石河子市', '659000');
INSERT INTO `location` VALUES ('659002', '阿拉尔市', '659000');
INSERT INTO `location` VALUES ('659003', '图木舒克市', '659000');
INSERT INTO `location` VALUES ('659004', '五家渠市', '659000');
INSERT INTO `location` VALUES ('990000', '新疆建设兵团', '0');
INSERT INTO `location` VALUES ('990100', '第一师', '990000');
INSERT INTO `location` VALUES ('990200', '第二师', '990000');
INSERT INTO `location` VALUES ('990300', '第三师', '990000');
INSERT INTO `location` VALUES ('990400', '第四师', '990000');
INSERT INTO `location` VALUES ('990500', '第五师', '990000');
INSERT INTO `location` VALUES ('990600', '第六师', '990000');
INSERT INTO `location` VALUES ('990700', '第七师', '990000');
INSERT INTO `location` VALUES ('990800', '第八师', '990000');
INSERT INTO `location` VALUES ('990900', '第九师', '990000');
INSERT INTO `location` VALUES ('991000', '第十师', '990000');
INSERT INTO `location` VALUES ('991100', '建工师', '990000');
INSERT INTO `location` VALUES ('991200', '第十二师', '990000');
INSERT INTO `location` VALUES ('991300', '第十三师', '990000');
INSERT INTO `location` VALUES ('991400', '第十四师', '990000');

-- ----------------------------
-- Table structure for `major`
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `majorname` varchar(20) DEFAULT '' COMMENT '专业名称',
  `majorid` varchar(20) DEFAULT '' COMMENT '专业编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '计算机科学与技术', '1');
INSERT INTO `major` VALUES ('2', '网络工程', '2');
INSERT INTO `major` VALUES ('3', '人工智能', '3');

-- ----------------------------
-- Table structure for `navigation_bar`
-- ----------------------------
DROP TABLE IF EXISTS `navigation_bar`;
CREATE TABLE `navigation_bar` (
  `url` varchar(50) DEFAULT NULL,
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of navigation_bar
-- ----------------------------
INSERT INTO `navigation_bar` VALUES ('newscolumn/index', '1', '投稿', 'icon ion-ios-home-outline');
INSERT INTO `navigation_bar` VALUES ('Article/select', '2', '阅读', 'icon ion-ios-paper-outline');
INSERT INTO `navigation_bar` VALUES ('Article/myarticle', '3', '我的投稿', 'icon ion-ios-eye-outline');
INSERT INTO `navigation_bar` VALUES ('Hand/index', '4', '随手记', 'icon ion-ios-compose-outline');
INSERT INTO `navigation_bar` VALUES ('Article/my', '5', '我', 'icon ion-ios-person-outline');

-- ----------------------------
-- Table structure for `news_column`
-- ----------------------------
DROP TABLE IF EXISTS `news_column`;
CREATE TABLE `news_column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '栏目名称',
  `introduce` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '栏目内容',
  `start_time` date DEFAULT NULL COMMENT '投稿开始时间',
  `end_time` date DEFAULT NULL COMMENT '投稿结束时间',
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '负责人',
  `pic` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `request` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of news_column
-- ----------------------------
INSERT INTO `news_column` VALUES ('1', '教坛文汇', '教师诗歌散文随笔', '2019-06-11', '2019-06-20', '刘成通', '教坛文汇.jpg', '要求符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('2', '拼拼乐', '低段阅读、含童话类', '2019-06-11', '2019-06-20', '施汝香', '拼拼乐.jpg', '要求符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('3', '妙笔生花', '第一、二学段习作', '2019-06-11', '2019-06-20', '彭文莹', '妙笔生花.jpg', '要求符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('4', '悦读悦美', '中高年段课外美文片段', '2019-06-11', '2019-06-20', '施汝香', '悦读悦美.jpg', '要求符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('5', '阅读', '常识类', '2019-06-11', '2019-06-20', '刘成通', '阅读.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('6', '妙笔生花', '第二、三学段习作', '2019-06-21', '2019-06-30', '彭文莹', '妙笔生花.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('7', '读读乐', '低段阅读短文', '2019-06-21', '2019-06-30', '施汝香', '读读乐.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('8', '祖国大地', '我国人文地理景色', '2019-06-21', '2019-06-30', '彭文莹', '祖国大地.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('9', '趣味语文', '有关文字语言类趣味的文章', '2019-06-21', '2019-06-30', '刘成通', '趣味语文.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('10', '阅读', '常识类', '2019-06-21', '2019-06-30', '刘成通', '阅读.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('11', '曲苑杂谈', '我国诗辞曲等', '2019-07-01', '2019-07-10', '彭文莹', '曲苑杂谈.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('12', '课堂广角', '与课文相关的知识、资料', '2019-07-01', '2019-07-10', '刘成通', '课堂广角.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('13', '社团之花', '文学社成员作品展示', '2019-07-01', '2019-07-10', '彭文莹', '社团之花.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('14', '暑假乐园', '动脑等（侧重语文）', '2019-07-01', '2019-07-10', '施汝香', '暑假乐园.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('15', '阅读', '常识类', '2019-07-01', '2019-07-10', '刘成通', '阅读.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('16', '字斟句酌', '字词句、语言之类', '2019-07-11', '2019-07-20', '刘成通', '字斟句酌.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('17', '拼拼乐', '低段阅读、含童话类', '2019-07-11', '2019-07-20', '施汝香', '拼拼乐.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('18', '科技博览', '现代科技及发展介绍', '2019-07-11', '2019-07-20', '刘成通', '科技博览.jpg', '符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('19', '悦读悦美', '中高年段课外美文片段', '2019-07-11', '2019-07-20', '施汝香', '悦读悦美.jpg', '要求符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');
INSERT INTO `news_column` VALUES ('20', '阅读', '常识类', '2019-07-11', '2019-07-20', '刘成通', '2021/10/22/1_6172a9278f44a4.40802943.png', '要求符合题意，中心突出，内容充实。语言顺畅，没有语病。结构完整，条理清楚。立意深、构思巧、语言生动形象。');

-- ----------------------------
-- Table structure for `question_bank`
-- ----------------------------
DROP TABLE IF EXISTS `question_bank`;
CREATE TABLE `question_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classNum` int(2) DEFAULT '1',
  `class` varchar(30) DEFAULT '' COMMENT '年级',
  `book_name` varchar(50) DEFAULT '' COMMENT '书名',
  `author` varchar(50) DEFAULT '' COMMENT '作者',
  `section` int(11) DEFAULT NULL COMMENT '章节（单元）',
  `test_type` varchar(50) DEFAULT '' COMMENT '测试类型',
  `question_type` varchar(50) DEFAULT '' COMMENT '题目类型',
  `question_id` int(11) DEFAULT NULL COMMENT '问题序号',
  `question` varchar(255) DEFAULT NULL,
  `question_img` varchar(255) DEFAULT '',
  `select1` varchar(50) DEFAULT '' COMMENT '选项1',
  `select1_img` varchar(255) DEFAULT NULL,
  `select2` varchar(50) DEFAULT '',
  `select2_img` varchar(255) DEFAULT NULL,
  `select3` varchar(50) DEFAULT '',
  `select3_img` varchar(255) DEFAULT NULL,
  `select4` varchar(50) DEFAULT '',
  `select4_img` varchar(255) DEFAULT NULL,
  `select5` varchar(50) DEFAULT '',
  `select5_img` varchar(255) DEFAULT NULL,
  `ans` varchar(50) DEFAULT '' COMMENT '答案',
  `has_image` int(5) DEFAULT '0',
  `input_area` int(5) DEFAULT '0' COMMENT '填空题填空数量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=549 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_bank
-- ----------------------------
INSERT INTO `question_bank` VALUES ('1', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '趣味测试', '选择题', '1', '斑马身上的特点？', '', '白色条纹', null, '黑色条纹', null, '黑白相间的条纹', null, '', null, '', null, '黑白相间的条纹', '0', '0');
INSERT INTO `question_bank` VALUES ('2', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '趣味测试', '选择题', '2', '帮助斑马止嗝，谁的办法最有效？', '', '虎小弟', null, '猪小妹', null, '小小象', null, '鳄鱼哥', null, '鸭夫人', null, '鸭夫人', '0', '0');
INSERT INTO `question_bank` VALUES ('3', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '趣味测试', '选择题', '3', '斑马不停打嗝，身上的条纹发生了什么变化？', '', '打嗝越厉害，身上条纹越靠拢 ', null, '打嗝越厉害，身上条纹逐渐消失', null, '', null, '', null, '', null, '打嗝越厉害，身上条纹越靠拢 ', '0', '0');
INSERT INTO `question_bank` VALUES ('4', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '趣味测试', '选择题', '4', '斑马身上的条纹是怎么恢复的？', '', '头埋进两膝之间，倒着喝一杯水 ', null, '屏住呼吸，闭上眼睛，按倒序念26个英文字母', null, '泼冷水，打喷嚏  ', null, '身体倒立，两腿夹球，哼唱', null, '', null, '泼冷水，打喷嚏  ', '0', '0');
INSERT INTO `question_bank` VALUES ('5', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '1', '没打嗝前斑马是一匹怎样的斑马？', '', '喜欢热闹', null, '庄严又严肃', null, '介乎两者之间', null, '', null, '', null, '庄严又严肃', '0', '0');
INSERT INTO `question_bank` VALUES ('6', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '2', '斑马为什么要出去走走？', '', '累了', null, '打嗝', null, '想出去玩耍', null, '', null, '', null, '打嗝', '0', '0');
INSERT INTO `question_bank` VALUES ('7', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '3', '斑马一开始愿意按照虎小弟、猪小妹、小小象、鳄鱼哥的建议去止嗝吗？', '', '愿意', null, '不愿意', null, '', null, '', null, '', null, '不愿意', '0', '0');
INSERT INTO `question_bank` VALUES ('8', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '4', '斑马为什么一开始不愿意接受虎小弟、猪小妹、小小象、鳄鱼哥的止嗝建议？', '', '认为自己走走就会止嗝', null, '觉得它们的方法没用', null, '不好意思接受帮助', null, '', null, '', null, '认为自己走走就会止嗝', '0', '0');
INSERT INTO `question_bank` VALUES ('9', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '5', '为什么后来斑马又接受了虎小弟、猪小妹、小小象、鳄鱼哥的止嗝建议了呢？', '', '觉得对不起小动物们的热心帮助', null, '觉得他们的办法有用', null, '打嗝越厉害，身上条纹越靠拢', null, '', null, '', null, '打嗝越厉害，身上条纹越靠拢', '0', '0');
INSERT INTO `question_bank` VALUES ('10', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '6', '谁发现了斑马身上斑纹的变化？', '', '虎小弟', null, '猪小妹', null, '小小象', null, '鳄鱼哥', null, '鸭夫人', null, '鸭夫人', '0', '0');
INSERT INTO `question_bank` VALUES ('11', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '7', '小动物们是不是都相信自己的止嗝办法是有效的？', '', '是', null, '不是', null, '', null, '', null, '', null, '是', '0', '0');
INSERT INTO `question_bank` VALUES ('12', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '8', '斑马尝试了虎小弟的止嗝办法后是什么反应？', '', '叹气', null, '微笑', null, '咧嘴笑', null, '忍不住笑个不停', null, '', null, '叹气', '0', '0');
INSERT INTO `question_bank` VALUES ('13', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '9', '斑马尝试了猪小妹的止嗝办法后是什么反应？', '', '叹气', null, '微笑', null, '咧嘴笑', null, '忍不住笑个不停', null, '', null, '微笑', '0', '0');
INSERT INTO `question_bank` VALUES ('14', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '10', '斑马尝试了小小象的止嗝办法后是什么反应？', '', '叹气', null, '微笑', null, '咧嘴笑', null, '忍不住笑个不停', null, '', null, '咧嘴笑', '0', '0');
INSERT INTO `question_bank` VALUES ('15', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '11', '斑马尝试了鳄鱼哥的止嗝办法后是什么反应？', '', '叹气', null, '微笑', null, '咧嘴笑', null, '忍不住笑个不停', null, '', null, '忍不住笑个不停', '0', '0');
INSERT INTO `question_bank` VALUES ('16', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '12', '斑马每尝试一种止嗝办法失败后，小动物们是怎么做的？', '', '不理它', null, '继续陪伴它尝试下一个办法', null, '嘲笑他', null, '', null, '', null, '继续陪伴它尝试下一个办法', '0', '0');
INSERT INTO `question_bank` VALUES ('17', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '13', '斑马尝试止嗝失败后，为什么动物们都笑得很大声？', '', '嘲笑斑马', null, '止嗝的办法做起来很有趣', null, '不知道', null, '', null, '', null, '止嗝的办法做起来很有趣', '0', '0');
INSERT INTO `question_bank` VALUES ('18', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '14', '斑马为什么也跟着大家一起笑起来？', '', '怕难堪', null, '止嗝的办法做起来很有趣', null, '不知道', null, '', null, '', null, '止嗝的办法做起来很有趣', '0', '0');
INSERT INTO `question_bank` VALUES ('19', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '15', '鸭夫人是怎样告诉大家办法的？', '', '压低声音', null, '高声宣布', null, '偷偷告诉斑马', null, '', null, '', null, '压低声音', '0', '0');
INSERT INTO `question_bank` VALUES ('20', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '16', '为什么鸭夫人要压低声音告诉大家办法？', '', '因为要用情绪刺激的办法帮助斑马止嗝，要是斑马知道了，办法就失效了', null, '担心斑马不接受自己的办法', null, '不知道', null, '', null, '', null, '因为要用情绪刺激的办法帮助斑马止嗝，要是斑马知道了，办法就失效了', '0', '0');
INSERT INTO `question_bank` VALUES ('21', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '17', '斑马身上的斑纹是通过打喷嚏恢复的吗？', '', '是，打喷嚏把斑纹抖开了', null, '不是，睡一觉就好好了', null, '', null, '', null, '', null, '是，打喷嚏把斑纹抖开了', '0', '0');
INSERT INTO `question_bank` VALUES ('22', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '18', '斑马止嗝后动物们的心情怎么样', '', '欢呼', null, '不好玩', null, '难过', null, '', null, '', null, '欢呼', '0', '0');
INSERT INTO `question_bank` VALUES ('23', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '19', '斑马回家洗了个热水澡，躺在暖暖的被窝，喝着热饮，美美地想着什么？', '', '明天继续一个人看报纸', null, '明天跟大家玩什么', null, '不知道', null, '', null, '', null, '明天跟大家玩什么', '0', '0');
INSERT INTO `question_bank` VALUES ('24', '1', '一年级', '爱打嗝的河马', '戴江静', '5', '线上大比拼', '选择题', '20', '为什么斑马从严肃又庄重变得爱玩了？', '', '感冒了', null, '觉得跟大家在一起玩很快乐', null, '不知道', null, '', null, '', null, '觉得跟大家在一起玩很快乐', '0', '0');
INSERT INTO `question_bank` VALUES ('25', '1', '一年级', '缤纷四季', '佘莹娜', '4', '趣味测试', '选择题', '1', '下面的植物在夏天开花的是', '', '荷花', null, '桂花', null, '菊花', null, '', null, '', null, '荷花', '0', '0');
INSERT INTO `question_bank` VALUES ('26', '1', '一年级', '缤纷四季', '佘莹娜', '4', '趣味测试', '选择题', '2', '红精灵落到了（       ）的身上', '', '农民伯伯', null, '大树', null, '稻草人', null, '', null, '', null, '稻草人', '0', '0');
INSERT INTO `question_bank` VALUES ('27', '1', '一年级', '缤纷四季', '佘莹娜', '4', '趣味测试', '选择题', '3', '雪花一般是什么形状的？', '', '呈七角形', null, '呈五角形', null, '呈六角形', null, '', null, '', null, '呈六角形', '0', '0');
INSERT INTO `question_bank` VALUES ('28', '1', '一年级', '缤纷四季', '佘莹娜', '4', '趣味测试', '选择题', '4', '青精灵看到谷子羞红了脸，高粱笑弯了腰，对吗？', '', '不正确', null, '正确', null, '不确定', null, '', null, '', null, '不正确', '0', '0');
INSERT INTO `question_bank` VALUES ('29', '1', '一年级', '缤纷四季', '佘莹娜', '4', '趣味测试', '选择题', '5', '波波看到了（       ），第一次从魔毯下来玩耍。', '', '猴子', null, '溪水', null, '西瓜', null, '', null, '', null, '溪水', '0', '0');
INSERT INTO `question_bank` VALUES ('30', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '1', '春姑娘撒下黄的种子，（       ）开了。', '', '迎春花', null, '桃花', null, '荷花', null, '', null, '', null, '迎春花', '0', '0');
INSERT INTO `question_bank` VALUES ('31', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '2', '下列哪个种子不是春姑娘撒下的？', '', '开门', null, '风', null, '唱歌', null, '', null, '', null, '唱歌', '0', '0');
INSERT INTO `question_bank` VALUES ('32', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '3', '春姑娘是一个真实的人，对吗？', '', '对的', null, '不对', null, '不知道', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('33', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '4', '动物在冬天脱毛是因为它们生病了，是吗？', '', '不正确', null, '正确', null, '不确定', null, '', null, '', null, '不正确', '0', '0');
INSERT INTO `question_bank` VALUES ('34', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '5', '夏天马儿把鼻孔长得大大的，怕（       ）。', '', '不好看', null, '鼻孔太小', null, '太热，中暑', null, '', null, '', null, '太热，中暑', '0', '0');
INSERT INTO `question_bank` VALUES ('35', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '6', '小北极熊波波说了一句“        ”，毯子就飞了起来。', '', '嘿嘿', null, '嘿呀', null, '呀嘿', null, '', null, '', null, '呀嘿', '0', '0');
INSERT INTO `question_bank` VALUES ('36', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '7', '（    ）的小蚂蚁正排着队将食物运到洞中 。', '', '勤劳', null, '不开心', null, '伤心', null, '', null, '', null, '勤劳', '0', '0');
INSERT INTO `question_bank` VALUES ('37', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '8', '毯子为波波遮雨，波波一直都是倒着看世界，感觉真奇妙。对吗？', '', '正确', null, '不正确', null, '不确定', null, '', null, '', null, '正确', '0', '0');
INSERT INTO `question_bank` VALUES ('38', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '9', '在北半球，夏天是7月、8月和（      ）。', '', '6月', null, '9月', null, '10月', null, '', null, '', null, '6月', '0', '0');
INSERT INTO `question_bank` VALUES ('39', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '10', '春姑娘来了，她提着（      ），迈着轻盈的步子来了。', '', '小篮子', null, '种子', null, '水果', null, '', null, '', null, '小篮子', '0', '0');
INSERT INTO `question_bank` VALUES ('40', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '11', '月亮早早回去睡觉了，（     ）的值班时间变久了。', '', '月亮', null, '星星', null, '太阳', null, '', null, '', null, '太阳', '0', '0');
INSERT INTO `question_bank` VALUES ('41', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '12', '（     ）带着波波飞了起来呢？', '', '小鸟', null, '魔毯', null, '飞机', null, '', null, '', null, '魔毯', '0', '0');
INSERT INTO `question_bank` VALUES ('42', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '13', '（     ）想去地球上看看很美的秋天？', '', '小精灵', null, '小超人', null, '外星人', null, '', null, '', null, '小精灵', '0', '0');
INSERT INTO `question_bank` VALUES ('43', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '14', '冬天，（     ）也出来玩啦？', '', '大蛇', null, '小兔子', null, '小熊', null, '', null, '', null, '小兔子', '0', '0');
INSERT INTO `question_bank` VALUES ('44', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '15', '小树叶只要紧紧地抓住大树爷爷地树干，就不会掉落，对不对？', '', '对的', null, '不对', null, '不清楚', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('45', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '16', '小动物们的心愿是想要（              ）。', '', '一顶温暖的帽子', null, '一条温暖的围巾', null, '一件温暖的大衣', null, '', null, '', null, '一件温暖的大衣', '0', '0');
INSERT INTO `question_bank` VALUES ('46', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '17', '小动物们冬天最开心的事就是吃冰糖葫芦，对吗？', '', '不正确', null, '正确', null, '不确定', null, '', null, '', null, '不正确', '0', '0');
INSERT INTO `question_bank` VALUES ('47', '1', '一年级', '缤纷四季', '佘莹娜', '4', '线上大比拼', '选择题', '18', '大雁要飞到（     ）过冬。', '', '南方', null, '东方', null, '北方', null, '', null, '', null, '南方', '0', '0');
INSERT INTO `question_bank` VALUES ('48', '2', '二年级', '风到哪里去了', '', '1', '趣味测试', '选择题', '1', '小男孩觉得太阳像什么？', '', '香香的咸蛋黄', null, '一只瞌睡的猫', null, '覆盖在身上的毯子', null, '', null, '', null, '一只瞌睡的猫', '0', '0');
INSERT INTO `question_bank` VALUES ('49', '2', '二年级', '风到哪里去了', '', '1', '趣味测试', '选择题', '2', '“白天为什么会不见呢？”妈妈怎么回答这个问题？', '', '夜晚才能到这里来呀', null, '太阳落山了', null, '地球转动', null, '', null, '', null, '夜晚才能到这里来呀', '0', '0');
INSERT INTO `question_bank` VALUES ('50', '2', '二年级', '风到哪里去了', '', '1', '趣味测试', '选择题', '3', '“太阳到哪里去了呢？”妈妈怎么回答这个问题？', '', '太阳下山了。', null, '白天到别的地方去了，太阳在那里升起。', null, '太阳消失了。', null, '', null, '', null, '白天到别的地方去了，太阳在那里升起。', '0', '0');
INSERT INTO `question_bank` VALUES ('51', '2', '二年级', '风到哪里去了', '', '1', '趣味测试', '选择题', '4', '“风停了以后，又到哪里去了呢？”妈妈怎么回答这个问题？', '', '风消失了', null, '到一个地方去休息了', null, '风吹到别的地方去了', null, '', null, '', null, '风吹到别的地方去了', '0', '0');
INSERT INTO `question_bank` VALUES ('52', '2', '二年级', '风到哪里去了', '', '1', '趣味测试', '选择题', '5', '你觉得绘本中的男孩是个怎样的孩子。', '', '淘气的', null, '粗心的', null, '爱思考提问', null, '', null, '', null, '爱思考提问', '0', '0');
INSERT INTO `question_bank` VALUES ('53', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '1', '绘本的文字作者是谁？', '', '陈丹燕', null, '斯蒂芬诺·维塔', null, '夏洛特·佐罗托夫', null, '', null, '', null, '夏洛特·佐罗托夫', '0', '0');
INSERT INTO `question_bank` VALUES ('54', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '2', '绘本的翻译是谁？', '', '陈丹燕', null, '斯蒂芬诺·维塔', null, '夏洛特·佐罗托夫', null, '', null, '', null, '陈丹燕', '0', '0');
INSERT INTO `question_bank` VALUES ('55', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '3', '绘本的图画作者是谁？', '', '陈丹燕', null, '斯蒂芬诺·维塔', null, '夏洛特·佐罗托夫', null, '', null, '', null, '斯蒂芬诺·维塔', '0', '0');
INSERT INTO `question_bank` VALUES ('56', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '4', '这本绘本是由哪个出版社出版的？', '', '明天出版社', null, '少年儿童出版社', null, '广东教育出版社', null, '', null, '', null, '明天出版社', '0', '0');
INSERT INTO `question_bank` VALUES ('57', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '5', '小男孩为什么觉得太阳像一只瞌睡的猫趴在他们身上？', '', '因为阳光温暖而柔软', null, '因为太阳无精打采', null, '因为太阳是黄色的', null, '', null, '', null, '因为阳光温暖而柔软', '0', '0');
INSERT INTO `question_bank` VALUES ('58', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '6', '小男孩看到一弯银白色的月亮挂在哪里？', '', '挂在一座山后', null, '挂在梨树梢后', null, '挂在柳树梢头', null, '', null, '', null, '挂在梨树梢后', '0', '0');
INSERT INTO `question_bank` VALUES ('59', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '7', '妈妈说风吹到别的地方去干什么？', '', '带着蒲公英远行', null, '教小花吹口哨', null, '让那儿的树跳舞去了', null, '', null, '', null, '让那儿的树跳舞去了', '0', '0');
INSERT INTO `question_bank` VALUES ('60', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '8', '妈妈说蒲公英的绒毛被风吹到哪里去了呢？', '', '带着新的花籽飞到别家院子的草地上', null, '带着降落伞飞到更远处的游乐场', null, '带着行囊飞到山洼里去冒险', null, '', null, '', null, '带着新的花籽飞到别家院子的草地上', '0', '0');
INSERT INTO `question_bank` VALUES ('61', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '9', '你觉得绘本中的妈妈是个怎样的妈妈？', '', '温柔而有智慧的', null, '缺乏耐心的', null, '勤快的', null, '', null, '', null, '温柔而有智慧的', '0', '0');
INSERT INTO `question_bank` VALUES ('62', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '10', '你是怎么阅读这本绘本的？', '', '和家长一起阅读', null, '自己独立阅读', null, '和同学一起阅读', null, '', null, '', null, '', '0', '0');
INSERT INTO `question_bank` VALUES ('63', '2', '二年级', '风到哪里去了', '', '1', '线上大比拼', '选择题', '11', '妈妈说云飘过天空到哪里去了？', '', '到树荫下乘凉了', null, '到别的地方给人们制造阴凉', null, '到沙漠去了', null, '', null, '', null, '到别的地方给人们制造阴凉', '0', '0');
INSERT INTO `question_bank` VALUES ('66', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '1', '仓颉长得与众不同之处是（）', '', '高大', null, '丑陋', null, '四只眼睛', null, '', null, '', null, '四只眼睛', '0', '0');
INSERT INTO `question_bank` VALUES ('67', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '2', '仓颉看到（）受到启发，创造了象形字。', '', '贝壳', null, '龟壳的花纹', null, '小动物的脚印', null, '', null, '', null, '小动物的脚印', '0', '0');
INSERT INTO `question_bank` VALUES ('68', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '3', '用两个或两个以上的独体字，根据意义关系合成一个字，这种造字法造出来的字叫（）。', '', '会意字', null, '象形字', null, '形声字', null, '', null, '', null, '会意字', '0', '0');
INSERT INTO `question_bank` VALUES ('69', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '4', '仓颉根据观察到的事物画出各种符号，这就是（     ）。', '', '会意字', null, '象形字', null, '形声字', null, '', null, '', null, '会意字', '0', '0');
INSERT INTO `question_bank` VALUES ('70', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '5', '古时候的人为了记住一天发生的事情，就在绳子上打个结。这就是（）。', '', '．结绳记事', null, '贝壳记事', null, '石壁记事', null, '', null, '', null, '．结绳记事', '0', '0');
INSERT INTO `question_bank` VALUES ('71', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '6', '仓颉从（）受到启发，发现了花纹符号可以表示各种意义，创作了会意字。', '', '石壁', null, '脚印', null, '龟壳花纹', null, '', null, '', null, '石壁', '0', '0');
INSERT INTO `question_bank` VALUES ('72', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '7', '仓颉造字感动了天地和鬼神，下了一场（）。', '', '大雨', null, '谷子雨', null, '玉米雨', null, '', null, '', null, '谷子雨', '0', '0');
INSERT INTO `question_bank` VALUES ('73', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '8', '汉字造字方法有（）种方式。', '', '六', null, '五。', null, '三', null, '', null, '', null, '六', '0', '0');
INSERT INTO `question_bank` VALUES ('74', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '1', '这是象形字（）。', 'cjzz2-9.png', '牛', null, '猪', null, '狗', null, '', null, '', null, '牛', '0', '0');
INSERT INTO `question_bank` VALUES ('75', '2', '二年级', '仓颉造字', '', '2', '线上比拼', '选择题', '10', '《仓颉造字》的绘者是（）', '', '常羽辰', null, '王早早', null, '朱冰', null, '', null, '', null, '朱冰', '0', '0');
INSERT INTO `question_bank` VALUES ('76', '2', '二年级', '小贝流浪记', '', '5', '趣味测试', '选择题', '1', '一见耗子就吓得喊“妈妈”的是（）', '', '小贝', null, '小宝', null, '大白猫', null, '小兔子', null, '', null, '小宝', '0', '0');
INSERT INTO `question_bank` VALUES ('77', '2', '二年级', '小贝流浪记', '', '5', '趣味测试', '选择题', '2', '杂技团表演中，吉吉给大家表演了（）', '', '直立走', null, '连着打滚', null, '抖空竹', null, '钻火圈', null, '', null, '钻火圈', '0', '0');
INSERT INTO `question_bank` VALUES ('78', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '1', '在草原的第一个夜晚，小贝遇到了（）。', '', '狐狸', null, '猫头鹰', null, '青蛙', null, '狼', null, '', null, '狼', '0', '0');
INSERT INTO `question_bank` VALUES ('79', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '2', '三只小狗对小贝有些不高兴，因为（）', '', '狗妈妈喂小贝吃鱼', null, '狗妈妈把小贝搂在怀里', null, '狗妈妈喂小贝吃奶', null, '', null, '', null, '狗妈妈喂小贝吃奶', '0', '0');
INSERT INTO `question_bank` VALUES ('80', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '3', '小兔子从邻居鸬鹚大婶那里提回一口袋（）', '', '鱼和虾', null, '最嫩的青草', null, '最甜的草根', null, '鲜红的草莓', null, '', null, '鱼和虾', '0', '0');
INSERT INTO `question_bank` VALUES ('81', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '4', '小贝能回到自己出生的城市是因为（）', '', '小兔告诉他回家的方向', null, '小贝终于自己走出了森林', null, '掉进动物学家设置的陷阱里', null, '猫妈妈找到了他，把他带回家', null, '', null, '小兔告诉他回家的方向', '0', '0');
INSERT INTO `question_bank` VALUES ('82', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '5', '小贝从小男孩的鞭子下救出了（）', '', '小兔子', null, '小宝', null, '大白猫', null, '猫妈妈', null, '', null, '小宝', '0', '0');
INSERT INTO `question_bank` VALUES ('83', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '6', '吉吉用长棍子当尾巴，是想要变成（）', '', '小猴子', null, '小老虎', null, '小豹子', null, '小野猪', null, '', null, '小老虎', '0', '0');
INSERT INTO `question_bank` VALUES ('84', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '7', '吉吉被园长和油漆商店经理拳打脚踢的时候，（）救了他。', '', '花花', null, '淘淘', null, '熊爸爸', null, '芳芳', null, '', null, '花花', '0', '0');
INSERT INTO `question_bank` VALUES ('85', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '8', '芳芳教吉吉的第一项本领是（）', '', '踩大木球', null, '开摩托车', null, '骑自行车', null, '走钢丝', null, '', null, '踩大木球', '0', '0');
INSERT INTO `question_bank` VALUES ('86', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '9', '杂技团表演时，吉吉表演的第二个节目是（）', '', '钻火圈', null, '互相帮助', null, '顶碗', null, '爬梯', null, '', null, '互相帮助', '0', '0');
INSERT INTO `question_bank` VALUES ('87', '2', '二年级', '小贝流浪记', '', '5', '线上比拼', '选择题', '10', '吉吉成为大家都知道的杂技演员后，一家大动物园的（）给他写信。', '', '老虎们', null, '猴子们', null, '梅花鹿们', null, '熊猫们', null, '', null, '熊猫们', '0', '0');
INSERT INTO `question_bank` VALUES ('130', '2', '二年级', '乌雀镇', '', '4', '趣味测试', '选择题', '3', '鸽子一共卖了多少钱？（）', '', '十五', null, '二十', null, '三十五', null, '', null, '', null, '十五', '0', '0');
INSERT INTO `question_bank` VALUES ('131', '2', '二年级', '乌雀镇', '', '4', '趣味测试', '选择题', '4', '老渔翁认为他的线卡是（  ）偷的。', '', '马大沛', null, '大鸭子', null, '朱环', null, '', null, '', null, '大鸭子', '0', '0');
INSERT INTO `question_bank` VALUES ('132', '2', '二年级', '乌雀镇', '', '4', '趣味测试', '选择题', '5', '朱环把自己最爱的（ ）卖了。', '', '鸽子', null, '刀', null, '线卡', null, '', null, '', null, '刀', '0', '0');
INSERT INTO `question_bank` VALUES ('133', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '1', '故事开头，是什么时节？（）', '', '炎炎的夏日', null, '金色的秋天', null, '寒冷的冬天', null, '', null, '', null, '炎炎的夏日', '0', '0');
INSERT INTO `question_bank` VALUES ('134', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '2', '线卡事件发生的地点是（）', '', '学校', null, '河边', null, '街上', null, '', null, '', null, '河边', '0', '0');
INSERT INTO `question_bank` VALUES ('135', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '3', '谁最先发现线卡的？（）', '', '大鸭子', null, '马大沛', null, '朱环', null, '', null, '', null, '马大沛', '0', '0');
INSERT INTO `question_bank` VALUES ('136', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '4', '乌雀镇最受大家欢迎的是什么鱼？（）', '', '鳜鱼', null, '鲈鱼', null, '鲫鱼', null, '', null, '', null, '鲫鱼', '0', '0');
INSERT INTO `question_bank` VALUES ('137', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '5', '钓鲫鱼的鱼饵是？（）', '', '小麦', null, '泥鳅', null, '花生泥', null, '', null, '', null, '小麦', '0', '0');
INSERT INTO `question_bank` VALUES ('138', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '6', '捕鲫鱼的小渔船一天撒几回线卡？（）', '', '一回', null, '两回', null, '三回', null, '', null, '', null, '两回', '0', '0');
INSERT INTO `question_bank` VALUES ('139', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '7', '是谁现有收卡的念头？（）', '', '大鸭子', null, '马大沛', null, '朱环', null, '', null, '', null, '朱环', '0', '0');
INSERT INTO `question_bank` VALUES ('140', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '8', '从收卡的过程，你觉得马大沛的性格是？（）', '', '勇敢', null, '鲁莽', null, '细心', null, '', null, '', null, '鲁莽', '0', '0');
INSERT INTO `question_bank` VALUES ('141', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '9', '线卡最终的结果是？（）', '', '渔翁拿回去了', null, '被人捡了', null, '被扔了', null, '', null, '', null, '渔翁拿回去了', '0', '0');
INSERT INTO `question_bank` VALUES ('142', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '10', '看到老渔翁在夜里找线卡，少年们的心情是怎样的？（）', '', '平静', null, '愧疚', null, '愤怒', null, '', null, '', null, '愧疚', '0', '0');
INSERT INTO `question_bank` VALUES ('143', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '11', '大鸭子一开始被老头缠住，心情是怎样的？（）', '', '恼怒', null, '耐心', null, '同情', null, '', null, '', null, '恼怒', '0', '0');
INSERT INTO `question_bank` VALUES ('144', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '12', '老头的小渔船是谁弄沉的？（）', '', '大鸭子', null, '马大沛', null, '朱环', null, '', null, '', null, '大鸭子', '0', '0');
INSERT INTO `question_bank` VALUES ('145', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '13', '老头子最后买回线卡了吗？（）', '', '买回来了', null, '没有', null, '少年们送了他一个', null, '', null, '', null, '没有', '0', '0');
INSERT INTO `question_bank` VALUES ('146', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '14', '老头几乎把时间都用在了哪里？（）', '', '摸鱼摸虾', null, '卖鱼卖虾', null, '静坐在镇委门口', null, '', null, '', null, '静坐在镇委门口', '0', '0');
INSERT INTO `question_bank` VALUES ('147', '2', '二年级', '乌雀镇', '', '4', '线上比拼', '选择题', '15', '老头是在什么时候离开的？（）', '', '炎炎的夏日', null, '金色的秋天', null, '寒冷的冬天', null, '', null, '', null, '寒冷的冬天', '0', '0');
INSERT INTO `question_bank` VALUES ('128', '2', '二年级', '乌雀镇', '', '4', '趣味测试', '选择题', '1', '《乌雀镇》的作者是（）。', '', '海明威', null, '王尔德', null, '曹文轩', null, '', null, '', null, '曹文轩', '0', '0');
INSERT INTO `question_bank` VALUES ('129', '2', '二年级', '乌雀镇', '', '4', '趣味测试', '选择题', '2', '老渔翁是一个怎样的人？（）', '', '坚持执着', null, '和蔼可亲', null, '乐于助人', null, '', null, '', null, '坚持执着', '0', '0');
INSERT INTO `question_bank` VALUES ('160', '2', '二年级', '小鲤鱼跳龙门', '', '5', '趣味测试', '选择题', '3', '《小鲤鱼跳龙门》中小鲤鱼们最后在（）住下。', '', '小池塘', null, '龙门水库', null, '小石桥下', null, '', null, '', null, '龙门水库', '0', '0');
INSERT INTO `question_bank` VALUES ('161', '2', '二年级', '小鲤鱼跳龙门', '', '5', '趣味测试', '选择题', '4', '《骄傲的大公鸡》中大公鸡最爱（）', '', '吹牛皮', null, '唱歌', null, '吃虫子', null, '', null, '', null, '吹牛皮', '0', '0');
INSERT INTO `question_bank` VALUES ('162', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '1', '《小鲤鱼跳龙门》的作者是（）。', '', '金近', null, '陈先云', null, '曹文轩', null, '', null, '', null, '金近', '0', '0');
INSERT INTO `question_bank` VALUES ('163', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '2', '《骄傲的大公鸡》在这本书的第（）页。', '', '79', null, '59', null, '43', null, '', null, '', null, '59', '0', '0');
INSERT INTO `question_bank` VALUES ('164', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '3', '《蝴蝶有一面小镜子》中蝴蝶差点被（）吃掉。', '', '啄木鸟', null, '小蛇', null, '青蛙', null, '', null, '', null, '小蛇', '0', '0');
INSERT INTO `question_bank` VALUES ('165', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '4', '《狐狸打猎人的故事》中的年轻的猎人很（）。', '', '勇敢', null, '胆小', null, '聪明', null, '', null, '', null, '胆小', '0', '0');
INSERT INTO `question_bank` VALUES ('166', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '5', '《蝴蝶有一面小镜子》中青蛙错把镜子当作（）。', '', '一汪清水', null, '一份食物', null, '一个水潭', null, '', null, '', null, '一汪清水', '0', '0');
INSERT INTO `question_bank` VALUES ('167', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '6', '《小猫钓鱼》中的小猫钓鱼的过程排序正确的是（）知错就改三心两意终有成果两手空空', '', '1342', null, '2143', null, '4213', null, '2413', null, '', null, '2413', '0', '0');
INSERT INTO `question_bank` VALUES ('168', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '7', '在找龙门的过程中，是()帮小鲤鱼把拦路的水草剪掉。', '', '大白鹅', null, '小鸭子', null, '大螃蟹', null, '小青蛙', null, '', null, '大螃蟹', '0', '0');
INSERT INTO `question_bank` VALUES ('169', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '8', '()扑通一声跳进小河里，在河底找到一只烂草鞋，挂在猫弟弟的钓钩上并嘲笑猫弟弟。', '', '青蛙', null, '大白鹅', null, '蝴蝶', null, '蜻蜓', null, '', null, '青蛙', '0', '0');
INSERT INTO `question_bank` VALUES ('170', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '9', '两只爱吹牛的蛐蛐都说要吃掉一只（）。', '', '大柳树', null, '小驴', null, '大公鸡', null, '小青蛙', null, '', null, '大公鸡', '0', '0');
INSERT INTO `question_bank` VALUES ('171', '2', '二年级', '小鲤鱼跳龙门', '', '5', '线上比拼', '选择题', '10', '老猎人说的：一个猎人丢了猎枪，在野兽面前只会发抖，那么就算是活着，也跟死掉的一样了。你对这句话的理解是：（）', '', '丢了枪，猎人肯定会死的。', null, '丢了枪，不能在野兽面前发抖。', null, '一个猎人除了枪，还得有胆量。', null, '一个猎人要胆量，不能因为丢了枪，而忘了自己的本事。', null, '', null, '一个猎人要胆量，不能因为丢了枪，而忘了自己的本事。', '0', '0');
INSERT INTO `question_bank` VALUES ('172', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '1', '下列不是中国古代四大发明的是（）。', '', '造纸术', null, '指南针', null, '算盘', null, '印刷术', null, '', null, '算盘', '0', '0');
INSERT INTO `question_bank` VALUES ('173', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '2', '蔡伦是东时（）人。', '', '南海郡', null, '桂阳郡', null, '交趾郡', null, '海洲郡', null, '', null, '桂阳郡', '0', '0');
INSERT INTO `question_bank` VALUES ('174', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '5', '古代，人们一般把文字写在（）上，然后用绳子串联成册。', '', '竹片或女片', null, '丝帛', null, '纸', null, '衣服', null, '', null, '竹片或女片', '0', '0');
INSERT INTO `question_bank` VALUES ('175', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '6', '古代有人把文字写在丝帛上，轻便，书写也容易，还很（）。', '', '便宜', null, '昂贵', null, '简单', null, '方便', null, '', null, '昂贵', '0', '0');
INSERT INTO `question_bank` VALUES ('176', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '7', '东汉时期，纸是用来（）', '', '包装', null, '衬垫', null, '写字', null, '做衣服', null, '做手工', null, '包装', '0', '0');
INSERT INTO `question_bank` VALUES ('177', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '8', '树皮渔网破麻布不容易捣烂，蔡伦用（）腐蚀这些材料。', '', '化肥', null, '生石灰', null, '消毒液', null, '盐', null, '', null, '生石灰', '0', '0');
INSERT INTO `question_bank` VALUES ('178', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '9', '蔡伦的造纸术沿着（）经过中亚西欧向整个世界传播，为世界文明的传承和发展做出了巨大贡献。', '', '郑和下西洋', null, '丝绸之路', null, '鲁滨逊漂流记', null, '一带一路', null, '', null, '丝绸之路', '0', '0');
INSERT INTO `question_bank` VALUES ('179', '2', '二年级', '蔡伦', '', '6', '线上比拼', '选择题', '10', '蔡伦的造纸术沿着（）经过中亚西欧向整个世界传播，为世界文明的传承和发展做出了巨大贡献。', '', '郑和下西洋', null, '丝绸之路', null, '鲁滨逊漂流记', null, '一带一路', null, '', null, '一带一路', '0', '0');
INSERT INTO `question_bank` VALUES ('180', '2', '二年级', '一只想飞的猫', '', '7', '趣味测试', '选择题', '1', '（）咕哝咕哝的说梦话。', '', '耗子', null, '猫', null, '', null, '', null, '', null, '猫', '0', '0');
INSERT INTO `question_bank` VALUES ('181', '2', '二年级', '一只想飞的猫', '', '7', '趣味测试', '选择题', '2', '爱清洁的（）洗了个冷水澡，浑身畅快。', '', '猫', null, '鸭子', null, '', null, '', null, '', null, '鸭子', '0', '0');
INSERT INTO `question_bank` VALUES ('182', '2', '二年级', '一只想飞的猫', '', '7', '趣味测试', '选择题', '3', '（）很有礼貌。', '', '鸭子', null, '猫', null, '耗子', null, '', null, '', null, '鸭子', '0', '0');
INSERT INTO `question_bank` VALUES ('183', '2', '二年级', '一只想飞的猫', '', '7', '趣味测试', '选择题', '4', '（）病了。（大扫除时）', '', '母鸡', null, '公鸡', null, '鸭子', null, '', null, '', null, '母鸡', '0', '0');
INSERT INTO `question_bank` VALUES ('184', '2', '二年级', '一只想飞的猫', '', '7', '趣味测试', '选择题', '5', '公鸡看出（）在假装睡觉。', '', '猫', null, '母鸡', null, '', null, '', null, '', null, '猫', '0', '0');
INSERT INTO `question_bank` VALUES ('185', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '1', '在《一只想飞的猫》中，一只猫把窗台上摆着的一只（）碰落在台阶上', '', '蓝磁花盆', null, '白瓷花盆', null, '绿瓷花盆', null, '', null, '', null, '蓝磁花盆', '0', '0');
INSERT INTO `question_bank` VALUES ('186', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '2', '在《一只想飞的猫》中，她打开那本厚厚的（）来认真地学习。', '', '《建筑学》', null, '《建筑》', null, '《美术学》', null, '', null, '', null, '《建筑学》', '0', '0');
INSERT INTO `question_bank` VALUES ('187', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '3', '在《一只想飞的猫》中，睡梦中，猫舔嘴咂舌，仿佛真的吃到了一只（）。', '', '蝴蝶', null, '蜻蜓', null, '小鸟', null, '', null, '', null, '蝴蝶', '0', '0');
INSERT INTO `question_bank` VALUES ('188', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '4', '在《阿丽思小姐》中，淘气的阿丽思听说昆虫国要举办（），决定也去凑凑热闹。', '', '音乐会', null, '演唱会', null, '展览会', null, '', null, '', null, '音乐会', '0', '0');
INSERT INTO `question_bank` VALUES ('189', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '5', '阿丽思虽然有着很多的缺点，但是她善良勇敢乐观热爱和平，是个非常值得我们学习的好孩子。这句话对不对（）', '', '对', null, '不对', null, '', null, '', null, '', null, '对', '0', '0');
INSERT INTO `question_bank` VALUES ('190', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '6', '《阿丽思小姐》向小朋友们讲述了阿丽思在（）的种种有趣经历。', '', '昆虫国', null, '蝴蝶国', null, '胡媛媛', null, '', null, '', null, '昆虫国', '0', '0');
INSERT INTO `question_bank` VALUES ('191', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '7', '《阿丽思小姐》为作家（）童话作品中的代表之作', '', '陈伯吹', null, '阿丽思', null, '', null, '', null, '', null, '陈伯吹', '0', '0');
INSERT INTO `question_bank` VALUES ('192', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '8', '请选出不是陈伯吹作品的选项（）', '', '《阿丽思小姐》', null, '《宝葫芦的秘密》', null, '《一只想飞的猫》', null, '', null, '', null, '《宝葫芦的秘密》', '0', '0');
INSERT INTO `question_bank` VALUES ('193', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '9', '猫一伸爪子逮住了（）只耗子。', '', '1', null, '12', null, '13', null, '', null, '', null, '13', '0', '0');
INSERT INTO `question_bank` VALUES ('194', '2', '二年级', '一只想飞的猫', '', '7', '线上比拼', '选择题', '10', '喜鹊的家在（）顶上。', '', '银杏树', null, '槐树', null, '杨树', null, '', null, '', null, '银杏树', '0', '0');
INSERT INTO `question_bank` VALUES ('244', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '19', '黑暗中，鲁鲁看见的眼睛像两团火的怪物是（）。', '', '小动物们送他的恐龙形大蛋糕', null, '小动物们送他的礼物', null, '吓唬他的怪兽', null, '', null, '', null, '小动物们送他的恐龙形大蛋糕', '0', '0');
INSERT INTO `question_bank` VALUES ('243', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '18', '鲁鲁的大棉鞋是用什么做的？', '', '大帽子', null, '大麻袋', null, '摇篮', null, '', null, '', null, '摇篮', '0', '0');
INSERT INTO `question_bank` VALUES ('242', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '17', '鲁鲁为了让小动物去过河看戏，怎么做的？', '', '一个个驮过河去', null, '用身子搭一座桥，方便它们走过去', null, '打喷嚏，吹它们过河', null, '', null, '', null, '用身子搭一座桥，方便它们走过去', '0', '0');
INSERT INTO `question_bank` VALUES ('241', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '16', '熊老板要鲁鲁打喷嚏，有什么用？', '', '吹动风车，带动磨子，磨豆腐', null, '吹动水车，浇水', null, '吹动气球，打广告', null, '', null, '', null, '吹动风车，带动磨子，磨豆腐', '0', '0');
INSERT INTO `question_bank` VALUES ('240', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '15', '老鼠七兄弟引起了火灾，鲁鲁怎么灭火的？', '', '吸了一大口水，喷出去', null, '在天上哭了，流下了眼泪', null, '在天上尿了，灭了火', null, '', null, '', null, '在天上尿了，灭了火', '0', '0');
INSERT INTO `question_bank` VALUES ('239', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '14', '鲁鲁为什么变成了气球？', '', '喜欢喝汽水，喝过头了', null, '身上绑了气球', null, '为了拍广告', null, '', null, '', null, '喜欢喝汽水，喝过头了', '0', '0');
INSERT INTO `question_bank` VALUES ('238', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '13', '鲁鲁为什么一唱歌，天就下雨了呢？', '', '它是天气预报员', null, '它唱得很好听，云被感动了', null, '声音太大，把天上的云震破了', null, '', null, '', null, '声音太大，把天上的云震破了', '0', '0');
INSERT INTO `question_bank` VALUES ('237', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '12', '恐龙鲁鲁在城市里做了什么？', '', '当交通警察', null, '接送幼儿园的小朋友', null, '动物园里表演节目', null, '', null, '', null, '接送幼儿园的小朋友', '0', '0');
INSERT INTO `question_bank` VALUES ('235', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '10', '鲁鲁躲进了扣着的小船，是谁给它送饭来了？', '', '青蛙', null, '狐狸', null, '甲虫', null, '', null, '', null, '青蛙', '0', '0');
INSERT INTO `question_bank` VALUES ('236', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '11', '狐狸给恐龙鲁鲁出了个坏主意是（）。', '', '分吃甲虫', null, '分吃青蛙', null, '分吃大鱼', null, '', null, '', null, '分吃青蛙', '0', '0');
INSERT INTO `question_bank` VALUES ('234', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '9', '小螃蟹的钳子一大一小，为什么白天也敢出来了？', '', '它觉得很好看', null, '它需要出来找吃的', null, '它觉得自己像个男子汉，一大一小的钳子是它英雄的标志', null, '', null, '', null, '它觉得自己像个男子汉，一大一小的钳子是它英雄的标志', '0', '0');
INSERT INTO `question_bank` VALUES ('233', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '8', '小螃蟹的一只大钳子怎么断了？', '', '遇到危险时，挣断了', null, '它长大了，换新钳子了', null, '为了就掉进泥坑的小乌龟，拉断了', null, '', null, '', null, '为了就掉进泥坑的小乌龟，拉断了', '0', '0');
INSERT INTO `question_bank` VALUES ('231', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '6', '琥珀是几千年前，()流下的“眼泪”？', '', '小蚂蚁', null, '松树', null, '小螃蟹', null, '', null, '', null, '松树', '0', '0');
INSERT INTO `question_bank` VALUES ('232', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '7', '小螃蟹给狮子剪完头发的第二天，来了一群的狮子，他们来干什么？', '', '为了狮子王，找小螃蟹报仇', null, '找小螃蟹理头发，他们想要和狮子王一样的头发', null, '找小螃蟹要回那缕狮子王的头发', null, '', null, '', null, '为了狮子王，找小螃蟹报仇', '0', '0');
INSERT INTO `question_bank` VALUES ('230', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '5', '为什么大家后来都喜欢上了小螃蟹的敲鼓声？', '', '小螃蟹真的变成了一只鼓', null, '这只鼓有了自己的魔力', null, '小螃蟹用鼓声表达自己的快乐，悲伤，大家感受到了', null, '', null, '', null, '小螃蟹用鼓声表达自己的快乐，悲伤，大家感受到了', '0', '0');
INSERT INTO `question_bank` VALUES ('229', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '多选题', '4', '（多选题）大家一开始都不喜欢小螃蟹敲鼓，因为（）。', '', '小青蛙觉得敲得它耳朵痛。', null, '小鱼觉得一敲鼓，水乱摇，头晕。', null, '小乌龟觉得一直敲，它背上的裂缝又要开了', null, '', null, '', null, '小青蛙觉得敲得它耳朵痛。', '0', '0');
INSERT INTO `question_bank` VALUES ('228', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '3', '小纸鸟为什么会在天上乱飞呢？（）', '', '它不是真鸟，所以乱飞', null, '它心里画着小螃蟹，不是它自己，所以乱飞', null, '它没有学会怎么飞，所以乱飞', null, '', null, '', null, '它心里画着小螃蟹，不是它自己，所以乱飞', '0', '0');
INSERT INTO `question_bank` VALUES ('226', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '1', '小螃蟹每天睡觉前要在墙上敲几下？', '', '1', null, '2', null, '3', null, '', null, '', null, '2', '0', '0');
INSERT INTO `question_bank` VALUES ('227', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '2', '小螃蟹晚上做了一个梦，梦见自己（）。', '', '变成火车司机开着大火车', null, '遇到了小青蟹坐上了他的火车', null, '小动物们都坐上了它的小火车，它好像变成了一个英雄。', null, '', null, '', null, '小动物们都坐上了它的小火车，它好像变成了一个英雄。', '0', '0');
INSERT INTO `question_bank` VALUES ('225', '2', '二年级', '孤独的小螃蟹', '', '8', '趣味测试', '多选题', '5', '（多选题） 这半只恐龙蛋，被鲁鲁当成了（）。', '', '睡觉时的摇篮', null, '过河时的小船', null, '下雨时的雨伞', null, '太阳晒时的帽子', null, '', null, '睡觉时的摇篮', '0', '0');
INSERT INTO `question_bank` VALUES ('224', '2', '二年级', '孤独的小螃蟹', '', '8', '趣味测试', '多选题', '4', '（多选题）从哪里可以看出恐龙鲁鲁很胆小？', '', '一阵风吹来，草叶一摇，它就害怕', null, '一片树叶落在它头上，它就害怕', null, '不敢离开恐龙蛋，一直背着半个恐龙壳', null, '', null, '', null, '一阵风吹来，草叶一摇，它就害怕', '0', '0');
INSERT INTO `question_bank` VALUES ('223', '2', '二年级', '孤独的小螃蟹', '', '8', '趣味测试', '选择题', '3', '小青蟹为什么又回来了？', '', '它觉得外面不好玩', null, '它遇到了困难', null, '它觉得不管哪里都比不上家里好', null, '', null, '', null, '它遇到了困难', '0', '0');
INSERT INTO `question_bank` VALUES ('221', '2', '二年级', '孤独的小螃蟹', '', '8', '趣味测试', '选择题', '1', '小青蟹为什么要离开？', '', '不喜欢小螃蟹了', null, '要去旅行', null, '要去找更好的地方', null, '', null, '', null, '要去找更好的地方', '0', '0');
INSERT INTO `question_bank` VALUES ('222', '2', '二年级', '孤独的小螃蟹', '', '8', '趣味测试', '选择题', '2', '小螃蟹难过的时候，会怎么做？', '', '躲藏在洞里，不出来', null, '生气地手舞足蹈', null, '吐一大堆泡泡，把自己藏起来', null, '', null, '', null, '吐一大堆泡泡，把自己藏起来', '0', '0');
INSERT INTO `question_bank` VALUES ('245', '2', '二年级', '孤独的小螃蟹', '', '8', '线上比拼', '选择题', '20', '小动物们送蛋糕给鲁鲁，向他唱生日歌，鲁鲁感觉（）。', '', '有朋友，还不错', null, '有朋友，还不错', null, '有朋友，多好啊', null, '有朋友，有礼物', null, '', null, '有朋友，还不错', '0', '0');
INSERT INTO `question_bank` VALUES ('267', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '1', '围炉守岁的日子是（）。', '', '大寒', null, '冬至', null, '除夕', null, '', null, '', null, '除夕', '0', '0');
INSERT INTO `question_bank` VALUES ('268', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '2', '传说寒冬岁末，夜里总有（C）出没。', '', '狼', null, '门神', null, '年兽', null, '', null, '', null, '年兽', '0', '0');
INSERT INTO `question_bank` VALUES ('269', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '3', '子虚先生赶路遇上了“半只”（），另一半只留下一团干硬的黑色血块。', '', '年兽', null, '鸡', null, '鸭', null, '', null, '', null, '鸡', '0', '0');
INSERT INTO `question_bank` VALUES ('270', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '4', '人们要是躲过年兽，大家都会高兴地说“（）”见面还会互相“恭喜”，恭喜对方躲过年兽。', '', '过年', null, '恭喜', null, '新年快乐', null, '', null, '', null, '过年', '0', '0');
INSERT INTO `question_bank` VALUES ('271', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '5', '小年兽能变成大年兽的任务是（）。', '', '吃掉一个人类并平安回到年兽国', null, '独自到传说中爱吃年兽的人类村庄呆一晚上并不用回到年兽国', null, '独自到传说中爱吃年兽的人类村庄呆一晚上并平安回到年兽国', null, '', null, '', null, '独自到传说中爱吃年兽的人类村庄呆一晚上并平安回到年兽国', '0', '0');
INSERT INTO `question_bank` VALUES ('272', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '6', '（多选题）子虚先生观察到小年兽“阿傩”（）得知年兽只吃草不吃肉。', '', '浑身细细软软的长毛，没有利爪，只有粗蹄；没有尖牙，只有钝齿', null, '浑身长长粗粗的短毛，没有利爪，只有粗蹄；没有钝齿，只有尖牙', null, '浑身细细软软的长毛，没有粗蹄，只有利爪；没有尖牙，只有钝齿', null, '浑身长长粗粗的短毛，没有利爪，只有粗蹄；没有钝齿，只有尖牙', null, '浑身细细软软的长毛，没有粗蹄，只有利爪；没有尖牙，只有钝齿', null, '浑身细细软软的长毛，没有利爪，只有粗蹄；没有尖牙，只有钝齿', '0', '0');
INSERT INTO `question_bank` VALUES ('273', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '7', '小年兽担心人类知道年兽不吃肉后，会（）', '', '继续怕年兽', null, '把年兽抓起来吃掉', null, '穿红色衣服驱赶年兽', null, '', null, '', null, '把年兽抓起来吃掉', '0', '0');
INSERT INTO `question_bank` VALUES ('274', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '多选题', '8', '（多选题）年兽害怕（）。', '', '火光', null, '巨大的响声', null, '鲜艳的红的', null, '“半只”鸡', null, '', null, 'ABC', '0', '0');
INSERT INTO `question_bank` VALUES ('275', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '9', '小年兽的名字叫（）。', '', '阿摊', null, '阿傩', null, '子虚', null, '', null, '', null, '阿傩', '0', '0');
INSERT INTO `question_bank` VALUES ('276', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '10', '年兽国里，年兽的名字是最最（）的。', '', '响亮', null, '敏感', null, '私密', null, '', null, '', null, '私密', '0', '0');
INSERT INTO `question_bank` VALUES ('277', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '11', '李老爹每天晚上都会梦到（C）。', '', '一条腾飞的龙', null, '一只巨大的年兽', null, '一颗血淋淋的龙头', null, '', null, '', null, '一颗血淋淋的龙头', '0', '0');
INSERT INTO `question_bank` VALUES ('278', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '多选题', '12', '（多选题）王大娘为了让李老爹睡得好点，给柱子出主意是（）。', '', '学将军站门吓走恶龙', null, '抓安神药给李老爹喝', null, '准备香烛', null, '水果去拜拜土地公', null, '', null, 'BC', '0', '0');
INSERT INTO `question_bank` VALUES ('279', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '13', '皇帝老爷睡不好，要大将军站门的原因是（）。', '', '巨大的年兽燃点鞭炮', null, '血淋淋的龙头来跟他索命', null, '血淋淋的龙头来跟他诉说冤情', null, '', null, '', null, '血淋淋的龙头来跟他索命', '0', '0');
INSERT INTO `question_bank` VALUES ('280', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '14', '那颗龙头是（）的。', '', '泾河龙王', null, '渭河龙王', null, '黄河龙王', null, '', null, '', null, '泾河龙王', '0', '0');
INSERT INTO `question_bank` VALUES ('281', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '15', '龙王因为和算命的半仙打赌降雨量，行云布雨时（）违背天条——要被砍头。', '', '不降雨', null, '不行云', null, '私下改雨量', null, '', null, '', null, '私下改雨量', '0', '0');
INSERT INTO `question_bank` VALUES ('282', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '16', '魏征在（）把龙王砍了，让皇帝失信于泾河龙王。', '', '棋盘上', null, '睡梦中', null, '皇宫里', null, '', null, '', null, '睡梦中', '0', '0');
INSERT INTO `question_bank` VALUES ('283', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '17', '帝老爷受惊后，皇宫上下什么办法都试过了，只有（）夜里给皇帝站门，寝宫才安宁下来。', '', '秦琼', null, '尉迟恭', null, '秦琼和尉迟恭', null, '', null, '', null, '秦琼和尉迟恭', '0', '0');
INSERT INTO `question_bank` VALUES ('284', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '18', '两位将军亲自站门，皇帝可以安睡。但皇帝心里为了两位将军的辛苦感到不安，所以想到（）。', '', '找人假扮将军站门', null, '找人画将军像贴在门上', null, '找人活抓龙王', null, '', null, '', null, '找人画将军像贴在门上', '0', '0');
INSERT INTO `question_bank` VALUES ('285', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '19', '大家都贴上了秦琼和尉迟恭两位将军的画像，他们成了（）的“门神”。', '', '守护百姓', null, '消灭恶龙', null, '保护皇帝', null, '', null, '', null, '守护百姓', '0', '0');
INSERT INTO `question_bank` VALUES ('286', '2', '二年级', '年兽阿傩', '', '9', '线上比拼', '选择题', '20', '古时候，还没有发明钟表，人们用“（）”的方法来推估时间。', '', '二十四节气图表', null, '立竿见影', null, '太阳在黄道的位置变化', null, '', null, '', null, '立竿见影', '0', '0');
INSERT INTO `question_bank` VALUES ('287', '2', '二年级', '团圆', '', '10', '趣味测试', '选择题', '1', '绘本《团圆》的作者是（）。', '', '朱成梁', null, '．余丽琼', null, '', null, '', null, '', null, '．余丽琼', '0', '0');
INSERT INTO `question_bank` VALUES ('288', '2', '二年级', '团圆', '', '10', '趣味测试', '选择题', '2', '（）包的汤圆里有一枚幸运钱币。', '', '．爸爸', null, '．妈妈', null, '．毛毛', null, '', null, '', null, '．妈妈', '0', '0');
INSERT INTO `question_bank` VALUES ('289', '2', '二年级', '团圆', '', '10', '趣味测试', '选择题', '3', '下面哪一句的说法是正确的（）。', '', '．汤圆里的钱币被毛毛弄丢了。', null, '．临别时，爸爸收下了毛毛送给他的娃娃，并承诺下次带回来。', null, '．毛毛觉得幸运钱币比大春的大红包更珍贵。', null, '', null, '', null, '．毛毛觉得幸运钱币比大春的大红包更珍贵。', '0', '0');
INSERT INTO `question_bank` VALUES ('290', '2', '二年级', '团圆', '', '10', '趣味测试', '选择题', '4', '下列事情中，哪件是爸爸回来没做的？', '', '．补窗户缝', null, '．刷新门漆', null, '．换新灯泡', null, '．陪毛毛打雪仗', null, '', null, '．陪毛毛打雪仗', '0', '0');
INSERT INTO `question_bank` VALUES ('291', '2', '二年级', '团圆', '', '10', '趣味测试', '选择题', '5', '爸爸要走了，毛毛把（）送给了爸爸。', '', '洋娃娃', null, '幸运金币', null, '', null, '', null, '', null, '幸运金币', '0', '0');
INSERT INTO `question_bank` VALUES ('292', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '1', '    余丽琼在书的扉页上留下的文字是：“（）。”', '', '给我的家人，还有朋友，永远怀念他们', null, '给我的父母和哥哥，还有爷爷，永远怀念他', null, '我永远怀念他们，我的父母和哥哥，还有爷爷', null, '', null, '', null, '我永远怀念他们，我的父母和哥哥，还有爷爷', '0', '0');
INSERT INTO `question_bank` VALUES ('293', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '2', '爸爸一年回家（）次。', '', '一次', null, '两次', null, '年兽', null, '', null, '', null, '一次', '0', '0');
INSERT INTO `question_bank` VALUES ('294', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '3', '爸爸在（）的上午回来的。', '', '大年三十', null, '大年初一', null, '大年初三', null, '', null, '', null, '大年三十', '0', '0');
INSERT INTO `question_bank` VALUES ('295', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '4', '“我”家里有几口人？', '', '三口', null, '四口', null, '五口', null, '', null, '', null, '三口', '0', '0');
INSERT INTO `question_bank` VALUES ('296', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '5', '爸爸理发之后，“我”有什么感觉？', '', '爸爸变帅了。', null, '爸爸越来越像以前的爸爸了！', null, '爸爸的发型很酷。', null, '', null, '', null, '爸爸的发型很酷。', '0', '0');
INSERT INTO `question_bank` VALUES ('297', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '6', '“我”在（）吃到了包在汤圆里的幸运钱币。', '', '大年初一', null, '除夕', null, '爸爸回来当天', null, '', null, '', null, '大年初一', '0', '0');
INSERT INTO `question_bank` VALUES ('298', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '7', '“我”吃到好运硬币，（）比“我”还开心', '', '妈妈', null, '爸爸', null, '', null, '', null, '', null, '爸爸', '0', '0');
INSERT INTO `question_bank` VALUES ('299', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '8', '爸爸带“我”到屋顶，“我”看到了()。', '', '小朋友们在堆雪人', null, '舞龙灯', null, '', null, '', null, '', null, '舞龙灯', '0', '0');
INSERT INTO `question_bank` VALUES ('300', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '9', '《团圆》这本书中，小动物（）一直陪伴着“我”。', '', '小白狗', null, '小白猫', null, '', null, '', null, '', null, '小白猫', '0', '0');
INSERT INTO `question_bank` VALUES ('301', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '10', '爸爸干活时，“我”（）。', '', '喂爸爸喝水', null, '喂爸爸喝牛奶', null, '喂爸爸吃东西', null, '', null, '', null, '喂爸爸喝水', '0', '0');
INSERT INTO `question_bank` VALUES ('302', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '16', '魏征在（）把龙王砍了，让皇帝失信于泾河龙王。', '', '棋盘上', null, '睡梦中', null, '皇宫里', null, '', null, '', null, '睡梦中', '0', '0');
INSERT INTO `question_bank` VALUES ('303', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '17', '帝老爷受惊后，皇宫上下什么办法都试过了，只有（）夜里给皇帝站门，寝宫才安宁下来。', '', '秦琼', null, '尉迟恭', null, '秦琼和尉迟恭', null, '', null, '', null, '秦琼和尉迟恭', '0', '0');
INSERT INTO `question_bank` VALUES ('304', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '18', '两位将军亲自站门，皇帝可以安睡。但皇帝心里为了两位将军的辛苦感到不安，所以想到（）。', '', '找人假扮将军站门', null, '找人画将军像贴在门上', null, '找人活抓龙王', null, '', null, '', null, '找人画将军像贴在门上', '0', '0');
INSERT INTO `question_bank` VALUES ('305', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '19', '大家都贴上了秦琼和尉迟恭两位将军的画像，他们成了（）的“门神”。', '', '守护百姓', null, '消灭恶龙', null, '保护皇帝', null, '', null, '', null, '守护百姓', '0', '0');
INSERT INTO `question_bank` VALUES ('306', '2', '二年级', '团圆', '', '10', '线上比拼', '选择题', '20', '古时候，还没有发明钟表，人们用“（）”的方法来推估时间。', '', '二十四节气图表', null, '立竿见影', null, '太阳在黄道的位置变化', null, '', null, '', null, '立竿见影', '0', '0');
INSERT INTO `question_bank` VALUES ('307', '2', '二年级', '花瓣儿鱼', '', '1', '趣味测试', '选择题', '1', '“老鸹”指的是。', '', '麻雀', null, '乌鸦', null, '老鹰', null, '喜鹊', null, '', null, '乌鸦', '0', '0');
INSERT INTO `question_bank` VALUES ('308', '2', '二年级', '花瓣儿鱼', '', '1', '趣味测试', '选择题', '2', '⑵小小鸟最后变成了一只。', '', '五彩鸟', null, '大鸟', null, '蜜蜂', null, '蝴蝶', null, '', null, '蝴蝶', '0', '0');
INSERT INTO `question_bank` VALUES ('309', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '1', '《风筝鸟》中的风筝鸟学着的飞翔姿势开始飞向蓝天。', '', '燕子', null, '乌鸦', null, '老鹰', null, '喜鹊', null, '', null, '燕子', '0', '0');
INSERT INTO `question_bank` VALUES ('310', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '2', '《根鸟》中“我”决定雕刻纪念这片被砍伐的树林。', '', '一条龙', null, '一只鸟', null, '一头熊', null, '一只猪', null, '', null, '一只鸟', '0', '0');
INSERT INTO `question_bank` VALUES ('311', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '3', '《白丁香紫丁香》中奶奶种了一颗白丁香，种了一颗紫丁香。', '', '妈妈', null, '爸爸', null, '妹妹', null, '爷爷', null, '', null, '爷爷', '0', '0');
INSERT INTO `question_bank` VALUES ('312', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '4', '《熊奶奶的生日》中毛毛熊为了给奶奶庆祝生日，毛毛熊采了一束。', '', '紫丁香', null, '红玫瑰', null, '紫玫瑰', null, '红丁香', null, '', null, '红玫瑰', '0', '0');
INSERT INTO `question_bank` VALUES ('313', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '5', '《白乌鸦》中诗人的诗歌中把乌鸦称为。', '', '歌唱家', null, '美食家', null, '农学家', null, '科学家', null, '', null, '农学家', '0', '0');
INSERT INTO `question_bank` VALUES ('314', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '6', '《白乌鸦》中诗人的诗歌把称为“白衣天使”。', '', '白乌鸦', null, '白鸽子', null, '白喜鹊', null, '白百灵', null, '', null, '白乌鸦', '0', '0');
INSERT INTO `question_bank` VALUES ('315', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '7', '《红气球》中红气球在遇到了一窝可爱的鸟儿。', '', '屋顶上', null, '草丛上', null, '树枝上', null, '天空中', null, '', null, '树枝上', '0', '0');
INSERT INTO `question_bank` VALUES ('316', '2', '二年级', '花瓣儿鱼', '', '1', '线上比拼', '选择题', '8', '《屋顶上的小树》中老爷爷把屋顶上的小树移到继续种植。', '', '路边', null, '森林', null, '院子', null, '河边', null, '', null, '院子', '0', '0');
INSERT INTO `question_bank` VALUES ('317', '2', '二年级', '走过小木桥', '', '2', '趣味测试', '选择题', '2', '“故意”的意思是：（）。', '', '有意', null, '特意', null, '用心', null, '', null, '', null, '有意', '0', '0');
INSERT INTO `question_bank` VALUES ('318', '2', '二年级', '走过小木桥', '', '2', '趣味测试', '选择题', '3', '别的男生笑“我”像个小姑娘一样。的意思是：(）', '', '长得像小姑娘', null, '行为举止像小姑娘', null, '是小姑娘', null, '', null, '', null, '行为举止像小姑娘', '0', '0');
INSERT INTO `question_bank` VALUES ('319', '2', '二年级', '走过小木桥', '', '2', '趣味测试', '选择题', '4', '我不愿意说出鼓手搀我过河的原因是：（）。', '', '我不记得他的名字', null, '我担心你男生取笑我', null, '我忘记说', null, '', null, '', null, '我担心你男生取笑我', '0', '0');
INSERT INTO `question_bank` VALUES ('320', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '1', '别的男生故意从小桥上飞奔而去的主要目的是什么？（）', '', '他们都不想上课迟到', null, '为了表现自己跑得很快', null, '让小桥一弹一弹很好玩', null, '嘲笑不敢走小木桥的“我”', null, '', null, '嘲笑不敢走小木桥的“我”', '0', '0');
INSERT INTO `question_bank` VALUES ('321', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '2', '文中写野花天空风筝的主要作用是什么？（）', '', '说明这条路上的风景很优美', null, '突出鼓手热情和善良的品格', null, '表现“我”在路上心情的变化', null, '说明我喜欢边走路边看风景', null, '', null, '表现“我”在路上心情的变化', '0', '0');
INSERT INTO `question_bank` VALUES ('322', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '3', '本文告诉我们（）', '', '应该去帮助别人渡过难关', null, '求人帮助常常是一件困难的事', null, '帮助别人的经历总是令人难忘', null, '很多事情需要第一次尝试', null, '', null, '很多事情需要第一次尝试', '0', '0');
INSERT INTO `question_bank` VALUES ('323', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '4', '“我”因（       ）获得了勇气，后来一直都是走小桥上学。', '', '得到小哥哥的搀扶', null, '男生们的取笑', null, '自己走过小桥', null, '．妈妈的鼓励', null, '', null, '得到小哥哥的搀扶', '0', '0');
INSERT INTO `question_bank` VALUES ('324', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '5', '鼓手是个（）的人。', '', '．勇敢', null, '乐于助人', null, '胆小', null, '', null, '', null, '乐于助人', '0', '0');
INSERT INTO `question_bank` VALUES ('325', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '6', '“犹豫”的意思是（）。', '', '害怕。', null, '疑惑。', null, '迟疑，不果断，缺少主见。', null, '', null, '', null, '迟疑，不果断，缺少主见。', '0', '0');
INSERT INTO `question_bank` VALUES ('326', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '7', '下面不正确的是（）。', '', '很多事情总要有第一次的尝试。', null, '很多事情总要有人帮助，才能会突变。', null, '克服害怕的心理，勇于去尝试。', null, '．第一次得到了帮助，信心会倍增。', null, '', null, '很多事情总要有人帮助，才能会突变。', '0', '0');
INSERT INTO `question_bank` VALUES ('327', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '8', '鼓手所说的：“很简单的。”的意思是（）。', '', '过桥方法单一。', null, '过桥不难', null, '不复杂。', null, '过桥很平凡。', null, '', null, '过桥不难', '0', '0');
INSERT INTO `question_bank` VALUES ('328', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '9', '《走过小木桥》的主题是：（）。', '', '友谊', null, '亲情', null, '感恩', null, '', null, '', null, '感恩', '0', '0');
INSERT INTO `question_bank` VALUES ('329', '2', '二年级', '走过小木桥', '', '2', '线上比拼', '选择题', '10', '《走过小木桥》的作者是（）', '', '常羽辰', null, '梅子涵', null, '陈先云', null, '', null, '', null, '梅子涵', '0', '0');
INSERT INTO `question_bank` VALUES ('341', '2', '二年级', '一起长大的玩具', '', '3', '趣味测试', '选择题', '1', '兔儿爷的外貌很奇特，他有（）。', '', '人脸儿，兔身子', null, '兔脸儿，兔身子', null, '兔脸儿，人身子', null, '', null, '', null, '兔脸儿，人身子', '0', '0');
INSERT INTO `question_bank` VALUES ('342', '2', '二年级', '一起长大的玩具', '', '3', '趣味测试', '选择题', '2', '会飞的枯叶是（）', '', '黄色的树叶', null, '风吹起的落叶', null, '枯叶蛱蝶', null, '', null, '', null, '枯叶蛱蝶', '0', '0');
INSERT INTO `question_bank` VALUES ('343', '2', '二年级', '一起长大的玩具', '', '3', '趣味测试', '选择题', '3', '蜗牛变大成为大水牛去田那边看看，我变小到蜗牛的家里（）。', '', '背关于蜗牛的儿歌', null, '读有趣的书', null, '发脾', null, '', null, '', null, '读有趣的书', '0', '0');
INSERT INTO `question_bank` VALUES ('344', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '13', '“我”最喜欢的兔儿爷叫（）。', '', '噼里啪啦嘴', null, '咯哒咯哒嘴', null, '呱嗒呱嗒嘴', null, '', null, '', null, '呱嗒呱嗒嘴', '0', '0');
INSERT INTO `question_bank` VALUES ('345', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '14', '（）教“我”涂色上蜡，让我的孙悟空脸谱容光焕发。', '', '卖脸谱的小贩', null, '妈妈', null, '我自己', null, '', null, '', null, '妈妈', '0', '0');
INSERT INTO `question_bank` VALUES ('346', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '15', '马（）睡觉。', '', '躺着', null, '趴着', null, '站着', null, '', null, '', null, '站着', '0', '0');
INSERT INTO `question_bank` VALUES ('347', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '16', '放河灯那天，奶奶带着“我”放了一盏（）。', '', '西瓜灯', null, '莲花灯', null, '南瓜灯', null, '', null, '', null, '西瓜灯', '0', '0');
INSERT INTO `question_bank` VALUES ('348', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '17', '每一次见到外祖父，他都给我吃（）。', '', '藤萝饼', null, '桂花粥', null, '玫瑰酱', null, '', null, '', null, '玫瑰酱', '0', '0');
INSERT INTO `question_bank` VALUES ('349', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '18', '图中的植物是（）。', '', '水浮莲', null, '睡莲', null, '浮萍', null, '', null, '', null, '水浮莲', '0', '0');
INSERT INTO `question_bank` VALUES ('350', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '19', '今年夏天，“我”战胜了自己，学会了（）。', '', '沉稳', null, '镇静', null, '游泳', null, '', null, '', null, '游泳', '0', '0');
INSERT INTO `question_bank` VALUES ('351', '2', '二年级', '一起长大的玩具', '', '3', '题目', '选择题', '20', '小雪兔们请“我”和外婆一定要记住带（）。', '', '“兔儿伞”花', null, '月饼', null, '儿歌', null, '', null, '', null, '月饼', '0', '0');
INSERT INTO `question_bank` VALUES ('352', '2', '二年级', '洋葱头历险记', '', '5', '趣味测试', '选择题', '1', '《洋葱头历险记》的作者是（）', '', '安徒生', null, '贾尼·罗大里', null, '任溶溶', null, '', null, '', null, '安徒生', '0', '0');
INSERT INTO `question_bank` VALUES ('353', '2', '二年级', '洋葱头历险记', '', '5', '趣味测试', '选择题', '2', '洋葱头一共被抓进监狱几次？（）', '', '一次', null, '两次', null, '三次', null, '', null, '', null, '两次', '0', '0');
INSERT INTO `question_bank` VALUES ('354', '2', '二年级', '洋葱头历险记', '', '5', '趣味测试', '选择题', '3', '是谁帮助洋葱头在刑场救下青豆律师？（）', '', '葡萄师傅', null, '小胡萝卜', null, '鼹鼠', null, '', null, '', null, '鼹鼠', '0', '0');
INSERT INTO `question_bank` VALUES ('355', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '1', '老洋葱被柠檬兵戴上手铐带走的原因是（）', '', '味道太难闻', null, '踩了柠檬王一脚', null, '被人推倒在地', null, '', null, '', null, '踩了柠檬王一脚', '0', '0');
INSERT INTO `question_bank` VALUES ('356', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '2', '老洋葱让洋葱头周游世界并研究一样东西，是什么东西？（）', '', '坏人和骗子', null, '书本的知识', null, '好人', null, '', null, '', null, '坏人和骗子', '0', '0');
INSERT INTO `question_bank` VALUES ('357', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '3', '蜈蚣爸爸有（）个儿子。', '', '三', null, '两', null, '一', null, '', null, '', null, '两', '0', '0');
INSERT INTO `question_bank` VALUES ('358', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '判断题', '4', '柠檬兵带走了村里所有的男人，但却没有抓走小葱大叔，因为（）', '', '小葱大叔逃走了', null, '小葱大叔藏起来了', null, '小葱大叔在晾衣服', null, '', null, '', null, '小葱大叔在晾衣服', '0', '0');
INSERT INTO `question_bank` VALUES ('359', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '判断题', '5', '小樱桃悲伤成疾是因为（）', '', '他和洋葱头交上了朋友但却不能在一起', null, '芹菜先生把他批评了一顿', null, '樱桃女伯爵把他赶出了城堡。', null, '', null, '', null, '他和洋葱头交上了朋友但却不能在一起', '0', '0');
INSERT INTO `question_bank` VALUES ('360', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '6', '小草莓给监狱里的梨教授南瓜老爷他们带来了什么？（）', '', '洋蜡烛和火柴', null, '丰盛的食物', null, '挖地道的工具', null, '', null, '', null, '洋蜡烛和火柴', '0', '0');
INSERT INTO `question_bank` VALUES ('361', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '7', '是谁帮助洋葱头见到监狱里的好友们？（）', '', '小樱桃', null, '小草莓', null, '老鼹鼠', null, '', null, '', null, '老鼹鼠', '0', '0');
INSERT INTO `question_bank` VALUES ('362', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '8', '番茄骑士把钥匙放在哪里？（）', '', '袜子里', null, '柜子里', null, '裤兜里', null, '', null, '', null, '袜子里', '0', '0');
INSERT INTO `question_bank` VALUES ('363', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '9', '柠檬王封小葱大叔为银胡子骑士的原因是什么？（）', '', '觉得小葱的胡子好神气', null, '觉得小葱的脾气特别好', null, '觉得小葱可以帮助他战胜洋葱头', null, '', null, '', null, '觉得小葱的胡子好神气', '0', '0');
INSERT INTO `question_bank` VALUES ('364', '2', '二年级', '洋葱头历险记', '', '5', '线上比拼', '选择题', '10', '把所有财产吃得一干二净，不得已才到大女伯爵家来的是谁？（）', '', '蜜柑公爵', null, '橘子男爵', null, '胡萝卜先生', null, '', null, '', null, '橘子男爵', '0', '0');
INSERT INTO `question_bank` VALUES ('365', '2', '二年级', '爷爷一定有办法', '', '5', '趣味测试', '选择题', '1', '当约瑟和妈妈不能解决问题时，约瑟就去找（）。', '', '爷爷', null, '爸爸', null, '', null, '', null, '', null, '爷爷', '0', '0');
INSERT INTO `question_bank` VALUES ('366', '2', '二年级', '爷爷一定有办法', '', '5', '趣味测试', '选择题', '2', '每当约瑟找爷爷帮忙时，总会说一句（）。', '', '爷爷一定有办法', null, '爷爷真厉害', null, '', null, '', null, '', null, '爷爷一定有办法', '0', '0');
INSERT INTO `question_bank` VALUES ('367', '2', '二年级', '爷爷一定有办法', '', '5', '趣味测试', '选择题', '3', '在约瑟是娃娃的时候，爷爷给约瑟做了一条（A）。', '', '毯子', null, '被子', null, '', null, '', null, '', null, '毯子', '0', '0');
INSERT INTO `question_bank` VALUES ('368', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '1', '当约瑟的毯子又旧又破时，爷爷把它改成了（）。', '', '雨伞', null, '外套', null, '', null, '', null, '', null, '外套', '0', '0');
INSERT INTO `question_bank` VALUES ('369', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '2', '当约瑟的外套缩水变小时，爷爷把它改成了（）。', '', '背心', null, '手套', null, '', null, '', null, '', null, '背心', '0', '0');
INSERT INTO `question_bank` VALUES ('370', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '3', '当约瑟的背心粘上了胶水和颜料时，爷爷把它改成了（）。', '', '围裙', null, '领带', null, '', null, '', null, '', null, '领带', '0', '0');
INSERT INTO `question_bank` VALUES ('371', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '4', '当约瑟的领带脏了，变形时，爷爷把它改成了（）。', '', '手帕', null, '毛巾', null, '', null, '', null, '', null, '手帕', '0', '0');
INSERT INTO `question_bank` VALUES ('372', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '5', '当约瑟的手帕用得破破烂烂斑斑点点时，爷爷把它改成了（）。', '', '抹布', null, '纽扣', null, '', null, '', null, '', null, '纽扣', '0', '0');
INSERT INTO `question_bank` VALUES ('373', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '6', '最后，约瑟的纽扣（）。', '', '没有了', null, '不在了', null, '消失了', null, '送给了同学', null, '', null, '没有了', '0', '0');
INSERT INTO `question_bank` VALUES ('374', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '7', '约瑟的蓝色毯子被爷爷改得（）。', '', '越来越大', null, '越来越小', null, '', null, '', null, '', null, '越来越小', '0', '0');
INSERT INTO `question_bank` VALUES ('375', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '8', '小老鼠一家有了（A）的蓝色布料。', '', '越来越多', null, '越来越少', null, '', null, '', null, '', null, '越来越多', '0', '0');
INSERT INTO `question_bank` VALUES ('376', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '9', '小老鼠一家的蓝色布料是从（）那儿得到的。', '', '约瑟妈妈', null, '约瑟爷爷', null, '', null, '', null, '', null, '约瑟爷爷', '0', '0');
INSERT INTO `question_bank` VALUES ('377', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '10', '从故事中，我们猜一猜，爷爷可能是一位（）', '', '裁缝', null, '厨师', null, '', null, '', null, '', null, '裁缝', '0', '0');
INSERT INTO `question_bank` VALUES ('378', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '11', '故事里出现的人物有爷爷，有约瑟，有妈妈，还有（）。', '', '叔叔', null, '小老鼠一家', null, '', null, '', null, '', null, '小老鼠一家', '0', '0');
INSERT INTO `question_bank` VALUES ('379', '2', '二年级', '爷爷一定有办法', '', '5', '线上比拼', '选择题', '12', '故事最开始发生的时间是在约瑟（）的时候。', '', '读书', null, '还是娃娃', null, '', null, '', null, '', null, '读书', '0', '0');
INSERT INTO `question_bank` VALUES ('380', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '趣味测试', '选择题', '1', '粪金龟滚粪球最主要的目的是（）', '', '储备粮食', null, '好玩', null, '', null, '', null, '', null, '储备粮食', '0', '0');
INSERT INTO `question_bank` VALUES ('381', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '趣味测试', '选择题', '2', '叩头虫“叩头”的原因是（）', '', '躲避危险', null, ':兴奋', null, '', null, '', null, '', null, '躲避危险', '0', '0');
INSERT INTO `question_bank` VALUES ('382', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '趣味测试', '选择题', '3', '蚯蚓被称为（）', '', '害虫', null, '“松土好帮手”', null, '', null, '', null, '', null, '“松土好帮手”', '0', '0');
INSERT INTO `question_bank` VALUES ('383', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '趣味测试', '选择题', '4', '大负子虫喜欢生活在（）', '', '草地里', null, '池塘里', null, '', null, '', null, '', null, '池塘里', '0', '0');
INSERT INTO `question_bank` VALUES ('384', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '趣味测试', '选择题', '5', '海参喷内脏主要是为了逃避天敌的伤害。海参新的“五脏六腑”可以自己再长出来，大概需要（）天。', '', '100', null, '50', null, '', null, '', null, '', null, '50', '0', '0');
INSERT INTO `question_bank` VALUES ('385', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '1', '海星身体,没有脚，却能灵活自如的移动。', '', '扁扁的', null, '圆圆的', null, '', null, '', null, '', null, '扁扁的', '0', '0');
INSERT INTO `question_bank` VALUES ('386', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '2', '海星“会走路”的秘密藏在它的里。', '', '吸盘', null, '肚子', null, '', null, '', null, '', null, '肚子', '0', '0');
INSERT INTO `question_bank` VALUES ('387', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '3', '竹节虫喜欢吃植物，分布在我国云南贵州等少数民族。', '', '叶子', null, '根', null, '', null, '', null, '', null, '叶子', '0', '0');
INSERT INTO `question_bank` VALUES ('388', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '4', '竹节虫称为。', '', '“拟态”', null, '“伪装者”', null, '', null, '', null, '', null, '“拟态”', '0', '0');
INSERT INTO `question_bank` VALUES ('389', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '5', '水母的触手上的一粒听石就像一个。', '', '风暴探测器', null, '天气预报', null, '', null, '', null, '', null, '风暴探测器', '0', '0');
INSERT INTO `question_bank` VALUES ('390', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '8', '招潮蟹喜欢,喜欢在潮间带活动。', '', '鱼肉', null, '虾肉', null, '动物内脏', null, '', null, '', null, '鱼肉', '0', '0');
INSERT INTO `question_bank` VALUES ('391', '2', '二年级', '大负子虫爸爸的快乐', '', '6', '线上比拼', '选择题', '9', '海胆是个,只要一见到敌人，就立马逃得无影无踪。', '', '英雄', null, '胆小鬼', null, '', null, '', null, '', null, '胆小鬼', '0', '0');
INSERT INTO `question_bank` VALUES ('392', '2', '二年级', '一只会开枪狮子', '', '7', '趣味测试', '选择题', '1', '小狮子的枪是从那里得到的。', '', '老狮子', null, '猎人', null, '谢尔比大叔', null, '马戏团老板', null, '', null, '猎人', '0', '0');
INSERT INTO `question_bank` VALUES ('393', '2', '二年级', '一只会开枪狮子', '', '7', '趣味测试', '选择题', '2', '当小狮子的要求被人拒绝时，它会回答，让对方答应它。', '', '咕噜噜噜噜噜噢呜', null, '喵呜呜呜呜呜噜啊', null, '哇啦啦啦啦啦咕噜', null, '呼噜噜噜噜噜呜啦', null, '', null, '咕噜噜噜噜噜噢呜', '0', '0');
INSERT INTO `question_bank` VALUES ('394', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '1', '跟小狮子说会给小狮子果汁软糖，所以小狮子跟着他离开了森林', '', '马戏团老板', null, '谢尔比大叔', null, '猎人', null, '老狮子', null, '', null, '马戏团老板', '0', '0');
INSERT INTO `question_bank` VALUES ('395', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '2', '马戏团老板带着小狮子住在酒店。', '', '亮晶晶', null, '轰隆隆', null, '绿油油', null, '笑哈哈', null, '', null, '轰隆隆', '0', '0');
INSERT INTO `question_bank` VALUES ('396', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '3', '离开森林时，马戏团老板让小狮子带上。', '', '毛巾', null, '水杯', null, '牙膏', null, '牙刷', null, '', null, '牙刷', '0', '0');
INSERT INTO `question_bank` VALUES ('397', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '4', '小狮子在马路上遇见谢尔比大叔后，小狮子请谢尔比大叔指点它去。', '', '轰隆隆酒店', null, '理发店', null, '高级饭店', null, '裁缝铺', null, '', null, '理发店', '0', '0');
INSERT INTO `question_bank` VALUES ('398', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '5', '小狮子觉得实在是太好吃了。', '', '羊排', null, '巧克力', null, '果汁软糖', null, '兔子', null, '', null, '果汁软糖', '0', '0');
INSERT INTO `question_bank` VALUES ('399', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '6', '马戏团老板为小狮子起了一个新名字，叫做。', '', '拉夫卡迪奥大王', null, '格噜噜大王', null, '', null, '', null, '', null, '拉夫卡迪奥大王', '0', '0');
INSERT INTO `question_bank` VALUES ('400', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '6', '马戏团老板为小狮子起了一个新名字，叫做。', '', '嗷嗷嗷夫大王', null, '芬奇芬格大王', null, '', null, '', null, '', null, '嗷嗷嗷夫大王', '0', '0');
INSERT INTO `question_bank` VALUES ('401', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '7', '小狮子在马戏团里被誉为“”。', '', '游泳王子', null, '神射手', null, '神枪手', null, '空中飞人', null, '', null, '神枪手', '0', '0');
INSERT INTO `question_bank` VALUES ('402', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '8', '小狮子出名后，人人都要他的签名。他可以同时签个名字。', '', '四', null, '五', null, '六', null, '七', null, '', null, '六', '0', '0');
INSERT INTO `question_bank` VALUES ('403', '2', '二年级', '一只会开枪狮子', '', '7', '线上比拼', '选择题', '9', '当小狮子想要点新花样时，谢尔比大叔让小狮子去。', '', '开飞机', null, '读书', null, '打网球', null, '打猎', null, '', null, '打猎', '0', '0');
INSERT INTO `question_bank` VALUES ('404', '2', '二年级', '当世界年纪还小的时候', '', '8', '趣味测试', '选择题', '1', '当世界年级还小的时候就叫作_。', '', '伊甸园', null, '陆地', null, '', null, '', null, '', null, '伊甸园', '0', '0');
INSERT INTO `question_bank` VALUES ('405', '2', '二年级', '当世界年纪还小的时候', '', '8', '趣味测试', '选择题', '2', '太阳通过学习学会了__。', '', '发光', null, '生活', null, '', null, '', null, '', null, '发光', '0', '0');
INSERT INTO `question_bank` VALUES ('406', '2', '二年级', '当世界年纪还小的时候', '', '8', '趣味测试', '选择题', '3', '月亮通过学习学会了。', '', '发光', null, '不停地变化', null, '', null, '', null, '', null, '不停地变化', '0', '0');
INSERT INTO `question_bank` VALUES ('407', '2', '二年级', '当世界年纪还小的时候', '', '8', '趣味测试', '选择题', '4', '水通过学习学会了。', '', '不停地变化', null, '流动', null, '', null, '', null, '', null, '流动', '0', '0');
INSERT INTO `question_bank` VALUES ('408', '2', '二年级', '当世界年纪还小的时候', '', '8', '趣味测试', '选择题', '5', '只要，这个世界就开始有秩序了。', '', '做最容易的事', null, '简单的生活着', null, '', null, '', null, '', null, '做最容易的事', '0', '0');
INSERT INTO `question_bank` VALUES ('409', '2', '二年级', '当世界年纪还小的时候', '', '8', '线上比拼', '选择题', '1', '一天，一个小女孩正在做家庭作业。来到她的面前，对她说：“小女孩，跟我走吧，时间已经到了。”', '', '死神', null, '魔鬼', null, '', null, '', null, '', null, '死神', '0', '0');
INSERT INTO `question_bank` VALUES ('410', '2', '二年级', '当世界年纪还小的时候', '', '8', '线上比拼', '选择题', '2', '每种事物都有自己的，不可替代。', '', '特点', null, '时间', null, '', null, '', null, '', null, '特点', '0', '0');
INSERT INTO `question_bank` VALUES ('411', '2', '二年级', '当世界年纪还小的时候', '', '8', '线上比拼', '选择题', '3', '三把椅子故事中，大儿子给父亲带回来，二儿子给父亲带回来,小儿子给父亲带回来。', '', '粘住的椅子', null, '弹出的椅子', null, '普通的椅子', null, '', null, '', null, '粘住的椅子', '0', '0');
INSERT INTO `question_bank` VALUES ('412', '2', '二年级', '当世界年纪还小的时候', '', '8', '线上比拼', '选择题', '4', '在汽车的故事里，和汽车谈话不能提及到的是。', '', '猫', null, '船', null, '', null, '', null, '', null, '船', '0', '0');
INSERT INTO `question_bank` VALUES ('413', '2', '二年级', '当世界年纪还小的时候', '', '8', '线上比拼', '选择题', '5', '大象的故事中，大象内心深处很。', '', '快乐和高兴', null, '沉重和阴霾', null, '', null, '', null, '', null, '快乐和高兴', '0', '0');
INSERT INTO `question_bank` VALUES ('414', '2', '二年级', '没头脑和不高兴', '', '5', '趣味测试', '选择题', '1', '“没头脑”是因为（），所以大家这样称呼他。', '', '脑袋特别小', null, '不聪明', null, '记什么都打个折扣', null, '喜欢耍脾气', null, '', null, '记什么都打个折扣', '0', '0');
INSERT INTO `question_bank` VALUES ('415', '2', '二年级', '没头脑和不高兴', '', '5', '趣味测试', '选择题', '2', '（）给大家表演钢丝滚球，结果钢丝最后承受不住，嘣一下断了。', '', '甄用工', null, '泰焦傲', null, '不高兴', null, '小妖精', null, '', null, '泰焦傲', '0', '0');
INSERT INTO `question_bank` VALUES ('416', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '1', '“不高兴”长大以后想当什么？（）', '', '建筑工程师', null, '演员', null, '歌唱家', null, '', null, '', null, '演员', '0', '0');
INSERT INTO `question_bank` VALUES ('417', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '2', '“没头脑”长大了要当什么？（）', '', '建筑工程师', null, '演员', null, '歌唱家', null, '', null, '', null, '建筑工程师', '0', '0');
INSERT INTO `question_bank` VALUES ('418', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '3', '“没头脑”设计的少年宫有多少层？（）', '', '一百层', null, '两百层', null, '三百层', null, '', null, '', null, '三百层', '0', '0');
INSERT INTO `question_bank` VALUES ('419', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '4', '没头脑在设计少年宫时忘了设计什么？（）', '', '电梯', null, '剧场', null, '休息室', null, '', null, '', null, '电梯', '0', '0');
INSERT INTO `question_bank` VALUES ('420', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '5', '泰焦傲的拿手表演是什么？（）', '', '钻火圈', null, '走钢丝', null, '变魔术', null, '', null, '', null, '走钢丝', '0', '0');
INSERT INTO `question_bank` VALUES ('421', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '6', '闹闹最喜欢吃什么菜？（）', '', '炒鸡蛋', null, '炒番茄', null, '土豆丝', null, '', null, '', null, '炒鸡蛋', '0', '0');
INSERT INTO `question_bank` VALUES ('422', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '7', '小妖精教给阿土的咒语其实是什么？（）', '', '芝麻开门', null, '乘法表', null, '绿豆开门', null, '', null, '', null, '乘法表', '0', '0');
INSERT INTO `question_bank` VALUES ('423', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '8', '每当多多准备发脾气的时候，爷爷都会在他耳边说什么？（）', '', '不要发脾气', null, '脾气精', null, '要乖乖的', null, '', null, '', null, '脾气精', '0', '0');
INSERT INTO `question_bank` VALUES ('424', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '9', '小姑娘说：“看得我头发都竖起来了。”意思是什么？（）', '', '她觉得很恐怖', null, '她觉得很高兴', null, '她想要把头发竖起来', null, '', null, '', null, '她觉得很恐怖', '0', '0');
INSERT INTO `question_bank` VALUES ('425', '2', '二年级', '没头脑和不高兴', '', '5', '线上比拼', '选择题', '10', '青蛙爷爷讲了什么故事，谁都没听出来，是因为什么呢？（）', '', '青蛙爷爷嗓子不好', null, '其他小青蛙一直在呱呱呱', null, '刮风下雨，太吵了', null, '', null, '', null, '其他小青蛙一直在呱呱呱', '0', '0');
INSERT INTO `question_bank` VALUES ('426', '2', '二年级', '神笔马良', '', '2', '趣味测试', '填空题', '1', '）小熊听见枪响，（）跑了出去。', '', '噌的一下', null, '哗的一声', null, '嗖的一声响', null, '', null, '', null, '嗖的一声响', '0', '0');
INSERT INTO `question_bank` VALUES ('427', '2', '二年级', '神笔马良', '', '2', '趣味测试', '填空题', '3', '《牧童三娃》中的花神给三娃的三粒种子，分别变成的宝贝请按顺序排列。（）。', '', '仙水', null, '大凿子', null, '宝剑', null, '', null, '', null, '仙水', '0', '0');
INSERT INTO `question_bank` VALUES ('428', '2', '二年级', '神笔马良', '', '2', '趣味测试', '填空题', '4', '《大奖章》中（）最后获得大奖章。', '', '小熊', null, '驴', null, '小猪', null, '', null, '', null, '小熊', '0', '0');
INSERT INTO `question_bank` VALUES ('429', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '1', '马良的神笔是（    ）的。', '', '金灿灿', null, '五光十色', null, '黑色', null, '', null, '', null, '金灿灿', '0', '0');
INSERT INTO `question_bank` VALUES ('430', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '2', '马良用神笔画的第一件东西是（    ）。', '', '一只鸟', null, '金元宝', null, '耕地的牛', null, '', null, '', null, '一只鸟', '0', '0');
INSERT INTO `question_bank` VALUES ('431', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '3', '《神笔马良》的故事告诉我们（    ）的道理。', '', '神笔画什么就会有什么', null, '人不能太贪婪，要靠自己的勤劳获得财富', null, '不要逼马良画他不想画的东西', null, '', null, '', null, '人不能太贪婪，要靠自己的勤劳获得财富', '0', '0');
INSERT INTO `question_bank` VALUES ('432', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '4', '《牧童三娃》中的三娃很（）。', '', '勇敢', null, '胆小', null, '调皮', null, '', null, '', null, '勇敢', '0', '0');
INSERT INTO `question_bank` VALUES ('433', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '5', '《牧童三娃》中是（）把羊偷走的。', '', '黑风', null, '狼', null, '蛇精', null, '', null, '', null, '蛇精', '0', '0');
INSERT INTO `question_bank` VALUES ('434', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '6', '《牧童三娃》中花神用（）变成了金色的凤凰。', '', '牡丹花的叶子', null, '牡丹花', null, '披肩上的彩带', null, '', null, '', null, '披肩上的彩带', '0', '0');
INSERT INTO `question_bank` VALUES ('435', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '7', '《大奖章》中小熊和小猪参加了（）比赛。', '', '举重', null, '跑步', null, '铅球', null, '', null, '', null, '跑步', '0', '0');
INSERT INTO `question_bank` VALUES ('436', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '8', '在运动会中，驴因为()输给了小熊。', '', '骄傲', null, '尾巴被夹在树枝', null, '跑得慢', null, '', null, '', null, '骄傲', '0', '0');
INSERT INTO `question_bank` VALUES ('437', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '9', '《大奖章》告诉我们：（）。', '', '骄傲使人落后', null, '要小看对手', null, '要有侥幸的心态', null, '', null, '', null, '骄傲使人落后', '0', '0');
INSERT INTO `question_bank` VALUES ('438', '2', '二年级', '神笔马良', '', '2', '线上比拼', '选择题', '10', '《神笔马良》的作者是（）', '', '王泉根', null, '洪汛涛', null, '陈先云', null, '', null, '', null, '洪汛涛', '0', '0');
INSERT INTO `question_bank` VALUES ('439', '2', '二年级', '小猪唏哩呼噜', '', '9', '趣味测试', '选择题', '1', '小猪唏哩呼噜是谁()。', '', '小十二', null, '小十一', null, '老大', null, '小四', null, '', null, '小十二', '0', '0');
INSERT INTO `question_bank` VALUES ('440', '2', '二年级', '小猪唏哩呼噜', '', '9', '趣味测试', '选择题', '2', '《小猪唏哩呼噜》的作者是谁()。', '', '孙幼军', null, '安徒生', null, '杨红樱', null, '鲁兵', null, '', null, '孙幼军', '0', '0');
INSERT INTO `question_bank` VALUES ('441', '2', '二年级', '小猪唏哩呼噜', '', '9', '趣味测试', '选择题', '3', '猫先生替（ ）抓耗子。', '', '唏哩呼噜', null, '猪太太', null, '猪先生', null, '花花', null, '', null, '猪太太', '0', '0');
INSERT INTO `question_bank` VALUES ('442', '2', '二年级', '小猪唏哩呼噜', '', '9', '趣味测试', '选择题', '4', '鸭太太的姐姐夸小猪唏哩呼噜保镖当得好，给他买了好多（ ）。', '', '大香蕉', null, '大西瓜', null, '大苹果', null, '橘子', null, '', null, '大香蕉', '0', '0');
INSERT INTO `question_bank` VALUES ('443', '2', '二年级', '小猪唏哩呼噜', '', '9', '趣味测试', '选择题', '5', '哇呜老师终于把这群吵闹的学生弄回来时，教室里响起了巨响，原来是：（）。', '', '小猴挂吊灯的声音', null, '小狐狸跺地板的声音', null, '小猪打呼噜的声音', null, '', null, '', null, '小猪打呼噜的声音', '0', '0');
INSERT INTO `question_bank` VALUES ('444', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '1', '小猴子皮皮因为（  ），满嘴的牙都掉光了。', '', '骑自行车摔倒了', null, '吃了小猪的橘子', null, '被妈妈打的', null, '', null, '', null, '吃了小猪的橘子', '0', '0');
INSERT INTO `question_bank` VALUES ('445', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '2', '唏哩呼噜想要通过（  ）得到一辆自行车。', '', '在家里大闹', null, '假装不吃饭', null, '自己去挣钱', null, '', null, '', null, '自己去挣钱', '0', '0');
INSERT INTO `question_bank` VALUES ('446', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '3', '小蛇花花在耗子洞里等到第四天早晨才出来，是因为花花（  ）。', '', '被耗子咬伤了', null, '吃了两只大耗子太饱就睡着了', null, '到牛太太家去玩了', null, '', null, '', null, '吃了两只大耗子太饱就睡着了', '0', '0');
INSERT INTO `question_bank` VALUES ('447', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '4', '小猪替狐狸掌柜运垃圾，狐狸掌柜最后送小猪（  ）。', '', '一块大蛋糕', null, '两个大“心里美”萝卜', null, '一个大鸡蛋', null, '', null, '', null, '一个大鸡蛋', '0', '0');
INSERT INTO `question_bank` VALUES ('448', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '5', '教小猪的哇呜老师原来就是之前叼他的（   ）。', '', '大狼', null, '月牙熊', null, '熊先生', null, '', null, '', null, '大狼', '0', '0');
INSERT INTO `question_bank` VALUES ('449', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '6', '小猪唏哩呼噜跟着小狐狸来到了（    ），结果把钱全部花光了。', '', '游乐园', null, '电子游戏厅', null, '蛋糕店', null, '', null, '', null, '游乐园', '0', '0');
INSERT INTO `question_bank` VALUES ('450', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '7', '猩猩老二被打，误认为老棕熊是（   ）的高徒，连称他为大侠。', '', '山羊老汉', null, '小猪唏哩呼噜', null, '花花', null, '', null, '', null, '小猪唏哩呼噜', '0', '0');
INSERT INTO `question_bank` VALUES ('451', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '8', '鸡太太家闹鬼了，请来（   ）捉鬼。', '', '猫先生', null, '小猪唏哩呼噜', null, '猴子皮皮', null, '', null, '', null, '小猪唏哩呼噜', '0', '0');
INSERT INTO `question_bank` VALUES ('452', '2', '二年级', '小猪唏哩呼噜', '', '9', '线上比拼', '选择题', '9', '小猪守着鸡宅，深夜被惊醒，吓得躲在大筐里，结果孵出了一筐的（） 。', '', '小鸡崽', null, '小鸭子', null, '小麻雀', null, '', null, '', null, '小鸭子', '0', '0');
INSERT INTO `question_bank` VALUES ('453', '2', '二年级', '了不起的狐狸爸爸', '', '10', '趣味测试', '选择题', '1', '《了不起的狐狸爸爸》的作者是（  ）。', '', '美国的海明威', null, '爱尔兰的奥斯卡·王尔德', null, '英国的罗尔德·达尔', null, '', null, '', null, '英国的罗尔德·达尔', '0', '0');
INSERT INTO `question_bank` VALUES ('454', '2', '二年级', '了不起的狐狸爸爸', '', '10', '趣味测试', '选择题', '2', '邦斯爱吃（ ），博吉斯爱吃（  ），比恩是爱吃（ ）。  ', '', '水煮鸡', null, '面卷和鹅肝', null, '烈性苹果酒', null, '', null, '', null, '水煮鸡', '0', '0');
INSERT INTO `question_bank` VALUES ('455', '2', '二年级', '了不起的狐狸爸爸', '', '10', '趣味测试', '选择题', '3', '三个饲养场的场主是（ ）的人。', '', '善良', null, '大方', null, '有钱', null, '乐于助人', null, '卑鄙', null, '大方', '0', '0');
INSERT INTO `question_bank` VALUES ('456', '2', '二年级', '了不起的狐狸爸爸', '', '10', '趣味测试', '选择题', '4', '故狐狸先生有（   ）个孩子。', '', '三个', null, '四个', null, '二个', null, '五个', null, '', null, '四个', '0', '0');
INSERT INTO `question_bank` VALUES ('457', '2', '二年级', '了不起的狐狸爸爸', '', '10', '趣味测试', '选择题', '5', '之前狐狸爸爸为什么能闻到三个饲养场主的味道？（ ）', '', '他们很近', null, '狐狸爸爸逆风而行', null, '他们的气味很臭', null, '', null, '', null, '他们的气味很臭', '0', '0');
INSERT INTO `question_bank` VALUES ('458', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '1', '狐狸爸爸的什么被三个饲养场主打掉了？（）', '', '耳朵', null, '手', null, '尾巴', null, '', null, '', null, '尾巴', '0', '0');
INSERT INTO `question_bank` VALUES ('459', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '2', '狐狸们是用什么与饲场主的铁锹挖掘机进行了一场时间赛跑？（）', '', '挖掘机', null, '铁锹', null, '爪子', null, '', null, '', null, '爪子', '0', '0');
INSERT INTO `question_bank` VALUES ('460', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '3', '用挖掘机来挖狐狸一家的办法失败后，比恩又提出什么办法？（）', '', '用枪打', null, '用铁锹挖', null, '围困，饿出狐狸先生一家', null, '', null, '', null, '围困，饿出狐狸先生一家', '0', '0');
INSERT INTO `question_bank` VALUES ('461', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '4', '狐狸先生一家在被围困了多少时间，狐狸先生才想到了好办法？（）', '', '三天三夜', null, '两天两夜', null, '两天三夜', null, '', null, '', null, '三天三夜', '0', '0');
INSERT INTO `question_bank` VALUES ('462', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '5', '狐狸先生带领孩子们挖地道，第一次挖到的地方是（）。', '', '酒窖', null, '博吉斯的1号鸡舍', null, '大仓库', null, '', null, '', null, '博吉斯的1号鸡舍', '0', '0');
INSERT INTO `question_bank` VALUES ('463', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '6', '博吉斯有股（  ）气味，邦斯有股（ ）气味，比恩有股（   ）气味。', '', '鹅肝的臭气', null, '烂鸡皮的恶臭味', null, '苹果酒的', null, '', null, '', null, '鹅肝的臭气', '0', '0');
INSERT INTO `question_bank` VALUES ('464', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '7', '三个饲养场主中谁最聪明（  ）', '', '博吉斯', null, '邦斯', null, '比恩', null, '', null, '', null, '博吉斯', '0', '0');
INSERT INTO `question_bank` VALUES ('465', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '8', '要从邦斯的大仓库里带走胡萝卜给兔子吃的是（）。', '', '小狐狸', null, '狐狸先生', null, '獾', null, '', null, '', null, '獾', '0', '0');
INSERT INTO `question_bank` VALUES ('466', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '9', '狐狸爸爸的(  )被三个饲养场主打掉了？', '', '耳朵', null, '手', null, '眼睛', null, '尾巴', null, '', null, '眼睛', '0', '0');
INSERT INTO `question_bank` VALUES ('467', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '10', '狐狸们是用（   ）与铁锹挖掘机进行了一场时间赛跑。', '', '挖掘机', null, '铁锹', null, '爪子', null, '', null, '', null, '挖掘机', '0', '0');
INSERT INTO `question_bank` VALUES ('468', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '11', '用挖掘机来挖狐狸一家的办法失败后，比恩又提出（   ）办法。', '', '用枪打', null, '用铁锹挖', null, '围困，饿出狐狸先生一家', null, '', null, '', null, '用铁锹挖', '0', '0');
INSERT INTO `question_bank` VALUES ('469', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '12', '狐狸先生一家在被围困了（ ）时间，狐狸先生才想到了好办法。', '', '三天三夜', null, '两天两夜', null, '两天三夜', null, '', null, '', null, '两天两夜', '0', '0');
INSERT INTO `question_bank` VALUES ('470', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '13', '在宴会上，狐狸先生打算建立一座地下小村庄，让自己每天像（)一样吃饭。', '', '有钱人', null, '老板', null, '国王', null, '', null, '', null, '老板', '0', '0');
INSERT INTO `question_bank` VALUES ('471', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '14', '狐狸先生带领孩子们挖地道，第一次挖到的地方是（    ）。', '', '酒窖', null, '博吉斯的1号鸡舍', null, '大仓库', null, '', null, '', null, '大仓库', '0', '0');
INSERT INTO `question_bank` VALUES ('472', '2', '二年级', '了不起的狐狸爸爸', '', '10', '线上比拼', '选择题', '15', '在博吉斯的号鸡舍里，他们拿了（ ）只肥母鸡。', '', '二', null, '三', null, '四', null, '', null, '', null, '二', '0', '0');
INSERT INTO `question_bank` VALUES ('473', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '趣味测试', '选择题', '1', '《古都食空大冒险》系列的作者是（   ）。', '', '荆方', null, '孙幼军', null, '金波', null, '', null, '', null, '荆方', '0', '0');
INSERT INTO `question_bank` VALUES ('474', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '趣味测试', '选择题', '2', '吃豆花咸甜有别，北方吃（）。', '', '咸豆花', null, '甜豆花', null, '辣豆花', null, '', null, '', null, '咸豆花', '0', '0');
INSERT INTO `question_bank` VALUES ('475', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '趣味测试', '选择题', '3', '老北京火锅的专用鲜花，你知道是（）。', '', '玫瑰', null, '餐英菊', null, '茉莉花', null, '', null, '', null, '餐英菊', '0', '0');
INSERT INTO `question_bank` VALUES ('476', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '趣味测试', '选择题', '4', '故事中的（）就是小容的亲生母亲。', '', '崔大娘', null, '李二娘', null, '云想裳', null, '', null, '', null, '崔大娘', '0', '0');
INSERT INTO `question_bank` VALUES ('477', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '趣味测试', '选择题', '5', '原书的最后的是一幅()。', '', '朝代图', null, '满汉全席图', null, '北京市井图', null, '', null, '', null, '朝代图', '0', '0');
INSERT INTO `question_bank` VALUES ('478', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '1', '胡同里的满汉全席主要是讲小宝仔穿越去（）的故事。', '', '清朝', null, '明朝', null, '元朝', null, '', null, '', null, '清朝', '0', '0');
INSERT INTO `question_bank` VALUES ('479', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '2', '书中用栗子花生莲子和糖渍玫瑰花瓣等摆成一个漂亮图案的是(）', '', '驴打滚儿', null, '八宝粥', null, '肠粉', null, '', null, '', null, '八宝粥', '0', '0');
INSERT INTO `question_bank` VALUES ('480', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '3', '崔大娘家用来洗手的是（)。', '', '澡豆', null, '沐浴露', null, '桂花油', null, '', null, '', null, '澡豆', '0', '0');
INSERT INTO `question_bank` VALUES ('481', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '4', '北方火锅中的菊花锅，所用的是（）。', '', '野菊花', null, '餐英菊', null, '矢车菊', null, '', null, '', null, '餐英菊', '0', '0');
INSERT INTO `question_bank` VALUES ('482', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '5', '过年时街上响起的铃声是（）。', '', '驼铃声', null, '给宫里送水的水车铃声', null, '马的铃铛声', null, '', null, '', null, '给宫里送水的水车铃声', '0', '0');
INSERT INTO `question_bank` VALUES ('483', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '6', '九九消寒图是中国民间年画，寄托人们盼望（）尽快来临的的期待。', '', '春天', null, '夏天', null, '秋天', null, '', null, '', null, '春天', '0', '0');
INSERT INTO `question_bank` VALUES ('484', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '7', '下面属于老北京家常菜的是（）。', '', '干炸丸子', null, '麻婆豆腐', null, '白切鸡', null, '', null, '', null, '干炸丸子', '0', '0');
INSERT INTO `question_bank` VALUES ('485', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '8', '老北京冰糖葫芦最早使用的原材料是（)。', '', '苹果', null, '山楂', null, '枣', null, '', null, '', null, '山楂', '0', '0');
INSERT INTO `question_bank` VALUES ('486', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '9', '故事中的云想最喜欢唱（）。', '', '昆曲', null, '京剧', null, '山歌', null, '', null, '', null, '昆曲', '0', '0');
INSERT INTO `question_bank` VALUES ('487', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '10', '猩小宝仔最终在（)回到了现代。', '', '老崔家', null, '皇宫', null, '庄亲王府', null, '', null, '', null, '庄亲王府', '0', '0');
INSERT INTO `question_bank` VALUES ('488', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '13', '在宴会上，狐狸先生打算建立一座地下小村庄，让自己每天像（)一样吃饭。', '', '有钱人', null, '老板', null, '国王', null, '', null, '', null, '老板', '0', '0');
INSERT INTO `question_bank` VALUES ('489', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '14', '狐狸先生带领孩子们挖地道，第一次挖到的地方是（    ）。', '', '酒窖', null, '博吉斯的1号鸡舍', null, '大仓库', null, '', null, '', null, '大仓库', '0', '0');
INSERT INTO `question_bank` VALUES ('490', '2', '二年级', '古都食空大冒险之胡同里的满汉全席', '', '11', '线上比拼', '选择题', '15', '在博吉斯的号鸡舍里，他们拿了（ ）只肥母鸡。', '', '二', null, '三', null, '四', null, '', null, '', null, '二', '0', '0');
INSERT INTO `question_bank` VALUES ('491', '2', '二年级', '跟着爸爸去旅行', '', '12', '趣味测试', '选择题', '1', '我们居住在（）。', '', '火星', null, '地球', null, '水星', null, '', null, '', null, '地球', '0', '0');
INSERT INTO `question_bank` VALUES ('492', '2', '二年级', '跟着爸爸去旅行', '', '12', '趣味测试', '选择题', '2', '天津的著名小吃是（）。', '', '狗不理包子', null, '灌汤包', null, '生煎包', null, '', null, '', null, '狗不理包子', '0', '0');
INSERT INTO `question_bank` VALUES ('493', '2', '二年级', '跟着爸爸去旅行', '', '12', '趣味测试', '选择题', '3', '山西省被誉为（）。', '', '煤铁之乡', null, '鱼米之乡', null, '柚子之乡', null, '', null, '', null, '煤铁之乡', '0', '0');
INSERT INTO `question_bank` VALUES ('494', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '1', '我们的邻国是（）。', '', '朝鲜', null, '美国', null, '法国', null, '意大利', null, '', null, '朝鲜', '0', '0');
INSERT INTO `question_bank` VALUES ('495', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '2', '我们有（）民族。', '', '55', null, '56', null, '5', null, '', null, '', null, '56', '0', '0');
INSERT INTO `question_bank` VALUES ('496', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '3', '蒙古族世代生活草原上，善于骑射，被称作是（）。', '', '马背上的民族', null, '勇敢的民族', null, '艰苦的民族', null, '', null, '', null, '马背上的民族', '0', '0');
INSERT INTO `question_bank` VALUES ('497', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '4', '哈尔滨位于（）。', '', '黑龙江省', null, '广东省', null, '台湾省', null, '', null, '', null, '黑龙江省', '0', '0');
INSERT INTO `question_bank` VALUES ('498', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '5', '上海的标志是（），它坐落在黄浦江畔的浦东新区。', '', '广州塔', null, '东方明珠', null, '上海铁塔', null, '', null, '', null, '东方明珠', '0', '0');
INSERT INTO `question_bank` VALUES ('499', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '6', '被称为“东方威尼斯”的是（）。', '', '江苏省', null, '广东省', null, '新疆', null, '', null, '', null, '江苏省', '0', '0');
INSERT INTO `question_bank` VALUES ('500', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '7', '景德镇以生产（）而闻名。', '', '瓷器', null, '兵器', null, '铁罐', null, '', null, '', null, '瓷器', '0', '0');
INSERT INTO `question_bank` VALUES ('501', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '8', '鼓浪屿是（）的一座小岛，岛上秀丽优雅，被称为“海上花园”。', '', '厦门市', null, '北京市', null, '重庆市', null, '', null, '', null, '厦门市', '0', '0');
INSERT INTO `question_bank` VALUES ('502', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '9', '“桂林山水甲天下”的桂林市我国（）。', '', '山西省', null, '广西壮族自治区', null, '新疆维吾尔自治区', null, '', null, '', null, '广西壮族自治区', '0', '0');
INSERT INTO `question_bank` VALUES ('503', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '10', '海南省盛产（）。', '', '棉花', null, '煤矿', null, '椰子', null, '', null, '', null, '椰子', '0', '0');
INSERT INTO `question_bank` VALUES ('504', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '5', '过年时街上响起的铃声是（）。', '', '驼铃声', null, '给宫里送水的水车铃声', null, '马的铃铛声', null, '', null, '', null, '给宫里送水的水车铃声', '0', '0');
INSERT INTO `question_bank` VALUES ('505', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '6', '九九消寒图是中国民间年画，寄托人们盼望（）尽快来临的的期待。', '', '春天', null, '夏天', null, '秋天', null, '', null, '', null, '春天', '0', '0');
INSERT INTO `question_bank` VALUES ('506', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '7', '下面属于老北京家常菜的是（）。', '', '干炸丸子', null, '麻婆豆腐', null, '白切鸡', null, '', null, '', null, '干炸丸子', '0', '0');
INSERT INTO `question_bank` VALUES ('507', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '8', '老北京冰糖葫芦最早使用的原材料是（)。', '', '苹果', null, '山楂', null, '枣', null, '', null, '', null, '山楂', '0', '0');
INSERT INTO `question_bank` VALUES ('508', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '9', '故事中的云想最喜欢唱（）。', '', '昆曲', null, '京剧', null, '山歌', null, '', null, '', null, '昆曲', '0', '0');
INSERT INTO `question_bank` VALUES ('509', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '10', '猩小宝仔最终在（)回到了现代。', '', '老崔家', null, '皇宫', null, '庄亲王府', null, '', null, '', null, '庄亲王府', '0', '0');
INSERT INTO `question_bank` VALUES ('510', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '13', '在宴会上，狐狸先生打算建立一座地下小村庄，让自己每天像（)一样吃饭。', '', '有钱人', null, '老板', null, '国王', null, '', null, '', null, '老板', '0', '0');
INSERT INTO `question_bank` VALUES ('511', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '14', '狐狸先生带领孩子们挖地道，第一次挖到的地方是（    ）。', '', '酒窖', null, '博吉斯的1号鸡舍', null, '大仓库', null, '', null, '', null, '大仓库', '0', '0');
INSERT INTO `question_bank` VALUES ('512', '2', '二年级', '跟着爸爸去旅行', '', '12', '线上比拼', '选择题', '15', '在博吉斯的号鸡舍里，他们拿了（ ）只肥母鸡。', '', '二', null, '三', null, '四', null, '', null, '', null, '二', '0', '0');
INSERT INTO `question_bank` VALUES ('513', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '1', '1、小贝被大家说是既不会跑也不会跳的笨小猫。（    ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('514', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '2', '2、淘气鬼抓走小贝，把它当作汽车玩。（    ）', '', '对', null, '不对', null, '', null, '', null, '', null, '对', '0', '0');
INSERT INTO `question_bank` VALUES ('516', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '3', '3、小贝用头把装着自己的鞋盒子顶开。（    ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('517', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '4', '4、小贝在大草原的第一个夜晚遇到了小兔子。（     ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('518', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '5', '5、大白猫收留了小贝，但大黑狗却要把它赶走。（     ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('519', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '6', '6、小老虎花花说，“熊”就是“笨蛋”的意思。（     ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('520', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '7', '7、吉吉特别讨厌狗，很不喜欢别人叫他“狗熊”。（     ）', '', '对', null, '不对', null, '', null, '', null, '', null, '对', '0', '0');
INSERT INTO `question_bank` VALUES ('521', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '8', '8、“小歪帽儿”是吉吉的一个好朋友。（    ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('522', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '9', '9、“小歪帽儿”因为胶卷用完了，所以就没有给吉吉拍照。（    ）', '', '对', null, '不对', null, '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('524', '2', '二年级', '小贝流浪记', '', '12', '线上比拼', '判断题', '10', '10、吉吉希望自己是小老虎、梅花鹿、豹子。（    ）', '', '对', null, '不对', null, '', null, '', null, '', null, '对', '0', '0');
INSERT INTO `question_bank` VALUES ('525', '2', '二年级', '蔡伦', '', '6', '趣味测试', '填空题', '1', '人们一般把文字写在    上，然后用绳子串联成册，但这样太笨重了。', '', '竹片或木片上', null, '', null, '', null, '', null, '', null, '', '0', '1');
INSERT INTO `question_bank` VALUES ('526', '2', '二年级', '蔡伦', '', '6', '趣味测试', '填空题', '2', '有人把文字写在   上，这样虽然轻便，书写也很容易，却相当昂贵。', '', '丝帛', null, '', null, '', null, '', null, '', null, '', '0', '1');
INSERT INTO `question_bank` VALUES ('527', '2', '二年级', '蔡伦', '', '6', '趣味测试', '填空题', '3', '东汉时期。纸是用    做成的，所以价格昂贵。', '', '麻', null, '', null, '', null, '', null, '', null, '', '0', '1');
INSERT INTO `question_bank` VALUES ('528', '2', '二年级', '蔡伦', '', '6', '趣味测试', '填空题', '4', '东汉时期蔡伦。用  腐蚀树皮，渔网，破麻布等这些材料。', '', '生石灰', null, '', null, '', null, '', null, '', null, '', '0', '1');
INSERT INTO `question_bank` VALUES ('529', '2', '二年级', '蔡伦', '', '6', '趣味测试', '填空题', '5', '蔡伦改进造纸工艺，最后终于制作出了轻薄柔韧，    ，价格低廉的纸。', '', '取材容易', null, '', null, '', null, '', null, '', null, '', '0', '1');
INSERT INTO `question_bank` VALUES ('547', '3', '三年级', '测试', '', null, '', '判断题', null, '判断题', '', '对', '', '不对', '', '', null, '', null, '', null, '不对', '0', '0');
INSERT INTO `question_bank` VALUES ('548', '3', '三年级', '测试', '', null, '', '填空题', null, '这是第一个空_第二个空_', '', '白色条纹', '', '黑色条纹', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `question_bank` VALUES ('545', '3', '三年级', '测试', '', null, '', '选择题', null, '选择题', '', 'A', '', 'B', '', 'C', '', '', '', '', '', 'A', '0', '0');
INSERT INTO `question_bank` VALUES ('546', '3', '三年级', '测试', '', null, '', '多选题', null, '多选题', '2020/03/05/question__5e60b3a28851e2.18161045.png', 'AA', '', 'BB', '', 'CC', '', 'DD', '', '', '', 'ADC', '0', '0');
INSERT INTO `question_bank` VALUES ('544', '3', '三年级', '弟弟行为', '刘振圆', '2', '调试', '选择题', '1', '这是测试', '2020/03/03/question__5e5e1df7b71ee9.51912330.png', '测试1', '2020/03/03/question__5e5e1e0eb3de64.56526865.png', '测试2', '2020/03/03/question__5e5e1e14d49243.56408659.png', '测试3', '', '测试4', '', '测试5', '2020/03/03/question__5e5e1e1a254db2.46460280.png', 'A', '3', '0');

-- ----------------------------
-- Table structure for `question_grade`
-- ----------------------------
DROP TABLE IF EXISTS `question_grade`;
CREATE TABLE `question_grade` (
  `id` int(11) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_grade
-- ----------------------------
INSERT INTO `question_grade` VALUES ('1', '一年级');
INSERT INTO `question_grade` VALUES ('2', '二年级');
INSERT INTO `question_grade` VALUES ('3', '三年级');
INSERT INTO `question_grade` VALUES ('4', '四年级');
INSERT INTO `question_grade` VALUES ('5', '五年级');
INSERT INTO `question_grade` VALUES ('6', '六年级');
INSERT INTO `question_grade` VALUES ('7', '七年级');
INSERT INTO `question_grade` VALUES ('8', '八年级');
INSERT INTO `question_grade` VALUES ('9', '九年级');

-- ----------------------------
-- Table structure for `question_grade_coef`
-- ----------------------------
DROP TABLE IF EXISTS `question_grade_coef`;
CREATE TABLE `question_grade_coef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL,
  `grade_name` varchar(30) DEFAULT NULL,
  `grade_coef` float(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_grade_coef
-- ----------------------------
INSERT INTO `question_grade_coef` VALUES ('1', '1', '一年级', '1.00');
INSERT INTO `question_grade_coef` VALUES ('2', '2', '二年级', '1.00');
INSERT INTO `question_grade_coef` VALUES ('3', '3', '三年级', '1.10');
INSERT INTO `question_grade_coef` VALUES ('4', '4', '四年级', '1.10');
INSERT INTO `question_grade_coef` VALUES ('5', '5', '五年级', '1.20');
INSERT INTO `question_grade_coef` VALUES ('6', '6', '六年级', '1.20');
INSERT INTO `question_grade_coef` VALUES ('7', '7', '七年级', '1.30');
INSERT INTO `question_grade_coef` VALUES ('8', '8', '八年级', '1.30');
INSERT INTO `question_grade_coef` VALUES ('9', '9', '九年级', '1.40');

-- ----------------------------
-- Table structure for `question_type`
-- ----------------------------
DROP TABLE IF EXISTS `question_type`;
CREATE TABLE `question_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_type
-- ----------------------------
INSERT INTO `question_type` VALUES ('1', '选择题');
INSERT INTO `question_type` VALUES ('2', '多选题');
INSERT INTO `question_type` VALUES ('3', '判断题');
INSERT INTO `question_type` VALUES ('4', '填空题');

-- ----------------------------
-- Table structure for `question_type_coef`
-- ----------------------------
DROP TABLE IF EXISTS `question_type_coef`;
CREATE TABLE `question_type_coef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(30) NOT NULL,
  `type_id` int(30) DEFAULT NULL,
  `type_coef` float(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_type_coef
-- ----------------------------
INSERT INTO `question_type_coef` VALUES ('1', '选择题', '1', '0.60');
INSERT INTO `question_type_coef` VALUES ('2', '多选题', '2', '0.80');
INSERT INTO `question_type_coef` VALUES ('3', '判断题', '3', '0.40');
INSERT INTO `question_type_coef` VALUES ('4', '填空题', '4', '1.00');

-- ----------------------------
-- Table structure for `question_user`
-- ----------------------------
DROP TABLE IF EXISTS `question_user`;
CREATE TABLE `question_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT '',
  `question_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question_user
-- ----------------------------

-- ----------------------------
-- Table structure for `rank`
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在学校',
  `grade` int(11) DEFAULT NULL COMMENT '年级',
  `class` int(11) DEFAULT NULL COMMENT '班级',
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `score` double(50,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rank
-- ----------------------------
INSERT INTO `rank` VALUES ('1', '1', '华南师范大学附属小学', '1', '1', '李飞发', '23456.00');
INSERT INTO `rank` VALUES ('2', '2', '华南师范大学附属小学', '1', '1', '李明', '23456.00');
INSERT INTO `rank` VALUES ('3', '3', '华南师范大学附属小学', '1', '1', '李小飞', '23456.00');
INSERT INTO `rank` VALUES ('4', '4', '华南师范大学附属小学', '1', '2', '张叶龙', '23650.00');
INSERT INTO `rank` VALUES ('5', '5', '华南师范大学附属小学', '1', '2', '李飞从', '795.00');
INSERT INTO `rank` VALUES ('6', '6', '华南师范大学附属小学', '1', '2', '王婷', '22447.00');
INSERT INTO `rank` VALUES ('7', '7', '梅北小学', '1', '3', '袁经', '21687.00');
INSERT INTO `rank` VALUES ('8', '8', '梅北小学', '1', '4', '陈婷', '21880.00');
INSERT INTO `rank` VALUES ('9', '9', '梅北小学', '1', '3', '许琪', '20860.00');
INSERT INTO `rank` VALUES ('10', '10', '梅北小学', '1', '3', '里飞', '23731.00');
INSERT INTO `rank` VALUES ('11', '11', '梅北小学', '1', '4', '李俊', '19511.00');
INSERT INTO `rank` VALUES ('12', '12', '梅北小学', '1', '1', '张叶', '23450.00');
INSERT INTO `rank` VALUES ('13', '13', '梅北小学', '1', '1', '王小婷', '22345.00');
INSERT INTO `rank` VALUES ('14', '14', '敦南小学', '1', '1', '袁经理', '21687.00');
INSERT INTO `rank` VALUES ('15', '15', '敦南小学', '1', '1', '陈雅婷', '21680.00');
INSERT INTO `rank` VALUES ('16', '16', '敦南小学', '1', '4', '小刚', '989.00');
INSERT INTO `rank` VALUES ('17', '17', '敦南小学', '1', '4', '许安琪', '20890.00');
INSERT INTO `rank` VALUES ('18', '18', '敦南小学', '1', '4', '里俊飞', '28741.00');
INSERT INTO `rank` VALUES ('19', 'obO635YhDHsBbjBwrAA4beShJDqE', null, null, null, 'Dhaos????', '590.00');
INSERT INTO `rank` VALUES ('20', '-1', null, null, null, 'zhongzhuming', '1550.00');

-- ----------------------------
-- Table structure for `read`
-- ----------------------------
DROP TABLE IF EXISTS `read`;
CREATE TABLE `read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of read
-- ----------------------------
INSERT INTO `read` VALUES ('1', '2', '海星是怎么吃东西的', '我们通常都认为，温和的动物是食草的，凶猛的动物是食肉的。那么，这些文静得几乎一动不动的海星应该更适合于吃海藻或者浮游生物吧！但事实恰好相反，海星不但是食肉动物，而且是凶狠的食肉动物。当然，它们并不会像猎豹或者鲨鱼那样以迅雷不及掩耳的速度来攻击猎物，但是，它们可以慢慢地接近对手，然后用带有吸盘的管足给对手一个亲密的拥抱。螃蟹、贝类和海胆等海洋动物常常会被海星整个裹住。那么，海星裹住它们之后，是怎样把这些食物吃掉的呢？\r\n我们知道动物吃东西都是离不开口的，那么海星的口在哪里呢？把海星翻过来就可以看到，海星所有', '我们通常都认为，温和的动物是食草的，凶猛的动物是食肉的。那么，这些文静得几乎一动不动的海星应该更适合于吃海藻或者浮游生物吧！但事实恰好相反，海星不但是食肉动物，而且是凶狠的食肉动物。当然，它们并不会像猎豹或者鲨鱼那样以迅雷不及掩耳的速度来攻击猎物，但是，它们可以慢慢地接近对手，然后用带有吸盘的管足给对手一个亲密的拥抱。螃蟹、贝类和海胆等海洋动物常常会被海星整个裹住。那么，海星裹住它们之后，是怎样把这些食物吃掉的呢？\r\n我们知道动物吃东西都是离不开口的，那么海星的口在哪里呢？把海星翻过来就可以看到，海星所有的步带沟都汇集到中间一点，这个中心位置就连着海星的口。海星的口位于体盘的正下方，口面向下，可与海星爬过的物体表面直接接触，这就为海星捕食猎物提供了条件。不过，海星吃东西，口只是一个通道，胃才是真正的“凶器”。\r\n\r\n由于海星没有眼睛，它是靠身上的多种化学感受器来寻找食物的。当它们慢慢接近猎物，并快速地用腕上的管足捉住对手后，就会把整个身体裹上去包住猎物，然后，把自己的胃从口中吐出来。接下来，胃中的消化酶被迅速释放到猎物身上，把猎物溶解掉再吸食进去。这种消化被称为体外消化，整个过程和蜘蛛把消化液吐在食物上溶解后再吸收是差不多的。\r\n\r\n如果猎物是一只贝壳类动物，海星就把身体固定在贝壳上方，用两腕把贝壳两侧吸住，通过管足末端吸盘的作用，将双壳类的壳硬拉开来，然后将胃从口中吐出，直接插到猎物壳的开口内。当对手的内脏和闭壳肌被消化溶解后，整个壳就自然而然被打开了，海星可以非常方便地用胃包裹食物一同吸入口内，进行最后的消化。\r\n\r\n当然，并不是所有的海星都是这么吃东西的。一些短腕或者管足没有吸盘的海星种类，无法对抗很厉害的猎物，它们就以较小的甲壳类等动物为食，取食时将对手整个吞下去。这时候，它们的消化方式和多数种类的海星不同，它们的消化不是在体外，而是直接在胃内进行，称为体内消化。还有一些在深海生活的海星，是以身上细细的纤毛过滤食物颗粒后，直接“喝”进去吃掉的。别看海星个头不大，它们的食量却很大，一个海星幼体一天吃的食物量，要比它自身重量的一半还多。\r\n\r\n海星的不同摄食方式是和它们的生活环境不同相关的，这就是生物适应性的表现。', '7c59dce08bd05707d51e944cf7e08b8.png', '', '十万个为什么');
INSERT INTO `read` VALUES ('2', '2', '大型公共建筑为什么常常采用悬索结构', '悬索结构的建筑还能形成强烈的雕塑感。比如日本著名建筑师丹下健三设计的东京代代木国立综合体育馆，一座为两个相对错位的新月形，一座为螺旋形，像只大蜗牛。两馆均采用悬索结构，创造出了富有紧张感和灵动感的大型内部空间和独特的外部形态。该作品被誉为20世纪最美的建筑之一。', '人们很早就开始采用悬索结构制造桥梁了。早在1000多年前，中国先民就已经用竹索和铁链来建造悬索桥，而蒙古包这样的帐篷则被看成是悬索结构建筑的原型。\r\n现代悬索结构的主要承重构件是一系列高强度的钢索，按照一定规律悬挂在支撑结构上，因此很容易做到大跨度。这种结构自重很轻，耗钢量又少，本身占用空间也不多，所以是一种比较理想的大跨度结构形式，且跨度越大，经济效益就越显著。悬索结构在桥梁中的运用最为广泛，比如，堪称当今世界第四、中国第一的江阴长江大桥就是一座钢悬索桥，主跨度达1385米。\r\n\r\n像体育馆、展览馆、飞机库这样的大跨度建筑之所以采用悬索结构，就是为了最大可能地形成室内无柱的大空间，以满足容纳飞机、大型展示和比赛场地的需要。中国悬索结构大跨度建筑的经典之作是完成于1961年的北京工人体育馆，当时是为举办第26届世界乒乓球锦标赛而建造的。建筑平面为圆形，面积40 200平方米，可容纳15 000名观众。屋面采用轮辐式双层悬索结构，跨度达到94米，共有144根悬索。经改造更新，该馆成为2008年北京奥运会的拳击主赛场和残奥会盲人柔道比赛场地。\r\n\r\n悬索结构的建筑还能形成强烈的雕塑感。比如日本著名建筑师丹下健三设计的东京代代木国立综合体育馆，一座为两个相对错位的新月形，一座为螺旋形，像只大蜗牛。两馆均采用悬索结构，创造出了富有紧张感和灵动感的大型内部空间和独特的外部形态。该作品被誉为20世纪最美的建筑之一。', '27fe52d67d1f804fc285ae505006b72.png', null, '十万个为什么');
INSERT INTO `read` VALUES ('3', '2', '仙人掌放在计算机旁真能防辐射吗', '在计算机旁摆放一盆仙人掌，绿化环境，增添情趣，让人心旷神怡，缓解一下工作疲劳是有好处的，但是防辐射就实在是“强仙人掌所难”了。', '不少人听说过仙人掌放在计算机旁边可以防辐射的说法，这种说法靠谱吗？\r\n\r\n首先我们要了解一下什么是计算机辐射。打开计算机机箱，你会发现里面布满了主板、CPU、硬盘等各种零件，这些部件都需要通上电才能工作。计算机工作的时候，里面各个部分都有电流通过，还在计算机的周围产生看不见摸不着的电磁场。这些电磁场向外传播时就产生了计算机辐射。这些计算机辐射对人体会不会有伤害呢？\r\n其一，同手机辐射类似，计算机辐射主要是“非电离性辐射”，这类电磁辐射与核电站产生的辐射和能致癌的大剂量X射线辐射不同，它的振动频率不足以破坏人体细胞内的“化学键”，不会造成基因变异和癌变。\r\n\r\n其二，计算机辐射对人体可能造成的危害主要是像微波炉一样的“加热效应”，但是计算机辐射的强度很低，不及微波炉辐射强度几十万分之一，没有能力给人的身体“加热”。\r\n\r\n其三，计算机辐射只有在使用的时候会有，计算机关闭之后就会立刻消失，不会有“残留微粒”。另外，对于计算机辐射值，国内国际都有一些相应安全标准，大多数家用计算机的辐射值远远在这些限制以下，即使没有任何防护措施，我们也大可放心地使用计算机。\r\n\r\n既然计算机辐射对人体来说是比较安全的，包括仙人掌在内的各种防护措施也就是多此一举了。既然坐在计算机旁不需防护措施了，那仙人掌到底有没有防辐射的功能呢？\r\n\r\n仙人掌虽然外形独特，其实并没有任何能力降低辐射或防辐射。计算机的电磁辐射是一种看不见摸不到的“场”，不像空气中飘扬的灰尘。如街边的树木能吸收灰尘，却不能吸收电磁场。辐射在哪个位置强，哪个位置弱，是由辐射源头决定的，仙人掌从计算机那里接收到的辐射与人体从计算机那里接收到的辐射并没有多大关系，仙人掌没办法帮你分担、吸走或者屏蔽辐射量。\r\n\r\n对于手机、计算机和其他各种电器，降低辐射的一个最好办法就是保持距离。因为辐射的强度会随着距离的增加而递减，离计算机50厘米的位置受到的辐射量只有距离10厘米位置的1/25。因此，只要不离计算机太近，就完全不用担心辐射的问题了。\r\n\r\n在计算机旁摆放一盆仙人掌，绿化环境，增添情趣，让人心旷神怡，缓解一下工作疲劳是有好处的，但是防辐射就实在是“强仙人掌所难”了。有些植物本身没有毒性，或者毒性很微弱，但它含有难以入口的刺激性物质，有时还会发出难闻的恶臭。这也是植物用来防守的一种方法。一旦动物尝过这种又苦又涩的味道，就会牢牢记住该植物，以后再也不会去吃了。\r\n\r\n味道和气味关系密切，植物释放出各种难闻的气味，动物闻到后，还没吃就已经认为它肯定难吃。具有怪味的植物有茴香、烟草、水毒芹等。在印度尼西亚苏门答腊岛的原始森林中，有一种花朵巨大的植物叫大王花。它能散发出一种尸体腐烂般的恶臭味，人和动物闻到后，都会掩鼻躲避。有趣的是，这种臭味却能吸引小昆虫来帮它传粉。看来，大王花的臭味既能抵御食草动物，又能吸引昆虫帮助传播花粉，真是一举两得。\r\n\r\n当然，植物最直观的武器还是锐利的尖刺和荆棘，使动物不敢贸然靠近。\r\n\r\n能够适应恶劣环境，从某种意义上说也是对付食草动物的方式之一。例如在干旱地区，气候条件极差，食草动物稀少，但耐旱植物却能在这样的环境中生存，因为它们早已“锻炼”出一套对付干旱的本领。对它们来说，食草动物比恶劣气候更可怕。\r\n\r\n除此之外，植物还有很多令人意想不到的御敌方法。例如有些植物的叶片边缘长有硬硬的锯齿，这能刺痛动物的嘴巴。有些植物虽然没有锯齿，但叶片中充满二氧化硅沉积物。如很多禾本科的植物叶片又粗又硬，叶缘还薄得像刀片，动物嘴巴碰上它，很容易被割得“唇破血流”。\r\n\r\n我们了解了各种植物的自卫本领后，必须牢牢记住：植物的种种奇妙防御手段，都是在极为漫长的进化岁月中，通过遗传变异、自然选择而逐步形成的。\r\n\r\n', '0ac1a587850b7fefb48871a0ffa123c.png', null, '十万个为什么');
INSERT INTO `read` VALUES ('4', '2', '植物有哪些自卫武器', '在地球上，各种各样的病菌、昆虫和高等动物每时每刻都在向植物侵袭，但有趣的是，地球上的植物依然郁郁葱葱。这是什么原因呢？其中一个重要的因素是：在千百年的生物进化历程中，许多植物为了能在自然界生存，进化出种种奇特的防身方法。', '在地球上，各种各样的病菌、昆虫和高等动物每时每刻都在向植物侵袭，但有趣的是，地球上的植物依然郁郁葱葱。这是什么原因呢？其中一个重要的因素是：在千百年的生物进化历程中，许多植物为了能在自然界生存，进化出种种奇特的防身方法。\r\n\r\n植物防身最犀利的武器是体内产生各种各样的毒素，不明真相的动物啃咬之后会感到很难受，甚至丧命。它们的悲剧也是在告诉同伴，千万别碰这种植物。有趣的是，植物的毒素往往不是遍布全身，而常常集中在叶片、果实、花萼等容易受到动物攻击的部位。科学家对大量的植物毒素进行生化分析后发现，它们大多是生物碱或酯类等有机化合物，能给中毒动物带来各种难熬的痛苦。\r\n\r\n例如，常春藤体内的有毒生物碱，会引起动物皮肤红肿、奇痒难忍。还有亚麻叶和一些蔷薇科植物的种子中含有氢氰酸，能麻痹呼吸和血管中枢神经，动物不慎吞食后，轻度表现为异常兴奋、呼吸急促、腹泻和痉挛，严重的会出现心跳缓慢、昏迷、失去知觉，甚至死亡。金丝桃科的一些植物，还会分泌一种非常奇特的“光敏毒素”，动物一旦误食之后，在遮阴处不会有什么反应，可一到明亮的阳光下，立即就会感到难受，如果时间久了还会有性命之忧。有些植物本身没有毒性，或者毒性很微弱，但它含有难以入口的刺激性物质，有时还会发出难闻的恶臭。这也是植物用来防守的一种方法。一旦动物尝过这种又苦又涩的味道，就会牢牢记住该植物，以后再也不会去吃了。\r\n\r\n味道和气味关系密切，植物释放出各种难闻的气味，动物闻到后，还没吃就已经认为它肯定难吃。具有怪味的植物有茴香、烟草、水毒芹等。在印度尼西亚苏门答腊岛的原始森林中，有一种花朵巨大的植物叫大王花。它能散发出一种尸体腐烂般的恶臭味，人和动物闻到后，都会掩鼻躲避。有趣的是，这种臭味却能吸引小昆虫来帮它传粉。看来，大王花的臭味既能抵御食草动物，又能吸引昆虫帮助传播花粉，真是一举两得。\r\n\r\n当然，植物最直观的武器还是锐利的尖刺和荆棘，使动物不敢贸然靠近。\r\n\r\n能够适应恶劣环境，从某种意义上说也是对付食草动物的方式之一。例如在干旱地区，气候条件极差，食草动物稀少，但耐旱植物却能在这样的环境中生存，因为它们早已“锻炼”出一套对付干旱的本领。对它们来说，食草动物比恶劣气候更可怕。\r\n\r\n除此之外，植物还有很多令人意想不到的御敌方法。例如有些植物的叶片边缘长有硬硬的锯齿，这能刺痛动物的嘴巴。有些植物虽然没有锯齿，但叶片中充满二氧化硅沉积物。如很多禾本科的植物叶片又粗又硬，叶缘还薄得像刀片，动物嘴巴碰上它，很容易被割得“唇破血流”。\r\n\r\n我们了解了各种植物的自卫本领后，必须牢牢记住：植物的种种奇妙防御手段，都是在极为漫长的进化岁月中，通过遗传变异、自然选择而逐步形成的。', '6ca5a7de3750d5db05f8da9587898d0.png', null, '十万个为什么');
INSERT INTO `read` VALUES ('5', '3', '高尔夫球杆形的胡萝卜', '从前，有一只小兔子，它叫贝贝。它住在森林里，它非常的喜欢吃胡萝卜。它有许多的好朋友，如：兔子乖乖，小猪胖\r\n胖，小猫萌萌……', '从前，有一只小兔子，它叫贝贝。它住在森林里，它非常的喜欢吃胡萝卜。它有许多的好朋友，如：兔子乖乖，小猪胖\r\n胖，小猫萌萌……\r有一天，贝贝出门拔到了许多的胡萝卜吃，到了家，贝贝就问妈妈：“妈妈，明天就是我的生日了吧！”“是的，宝贝，妈\r\n妈会准备礼物的。”妈妈用甜美而温柔的声音说道。\r\n　　第二天，妈妈早早地就起床出门了，它这是要去干什么呢？妈妈拔了几根萝卜回家，它拿起一根萝卜啃了起来，它啃啊\r\n啃，啃成了一根高尔夫球杆形。这时，贝贝出来了，看到了妈妈手中的胡萝卜，问：“这是我的吗？妈妈！”“是的”贝贝\r\n急忙跑过去，接过妈妈手中的胡萝卜，仔细的端详起来，心里满是喜悦。\r\n　　它跑到外面告诉了它的小伙伴们，乖乖正好在吃胡萝卜，贝贝说：“乖乖，你看，这是我妈妈送给的礼物，是一个高尔\r\n夫球杆形的胡萝卜。”乖乖很是羡慕，接着它又一个一个的去炫耀了它得到的礼物，小伙伴们都很惊讶！\r\n　　贝贝感觉到很满足，又跑回家家里，对妈妈说：“妈妈，我爱你！”\r', '7287502012023d3b9b86e53ef563f0e.png', null, '童话故事');
INSERT INTO `read` VALUES ('6', '3', '看管梦境的女巫', '她整天游荡，觉得好无聊啊！\r\n　　有时她跟着收集情绪的女巫站在树梢上爬一爬闪电，有时她和收集呼吸的女巫一起听一听海声。', '她整天游荡，觉得好无聊啊！\r\n　　有时她跟着收集情绪的女巫站在树梢上爬一爬闪电，有时她和收集呼吸的女巫一起听一听海声。\r\n　　“嗯，我要做点什么呢？”她经常甩着长长的指甲问女王。\r\n　　终于，在她问了一百零一次，女王说了一百次“距离你长大还好遥远好遥远”这样的话之后，女王翻了翻手边的笔记\r\n簿：“好像看管小孩子梦境的女巫要退休了，你就去做这个工作吧。”\r\n　　“咯咯，嘿嘿。”年轻的女巫身边响起了几声鬼鬼祟祟的笑声。\r\n　　她翻翻白眼，关于这个工作的无聊与低幼，她不是没听说过。不过，这是她自己争取来的，那也只能硬着头皮上了。\r\n　　梦境是一个很大很大的洞。就好像非洲那些山脉里的金矿集中在一起。每夜，都有专门的梦神把它们一缕一缕地分到各\r\n个人的梦里去。大人的梦境和孩子的梦境分布两处，这么说吧，就像欧洲的阿尔卑斯山脉和新疆的天山一样，距离那么遥\r\n远。看管大人的梦境是一个很有意思的工作，就像是万花筒，也像看电影。但是小孩子的梦境，就没这么有吸引力了，很多\r\n女巫待了一阵后，就要求去别的地方，毕竟，女巫嘛，谁不向往古灵精怪？\r\n　　年轻的女巫甩着长长的指甲，踩着一根月亮的丝线去往孩子的梦境了。那根丝线太瘦了，有一次差点把她甩掉在空中，\r\n幸好她施展法术才站稳。\r\n　　终于，她到达那片孩子的梦境了，果然是传说中的大洞，这个洞是鹅黄色的，这也是区分于大人梦境的一种特质——大\r\n人的梦境是黑色的。\r\n　　“哇哦，这个颜色我喜欢。”女巫和月亮丝线摆摆手，“和你的颜色有点像呢！再见了，你有空来看我啊。”\r\n　　其实看管梦境的工作很简单啦，就是站在洞口，检查一下输送出去的梦境长短，短了再短点没关系，长了再长可就不行\r\n了。尽管小孩子要长长的睡眠，可太长的梦境会影响孩子的正常生长，这可是善良的女巫界不能容忍的。\r\n　　据说大人的梦境看管就比较难一些了，除了长短检查常规检查之外，还有浓度，太浓了太薄了都不行，至于具体的内\r\n容，谁还能管得着呢？\r\n　　小女巫就蹲在洞口，每天太阳一落山就认真地履行她的工作职责，一开始她还一本正经地拿着一根指甲比比长短，超过\r\n她小指甲长的梦就不允许被送出去，后来，因为天天看，她目测就能很精准。\r\n　　每天清晨管理回来的梦就简单多了，她只需在太阳出来之前把那鹅黄色的大洞用一面羽毛做的扇子盖着洞口就行了。也\r\n就是说，所有的梦只能和星星相见。这里不负责白日梦。\r\n　　时间久了，小女巫就真的有点无聊。她有点怀念以前闲逛的日子了，不过，现在，她有任务在身，再跟着其他女巫闲逛\r\n就不好了——因为太无聊，她就想进到洞里，去看看小孩子的梦境里到底都有些什么——可是白天如果打开那面羽毛扇的\r\n话，就会有很多缕梦飞出来，让好多小孩在白天接收到梦境飞出去的梦，女巫界也是没有先例的。\r\n　　所以，小女巫只好晚上溜进去看看啦。\r\n　　关于她的工作嘛，她想了下，反正很少有超过她指甲那么长的梦出去，那就让它们自在地飞一晚上吧。\r\n　　其实，看管梦境的女巫们走入梦境，也是没有先例的。可是，这个女巫，实在是太年轻了呢！\r\n　　小女巫就这样甩着长长的指甲走进了那个泛着鹅黄色的大洞里。啊呀哎，很多很多像柳叶形状的小桶，在甜腻腻的味道\r\n里漂浮，每个小桶里都有一个小片段——狗狗追着跑啊，被爸爸举高高啊，和妈妈一起包饺子啊，等等。小女巫正看得好', '187a7d9ca83ee0c28e6b9037daa8108.png', null, '童话故事');
INSERT INTO `read` VALUES ('7', '3', '“撒谎”的雪人\r', '去年圣诞节的时候，叔叔收到了比他的房子还要大上三倍的信，那是他远在雪国的好朋友雪人给他写来的，能写出这么大的\r\n信，那雪人该有多大啊！', '去年圣诞节的时候，叔叔收到了比他的房子还要大上三倍的信，那是他远在雪国的好朋友雪人给他写来的，能写出这么大的\r\n信，那雪人该有多大啊！如果你穿过世界上最北的城市“朗伊尔城”，就会在不落的月亮下，来到一个雪国。不过你得在有月亮的时候动身，因为\r\n“朗伊尔城”，每年有一半的时间没有夜晚。\r\n雪国里太冷了，没有人住；很大很大的雪国，只有一个巨大的雪人住在那里。讲这个童话的叔叔年轻的时候见过他，雪人每\r\n天都会长高一丈，那时候，他已经有一座小山那么高，现在已经不知道他有多大了，可能都快长得能够到月亮了吧。\r\n圣诞节的时候，雪人给叔叔送来一封信，那封信是雪人拜托圣诞老人的驯鹿鲁道夫送来的。那封信足足比叔叔的房子还要大\r\n上三倍，不过没关系，因为圣诞老人的礼物包包可以装下任何东西。\r\n叔叔以为雪人给他送来了特别的圣诞礼物，可是除了那封家里没有办法放下的信，别的什么也没有。叔叔想，那雪人至少会\r\n写上几句祝福节日的话或者几句问候吧，因为叔叔是雪人最好的朋友，也因为雪人只有叔叔这一个朋友，更因为只有叔叔一\r\n个人到过雪国，见过雪人。\r\n可这件圣诞礼物，一点也不讨人喜欢，因为这封比叔叔的房子还大三倍的信，除了雪人写的“谎话”，就什么也没有了。\r\n现在，叔叔就给你读读这封圣诞信，不，是圣诞“谎话”。\r\n“亲爱的小火柴！圣诞节快乐！”看，雪人开头就犯了一个错，他还以为叔叔是当年的那个年轻人，不知道他和“小火柴”\r\n已经20年没见了，“小火柴”已经长大成了“火柴叔叔”。\r\n“你知道吗？你走了以后，我做了一件很大很大的事，你绝对想不到。你走了以后，没有人和我说话，我就照着你教我的方\r\n法堆雪人，这样就有人陪我了。我先是堆了一个小雪人，它整夜陪我看月亮，不过第二天，我长高了一丈，我就堆了一个大\r\n一丈的新雪人；第二天晚上，新雪人也陪我看月亮，这样我就有了两个朋友；到了第三天，我又长高了一丈，我接着堆了第\r\n三个雪人，第三个雪人又大了一丈，第三个晚上，第三个雪人陪我看月亮，这样我就有了三个朋友。后来，每天我都有一个\r\n新朋友来陪我看月亮；我想想，昨天我有7305个朋友陪我看月亮，你一定没有我这么多的朋友吧，小火柴？”雪人为了表示\r\n高兴，还特意在信上画上了他的笑脸。\r\n人怎么会有那么多的朋友？叔叔笑了，雪人一定在“说谎”，叔叔从没见过一个人每天做同一件事，一直做了20年。是的，\r\n雪人一定在“撒谎”！\r\n对了，信上接着写了雪人的第二个“谎话”。\r\n“我得告诉你第二件事，你绝对想不到！”看雪人又在说第二个“谎话”了。\r\n“你走的时候，我只有一座小雪山那么高，后来每一天，我都长高一丈，一年之后，你爬过的那座小雪山就在我的腰下了，\r\n我坐在小雪山上问刚堆的雪人朋友，你能看到小火柴不？雪人对我说：“我看不到小火柴，我只能看到挪威北部的森林。”\r\n我有点失望，因为我也只能看到挪威北部的森林。之后我每一天都问陪我看月亮的新雪人朋友，能看到你不？可是一直看不\r\n到。第十年的时候，那座小雪山已经变得只有我的脚那么高了，我坐在小雪山上问陪我看月亮的新雪人：“你能看到小火柴\r\n吗？”雪人对我说：“我看不到小火柴，我只能看到哈萨克斯坦北部的森林。”我非常失望，因为我和新雪人一样，也只能\r\n看到哈萨克斯坦北部的森林。接着我每天晚上问雪人这个问题，现在你爬的小雪山已经藏到了我的脚下，只有我的鞋子那么\r\n高，就在前天，我问陪我看月亮的新雪人：“你能看到小火柴不？”雪人对我说：“我看不到小火柴，我只能看到中国北部\r\n的长城。”这次，我很高兴，原来那很长很长的墙就是中国的长城，我也能看到中国那长长的长城，我想我就快能看到小火\r\n柴你了，因为你说过，你住在中国，小火柴。”', '51149cf9d4d11019aa970c66096a884.png', null, '童话故事');
INSERT INTO `read` VALUES ('8', '4', '十一国庆节的由来2021', '每一个中国人都不会忘记，也不能忘记的一个节日——国庆节，', '每一个中国人都不会忘记，也不能忘记的一个节日——国庆节，而每年的10月1号是我\r\n们祖国的生日，在这一天我们会有很多的活动来庆祝欢迎它到来，在此你对于国庆节的由来\r\n知道多少呢?下面是小编为你整理的十一国庆节的由来2021_国庆节的由来知识介绍，希望对\r\n你有用!', '1e3731a557890702e7e392503743280.png', null, '生活小百科');
INSERT INTO `read` VALUES ('9', '4', '教师节送老师礼物要注意的细节', '教师节送老师礼物要注意的细节', '1、送礼物时注意环境\r\n学校是老师给学生们上课的地方，你却直接跑到教室给老师送礼，一来耽误孩子们上\r\n课，二来对老师也是非常不好的，三让校领导看到的话，这算什么事情，毕竟很多学校是不\r\n让老师收礼的。\r\n所以说送礼物一定要注意送礼物的那个环境，最好就是直接去老师的家里，这样还能和\r\n老师谈谈你的孩子，并当面感谢老师的付出与辛苦，还不容易被人看到。\r\n2、送礼要把握尺度\r\n人民教师是人民的公仆，有自己的道德准则。因此，所送礼品的尺寸要把握好。不能送\r\n的太贵，也不能送的太随意。对于学生而言，自制贺卡、保温杯等只要能够表达心意的礼品\r\n都是可以的。如果是家长送的话，可以考虑买市面上罕见，但价值又不是太高的礼品。\r\n3、最好让孩子自己送给老师\r\n【生\r\n2\r\n4\r\n1\r\n1\r\n1\r\n1\r\n1\r\n1\r\n1\r\n1\r\n时间：2021-04-16 22:30:29 本文内容及图片来源于读者投稿,如有侵权请联系xuexila888@qq.com 梁淑 我要投稿\r\n教师节送老师礼物要注意的细节\r\n2021/7/28 教师节送老师礼物要注意的细节\r\nhttps://www.xuexila.com/shenghuo/richang/216203.html 2/5\r\n教师节，学生给自己老师送上表达自己心意的礼物，完全能够说得过去，也算是尊师重\r\n道的一种表现。比如学生自己制作的明信片啊，影集啊，贺卡啊，鲜花啊，坐垫啊等等，这\r\n都是学生们对老师辛苦教育的一种尊敬。\r\n4、考虑到教师的实际生活趣味\r\n很多教师，尤其是很多女性教师，都是受过高等教育的人，他们本身自带文艺青年气\r\n息，对生活品质和生活趣味多少有些追求。在送礼的时候推荐大家可以考虑送一些休闲场所\r\n的门票(例如一些主题公园、特色景区之类的)。\r\n5、不要成群结队的给老师送礼\r\n给老师送礼物，最好让学生自己送，家长要是觉得自己送才能表达自己的真诚与尊重，\r\n那么你就一个人去就好，你说你拉着一群家长呼啦啦的跑到老师家里，或者学校里，这像怎\r\n么一回事呢?一群家长在一起，你一言我一语的，你让老师记住哪一位?\r\n6、考虑教师实际的工作环境\r', '2719b6850f29f83469e96074d289840.png', null, '生活小百科');
INSERT INTO `read` VALUES ('10', '4', '消防安全知识有哪些', '消防安全知识对我们生命财产安全来说，非常重要', '消防安全知识资料大全\r\n一、消防安全20条\r\n1.父母、师长要教育儿童养成不玩火的好习惯。任何单位不得组织未成年人扑救火灾。\r\n2.切莫乱扔烟头和火种。\r\n3.室内装修装饰不宜采用易燃可燃材料。\r\n4.消火栓关系公共安全，切勿损坏、圈占或埋压。\r\n5.爱护消防器材，掌握常用消防器材的使用方法。\r\n6.切勿携带易燃易爆物品进入公共场所、乘坐公共交通工具。\r\n7.进入公共场所要注意观察消防标志，记住疏散方向。\r\n8.在任何情况下都要保持疏散通道畅通。\r\n9.任何人发现危及公共消防安全的行为，都可向公安消防部门或值勤公安人员举报。\r\n10.生活用火要特别小心，火源附近不要放置可燃、易燃物品。\r\n【消\r\n2\r\n4\r\n1\r\n1\r\n1\r\n1\r\n1\r\n1\r\n1\r\n1\r\n时间：2021-04-16 22:41:58 本文内容及图片来源于读者投稿,如有侵权请联系xuexila888@qq.com 梁淑 我要投稿\r\n消防安全知识有哪些\r\n2021/7/28 消防安全知识有哪些\r\nhttps://www.xuexila.com/shenghuo/anquan/xiaofang/61565.html 2/6\r\n11.发现煤气泄漏，速关阀门，打开门窗，切勿触动电器开关和使用明火。\r\n12.电器线路破旧老化要及时修理更换。\r\n13.电路保险丝(片)熔断，切勿用铜线铁线代替。\r\n14.不能超负荷用电。\r\n15.发现火灾速打报警电话 l19，消防队救火不收费。\r\n16.了解火场情况的人，应及时将火场内被围人员及易燃易爆物品情况告诉消防人员。\r\n17.火灾袭来时要迅速疏散逃生，不要贪恋财物。\r\n18.必须穿过浓烟逃生时，应尽量用浸湿的衣物被裹身体，捂住口鼻，贴近地面。\r\n19.身上着火，可就地打滚，或用厚重衣物覆盖压灭火苗。\r\n20.大火封门无法逃生时，可用浸湿的被褥、衣物等堵塞门缝、泼水降温，呼救待援。', '3bce0fd538335f9a03a462f867287bd.png', null, '生活小百科');
INSERT INTO `read` VALUES ('11', '5', '谁是万兽之王？', '答案在详情页', '谁是万兽之王？\r\n\r\n——动物园园长', 'd8d97ed21bc420090bfa1e3ea7696e4.png', null, '脑筋急转弯');
INSERT INTO `read` VALUES ('12', '5', '什么样的人死后还会出现？', '答案在详情页', '什么样的人死后还会出现？\r\n\r\n——电影中的人', 'cc955e62dc949b8032b5072da882406.png', null, '脑筋急转弯');
INSERT INTO `read` VALUES ('13', '5', '什么帽不能戴？', '答案在详情页', '什么帽不能戴？\r\n\r\n——螺帽', '6aae60266700c6c3cd4d073ec0e97c8.png', null, '脑筋急转弯');
INSERT INTO `read` VALUES ('14', '5', '有一个字，人人见了都会念错。这是什么字？', '答案在详情页', '有一个字，人人见了都会念错。这是什么字？\r\n\r\n——这是“错”字。', '4c072271cadd5bf9cc4a1a3442d0801.png', null, '脑筋急转弯');

-- ----------------------------
-- Table structure for `readselect`
-- ----------------------------
DROP TABLE IF EXISTS `readselect`;
CREATE TABLE `readselect` (
  `id` int(11) unsigned NOT NULL,
  `typename` varchar(255) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of readselect
-- ----------------------------
INSERT INTO `readselect` VALUES ('1', '优秀文章', null, 'article/index', '734cad9bd16f6f62687d24d3f8c560b.png', null);
INSERT INTO `readselect` VALUES ('2', '十万个为什么', null, 'read/index&type_id=2', '3cb67fae3f200fafec3ca7f2fca402f.png', null);
INSERT INTO `readselect` VALUES ('3', '童话故事', null, 'read/index&type_id=3', '3df3085c87ecba8eaffdf7846133535.png', null);
INSERT INTO `readselect` VALUES ('4', '生活小百科', null, 'read/index&type_id=4', '22bd2daca5629a8474a4b02d3813ea1.png', null);
INSERT INTO `readselect` VALUES ('6', '脑筋急转弯', null, 'read/index&type_id=5', 'c0eb424ba471fc2c8806013a05cf707.png', null);

-- ----------------------------
-- Table structure for `school_list`
-- ----------------------------
DROP TABLE IF EXISTS `school_list`;
CREATE TABLE `school_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学校名称',
  `province` int(11) DEFAULT NULL COMMENT '省(对应location表id)',
  `city` int(11) DEFAULT NULL COMMENT '市',
  `area` int(11) DEFAULT NULL COMMENT '区(县)',
  `stu_num` int(11) DEFAULT NULL COMMENT '学生人数',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of school_list
-- ----------------------------
INSERT INTO `school_list` VALUES ('1', '1001', '华南师范大学附属小学', '440000', '440100', '440106', '6', '');
INSERT INTO `school_list` VALUES ('2', '1002', '梅北小学', '440000', '440100', '440104', '8', '');
INSERT INTO `school_list` VALUES ('3', '1003', '敦南小学', '440000', '440100', '440104', '8', null);
INSERT INTO `school_list` VALUES ('7', '1004', '华南师范大学', '440000', '440100', '440106', '2', null);
INSERT INTO `school_list` VALUES ('9', '2020', '华南农业大学', '440000', '440100', '440106', '0', '');
INSERT INTO `school_list` VALUES ('10', '10023', '深圳中学', '440000', '440300', null, '6', '');
INSERT INTO `school_list` VALUES ('11', '1231', '12', '130000', '130100', null, null, '');
INSERT INTO `school_list` VALUES ('12', 'asdsd', '12asd', '120000', '120300', null, null, 'asda');
INSERT INTO `school_list` VALUES ('13', 'asdsd', 'asd', '150000', '150100', null, null, 'asddgg');
INSERT INTO `school_list` VALUES ('14', null, '', null, null, null, '9', null);

-- ----------------------------
-- Table structure for `score_detail`
-- ----------------------------
DROP TABLE IF EXISTS `score_detail`;
CREATE TABLE `score_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finish_time` datetime DEFAULT NULL COMMENT '得分时间',
  `school` varchar(255) DEFAULT NULL COMMENT '学校',
  `grade` int(11) DEFAULT NULL COMMENT '年级',
  `class` int(11) DEFAULT NULL COMMENT '班级',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `article_id` int(11) DEFAULT NULL COMMENT '文章编号',
  `article_name` varchar(255) DEFAULT NULL COMMENT '文章名称',
  `test_type` varchar(255) DEFAULT NULL COMMENT '测试类型',
  `question_id` int(11) DEFAULT NULL COMMENT '题目编号',
  `question` varchar(255) DEFAULT NULL COMMENT '问题',
  `score` int(11) DEFAULT NULL COMMENT '分数',
  `province` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `school_code` varchar(255) DEFAULT NULL,
  `stu_num` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score_detail
-- ----------------------------
INSERT INTO `score_detail` VALUES ('1', '2019-10-21 15:31:16', '华南师范大学', '1', '1', '2', '李明', '1', '爱打嗝的河马', '趣味测试', '1', '斑马身上的特点？', '10', null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `score_detail` VALUES ('8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'asdsd');
INSERT INTO `score_detail` VALUES ('9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'asdsda', null, null, 'asddagg');
INSERT INTO `score_detail` VALUES ('10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'asdsad', null, null, 'asdds');
INSERT INTO `score_detail` VALUES ('11', null, null, null, null, null, null, null, null, null, null, null, null, '120000', '120300', null, '', null, null, '');

-- ----------------------------
-- Table structure for `stuinfo`
-- ----------------------------
DROP TABLE IF EXISTS `stuinfo`;
CREATE TABLE `stuinfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `stuid` varchar(20) DEFAULT '' COMMENT '学号',
  `stuname` varchar(20) DEFAULT '' COMMENT '学生姓名',
  `stusex` varchar(20) DEFAULT '' COMMENT '学生性别',
  `stugrade` varchar(20) DEFAULT '' COMMENT '年级',
  `stumajor` varchar(20) DEFAULT '' COMMENT '学生专业',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stuinfo
-- ----------------------------
INSERT INTO `stuinfo` VALUES ('1', '20203231004', '李达良', '男', '2020', '计算机科学与技术');
INSERT INTO `stuinfo` VALUES ('2', '20213231004', '123', '男', '2021', '网络工程');

-- ----------------------------
-- Table structure for `subscribe`
-- ----------------------------
DROP TABLE IF EXISTS `subscribe`;
CREATE TABLE `subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `subscribed_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of subscribe
-- ----------------------------
INSERT INTO `subscribe` VALUES ('1', '4', '1');
INSERT INTO `subscribe` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for `subtime`
-- ----------------------------
DROP TABLE IF EXISTS `subtime`;
CREATE TABLE `subtime` (
  `id` int(11) NOT NULL,
  `submit_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subtime
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `F_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TCOD` varchar(20) DEFAULT '' COMMENT '教师编号',
  `TUNAME` varchar(20) DEFAULT '' COMMENT '用户编号',
  `TCNAME` varchar(20) DEFAULT '' COMMENT '姓名',
  `TENAME` varchar(30) DEFAULT '' COMMENT '英文名字',
  `TPOS` varchar(30) DEFAULT '' COMMENT '职位',
  `TAUTH` varchar(6) DEFAULT '' COMMENT '操作权限',
  `TPWD` varchar(15) DEFAULT '' COMMENT '密码',
  `TSEX` varchar(6) DEFAULT '' COMMENT '性别',
  `TTEL` varchar(30) DEFAULT '' COMMENT '联系电话',
  `TMOB` varchar(30) DEFAULT '' COMMENT '手机号',
  `TADDR` varchar(50) DEFAULT '' COMMENT '地址',
  `TIDN` varchar(30) DEFAULT '' COMMENT '省份证号码',
  `TIDT` varchar(18) DEFAULT '' COMMENT '身份证号类型',
  `TIND` varchar(18) DEFAULT '' COMMENT '发证时间',
  `TBIRTH` datetime DEFAULT NULL COMMENT '出生日期',
  `TNHK` varchar(9) DEFAULT '' COMMENT '不用',
  `TOUT` datetime DEFAULT NULL,
  `TSCHOOL` varchar(30) DEFAULT '' COMMENT '校部',
  `TORIGIN` varchar(40) DEFAULT '' COMMENT '籍贯',
  `TMERRY` varchar(18) DEFAULT '' COMMENT '婚否',
  `TBORNP` varchar(60) DEFAULT '' COMMENT '出生地',
  `TNATION` varchar(60) DEFAULT '' COMMENT '国籍',
  `TFRIEND` varchar(60) DEFAULT '' COMMENT '介绍人',
  `TFADDR` varchar(150) DEFAULT '' COMMENT '介绍人地址',
  `TFPHONE` varchar(60) DEFAULT '' COMMENT '联系电话',
  `TMEMO` varchar(120) DEFAULT '' COMMENT '备注',
  `TSARALY` int(11) DEFAULT NULL,
  `TTYPE` varchar(18) DEFAULT NULL,
  `TEMAIL` varchar(60) DEFAULT '' COMMENT '邮箱地址',
  `TBANK` varchar(90) DEFAULT '' COMMENT '银行名称',
  `TACCNAME` varchar(120) DEFAULT '' COMMENT '银行账户',
  `TACCNO` varchar(60) DEFAULT '' COMMENT '账号',
  `TSEAL` int(11) DEFAULT '0',
  `TPHOTO` int(11) DEFAULT '0' COMMENT '图片',
  `TIDP` int(11) DEFAULT '0',
  `TTNO` varchar(36) DEFAULT '' COMMENT '教师证号',
  `TTICKET` varchar(36) DEFAULT '' COMMENT '选名证号',
  `TABSYN` varchar(3) DEFAULT '',
  `F_ROLECODE` varchar(12) DEFAULT '' COMMENT '角色编码',
  `F_ROLENAME` varchar(30) DEFAULT '' COMMENT '角色名称',
  `F_PH_ADDRE` varchar(54) DEFAULT '' COMMENT '网卡地址',
  `F_COL` int(11) DEFAULT NULL,
  `TDEPART` varchar(20) DEFAULT '' COMMENT '分校名称',
  `F_SCHOOLCODE` varchar(60) DEFAULT '' COMMENT '兼职学校代码',
  `f_NORMAL` varchar(6) DEFAULT '' COMMENT '师范',
  `f_reading` varchar(30) DEFAULT '' COMMENT '硕士进修',
  `f_mess` int(11) DEFAULT NULL,
  `f_sendmess` int(11) DEFAULT NULL,
  `f_messcheck` varchar(30) DEFAULT NULL,
  `f_tcname` varchar(12) DEFAULT NULL,
  `f_tcname1` varchar(12) DEFAULT NULL,
  `ip_name` varchar(30) DEFAULT '',
  `CLUB_ID` int(20) DEFAULT NULL,
  `CLUB_NAME` varchar(20) DEFAULT '',
  PRIMARY KEY (`F_ID`),
  UNIQUE KEY `tcod` (`TCOD`) USING BTREE,
  KEY `tcname` (`TCNAME`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2314 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2310', '0091', '', 'zfx', '', '', '', '', '', '', '', '', '', '', '', null, '', null, '', '', '', '', '', '', '', '', '', null, null, '', '', '', '', '0', '0', '0', '', '', '', '', '', '', null, '', '', '', '', null, null, null, null, null, '', '9002', '2社区');
INSERT INTO `teacher` VALUES ('2311', '1', '', '关竣佑', '', '', '', '', '', '', '', '', '', '', '', null, '', null, '', '', '', '', '', '', '', '', '', null, null, '', '', '', '', '0', '0', '0', '', '', '', '', '', '', null, '', '', '', '', null, null, null, null, null, '', '1001', '1中学');
INSERT INTO `teacher` VALUES ('2312', '0092', '', '2', '', '', '', '', '', '', '', '', '', '', '', null, '', null, '', '', '', '', '', '', '', '', '', null, null, '', '', '', '', '0', '0', '0', '', '', '', '', '', '', null, '', '', '', '', null, null, null, null, null, '', '9001', '1社区');
INSERT INTO `teacher` VALUES ('2313', '2', '', '2t', '', '', '', '', '', '', '', '', '', '', '', null, '', null, '', '', '', '', '', '', '', '', '', null, null, '', '', '', '', '0', '0', '0', '', '', '', '', '', '', null, '', '', '', '', null, null, null, null, null, '', '1002', '2中学');

-- ----------------------------
-- Table structure for `teainfo`
-- ----------------------------
DROP TABLE IF EXISTS `teainfo`;
CREATE TABLE `teainfo` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `teaname` varchar(20) DEFAULT '' COMMENT '教师编号',
  `teasex` varchar(20) DEFAULT '' COMMENT '教师性别',
  `teadep` varchar(20) DEFAULT '' COMMENT '教师院系',
  `tealevel` varchar(20) DEFAULT '' COMMENT '教师职称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teainfo
-- ----------------------------
INSERT INTO `teainfo` VALUES ('1', '曾锡山', '男', '计算机学院', '讲师');
INSERT INTO `teainfo` VALUES ('2', '陈寅', '男', '计算机学院', '教授');

-- ----------------------------
-- Table structure for `test_err`
-- ----------------------------
DROP TABLE IF EXISTS `test_err`;
CREATE TABLE `test_err` (
  `f_id` int(4) NOT NULL AUTO_INCREMENT,
  `f_msg` text,
  `f_time` datetime DEFAULT NULL,
  `f_username` char(20) DEFAULT '' COMMENT '测试员',
  `f_callname` varchar(200) DEFAULT '' COMMENT '调用函数名称',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB AUTO_INCREMENT=717907 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_err
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(9) NOT NULL AUTO_INCREMENT,
  `account` int(12) DEFAULT NULL,
  `password` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `grade` int(10) DEFAULT NULL,
  `class` int(10) DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wx_openid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fans_num` int(11) DEFAULT NULL,
  `collection_num` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2019213011', '123456', '李飞发', '华南师范大学附属小学', '1', '1', '3213', '爷笑耐我何？', '1a', null, null, '0');
INSERT INTO `user` VALUES ('2', '2019213012', '123456', '李明', '华南师范大学附属小学', '1', '1', null, null, '2a', null, null, '0');
INSERT INTO `user` VALUES ('3', '2019213013', '123456', '李小飞', '华南师范大学附属小学', '1', '1', null, null, '3a', null, null, '0');
INSERT INTO `user` VALUES ('4', '2019213014', '123456', '张叶龙', '华南师范大学附属小学', '1', '2', null, null, '4a', null, null, '0');
INSERT INTO `user` VALUES ('5', '2019213015', '123456', '李飞从', '华南师范大学附属小学', '1', '2', '1', '1', '5a', null, null, '0');
INSERT INTO `user` VALUES ('6', '2019213016', '123456', '王婷', '华南师范大学附属小学', '1', '2', null, null, '6a', null, null, '0');
INSERT INTO `user` VALUES ('7', '2019213021', '123456', '袁经', '梅北小学', '1', '3', null, null, '7a', null, null, '0');
INSERT INTO `user` VALUES ('8', '2019213022', '123456', '陈婷', '梅北小学', '1', '4', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('9', '2019213023', '123456', '许琪', '梅北小学', '1', '3', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('10', '2019213024', '123456', '里飞', '梅北小学', '1', '3', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('11', '2019213025', '123456', '李俊', '梅北小学', '1', '4', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('12', '2019213026', '123456', '张叶', '梅北小学', '1', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('13', '2019213027', '123456', '王小婷', '梅北小学', '1', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('14', '2019213031', '123456', '袁经理', '敦南小学', '1', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('15', '2019213032', '123456', '陈雅婷', '敦南小学', '1', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('16', '2019213033', '123456', '小刚', '敦南小学', '1', '4', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('17', '2019213034', '123456', '许安琪', '敦南小学', '1', '4', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('18', '2019213035', '123456', '里俊飞', '敦南小学', '1', '4', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('19', '2019213036', '123456', '李涛', '敦南小学', '1', '5', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('20', '2019213028', '123456', '张杰', '梅北小学', '1', '4', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('23', '1111', '1111', '1', '华南师范大学', '2', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('24', '222', '222', '222', '深圳中学', '9', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('25', '333', '333', '333', '深圳中学', '9', '2', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('26', '44', '444', '444', '华南师范大学', '9', '2', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('27', '88', '888', '888', '深圳中学', '9', '2', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('28', '2323', '2323', '2323', '深圳中学', '9', '6', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('29', '789', '789', '789', '深圳中学', '7', '8', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('30', '323', '123', '545', '深圳中学', '8', '1', null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('31', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('32', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('33', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('34', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('35', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('36', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('37', null, null, null, '', null, null, null, null, null, null, null, '0');
INSERT INTO `user` VALUES ('38', null, null, null, '', null, null, '1', '1', null, null, null, '0');
INSERT INTO `user` VALUES ('10000', null, null, null, '', null, null, '1', '1', null, null, null, '0');

-- ----------------------------
-- Table structure for `workcommit`
-- ----------------------------
DROP TABLE IF EXISTS `workcommit`;
CREATE TABLE `workcommit` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cyear` varchar(20) DEFAULT '' COMMENT '学年',
  `cterm` varchar(20) DEFAULT '' COMMENT '学期',
  `ccourseid` varchar(20) DEFAULT '' COMMENT '课程编码',
  `cworkid` varchar(20) DEFAULT '' COMMENT '作业序号',
  `cstuname` varchar(20) DEFAULT '' COMMENT '学生姓名',
  `cstuid` varchar(20) DEFAULT '' COMMENT '学生id',
  `cpath` varchar(80) DEFAULT '' COMMENT '作业路径',
  `cscore` varchar(20) DEFAULT '' COMMENT '作业分数',
  `cstatus` varchar(20) DEFAULT '' COMMENT '审核状态',
  `copinion` text COMMENT '审核意见',
  `ccoursename` varchar(20) DEFAULT '' COMMENT '课程名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of workcommit
-- ----------------------------
INSERT INTO `workcommit` VALUES ('1', '2020-2021', '上学期', '33333', '1', '1', '1', '', '100', '', null, '程序设计基础');
DROP TRIGGER IF EXISTS `insert_num`;
DELIMITER ;;
CREATE TRIGGER `insert_num` AFTER INSERT ON `article` FOR EACH ROW begin

declare sn varchar(255);
SELECT school INTO sn FROM user WHERE id= new.author_id;
IF ( SELECT count(*) FROM articlenum_detail WHERE school_name = sn) = 0 THEN
   INSERT INTO articlenum_detail (school_name, article_num,refused_num, accepted_num) VALUES (sn, 1,0,0);
ELSE
  UPDATE articlenum_detail SET article_num = article_num + 1 WHERE school_name=sn;
END IF; 
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `update_num`;
DELIMITER ;;
CREATE TRIGGER `update_num` AFTER UPDATE ON `article` FOR EACH ROW begin
 declare sn varchar(255);
SELECT school INTO sn FROM user WHERE id= new.author_id;
 #判断是发表，还是淘汰或拒收，其他情况不做处理
 IF ( new.status = 7 ) THEN 
     UPDATE articlenum_detail SET accepted_num=accepted_num+1 WHERE school_name=sn;
 END IF;
  IF ( new.status = 3 or new.status = 5) THEN
    UPDATE articlenum_detail SET refused_num = refused_num + 1 WHERE school_name=sn;
 END IF;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete_num`;
DELIMITER ;;
CREATE TRIGGER `delete_num` AFTER DELETE ON `article` FOR EACH ROW begin
declare sn varchar(255);
SELECT school INTO sn FROM user WHERE id = old.author_id;
IF( old.status=7) THEN
   UPDATE articlenum_detail SET article_num=article_num-1,accepted_num=accepted_num-1 WHERE school_name=sn;
ELSE IF (old.status=3 or old.status=5) THEN
   UPDATE articlenum_detail SET article_num=article_num-1,refused_num=refused_num-1 WHERE school_name=sn;
ELSE
    UPDATE articlenum_detail SET article_num=article_num-1 WHERE school_name=sn;
 END IF;
END IF;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert_date`;
DELIMITER ;;
CREATE TRIGGER `insert_date` BEFORE INSERT ON `test_err` FOR EACH ROW begin
 set new.f_time= now();
 end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `insert`;
DELIMITER ;;
CREATE TRIGGER `insert` AFTER INSERT ON `user` FOR EACH ROW begin

  IF ( select count(*) from school_list where school_name=new.school )=0 THEN
   INSERT INTO school_list(school_name,stu_num)  VALUE(new.school,1);
 ELSE
  UPDATE school_list SET stu_num=stu_num+1 WHERE school_name=new.school;
END IF;



end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `delete`;
DELIMITER ;;
CREATE TRIGGER `delete` AFTER DELETE ON `user` FOR EACH ROW begin

  UPDATE school_list SET stu_num=stu_num-1 WHERE school_name=old.school;

DELETE FROM school_list WHERE stu_num=0;
end
;;
DELIMITER ;
