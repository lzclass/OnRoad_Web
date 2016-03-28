CREATE DATABASE jfinal_onroad;

USE jfinal_onroad;

CREATE TABLE `quotation` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `quotation` VALUES ('1', 'JFinal OnRoad Title here', 'JFinal OnRoad Content here');
INSERT INTO `quotation` VALUES ('2', 'test 1', 'test 1');
INSERT INTO `quotation` VALUES ('3', 'test 2', 'test 2');
INSERT INTO `quotation` VALUES ('4', 'test 3', 'test 3');
INSERT INTO `quotation` VALUES ('5', 'test 4', 'test 4');