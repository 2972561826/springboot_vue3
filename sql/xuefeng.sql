/*
 Navicat Premium Data Transfer

 Source Server         : T9
 Source Server Type    : MySQL
 Source Server Version : 50628
 Source Host           : localhost:3306
 Source Schema         : xuefeng

 Target Server Type    : MySQL
 Target Server Version : 50628
 File Encoding         : 65001

 Date: 10/10/2022 15:55:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for xuefeng_operator
-- ----------------------------
DROP TABLE IF EXISTS `xuefeng_operator`;
CREATE TABLE `xuefeng_operator`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `checkintime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `endtime` datetime(0) NULL DEFAULT NULL,
  `roomno` int(11) NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `money` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuefeng_operator
-- ----------------------------

-- ----------------------------
-- Table structure for xuefeng_order
-- ----------------------------
DROP TABLE IF EXISTS `xuefeng_order`;
CREATE TABLE `xuefeng_order`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idno` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `checkintime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `endtime` datetime(0) NULL DEFAULT NULL,
  `roomno` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuefeng_order
-- ----------------------------

-- ----------------------------
-- Table structure for xuefeng_price
-- ----------------------------
DROP TABLE IF EXISTS `xuefeng_price`;
CREATE TABLE `xuefeng_price`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuefeng_price
-- ----------------------------
INSERT INTO `xuefeng_price` VALUES (1, '单人房', 80);
INSERT INTO `xuefeng_price` VALUES (2, '双人房', 130);
INSERT INTO `xuefeng_price` VALUES (3, '豪华套间', 180);
INSERT INTO `xuefeng_price` VALUES (4, '商务套间', 200);

-- ----------------------------
-- Table structure for xuefeng_room
-- ----------------------------
DROP TABLE IF EXISTS `xuefeng_room`;
CREATE TABLE `xuefeng_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ischeck` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuefeng_room
-- ----------------------------
INSERT INTO `xuefeng_room` VALUES (1, 101, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (2, 102, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (3, 103, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (4, 104, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (5, 105, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (6, 106, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (7, 107, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (8, 108, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (9, 109, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (10, 110, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (11, 111, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (12, 112, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (13, 113, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (14, 114, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (15, 115, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (16, 116, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (17, 117, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (18, 118, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (19, 119, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (20, 120, '单人房', '否');
INSERT INTO `xuefeng_room` VALUES (21, 201, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (22, 202, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (23, 203, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (24, 204, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (25, 205, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (26, 206, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (27, 207, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (28, 208, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (29, 209, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (30, 210, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (31, 211, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (32, 212, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (33, 213, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (34, 214, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (35, 215, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (36, 216, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (37, 217, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (38, 218, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (39, 219, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (40, 220, '双人房', '否');
INSERT INTO `xuefeng_room` VALUES (41, 301, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (42, 302, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (43, 303, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (44, 304, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (45, 305, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (46, 306, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (47, 307, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (48, 308, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (49, 309, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (50, 310, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (51, 311, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (52, 312, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (53, 313, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (54, 314, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (55, 315, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (56, 316, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (57, 317, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (58, 318, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (59, 319, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (60, 320, '豪华套间', '否');
INSERT INTO `xuefeng_room` VALUES (61, 401, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (62, 402, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (63, 403, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (64, 404, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (65, 405, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (66, 406, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (67, 407, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (68, 408, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (69, 409, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (70, 410, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (71, 411, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (72, 412, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (73, 413, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (74, 414, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (75, 415, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (76, 416, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (77, 417, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (78, 418, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (79, 419, '商务套间', '否');
INSERT INTO `xuefeng_room` VALUES (80, 420, '商务套间', '否');

-- ----------------------------
-- Table structure for xuefeng_useraccount
-- ----------------------------
DROP TABLE IF EXISTS `xuefeng_useraccount`;
CREATE TABLE `xuefeng_useraccount`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xuefeng_useraccount
-- ----------------------------
INSERT INTO `xuefeng_useraccount` VALUES (1, 'admin', '123456');
INSERT INTO `xuefeng_useraccount` VALUES (7, '656454525', '654856464');
INSERT INTO `xuefeng_useraccount` VALUES (31, '1111111', '1111111');
INSERT INTO `xuefeng_useraccount` VALUES (32, 'sdf', 'sdfsd');
INSERT INTO `xuefeng_useraccount` VALUES (34, '18166402563WXF', '18166402563Wxf');
INSERT INTO `xuefeng_useraccount` VALUES (35, '123456789', '123456789');

SET FOREIGN_KEY_CHECKS = 1;
