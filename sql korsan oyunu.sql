-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.21-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- korsan_oyunu için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `korsan_oyunu` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `korsan_oyunu`;

-- tablo yapısı dökülüyor korsan_oyunu.oyun
CREATE TABLE IF NOT EXISTS `oyun` (
  `sira` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(50) NOT NULL DEFAULT '0',
  `fiyat` double NOT NULL DEFAULT 0,
  `tur_sira` int(11) NOT NULL DEFAULT 0,
  `yas` tinyint(4) NOT NULL DEFAULT 0,
  `boyut` int(11) NOT NULL DEFAULT 0,
  `sistem` text NOT NULL,
  `yayinci_sira` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sira`),
  KEY `FK_oyun_tur` (`tur_sira`),
  KEY `FK_oyun_yayinci` (`yayinci_sira`),
  CONSTRAINT `FK_oyun_tur` FOREIGN KEY (`tur_sira`) REFERENCES `tur` (`sira`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_oyun_yayinci` FOREIGN KEY (`yayinci_sira`) REFERENCES `yayinci` (`sira`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyunu.oyun: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `oyun` DISABLE KEYS */;
/*!40000 ALTER TABLE `oyun` ENABLE KEYS */;

-- tablo yapısı dökülüyor korsan_oyunu.tur
CREATE TABLE IF NOT EXISTS `tur` (
  `sira` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sira`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyunu.tur: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `tur` DISABLE KEYS */;
/*!40000 ALTER TABLE `tur` ENABLE KEYS */;

-- tablo yapısı dökülüyor korsan_oyunu.yayinci
CREATE TABLE IF NOT EXISTS `yayinci` (
  `sira` int(11) NOT NULL AUTO_INCREMENT,
  `kurulus_tarihi` date DEFAULT NULL,
  PRIMARY KEY (`sira`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- korsan_oyunu.yayinci: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `yayinci` DISABLE KEYS */;
/*!40000 ALTER TABLE `yayinci` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
