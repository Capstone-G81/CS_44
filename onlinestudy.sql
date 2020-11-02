/*
Navicat MySQL Data Transfer

Source Server         : songzhijun
Source Server Version : 80022
Source Host           : localhost:3306
Source Database       : onlinestudy

Target Server Type    : MYSQL
Target Server Version : 80022
File Encoding         : 65001

Date: 2020-11-02 13:28:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tadmin`
-- ----------------------------
DROP TABLE IF EXISTS `tadmin`;
CREATE TABLE `tadmin` (
  `userId` int NOT NULL,
  `userName` varchar(66) DEFAULT NULL,
  `userPw` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tadmin
-- ----------------------------
INSERT INTO `tadmin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `tdoc`
-- ----------------------------
DROP TABLE IF EXISTS `tdoc`;
CREATE TABLE `tdoc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(66) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `fujianYuanshiming` varchar(55) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tdoc
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `zc` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('2', '001', 'jim', '男', '133444', 'shuxue', '001');

-- ----------------------------
-- Table structure for `tliuyan`
-- ----------------------------
DROP TABLE IF EXISTS `tliuyan`;
CREATE TABLE `tliuyan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `neirong` varchar(2000) DEFAULT NULL,
  `liuyanshi` varchar(55) DEFAULT NULL,
  `stuid` int DEFAULT NULL,
  `huifu` varchar(2000) DEFAULT NULL,
  `huifushi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tliuyan
-- ----------------------------
INSERT INTO `tliuyan` VALUES ('11', 'dfsdfsf', '2020-10-23 18:18', '9', '', '');
INSERT INTO `tliuyan` VALUES ('12', 'dfsdfsf', '2020-10-23 18:18', '9', '', '');

-- ----------------------------
-- Table structure for `tshipin`
-- ----------------------------
DROP TABLE IF EXISTS `tshipin`;
CREATE TABLE `tshipin` (
  `shipin_id` int NOT NULL AUTO_INCREMENT,
  `shipin_name` varchar(66) DEFAULT NULL,
  `shipin_jianjie` varchar(2000) DEFAULT NULL,
  `fujian` varchar(55) DEFAULT NULL,
  `fujianYuanshiming` varchar(2000) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  `zt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`shipin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tshipin
-- ----------------------------

-- ----------------------------
-- Table structure for `tstu`
-- ----------------------------
DROP TABLE IF EXISTS `tstu`;
CREATE TABLE `tstu` (
  `stuid` int NOT NULL AUTO_INCREMENT,
  `stuxuehao` varchar(66) DEFAULT NULL,
  `sturealname` varchar(50) DEFAULT NULL,
  `stusex` varchar(50) DEFAULT NULL,
  `stuage` varchar(55) DEFAULT NULL,
  `loginpw` varchar(50) DEFAULT NULL,
  `zhuangtai` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`stuid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tstu
-- ----------------------------
INSERT INTO `tstu` VALUES ('1', '2017001', '文之秀', '男', '21', '000000', 'b', 'no');
INSERT INTO `tstu` VALUES ('2', '2017002', '马散散', '男', '21', '000000', 'b', 'no');
INSERT INTO `tstu` VALUES ('3', '2017003', '文老大', '男', '21', '000000', 'b', 'no');
INSERT INTO `tstu` VALUES ('4', '2017004', '刘德华', '男', '21', '000000', 'b', 'no');
INSERT INTO `tstu` VALUES ('5', '2017006', '张明明', '男', '21', '123456', 'b', 'no');
INSERT INTO `tstu` VALUES ('6', '2017007', '刘梦', '男', '22', '123456', null, null);
INSERT INTO `tstu` VALUES ('7', '2017008', '王鹏举', '男', '20', '000000', 'b', 'no');
INSERT INTO `tstu` VALUES ('8', '2018002', '张明券', '男', '20', '123456', 'b', 'no');
INSERT INTO `tstu` VALUES ('9', '111', 'szj', '男', '18', '111', 'b', 'no');

-- ----------------------------
-- Table structure for `ttimu`
-- ----------------------------
DROP TABLE IF EXISTS `ttimu`;
CREATE TABLE `ttimu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `xuanxianga` varchar(500) DEFAULT NULL,
  `xuanxiangb` varchar(500) DEFAULT NULL,
  `xuanxiangc` varchar(500) DEFAULT NULL,
  `xuanxiangd` varchar(500) DEFAULT NULL,
  `daan` varchar(500) DEFAULT NULL,
  `fenshu` int DEFAULT NULL,
  `del` varchar(500) DEFAULT NULL,
  `zid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ttimu
-- ----------------------------
INSERT INTO `ttimu` VALUES ('1', '数据库系统的基础是', '数据结构 ', '数据库管理系统', '操作系统', '数据模型', 'A', '10', 'no', '5');
INSERT INTO `ttimu` VALUES ('2', '面哪一个依赖是平凡依赖', 'Sno Cname Grade→Sno Grade', 'Sno Cname→Cname Grade', 'Sno Cname→Sname Grade ', '以上答案都不是', 'B', '10', 'no', '5');
INSERT INTO `ttimu` VALUES ('3', '在SQL中，与关系代数中的投影运算对应的子句是', 'SELECT', 'FROM', 'WHERE', 'ORDER BY', 'C', '10', 'no', '5');
INSERT INTO `ttimu` VALUES ('4', '计算机内的音频必须是（ ）的', '.数字形式', '模拟形式', '离散', '连续 ', 'A', '10', 'no', '5');
INSERT INTO `ttimu` VALUES ('6', '第一题问题', '选项A', '选项B', '选项C', '选项D', 'B', '10', 'no', '8');
INSERT INTO `ttimu` VALUES ('7', '第二题目', '选项A', '选项B', '选项C', '选项D', 'A', '10', 'no', '8');
INSERT INTO `ttimu` VALUES ('8', '有哪些排序', '冒泡1', '冒泡2', '冒泡3', '冒泡4', 'B', '10', 'no', '9');
INSERT INTO `ttimu` VALUES ('9', '数据结构的题目2', '选项A', '选项B', '选项C', '选项d', 'B', '10', 'no', '9');
INSERT INTO `ttimu` VALUES ('10', '新的题目', '1', '2', '3', '4', 'B', '10', 'no', '10');
INSERT INTO `ttimu` VALUES ('11', '新的题目2', '1', '23', '4', '5', 'B', '10', 'no', '10');
INSERT INTO `ttimu` VALUES ('12', '第一题', '答案A', '答案B', '答案C', '答案D', 'B', '50', 'no', '11');
INSERT INTO `ttimu` VALUES ('13', '第二题目', '11', '22', '33', '44', 'B', '50', 'no', '11');
INSERT INTO `ttimu` VALUES ('14', '题目一', '答案A', '答案B', '答案C', '答案D', 'C', '10', null, '12');

-- ----------------------------
-- Table structure for `txuexi`
-- ----------------------------
DROP TABLE IF EXISTS `txuexi`;
CREATE TABLE `txuexi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(66) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `fujianYuanshiming` varchar(55) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of txuexi
-- ----------------------------

-- ----------------------------
-- Table structure for `tzuoyes`
-- ----------------------------
DROP TABLE IF EXISTS `tzuoyes`;
CREATE TABLE `tzuoyes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `tijiaoshi` varchar(50) DEFAULT NULL,
  `stuId` int DEFAULT NULL,
  `zuoyetId` int DEFAULT NULL,
  `huifu` varchar(255) DEFAULT NULL,
  `kgt` int DEFAULT NULL,
  `zgt` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tzuoyes
-- ----------------------------
INSERT INTO `tzuoyes` VALUES ('2', 'java编写猫捉老鼠程序_刘三作业', '/upload/1397758276279.doc', '2018-01-30 04:05', '1', '7', '做的不错', '0', '0');
INSERT INTO `tzuoyes` VALUES ('3', '新作业--王明', '/upload/1495790326080.zip', '2018-01-30 17:18', '4', '8', '60', '10', '50');
INSERT INTO `tzuoyes` VALUES ('4', '数据结构作业--王明明', '/upload/1495791867940.docx', '2018-01-30 17:43', '5', '8', '70', '20', '50');
INSERT INTO `tzuoyes` VALUES ('5', '我做了', '/upload/1509354513628.rar', '2018-01-30 17:08', '5', '10', '40', '20', '20');
INSERT INTO `tzuoyes` VALUES ('6', '我的测试', '/upload/1509435681343.rar', '2018-01-30 15:41', '6', '9', '', '20', '0');
INSERT INTO `tzuoyes` VALUES ('8', '我的主观题', '/upload/1518341436354.rar', '2018-02-11 17:30', '8', null, '', '10', null);
INSERT INTO `tzuoyes` VALUES ('9', '1', '/upload/1603438713062.png', '2020-10-23 18:38', '9', null, '', '10', null);
INSERT INTO `tzuoyes` VALUES ('10', '水电费水电费', '/upload/1603462123882.png', '2020-10-24 01:08', '9', null, '', '0', null);

-- ----------------------------
-- Table structure for `tzuoyet`
-- ----------------------------
DROP TABLE IF EXISTS `tzuoyet`;
CREATE TABLE `tzuoyet` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mingcheng` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `beizhu` text,
  `fabushi` varchar(50) DEFAULT NULL,
  `teaid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tzuoyet
-- ----------------------------
