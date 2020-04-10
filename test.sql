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

 Date: 10/04/2020 17:37:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `password` char(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '哈希计算后的密码',
  `salt` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '随机生成的盐',
  `user_id` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用于展示的用户id',
  PRIMARY KEY (`id`, `phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '一号', '15392761520', '2020-04-09 15:23:59', '3f931efd0e669d5bf41d71b9a01a9e8c383e1904b40bcb32fa868f3c88220c31', 'HJHvwVlYLPXtHtAN', '1586485708222');
INSERT INTO `test` VALUES (15, '名称6652', '15392461520', '2020-04-09 15:23:59', '3dfeb7fea8dc1abb0d120e44a0efe042a246e69249b4e4cec2ae89bf3ef14a91', 'IdVFCLvpfbElDPJk', '');
INSERT INTO `test` VALUES (16, '测试用户', '15392461520', '2020-04-09 16:55:10', 'c9508e0221f7b1013c5f89c85f99339adcc5a4a6c5b50e80f988ab08b817fcfb', 'SGwUlgxLLEKNuGSM', '');
INSERT INTO `test` VALUES (17, '测试用户2', '15392461520', '2020-04-09 16:58:20', '4fb707bb000eddcd5ace5b78630e456d13a06429e4d2013a31ae7180356a983f', 'TWeUofmjNMGAmasQ', '');
INSERT INTO `test` VALUES (32, '测试用户0410', '15392461533', '2020-04-10 10:10:47', '308f1ffde755c47ee842335a512fa5e17f4b9467cddb0b77161da4b2970ffcac', 'zECvWhwRJNUimOgT', '');
INSERT INTO `test` VALUES (33, '测试用户0410', '15392461533', '2020-04-10 10:28:28', '9d653b819c3f67776add5e9704451864a9979ae7b73107211807abab002049b9', 'JoapphgZDGNwzetg', '1586485708134');

SET FOREIGN_KEY_CHECKS = 1;
