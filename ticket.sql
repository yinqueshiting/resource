/*
 Navicat MySQL Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 10/04/2020 17:37:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ticket表自增主键',
  `ticket_name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '票名',
  `ticker_amount` int(255) NOT NULL DEFAULT 0 COMMENT '数额，以分为单位',
  `user_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '外键，用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (1, '优惠券', 200, '1586485708222');
INSERT INTO `ticket` VALUES (2, '优惠券2', 3000, '1586485708222');
INSERT INTO `ticket` VALUES (3, '优惠券10', 20, '1586485708134');

SET FOREIGN_KEY_CHECKS = 1;
