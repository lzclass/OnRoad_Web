/*
Navicat MySQL Data Transfer

Source Server         : mydata
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-11-25 16:57:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dayword
-- ----------------------------
DROP TABLE IF EXISTS `dayword`;
CREATE TABLE `dayword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` date DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `textAuthor` varchar(255) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `imageAuthor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dayword
-- ----------------------------
INSERT INTO `dayword` VALUES ('1', '2016-11-23', '须交有道之人,莫结无义之友。饮清静之茶，莫贪花色之酒。开方便之门，闲是非之口。', '行尽天涯', 'http://t-1.tuzhan.com/082c956583e3/c-2/l/2013/05/01/06/0caff879c1094324876d1c6f178acb4c.jpg', '静默山水间');
INSERT INTO `dayword` VALUES ('2', '2016-11-24', '一个人，一辈子最重要的事，其实就是选对身边的人。炊烟起了，我在门口等你；夕阳下了，我在山边等你；叶子黄了，我在树下等你；月儿弯了，我在十五等你；细雨来了，我在伞下等你；流水冻了，我在河畔等你；生命累了，我在天堂等你；我们老了，我在来生等你。', '行尽天涯', 'http://pic41.nipic.com/20140505/6099952_121948164122_2.jpg', '静默山水间');
INSERT INTO `dayword` VALUES ('3', '2016-11-25', '你住的城市下雨了，很想问你有没有带伞，可是我忍住了，因为我怕你说没带，而我又无能为力，就像我爱你，却给不到你想要的陪伴。', '行尽天涯', 'http://img.pconline.com.cn/images/upload/upc/tx/photoblog/1611/13/c13/29883521_1479040217470_mthumb.jpg', '静默山水间');
INSERT INTO `dayword` VALUES ('4', '2016-11-26', '有一种缘，放手后成为风景。有一颗心，坚持中方显真诚。你懂了，我接近天堂;你不懂，我成为过往', '陌生人', 'http://tupian.enterdesk.com/2015/gha/10/1702/03.jpg', '静默山水间');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `createDate` date NOT NULL,
  `content` varchar(100) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of like
-- ----------------------------
INSERT INTO `like` VALUES ('1', '3', '1000');
INSERT INTO `like` VALUES ('2', '4', '200');

-- ----------------------------
-- Table structure for registercode
-- ----------------------------
DROP TABLE IF EXISTS `registercode`;
CREATE TABLE `registercode` (
  `mobile` int(11) NOT NULL,
  `code` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of registercode
-- ----------------------------

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicID` int(11) NOT NULL DEFAULT '1',
  `postID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `content` varchar(300) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '16', '27', '11', '111', '2013-05-18 11:20:34');
INSERT INTO `reply` VALUES ('2', '16', '27', '95', '222', '2016-07-27 14:36:51');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `moduleID` int(11) NOT NULL,
  `postCount` int(11) NOT NULL DEFAULT '1',
  `replyCount` int(11) NOT NULL DEFAULT '0',
  `pv` int(11) NOT NULL DEFAULT '0',
  `content` varchar(60) NOT NULL,
  `emotion` tinyint(2) DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isNice` bit(1) NOT NULL DEFAULT b'0',
  `isUp` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '1', '4', '1', '0', '17', 'test', null, '2013-05-17 13:04:51', '\0', '\0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL COMMENT '登录名',
  `nickName` varchar(15) DEFAULT NULL COMMENT '昵称',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `sex` bit(1) NOT NULL DEFAULT b'1' COMMENT '0女1男',
  `email` varchar(30) DEFAULT NULL,
  `headImg` varchar(120) DEFAULT 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif' COMMENT '头像',
  `registDate` date DEFAULT NULL COMMENT '注册日期',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `access_token` varchar(255) DEFAULT NULL COMMENT '登录码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lz63993048', '行尽天涯', 'e10adc3949ba59abbe56e057f20f883e', '', '63993048@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', '2016-07-04', '15210162168', null);
