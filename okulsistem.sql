/*
 Navicat Premium Data Transfer

 Source Server         : OnurCanDatabase
 Source Server Type    : MySQL
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : okulsistem

 Target Server Type    : MySQL
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 10/01/2021 00:31:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for atamalar
-- ----------------------------
DROP TABLE IF EXISTS `atamalar`;
CREATE TABLE `atamalar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ogretmen` int NOT NULL,
  `okul` int NOT NULL,
  `atamaTarihi` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `okulOgretmen`(`ogretmen`) USING BTREE,
  INDEX `Okul`(`okul`) USING BTREE,
  CONSTRAINT `okulOgretmen` FOREIGN KEY (`ogretmen`) REFERENCES `ogretmenler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Okul` FOREIGN KEY (`okul`) REFERENCES `okullar` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of atamalar
-- ----------------------------
INSERT INTO `atamalar` VALUES (1, 1, 1, '2020-12-09');
INSERT INTO `atamalar` VALUES (2, 4, 3, '2021-01-08');
INSERT INTO `atamalar` VALUES (3, 2, 2, '2021-01-21');

-- ----------------------------
-- Table structure for kademeler
-- ----------------------------
DROP TABLE IF EXISTS `kademeler`;
CREATE TABLE `kademeler`  (
  `kademe` tinyint NOT NULL,
  `sube` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kademeler
-- ----------------------------
INSERT INTO `kademeler` VALUES (1, 'A', 1);
INSERT INTO `kademeler` VALUES (1, 'B', 2);
INSERT INTO `kademeler` VALUES (2, 'A', 3);
INSERT INTO `kademeler` VALUES (2, 'B', 4);
INSERT INTO `kademeler` VALUES (3, 'A', 5);
INSERT INTO `kademeler` VALUES (3, 'B', 6);
INSERT INTO `kademeler` VALUES (4, 'A', 7);
INSERT INTO `kademeler` VALUES (4, 'B', 8);
INSERT INTO `kademeler` VALUES (5, 'A', 9);
INSERT INTO `kademeler` VALUES (5, 'B', 10);
INSERT INTO `kademeler` VALUES (6, 'A', 11);
INSERT INTO `kademeler` VALUES (6, 'B', 12);
INSERT INTO `kademeler` VALUES (7, 'A', 13);
INSERT INTO `kademeler` VALUES (7, 'B', 14);
INSERT INTO `kademeler` VALUES (8, 'A', 15);
INSERT INTO `kademeler` VALUES (8, 'B', 16);
INSERT INTO `kademeler` VALUES (9, 'A', 17);
INSERT INTO `kademeler` VALUES (9, 'B', 18);
INSERT INTO `kademeler` VALUES (10, 'A', 19);
INSERT INTO `kademeler` VALUES (11, 'B', 20);
INSERT INTO `kademeler` VALUES (12, 'A', 21);
INSERT INTO `kademeler` VALUES (12, 'B', 22);

-- ----------------------------
-- Table structure for ogrenciler
-- ----------------------------
DROP TABLE IF EXISTS `ogrenciler`;
CREATE TABLE `ogrenciler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `okulNo` mediumint NOT NULL,
  `adi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soyadi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dTarihi` datetime(1) NULL DEFAULT NULL,
  `sinifi` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `öğrenciSınıf`(`sinifi`) USING BTREE,
  CONSTRAINT `öğrenciSınıf` FOREIGN KEY (`sinifi`) REFERENCES `kademeler` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ogrenciler
-- ----------------------------
INSERT INTO `ogrenciler` VALUES (1, 12, 'MEHMET', 'ÖZDİLEK', '2012-06-15 00:24:55.0', 7);
INSERT INTO `ogrenciler` VALUES (4, 45, 'HÜSAMETTİN', 'ÖZÜTOK', '2009-12-10 00:26:04.0', 13);
INSERT INTO `ogrenciler` VALUES (5, 4567, 'GÖZDE', 'GÜVEN', '2006-02-19 00:27:01.0', 22);
INSERT INTO `ogrenciler` VALUES (6, 95, 'CİHAD', 'ARI', '2009-06-07 00:28:19.0', 22);
INSERT INTO `ogrenciler` VALUES (7, 340, 'ONUR CAN', 'KARAMAN', '2009-06-25 00:00:00.0', 21);
INSERT INTO `ogrenciler` VALUES (8, 78, 'NİHAL', 'YILMAZ', '2012-08-22 00:00:00.0', 13);
INSERT INTO `ogrenciler` VALUES (9, 65, 'BARIŞ', 'AĞAÇ', '2014-04-23 00:00:00.0', 1);
INSERT INTO `ogrenciler` VALUES (10, 45, 'KAZIM', 'BARIŞ', '2008-01-01 00:00:00.0', 16);
INSERT INTO `ogrenciler` VALUES (11, 96, 'HANIM', 'TEYZE', '2006-10-11 00:00:00.0', 19);
INSERT INTO `ogrenciler` VALUES (12, 88, 'ALİ', 'BEY', '2004-12-16 00:00:00.0', 19);
INSERT INTO `ogrenciler` VALUES (13, 1907, 'FENER', 'IŞIK', '2004-05-19 00:00:00.0', 19);
INSERT INTO `ogrenciler` VALUES (14, 1905, 'GÜLNAZ', 'SARAY', '2004-07-19 00:00:00.0', 13);
INSERT INTO `ogrenciler` VALUES (15, 1903, 'KARTAL', 'TAŞ', '2004-03-19 00:00:00.0', 13);
INSERT INTO `ogrenciler` VALUES (16, 1910, 'SAMET', 'GÜÇTÜ', '2008-04-21 00:00:00.0', 16);
INSERT INTO `ogrenciler` VALUES (17, 847, 'İSİM', 'BULAMADIM', '2014-06-06 00:00:00.0', 1);
INSERT INTO `ogrenciler` VALUES (18, 19, 'İSMİM', 'VAR', '0000-00-00 00:00:00.0', 4);
INSERT INTO `ogrenciler` VALUES (19, 6, 'KARTAL', 'ŞAHİN', NULL, 4);
INSERT INTO `ogrenciler` VALUES (20, 34, 'ŞERÇE', 'KÜÇÜK', NULL, 13);

-- ----------------------------
-- Table structure for ogretmenler
-- ----------------------------
DROP TABLE IF EXISTS `ogretmenler`;
CREATE TABLE `ogretmenler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soyadi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ogretmenler
-- ----------------------------
INSERT INTO `ogretmenler` VALUES (1, 'ONUR CAN', 'KARAMAN');
INSERT INTO `ogretmenler` VALUES (2, 'CİHAD', 'ARI');
INSERT INTO `ogretmenler` VALUES (3, 'SELMAN', 'ERDOĞAN');
INSERT INTO `ogretmenler` VALUES (4, 'EMRAH', 'NALCI');
INSERT INTO `ogretmenler` VALUES (5, 'TOPRAK', 'KOÇ');
INSERT INTO `ogretmenler` VALUES (6, 'DOĞANCAN', 'MAVİDENİZ');

-- ----------------------------
-- Table structure for okullar
-- ----------------------------
DROP TABLE IF EXISTS `okullar`;
CREATE TABLE `okullar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `şehir` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ilçe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `turu` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `okulturu`(`turu`) USING BTREE,
  CONSTRAINT `okulturu` FOREIGN KEY (`turu`) REFERENCES `okulturleri` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of okullar
-- ----------------------------
INSERT INTO `okullar` VALUES (1, 'GÜNEŞEVLER', 'ANKARA', 'ETİMESGUT', 1);
INSERT INTO `okullar` VALUES (2, 'ALTINDAĞ', 'ANKARA', 'ALTINDAĞ', 4);
INSERT INTO `okullar` VALUES (3, 'ANKARA', 'ANKARA', 'HASANOĞLAN', 5);
INSERT INTO `okullar` VALUES (4, 'YILDIZ', 'İZMİR', 'BUCA', 6);

-- ----------------------------
-- Table structure for okulturleri
-- ----------------------------
DROP TABLE IF EXISTS `okulturleri`;
CREATE TABLE `okulturleri`  (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `okulTuru` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of okulturleri
-- ----------------------------
INSERT INTO `okulturleri` VALUES (1, 'İlkokul');
INSERT INTO `okulturleri` VALUES (2, 'Ortaokul');
INSERT INTO `okulturleri` VALUES (3, 'Meslek Lisesi');
INSERT INTO `okulturleri` VALUES (4, 'Anadolu Lisesi');
INSERT INTO `okulturleri` VALUES (5, 'Fen Lisesi');
INSERT INTO `okulturleri` VALUES (6, 'Sosyal Bilimler Lisesi');

-- ----------------------------
-- Table structure for sinifogretmenleri
-- ----------------------------
DROP TABLE IF EXISTS `sinifogretmenleri`;
CREATE TABLE `sinifogretmenleri`  (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `ogretmen` int NOT NULL,
  `sinif` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ogretmenIsim`(`ogretmen`) USING BTREE,
  INDEX `ogretmensinif`(`sinif`) USING BTREE,
  CONSTRAINT `ogretmenIsim` FOREIGN KEY (`ogretmen`) REFERENCES `ogretmenler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ogretmensinif` FOREIGN KEY (`sinif`) REFERENCES `kademeler` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sinifogretmenleri
-- ----------------------------
INSERT INTO `sinifogretmenleri` VALUES (1, 1, 1);
INSERT INTO `sinifogretmenleri` VALUES (2, 3, 12);
INSERT INTO `sinifogretmenleri` VALUES (3, 4, 19);

SET FOREIGN_KEY_CHECKS = 1;
