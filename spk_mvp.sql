/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100126
 Source Host           : localhost:3306
 Source Schema         : spk_mvp

 Target Server Type    : MySQL
 Target Server Version : 100126
 File Encoding         : 65001

 Date: 08/01/2020 15:29:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for match
-- ----------------------------
DROP TABLE IF EXISTS `match`;
CREATE TABLE `match`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_match` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tim` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tim`(`tim`) USING BTREE,
  CONSTRAINT `match_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`nama_tim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pemain
-- ----------------------------
DROP TABLE IF EXISTS `pemain`;
CREATE TABLE `pemain`  (
  `id_pemain` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemain` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_punggung` int(11) NOT NULL,
  `tim` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pemain`) USING BTREE,
  INDEX `nama_pemain`(`nama_pemain`) USING BTREE,
  INDEX `tim`(`tim`) USING BTREE,
  CONSTRAINT `pemain_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`nama_tim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_match` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `assist` int(11) NULL DEFAULT NULL,
  `off_rebound` int(11) NULL DEFAULT NULL,
  `def_rebound` int(11) NULL DEFAULT NULL,
  `steal` int(11) NULL DEFAULT NULL,
  `block` int(11) NULL DEFAULT NULL,
  `nama_pemain` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `statistik_ibfk_1`(`nama_pemain`) USING BTREE,
  CONSTRAINT `statistik_ibfk_1` FOREIGN KEY (`nama_pemain`) REFERENCES `pemain` (`nama_pemain`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tim
-- ----------------------------
DROP TABLE IF EXISTS `tim`;
CREATE TABLE `tim`  (
  `id_tim` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tim` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_tim`) USING BTREE,
  INDEX `nama_tim`(`nama_tim`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
