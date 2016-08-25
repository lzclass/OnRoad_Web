/*
Navicat MySQL Data Transfer

Source Server         : mydata
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-08-25 10:51:20
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `turn` tinyint(2) DEFAULT NULL,
  `creattime` datetime DEFAULT NULL,
  `author` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', '真实的故事 ⊙ω⊙', null, '1', '2016-07-27 14:11:41', null);
INSERT INTO `module` VALUES ('2', '屌丝的逆袭 （┬＿┬）', null, '2', '2016-07-26 14:11:54', null);
INSERT INTO `module` VALUES ('3', '屌丝的梦想 ⊙▽⊙', null, '3', '2016-07-25 14:11:57', null);
INSERT INTO `module` VALUES ('4', '呵呵 <(￣︶￣)>', null, '4', '2016-07-24 14:12:02', null);
INSERT INTO `module` VALUES ('5', '各种资讯 (^O^)', null, '5', '2016-07-23 14:12:06', null);
INSERT INTO `module` VALUES ('6', '娱乐时刻 ( ^３^ )~~', null, '6', '2016-07-20 14:12:10', null);
INSERT INTO `module` VALUES ('7', '那些年看过的电影 ●ω●', null, '7', '2016-07-19 14:12:14', null);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicID` int(11) NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hasReply` bit(1) NOT NULL DEFAULT b'0',
  `updateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('27', '16', '11', '<p>^O^</p>', '2013-05-17 13:04:51', '', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('94', '16', '27', '11', '111', '2013-05-18 11:20:34');
INSERT INTO `reply` VALUES ('95', '16', '27', '95', '222', '2016-07-27 14:36:51');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('16', '11', '4', '1', '0', '17', 'test', null, '2013-05-17 13:04:51', '\0', '\0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(20) NOT NULL COMMENT '登录名',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `sex` bit(1) NOT NULL DEFAULT b'1' COMMENT '0女1男',
  `email` varchar(30) DEFAULT NULL,
  `headImg` varchar(120) DEFAULT 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif',
  `blogUrl` varchar(80) DEFAULT NULL,
  `feeling` varchar(300) DEFAULT NULL,
  `registDate` date DEFAULT NULL COMMENT '注册日期',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `nickName` varchar(15) DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '紫电清霜', '6ece8b29849534227ca38d459c28d9f8', '', 'iveryang@sina.cn', 'http://static.tieba.baidu.com/tb/editor/images/tsj/t_0002.gif', 'http://iver.cloudfoundry.com', '天下风云出我辈，\r\n一入江湖岁月催；\r\n皇图霸业谈笑中，\r\n不胜人生一场醉；\r\n提剑跨骑挥鬼雨，\r\n白骨如山鸟惊飞；\r\n尘事如潮人如水，\r\n只叹江湖几人回。', '2013-05-09', null, null);
INSERT INTO `user` VALUES ('4', '老北', 'eee85e1ec1ad81aa3d39353dc7d13f52', '', 'yswj81@163.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', null, null, '2013-05-10', null, null);
INSERT INTO `user` VALUES ('5', 'bob', 'cf8e54a307ca7105d2562107f28a4559', '', 'yzqb@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', 'www.eytest.com', '想得到 做得到', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('6', '佩恩', '4cc79d0f881308a24f291d6f4e750830', '', 'sqhua@163.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', null, null, '2013-05-10', null, null);
INSERT INTO `user` VALUES ('7', 'Mike_Liu', 'be9dbde87909c957ab8ba9709415ee92', '', '871005789@qq.com', 'http://mikeliu.cloudfoundry.com/img/s/me_mini.jpg', 'http://mikeliu.cloudfoundry.com/', null, '2013-05-10', null, null);
INSERT INTO `user` VALUES ('8', '十二', '3fde6bb0541387e4ebdadf7c2ff31123', '', '785042976@qq.com', 'http://www.gravatar.com/avatar/f9d61d8de55171c2046fd587764a3386?d=mm', null, null, '2013-05-10', null, null);
INSERT INTO `user` VALUES ('9', 'mai', 'e10adc3949ba59abbe56e057f20f883e', '', '183591360@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', null, '赱', '2013-05-10', null, null);
INSERT INTO `user` VALUES ('10', 'JFinal', '446818b28bc03176a3991c2be86ea327', '', 'jfinal@126.com', 'http://static.oschina.net/uploads/user/100/201137_100.jpg', null, null, '2013-05-10', null, null);
INSERT INTO `user` VALUES ('95', '行尽天涯', 'e10adc3949ba59abbe56e057f20f883e', '', '63993048@qq.com', 'http://static.tieba.baidu.com/tb/editor/images/ali/ali_008.gif', null, null, '2016-07-04', null, null);
