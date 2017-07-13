/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : userdemo

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-07-13 12:46:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for my_user
-- ----------------------------
DROP TABLE IF EXISTS `my_user`;
CREATE TABLE `my_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL COMMENT '用户名',
  `user_password` varchar(100) NOT NULL COMMENT '用户密码',
  `user_age` int(5) NOT NULL COMMENT '用户年龄',
  `user_phone` varchar(50) NOT NULL COMMENT '用户手机号',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_user
-- ----------------------------
INSERT INTO `my_user` VALUES ('1', '张三', '111111', '20', '18011112222');
INSERT INTO `my_user` VALUES ('2', '李四', '222222', '21', '18111112222');
INSERT INTO `my_user` VALUES ('3', '王五', '333333', '22', '18211112222');
INSERT INTO `my_user` VALUES ('4', '赵六', '444444', '23', '18511112222');
INSERT INTO `my_user` VALUES ('5', '马七', '555555', '24', '18711112222');
INSERT INTO `my_user` VALUES ('20', '二狗子', '11112222', '28', '18211111234');
