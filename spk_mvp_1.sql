/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : spk_mvp

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-01-13 17:14:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for match
-- ----------------------------
DROP TABLE IF EXISTS `match`;
CREATE TABLE `match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_match` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `tim` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `match_ibfk_1` (`tim`),
  CONSTRAINT `match_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of match
-- ----------------------------
INSERT INTO `match` VALUES ('3', '5e18910e06', '2020-01-09', '12');
INSERT INTO `match` VALUES ('4', '5e18910e06', '2020-01-09', '14');
INSERT INTO `match` VALUES ('5', '5e18928067', '2020-01-09', '12');
INSERT INTO `match` VALUES ('6', '5e18938edc', '2020-01-11', '12');
INSERT INTO `match` VALUES ('7', '5e18938edc', '2020-01-11', '14');
INSERT INTO `match` VALUES ('8', '5e1893903f', '2020-01-11', '12');
INSERT INTO `match` VALUES ('9', '5e1893903f', '2020-01-11', '14');
INSERT INTO `match` VALUES ('10', '5e18950e5f', '2020-01-12', '12');
INSERT INTO `match` VALUES ('12', '5e18950ea4', '2020-01-12', '12');
INSERT INTO `match` VALUES ('14', '5e18957695', '2020-01-12', '12');
INSERT INTO `match` VALUES ('16', '5e18957705', '2020-01-12', '12');
INSERT INTO `match` VALUES ('18', '5e1c050a3c', '2020-01-13', '15');
INSERT INTO `match` VALUES ('19', '5e1c050a3c', '2020-01-13', '14');
INSERT INTO `match` VALUES ('20', '5e1c050b3f', '2020-01-13', '15');
INSERT INTO `match` VALUES ('21', '5e1c050b3f', '2020-01-13', '14');

-- ----------------------------
-- Table structure for pemain
-- ----------------------------
DROP TABLE IF EXISTS `pemain`;
CREATE TABLE `pemain` (
  `id_pemain` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pemain` varchar(100) NOT NULL,
  `no_punggung` int(11) NOT NULL,
  `tim` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pemain`),
  KEY `tim` (`tim`),
  CONSTRAINT `pemain_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pemain
-- ----------------------------
INSERT INTO `pemain` VALUES ('19', 'mukidi', '1', '12');
INSERT INTO `pemain` VALUES ('23', 'Nadya', '17', '14');
INSERT INTO `pemain` VALUES ('24', 'Rizky', '7', '14');
INSERT INTO `pemain` VALUES ('25', 'Aish', '98', '14');
INSERT INTO `pemain` VALUES ('26', 'Elsa', '4', '15');
INSERT INTO `pemain` VALUES ('27', 'Anna', '5', '15');
INSERT INTO `pemain` VALUES ('28', 'Olaf', '7', '15');
INSERT INTO `pemain` VALUES ('29', 'Kristoff', '8', '15');
INSERT INTO `pemain` VALUES ('30', 'desy', '1', '17');
INSERT INTO `pemain` VALUES ('31', 'tiwi', '2', '18');
INSERT INTO `pemain` VALUES ('32', 'tini', '3', '19');

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pemain` int(11) DEFAULT NULL,
  `id_match` varchar(10) NOT NULL,
  `point` int(11) DEFAULT NULL,
  `assist` int(11) DEFAULT NULL,
  `off_rebound` int(11) DEFAULT NULL,
  `def_rebound` int(11) DEFAULT NULL,
  `steal` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pemain` (`pemain`),
  CONSTRAINT `statistik_ibfk_1` FOREIGN KEY (`pemain`) REFERENCES `pemain` (`id_pemain`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of statistik
-- ----------------------------
INSERT INTO `statistik` VALUES ('1', '19', '5', '10', '9', '8', '7', '5', '6');
INSERT INTO `statistik` VALUES ('2', '19', '6', '10', '10', '20', '10', '8', '8');
INSERT INTO `statistik` VALUES ('3', '23', '7', '8', '6', '10', '5', '7', '6');
INSERT INTO `statistik` VALUES ('4', '24', '7', '4', '3', '4', '5', '5', '10');
INSERT INTO `statistik` VALUES ('5', '25', '7', '15', '12', '10', '8', '4', '5');
INSERT INTO `statistik` VALUES ('6', '19', '8', '10', '10', '20', '10', '8', '8');
INSERT INTO `statistik` VALUES ('7', '23', '9', '8', '6', '10', '5', '7', '6');
INSERT INTO `statistik` VALUES ('8', '24', '9', '4', '3', '4', '5', '5', '10');
INSERT INTO `statistik` VALUES ('9', '25', '9', '15', '12', '10', '8', '4', '5');
INSERT INTO `statistik` VALUES ('10', '19', '10', '1', '1', '1', '1', '1', '1');
INSERT INTO `statistik` VALUES ('14', '19', '12', '1', '1', '1', '1', '1', '1');
INSERT INTO `statistik` VALUES ('18', '19', '14', '1', '1', '1', '1', '1', '1');
INSERT INTO `statistik` VALUES ('22', '19', '16', '1', '1', '1', '1', '1', '1');
INSERT INTO `statistik` VALUES ('26', '26', '18', '10', '10', '10', '10', '10', '10');
INSERT INTO `statistik` VALUES ('27', '27', '18', '5', '6', '7', '8', '0', '9');
INSERT INTO `statistik` VALUES ('28', '28', '18', '1', '2', '3', '4', '7', '5');
INSERT INTO `statistik` VALUES ('29', '29', '18', '1', '2', '3', '4', '6', '5');
INSERT INTO `statistik` VALUES ('30', '23', '19', '1', '2', '4', '1', '4', '2');
INSERT INTO `statistik` VALUES ('31', '24', '19', '3', '4', '3', '3', '2', '3');
INSERT INTO `statistik` VALUES ('32', '25', '19', '3', '1', '2', '3', '4', '3');
INSERT INTO `statistik` VALUES ('33', '26', '20', '10', '10', '10', '10', '10', '10');
INSERT INTO `statistik` VALUES ('34', '27', '20', '5', '6', '7', '8', '0', '9');
INSERT INTO `statistik` VALUES ('35', '28', '20', '1', '2', '3', '4', '7', '5');
INSERT INTO `statistik` VALUES ('36', '29', '20', '1', '2', '3', '4', '6', '5');
INSERT INTO `statistik` VALUES ('37', '23', '21', '1', '2', '4', '1', '4', '2');
INSERT INTO `statistik` VALUES ('38', '24', '21', '3', '4', '3', '3', '2', '3');
INSERT INTO `statistik` VALUES ('39', '25', '21', '3', '1', '2', '3', '4', '3');

-- ----------------------------
-- Table structure for tim
-- ----------------------------
DROP TABLE IF EXISTS `tim`;
CREATE TABLE `tim` (
  `id_tim` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tim` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tim`),
  KEY `nama_tim` (`nama_tim`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tim
-- ----------------------------
INSERT INTO `tim` VALUES ('12', 'bambang');
INSERT INTO `tim` VALUES ('14', 'Bidadari');
INSERT INTO `tim` VALUES ('15', 'frozen');
INSERT INTO `tim` VALUES ('16', 'ick iwir');
INSERT INTO `tim` VALUES ('19', 'jaya');
INSERT INTO `tim` VALUES ('20', 'selalu');
INSERT INTO `tim` VALUES ('17', 'sportif');
INSERT INTO `tim` VALUES ('18', 'sukses');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin');
