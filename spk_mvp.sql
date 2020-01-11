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

 Date: 11/01/2020 16:29:20
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
  `tim` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `match_ibfk_1`(`tim`) USING BTREE,
  CONSTRAINT `match_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of match
-- ----------------------------
INSERT INTO `match` VALUES (3, '5e18910e06', '2020-01-09', 12);
INSERT INTO `match` VALUES (4, '5e18910e06', '2020-01-09', 14);
INSERT INTO `match` VALUES (5, '5e18928067', '2020-01-09', 12);
INSERT INTO `match` VALUES (6, '5e18938edc', '2020-01-11', 12);
INSERT INTO `match` VALUES (7, '5e18938edc', '2020-01-11', 14);
INSERT INTO `match` VALUES (8, '5e1893903f', '2020-01-11', 12);
INSERT INTO `match` VALUES (9, '5e1893903f', '2020-01-11', 14);
INSERT INTO `match` VALUES (10, '5e18950e5f', '2020-01-12', 12);
INSERT INTO `match` VALUES (11, '5e18950e5f', '2020-01-12', 13);
INSERT INTO `match` VALUES (12, '5e18950ea4', '2020-01-12', 12);
INSERT INTO `match` VALUES (13, '5e18950ea4', '2020-01-12', 13);
INSERT INTO `match` VALUES (14, '5e18957695', '2020-01-12', 12);
INSERT INTO `match` VALUES (15, '5e18957695', '2020-01-12', 13);
INSERT INTO `match` VALUES (16, '5e18957705', '2020-01-12', 12);
INSERT INTO `match` VALUES (17, '5e18957705', '2020-01-12', 13);

-- ----------------------------
-- Table structure for pemain
-- ----------------------------
DROP TABLE IF EXISTS `pemain`;
CREATE TABLE `pemain`  (
  `id_pemain` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemain` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_punggung` int(11) NOT NULL,
  `tim` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pemain`) USING BTREE,
  INDEX `tim`(`tim`) USING BTREE,
  CONSTRAINT `pemain_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pemain
-- ----------------------------
INSERT INTO `pemain` VALUES (19, 'mukidi', 1, 12);
INSERT INTO `pemain` VALUES (20, 'Handyan', 6, 13);
INSERT INTO `pemain` VALUES (21, 'Ihza', 1, 13);
INSERT INTO `pemain` VALUES (22, 'Ramadhan', 97, 13);
INSERT INTO `pemain` VALUES (23, 'Nadya', 17, 14);
INSERT INTO `pemain` VALUES (24, 'Rizky', 7, 14);
INSERT INTO `pemain` VALUES (25, 'Aish', 98, 14);

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemain` int(11) NULL DEFAULT NULL,
  `id_match` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `assist` int(11) NULL DEFAULT NULL,
  `off_rebound` int(11) NULL DEFAULT NULL,
  `def_rebound` int(11) NULL DEFAULT NULL,
  `steal` int(11) NULL DEFAULT NULL,
  `block` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pemain`(`pemain`) USING BTREE,
  CONSTRAINT `statistik_ibfk_1` FOREIGN KEY (`pemain`) REFERENCES `pemain` (`id_pemain`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of statistik
-- ----------------------------
INSERT INTO `statistik` VALUES (1, 19, '5', 10, 9, 8, 7, 5, 6);
INSERT INTO `statistik` VALUES (2, 19, '6', 10, 10, 20, 10, 8, 8);
INSERT INTO `statistik` VALUES (3, 23, '7', 8, 6, 10, 5, 7, 6);
INSERT INTO `statistik` VALUES (4, 24, '7', 4, 3, 4, 5, 5, 10);
INSERT INTO `statistik` VALUES (5, 25, '7', 15, 12, 10, 8, 4, 5);
INSERT INTO `statistik` VALUES (6, 19, '8', 10, 10, 20, 10, 8, 8);
INSERT INTO `statistik` VALUES (7, 23, '9', 8, 6, 10, 5, 7, 6);
INSERT INTO `statistik` VALUES (8, 24, '9', 4, 3, 4, 5, 5, 10);
INSERT INTO `statistik` VALUES (9, 25, '9', 15, 12, 10, 8, 4, 5);
INSERT INTO `statistik` VALUES (10, 19, '10', 1, 1, 1, 1, 1, 1);
INSERT INTO `statistik` VALUES (11, 20, '11', 2, 2, 2, 2, 2, 2);
INSERT INTO `statistik` VALUES (12, 21, '11', 3, 3, 3, 3, 3, 3);
INSERT INTO `statistik` VALUES (13, 22, '11', 4, 4, 4, 4, 4, 4);
INSERT INTO `statistik` VALUES (14, 19, '12', 1, 1, 1, 1, 1, 1);
INSERT INTO `statistik` VALUES (15, 20, '13', 2, 2, 2, 2, 2, 2);
INSERT INTO `statistik` VALUES (16, 21, '13', 3, 3, 3, 3, 3, 3);
INSERT INTO `statistik` VALUES (17, 22, '13', 4, 4, 4, 4, 4, 4);
INSERT INTO `statistik` VALUES (18, 19, '14', 1, 1, 1, 1, 1, 1);
INSERT INTO `statistik` VALUES (19, 20, '15', 2, 2, 2, 2, 2, 2);
INSERT INTO `statistik` VALUES (20, 21, '15', 3, 3, 3, 3, 3, 3);
INSERT INTO `statistik` VALUES (21, 22, '15', 4, 4, 4, 4, 4, 4);
INSERT INTO `statistik` VALUES (22, 19, '16', 1, 1, 1, 1, 1, 1);
INSERT INTO `statistik` VALUES (23, 20, '17', 2, 2, 2, 2, 2, 2);
INSERT INTO `statistik` VALUES (24, 21, '17', 3, 3, 3, 3, 3, 3);
INSERT INTO `statistik` VALUES (25, 22, '17', 4, 4, 4, 4, 4, 4);

-- ----------------------------
-- Table structure for tim
-- ----------------------------
DROP TABLE IF EXISTS `tim`;
CREATE TABLE `tim`  (
  `id_tim` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tim` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_tim`) USING BTREE,
  INDEX `nama_tim`(`nama_tim`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tim
-- ----------------------------
INSERT INTO `tim` VALUES (12, 'bambang');
INSERT INTO `tim` VALUES (14, 'Bidadari');
INSERT INTO `tim` VALUES (13, 'STIKI');

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
