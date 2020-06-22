/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3307
 Source Schema         : device_manager

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 22/06/2020 20:57:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for assemblyinfo
-- ----------------------------
DROP TABLE IF EXISTS `assemblyinfo`;
CREATE TABLE `assemblyinfo`  (
  `Property` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for configsource
-- ----------------------------
DROP TABLE IF EXISTS `configsource`;
CREATE TABLE `configsource`  (
  `UID` int(11) NOT NULL,
  `Feature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`UID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for currentcontrolset
-- ----------------------------
DROP TABLE IF EXISTS `currentcontrolset`;
CREATE TABLE `currentcontrolset`  (
  `SID` int(11) NOT NULL,
  `UID` int(11) NULL DEFAULT NULL,
  `Property` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Candidate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dumplog
-- ----------------------------
DROP TABLE IF EXISTS `dumplog`;
CREATE TABLE `dumplog`  (
  `SID` int(11) NULL DEFAULT NULL,
  `Transaction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Timestamp` datetime(0) NULL DEFAULT NULL,
  `Path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for eventlog
-- ----------------------------
DROP TABLE IF EXISTS `eventlog`;
CREATE TABLE `eventlog`  (
  `EID` int(11) NOT NULL,
  `Level` tinyint(4) NULL DEFAULT NULL,
  `Timestamp` datetime(0) NULL DEFAULT NULL,
  `Module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`EID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for memorymonitor
-- ----------------------------
DROP TABLE IF EXISTS `memorymonitor`;
CREATE TABLE `memorymonitor`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` datetime(0) NULL DEFAULT NULL,
  `Usage` float NULL DEFAULT NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of memorymonitor
-- ----------------------------
INSERT INTO `memorymonitor` VALUES (1, '2020-02-12 16:00:00', 312.4);
INSERT INTO `memorymonitor` VALUES (2, '2020-02-12 16:00:10', 312.8);
INSERT INTO `memorymonitor` VALUES (3, '2020-02-12 16:00:20', 318.5);
INSERT INTO `memorymonitor` VALUES (4, '2020-02-12 16:00:30', 318.6);
INSERT INTO `memorymonitor` VALUES (5, '2020-02-12 16:00:40', 318.2);
INSERT INTO `memorymonitor` VALUES (6, '2020-02-12 16:00:50', 300.5);
INSERT INTO `memorymonitor` VALUES (7, '2020-02-12 16:01:00', 308.6);
INSERT INTO `memorymonitor` VALUES (8, '2020-02-12 16:01:11', 222);
INSERT INTO `memorymonitor` VALUES (9, '2020-02-12 16:01:12', 111);
INSERT INTO `memorymonitor` VALUES (10, '2020-02-12 16:01:12', 55);
INSERT INTO `memorymonitor` VALUES (11, '2020-02-12 16:01:12', 66);
INSERT INTO `memorymonitor` VALUES (12, '2020-02-12 16:01:12', 55);
INSERT INTO `memorymonitor` VALUES (13, '2020-02-12 16:01:12', 66);
INSERT INTO `memorymonitor` VALUES (14, '2020-02-13 16:01:12', 88);
INSERT INTO `memorymonitor` VALUES (15, '2020-02-13 16:01:12', 99);
INSERT INTO `memorymonitor` VALUES (16, '2020-02-16 16:01:12', 88);
INSERT INTO `memorymonitor` VALUES (17, '2020-02-16 16:01:12', 78);
INSERT INTO `memorymonitor` VALUES (18, '2020-02-16 16:01:12', 22);
INSERT INTO `memorymonitor` VALUES (19, '2020-02-16 16:01:12', 22);
INSERT INTO `memorymonitor` VALUES (20, '2020-02-16 16:01:12', 18);

-- ----------------------------
-- Table structure for networkmonitor
-- ----------------------------
DROP TABLE IF EXISTS `networkmonitor`;
CREATE TABLE `networkmonitor`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` datetime(0) NULL DEFAULT NULL,
  `UploadKbps` int(11) NULL DEFAULT NULL,
  `DownloadKbps` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of networkmonitor
-- ----------------------------
INSERT INTO `networkmonitor` VALUES (1, '2020-02-12 16:00:00', 3, 4);
INSERT INTO `networkmonitor` VALUES (2, '2020-02-12 16:00:10', 2, 62);
INSERT INTO `networkmonitor` VALUES (3, '2020-02-12 16:00:20', 1, 24);
INSERT INTO `networkmonitor` VALUES (4, '2020-02-12 16:00:30', 0, 4);
INSERT INTO `networkmonitor` VALUES (5, '2020-02-12 16:00:40', 5, 2);
INSERT INTO `networkmonitor` VALUES (6, '2020-02-12 16:00:50', 5, 0);
INSERT INTO `networkmonitor` VALUES (7, '2020-02-12 16:01:00', 16, 1);
INSERT INTO `networkmonitor` VALUES (8, '2020-02-16 16:01:00', 45, 445);
INSERT INTO `networkmonitor` VALUES (9, '2020-02-16 16:01:12', 44, 44);
INSERT INTO `networkmonitor` VALUES (10, '2020-03-16 16:01:12', 55, 55);

-- ----------------------------
-- Table structure for processormonitor
-- ----------------------------
DROP TABLE IF EXISTS `processormonitor`;
CREATE TABLE `processormonitor`  (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `Timestamp` datetime(0) NULL DEFAULT NULL,
  `Usage` float NULL DEFAULT NULL,
  PRIMARY KEY (`SID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of processormonitor
-- ----------------------------
INSERT INTO `processormonitor` VALUES (1, '2020-02-12 16:00:00', 5.4);
INSERT INTO `processormonitor` VALUES (2, '2020-02-12 16:00:10', 6.3);
INSERT INTO `processormonitor` VALUES (3, '2020-02-12 16:00:20', 4.1);
INSERT INTO `processormonitor` VALUES (4, '2020-02-12 16:00:30', 5.9);
INSERT INTO `processormonitor` VALUES (5, '2020-02-12 16:00:40', 5.1);
INSERT INTO `processormonitor` VALUES (6, '2020-02-12 16:00:50', 9);
INSERT INTO `processormonitor` VALUES (7, '2020-02-12 16:01:00', 5.3);
INSERT INTO `processormonitor` VALUES (8, '2020-02-12 16:01:00', 88);
INSERT INTO `processormonitor` VALUES (9, '2020-02-16 16:01:00', 99);
INSERT INTO `processormonitor` VALUES (10, '2020-02-16 16:01:00', 88);
INSERT INTO `processormonitor` VALUES (11, '2020-02-16 16:01:12', 58);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `Host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Usernmae` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
