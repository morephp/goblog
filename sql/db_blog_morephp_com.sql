/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : db_blog_morephp_com

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2014-10-29 16:01:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `ID` int(5) NOT NULL,
  `Title` char(100) NOT NULL,
  `Category` char(20) NOT NULL,
  `Content` tinytext NOT NULL,
  `Times` int(5) NOT NULL,
  `PushTime` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------

-- ----------------------------
-- Table structure for `attach`
-- ----------------------------
DROP TABLE IF EXISTS `attach`;
CREATE TABLE `attach` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `ArticleID` int(5) NOT NULL,
  `AttachImage` char(100) NOT NULL,
  `Time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attach
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `UserName` char(10) NOT NULL,
  `PassWord` char(32) NOT NULL,
  `NickName` char(16) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'phpfans', 'ef883929b433532c9cdbf22a46529c18', '蛮江');
