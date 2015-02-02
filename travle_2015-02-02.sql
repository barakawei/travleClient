# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 10.0.13-MariaDB)
# Database: travle
# Generation Time: 2015-02-02 04:02:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table apply
# ------------------------------------------------------------

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` text,
  `other` text,
  `location` text,
  `create_time` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order_index` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;

INSERT INTO `area` (`id`, `name`, `order_index`)
VALUES
	(1,'华东',1),
	(2,'华南',2),
	(3,'华中',3),
	(4,'华北',4),
	(5,'西北',5),
	(6,'西南',6),
	(7,'东北',7),
	(8,'港澳台',8),
	(9,'热门',0);

/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table city
# ------------------------------------------------------------

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `order_index` int(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;

INSERT INTO `city` (`id`, `name`, `area_id`, `province`, `order_index`, `enable`)
VALUES
	(1,'北京',4,'北京',1,1),
	(2,'上海',1,'上海',2,1),
	(3,'大连',7,'大连',4,1),
	(4,'苏州',1,'江苏',3,0),
	(5,'热门',1,'热门',0,1);

/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pic`;

CREATE TABLE `pic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pic` WRITE;
/*!40000 ALTER TABLE `pic` DISABLE KEYS */;

INSERT INTO `pic` (`id`, `type`, `url`, `width`, `height`, `create_time`, `target_id`, `target`)
VALUES
	(1,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong001.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(2,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong002.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(3,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong003.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(4,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong004.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(5,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong005.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(6,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong006.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(7,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong007.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(8,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong008.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(9,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/gugong009.jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(10,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(10).jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(11,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(11).jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(12,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(12).jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(13,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(12).jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(14,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(12).jpg',800,800,'2015-01-18 00:00:00',1,'scenic'),
	(15,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan001.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(16,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan002.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(17,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan003.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(18,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan004.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(19,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan005.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(20,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan006.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(21,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan007.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(22,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan008.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(23,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan009.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(24,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan010.jpg',800,800,'2015-01-18 00:00:00',2,'scenic'),
	(25,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(1).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(26,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(2).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(27,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(3).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(28,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(4).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(29,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(5).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(30,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(6).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(31,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(7).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(32,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(8).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(33,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(9).jpg',800,800,'2015-01-18 00:00:00',3,'scenic'),
	(34,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD/%E5%A4%A7%E8%BF%9E%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD+(1).jpg',800,800,'2015-01-18 00:00:00',4,'scenic'),
	(35,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD/%E5%A4%A7%E8%BF%9E%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD+(2).jpg',800,800,'2015-01-18 00:00:00',4,'scenic'),
	(36,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD/%E5%A4%A7%E8%BF%9E%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD+(3).jpg',800,800,'2015-01-18 00:00:00',4,'scenic'),
	(37,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD/%E5%A4%A7%E8%BF%9E%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD+(4).jpg',800,800,'2015-01-18 00:00:00',4,'scenic'),
	(38,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(1).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(39,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(2).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(40,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(3).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(41,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(4).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(42,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(5).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(43,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(6).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(44,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(7).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(45,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(8).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(46,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(9).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(47,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(10).jpg',800,800,'2015-01-18 00:00:00',5,'scenic'),
	(48,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(1).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(49,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(2).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(50,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(3).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(51,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(4).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(52,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(5).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(53,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(6).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(54,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(7).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(55,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(8).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(56,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(9).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(57,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(10).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(58,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(11).jpg',800,800,'2015-01-18 00:00:00',7,'scenic'),
	(59,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(1).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(60,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(2).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(61,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(3).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(62,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(4).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(63,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(5).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(64,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(6).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(65,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(7).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(66,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(8).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(67,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(9).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(68,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(10).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(69,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(11).jpg',800,800,'2015-01-18 00:00:00',8,'scenic'),
	(70,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(1).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(71,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(2).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(72,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(3).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(73,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(4).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(74,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(5).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(75,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(6).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(76,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(7).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(77,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(8).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(78,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(9).jpg',800,800,'2015-01-18 00:00:00',9,'scenic'),
	(79,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(1).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(80,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(2).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(81,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(3).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(82,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(4).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(83,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(5).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(84,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(6).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(85,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(7).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(86,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(8).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(87,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(9).jpg',800,800,'2015-01-18 00:00:00',10,'scenic'),
	(88,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(1).jpg',800,800,'2015-01-18 00:00:00',12,'scenic'),
	(89,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(2).jpg',800,800,'2015-01-18 00:00:00',12,'scenic'),
	(90,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(3).jpg',800,800,'2015-01-18 00:00:00',12,'scenic'),
	(91,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(4).jpg',800,800,'2015-01-18 00:00:00',12,'scenic'),
	(92,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(5).jpg',800,800,'2015-01-18 00:00:00',12,'scenic'),
	(93,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(6).jpg',800,800,'2015-01-18 00:00:00',12,'scenic'),
	(94,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(1).jpg',800,800,'2015-01-18 00:00:00',13,'scenic'),
	(95,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(2).jpg',800,800,'2015-01-18 00:00:00',13,'scenic'),
	(96,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(3).jpg',800,800,'2015-01-18 00:00:00',13,'scenic'),
	(97,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(4).jpg',800,800,'2015-01-18 00:00:00',13,'scenic'),
	(98,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(5).jpg',800,800,'2015-01-18 00:00:00',13,'scenic'),
	(99,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(6).jpg',800,800,'2015-01-18 00:00:00',13,'scenic'),
	(100,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E5%B0%8F%E5%B8%83%E8%BE%BE%E6%8B%89.jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(101,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E5%A4%96%E5%85%AB%E5%BA%99%E4%B9%8B%E6%99%AE%E5%AE%81%E5%AF%BA.jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(102,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7%E5%A1%9E%E7%BD%95%E5%A1%94.jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(103,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7%E5%A4%96%E5%85%AB%E5%BA%99.jpg.jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(104,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7%E6%99%AE%E4%B9%90%E5%AF%BA.jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(105,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(1).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(106,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(9).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(107,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(10).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(108,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(11).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(109,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(12).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(110,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(13).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(111,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(14).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(112,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(15).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(113,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E6%89%BF%E5%BE%B7+(16).jpg',800,800,'2015-01-18 00:00:00',16,'scenic'),
	(114,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(1).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(115,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(2).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(116,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(3).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(117,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(4).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(118,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(5).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(119,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(6).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(120,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(7).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(121,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(8).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(122,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(9).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(123,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(10).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(124,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(11).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(125,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(12).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(126,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(13).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(127,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(14).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(128,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(15).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(129,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(16).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(130,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(17).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(131,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(18).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(132,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(19).jpg',800,800,'2015-01-18 00:00:00',17,'scenic'),
	(133,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(1).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(134,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(2).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(135,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(3).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(136,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(4).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(137,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(5).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(138,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(6).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(139,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(7).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(140,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(8).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(141,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(9).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(142,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(10).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(143,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(11).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(144,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(12).jpg',800,800,'2015-01-18 00:00:00',18,'scenic'),
	(145,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(1).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(146,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(2).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(147,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(3).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(148,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(4).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(149,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(5).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(150,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(6).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(151,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(7).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(152,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(8).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(153,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(9).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(154,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(10).jpg',800,800,'2015-01-18 00:00:00',19,'scenic'),
	(155,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(1).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(156,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(2).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(157,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(3).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(158,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(4).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(159,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(5).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(160,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(6).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(161,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(7).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(162,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(8).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(163,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(9).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(164,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(10).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(165,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(11).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(166,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(12).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(167,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(13).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(168,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(14).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(169,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(15).jpg',800,800,'2015-01-18 00:00:00',20,'scenic'),
	(170,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E7%A7%91%E6%8A%80%E9%A6%86/%E4%B8%8A%E6%B5%B7%E7%A7%91%E6%8A%80%E9%A6%86.jpg',800,800,'2015-01-18 00:00:00',21,'scenic'),
	(171,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(1).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(172,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(2).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(173,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(3).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(174,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(4).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(175,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(5).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(176,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(6).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(177,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(7).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(178,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(8).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(179,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(9).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(180,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(10).jpg',800,800,'2015-01-18 00:00:00',34,'scenic'),
	(181,'album','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(11).jpg',800,800,'2015-01-18 00:00:00',34,'scenic');

/*!40000 ALTER TABLE `pic` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table scenic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `scenic`;

CREATE TABLE `scenic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `info` text,
  `ticket` text,
  `location` varchar(255) DEFAULT NULL,
  `traffic` text,
  `notice` text,
  `city_id` int(11) DEFAULT NULL,
  `area_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_large` varchar(255) DEFAULT NULL,
  `enable` int(1) DEFAULT '1',
  `stars` int(11) DEFAULT NULL,
  `culture` int(11) DEFAULT NULL,
  `heritage` int(11) DEFAULT NULL,
  `sight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `scenic` WRITE;
/*!40000 ALTER TABLE `scenic` DISABLE KEYS */;

INSERT INTO `scenic` (`id`, `name`, `info`, `ticket`, `location`, `traffic`, `notice`, `city_id`, `area_id`, `url`, `url_large`, `enable`, `stars`, `culture`, `heritage`, `sight`)
VALUES
	(1,'故宮','故宮（こきゅう）は、中華人民共和国の首都北京市に所在する明清朝の旧王宮である歴史的建造物。面積は 725,000m² あり、世界最大の皇宮で、明と清の24代にわたる皇帝の宮城であった。1987年、「北京と瀋陽の明・清王朝皇宮」の一つとしてユネスコの世界遺産（文化遺産)に登録されている。名称故宮とは「古い宮殿、昔の宮殿」という意味で、現在は博物館（故宮博物院#中国 北京市）になっている。黄色と朱色からなる故宮博物院は幻想的な世界で、観る者の期待を決して裏切りません。','☆公園の開放時間＆料金:\r・4～10月 8:00～16:00、入園料60元\r・11～3月 8:30～15:30、入園料40元\r月曜日閉館(祝日と、7月1日から8月31日までの夏季休暇を除く)\r※鐘表館と珍宝館は別途10元                                                                                                        \n※留学生は中国で発行された学生証により学割が適用される場合があるが、基本的に外国人は子供も含めて一般料金が適用になる。','北京市東城区故宮博物院','・北京市地下鉄1号線天安門西站（駅）より故宮博物院紫禁城へ徒歩約11分\r・天安門西站（駅）よりバス1、5、10、22、37、52、205、99、728番線、專1番線、專2番線 で約5分（1元 )\r・天安門東站（駅）よりバス1、2、10、20、82、120、37、52、126、99、203、205、210、728番線、專1番線、專2番線で約5分(1元 )\r・北京国際空港から故宮博物院南門までタクシーで約32分\r・北京市地下鉄5号線東四站（駅）から、神武門（北門）へ故宮下車：バス109、609、619番線乗車約13分(1元 )','①2011年7月より故宮観光は南(午門)から入って北(神武門)から出るという一方通行になった。以前のように北からの入場&チケット購入はできないので要注意 !\n②2013年5月より、故宮内の灰皿が全撤去され全面禁煙になった。',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(14).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%95%85%E5%AE%AB/%E6%95%85%E5%AE%AB+(14).jpg',1,NULL,1,1,0),
	(2,'頤和園','頤和園は、北京の海淀区西郊外に位置し、市の中心からの距離は12キロほどのところにある、中国に現存する最大の古代庭園（園林）である。1998年12月に、ユネスコの世界文化遺産に登録された。\r頤和園は元々清蔬園と呼ばれ、清代の繁栄期である乾隆年間（1736～1795年）に創建された。乾隆帝は色を好まず、放蕩をきらい、ただ「山水の楽、懐に忘るあたわず」『御制静宜園記』を心情としていた。清蔬園の施工平面図や立体模型は、すべてみずから審査許可して、所管した。清蔬園は乾隆15年（1750年）に着工、15年の歳月を経て、乾隆29年（1764年）に完工した。\r 乾隆帝が手がけた清蔬園は、歴代皇帝と同様に、その思想と好みによって建造され。乾隆帝は「天人合一、皇帝権力至上の思想」、「長寿不老の神仙思想」、「享楽の思想」を造園思想とした。そのため、清蔬園は歴代皇室の庭園や私家庭園、名山大川、著名な寺院の精華を融合させて、中国の典型的な庭園芸術の代表作となったのである。 ','☆公園の開放時間＆料金:\r・4～10月　6：30～18:00、入園料30元　通し券60元　\r・11～来年3月8：30～17:00、入園料：20元　通し券：50元　\r☆観光ポイントの開放時間\r・4～10月　　7：00～17：00\r・11～来年3月　9：00～16：00\r','北京市海淀区新建宫門路19号   ','交通アクセス:   \r・バス209、330、331、332、346、394、712、718、726、732、696、683、801、808、817、926番線、頤和園バス停で下車。\r・バス303、330、331、346、375、384、393、634、716、718、696、683、801、808、817、834、特5番線、頤和園北宮門バス停で下車。\r・バス374、437、704、992、481、952番線、頤和園新建宮門バス停で下車。\r・バス469番線、頤和園西門バス停で下車。\r','①平均観光時間は3～7時間\r②近くにある観光地：',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan007.jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%A2%90%E5%92%8C%E5%9B%AD/yiheyuan007.jpg',1,NULL,1,1,0),
	(5,'天壇','天壇は北京市の南端に位置して、明の永楽帝の十八年（1420年）に建てられて、天神と地神を祭ったり豊作を祈ったりした場所である。1998年１１よりユネスコの世界遺産（文化遺産）に登録された。北京にある「壇」建築（日壇、月壇、地壇、社稷壇、先農壇）の中天壇の面積はきわめて広い。東西の長さが１７００メートルで、南北の幅が１６００メートルで ある。総面積は約２73万平方メートルである。総面積はは270万㎡、故宮のそれの４倍を超える    天壇は圜丘壇と祈年殿を含んで、内塀と外塀が回”字形になっている。最北端の塀は半円型で、最南端の塀は東西の塀と直角に交差して方型に呈する。全体は「北円く南四角い」の形を呈しているが、これは「天は丸いもので、地は四角のもの」という天地意識を象徴する。外壇の塀は東、南、北の方向に門を設立しないで、西の方に門を二つ立てて、つまり、圜丘壇門と祈年殿門である（天壇門とも言う）。それに対して、内壇の塀の周りに門があってつまり、東天門、西天門、北天門と南天門という四つの門がある。内壇に祭壇や斎宮や東西方向の横塀があって、南のほうは「園丘壇」であって、北の方は「祈穀壇」である。','☆公園の開放時間＆料金:\r・4～10月　6:00～21:00、入園料15元　通し券35元　\r・11～来年3月　6:00～20:00、入園料：10元　通し券：30元　\r☆観光ポイントの開放時間\r・3～6月：8:00-17:30　\r　公園入り口での通し券切符売りは16：00まで\r　観光ポイントでの切符売りは17：00まで\r・7～10月：8:00-18:00　\r　公園入り口での通し券切符売りは16：30まで\r　観光ポイントでの切符売りは17：30まで\r・11～ 2月：8:00-17:００　\r　公園入り口での通し券切符売りは15：30まで\r　観光ポイントでの切符売りは16：30まで','北京市崇文区天壇路','交通アクセス：\r・バス7、17、20、35、36、69、71、105、106、110、120、692、707、729、特11、826番線、天橋バス停で下車。\r・バス15番線、天橋商場バス停で下車。\r・バス6、34、35、36、106、110、687、707番線、天壇北門バス停で下車。\r・バス2、20、35、69、71、504、826番線、天壇西門バス停で下車。\r・バス36、53、120、122、525、610、800、特11、814、958、特3、運通102番線、天壇南門バス停で下車。\r・バス6、25、34、35、36、39、41、43、60、116、525、610、684、685、687、707、723、814番線、法華寺バス停で下車。\r・北京市地下鉄5号線天壇の東門駅で下車、西南口より徒歩約5分','平均観光時間1～2時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(8).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%9D%9B/%E5%A4%A9%E5%9D%9B+(8).jpg',1,NULL,1,1,0),
	(6,'八達嶺長城','万里の長城は「世界７大奇跡」の1つで、中国観光のハイライトである。万里の長城は紀元前７世紀の春秋時代から明代まで、約2000年以上に亘り、造成を重ねてきたもので、現存するものの大部分は、明代の建造で、総延長約6000キロの世界最大の城壁である。衛星写真でもはっきりと見ることができる。 \r八達嶺長城は、北京から約60キロ離れた居庸関の北に位置し、保存状態がよく、長城の中でも代表的な区間である。 \r八達嶺長城の城壁は、中国が統一された秦の始皇帝の時代に、「匈奴」の侵略から領土を守るために建設され、その後、城壁は拡大と延長を繰り返し、明朝の時代に完成したといわれている 城壁の総延長は、7300キロで、城壁は、西は嘉峪関の砂漠から東は渤海まで続いている。高さは平均、7.8メートル、土台は重さ500キロの巨大な花崗岩で築かれている。 城壁の上には、馬5頭もしくは、人10人が並んで進むことができる。 東西に１つづつある城楼は古代の関所で、明の弘治十八年（1505年）に建造されたもので、 東の門には「居庸外鎮」、西の門には「北門鎖鑰」と字が彫られている。 \r万里の長城は1987年世界文化遺産に登録されている。','☆公園の開放時間＆料金:\r・4～10月　6：30～19:00、入園料45元　　\r・11～3月　7：00～18:00、入園料：40元\n※八達嶺長城ロープウェイを利用する場合は、片道60元、往復80元\r※留学生は中国で発行された学生証により学割が適用される場合があるが、基本的に外国人は子供も含めて一般料金が適用になる。\r※音声ガイドサービスあり、\r　・中国語の場合、10元\r　・英語、日本語、韓国語、フランス語の場合、40元','北京市万里の長城','交通アクセス:   \r・バスの場合は下記のバス停留所から利用できる、乗車時間はおよそ1時間\r　徳勝門からバス919番線\r　前門からバス「游1番線」\r　北京駅東街からバス「游2番線」\r　歴史博物館西門からバス「游2番線支線」\r　東大橋からバス「游3番線」\r　西直門・動物園からバス「游4番線」\r　苹果園からバス「游4番線支線」\r　前門西タクシー乗り場からバス「游4番線」\r　安定門・前門からバス「游8番線」\r・鉄道の場合は「北京北」駅発の「沙城」行きで「八達嶺」駅下車。メインゲートまではかなりの距離を歩くことになる。\r※列車の発車情報：月曜日から木曜日までは、一日8往復、\r　金、土、日および祝日の前日は、一日12往復\r　北京北駅の始発列車発車時間：6：12、\r　八達嶺駅の終電列車発車時間：21：33\r　発車間隔は30分－1時間30分','平均観光時間1～2時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E9%95%BF%E5%9F%8E/changcheng010.jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%95%BF%E5%9F%8E/changcheng010.jpg',1,NULL,1,1,1),
	(7,'明の十三陵','明の十三陵（みんのじゅうさんりょう）とは、中国の北京市昌平区天寿山にある明代の皇帝、后妃の陵墓群である。成祖永楽帝以後の皇帝13代の皇帝の陵墓があるため、この通称がある。十三陵は、中国に現存する最大の皇帝陵墓群で、2000年には世界文化遺産に登録された。東、西、北の三方を山に囲まれ、すばらしい地理環境に恵まれている。楼門を過ぎると、参道には皇帝の死後も権力を守り続ける象徴としての象、馬、駱駝、功臣官、文臣官、武将像など重厚な石像が並んでいる。一般公開されているものは定陵と長陵、昭陵。定陵は、第14代神宗万暦帝の陵墓で、中殿には漢白玉の王座、後殿には万暦帝と左右に２人の皇后の棺が安置されている。長陵は十三陵の中で最大規模を誇る第3代永楽帝の陵墓である。','☆公園の開放時間＆料金:\r定陵：\r・4～10月　8：00～17:30、入園料60元　　\r・11～3月　8：30～17:00、入園料：40元\r長陵：\r・4～10月　8：00～17:00、入園料45元　　\r・11～3月　8：30～16:30、入園料：30元\r昭陵：\r・4～10月　8：30～17:00、入園料30元　　\r・11～3月　8：30～16:30、入園料：20元\r神道：\r・4～10月　8：10～17:50、入園料30元　　\r・11～3月　8：30～17:00、入園料：20元\r※明の十三陵は通し券がありません、書く観光ポイントで切符を購入するのみとなる。','北京市昌平区十三陵特区','交通アクセス:  \r・前門または北京駅より明の十三陵行き観光バスに乗車\r・徳勝門よりバス345番線に乗車し、昌平北駅で降りる\r・徳勝門よりバス345番線に乗車し、昌平東関駅でバス314番線に乗り換える\r・徳勝門西駅よりバス881番線に、昌平東関駅でバス314番線に乗り換える\r・徳勝門駅よりバス872番線\r・北京市地下鉄5号線天通苑北駅でバス昌22番線に乗り換える\r定陵・長陵：\r・徳勝門西駅よりバス345番線に、昌平東関駅でバス314番線に乗り換える\r・徳勝門西駅よりバス881番線に、昌平東関駅でバス314番線に乗り換える\r昭陵：\r・徳勝門西駅よりバス345番線に、昌平体委駅でバス昌22番線に乗り換える\r・徳勝門西駅よりバス881番線に、沙河駅でバス昌22番線に乗り換える\r・北京立水橋よりバス昌22番線に乗車、昭陵村で降りる\r神道\r・徳勝門西駅よりバス345番線に、昌平体委駅でバス22番線に乗り換える\r・徳勝門西駅よりバス345番線に、昌平東関駅でバス314番線に乗り換え、南新村で降りる\r・徳勝門西駅よりバス881番線に、昌平東関駅でバス314番線に乗り換え、南新村で降りる\r・北京市地下鉄5号線天通苑北駅でバス昌22番線に乗り換える','明の十三陵は八達嶺長城と同じ方向にあるので、北京での観光スケジュールを立てるときは同じ日にしたほうがいい。',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(4).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%98%8E%E5%8D%81%E4%B8%89%E9%99%B5/%E6%98%8E13%E9%99%B5+(4).jpg',1,NULL,1,1,1),
	(8,'恭王府','王府（皇族の邸宅）は中華民族の伝統文化の重要な一部分となっている。北京西城区の前海西街にある恭王府は、1776年に建築された貴族（親王）の邸宅と庭園で、国において現存する王府の中では、最も保存状態の良い清時代の王府である。また全国重点文化財保護部門として、中国の王府文化の代表的存在になっている。恭王府の面積は、61120㎡にも及び広大な敷地には邸宅や美しい庭園などが設けられており、恭王府内を花散歩すると、清朝の貴族の生活を垣間見ることができる。','☆公園の開放時間＆料金:\r・3～7月　7：30～16:30\r・8～2月　8：00～16:00\r入園料：一律大人40元\r　※身長120cm以下の子供は無料、身長120cm～140cmの子供は、半額','北京市西城区前海西街17号','交通アクセス:  \r・北京地下鉄6号線北海北駅（站）より徒歩約6分\r・バス停東官房站（バス13、42、107、111、118、810、850番線）から徒歩約5分\r・バス停北海北門站（バス13、42','平均観光時間2～3時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(11).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%81%AD%E7%8E%8B%E5%BA%9C/%E6%81%AD%E7%8E%8B%E5%BA%9C+(11).jpg',1,NULL,1,0,1),
	(9,'景山公園','元代には皇室の御苑で、明代に永楽帝が風水の関係から、護城河の開削の残土で人工の丘を築いた。明代には万寿山の名で呼ばれ、清の順治12年（1655年）に景山改名された。 \r景山公園は、清代の皇室の禁苑で、1928年に民衆に開放され、面積は23万㎡、高さは44.6ｍ（海抜88.7ｍ）、頂上に三層の万春亭がある。清代には京城の中で最も高い地点だった。万春亭からは南に広がる北京の城下を一望でき、特に夕刻には眼下の紫禁城の甍が夕日で黄金色に輝き絶景を楽しめる。 ','☆公園の開放時間＆料金:\r6：30～21：00\r入園料：10元','北京市西城区景山西街44号','交通アクセス:                                                                                        \r・バス5番線、景山西街バス停で下車\r・バス58番線、111番線、景山東街バス停で下車\r・バス819番線、景山バス停で下車\r・バス101、103、103快、109、814番線、故宮バス停で下車','平均観光時間1～2時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(9).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD/%E6%99%AF%E5%B1%B1%E5%85%AC%E5%9B%AD+(9).jpg',1,NULL,1,0,1),
	(10,'天安門広場','北京天安門広場は世界で一番広い広場。中華人民共和国のシンボル的存在の広場で、 広場中央に建つのが人民英雄記念碑で、西に人民大会堂、東に中国革命歴史博物館、南には毛主席記念堂が建っている。いつも観光客で賑わっているが、20世紀の歴史舞台としてその役割を果たしてきた。広場中央の国旗掲揚台では毎朝、日の出とともに人民解放軍の兵士により五星紅旗が掲揚される。 ','☆広場の開放時間＆料金:\r5：00～22：00\r※毎日22：00以降の立ち入りは禁止されている\r入園料：無料','北京市東城区天安門広場','交通アクセス: \r・バス1、2、5、7、9、10、17、20、22、44、48、53、54、59、110、120、309支、特1、特2、特3、特4、703、726、729、742、803、808、819、826、848、859、922天安門駅で下車\r・地下鉄1号線天安門東駅、天安門西駅で下車\r・地下鉄2号線前門駅で下車','平均観光時間1～2時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(7).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%A9%E5%AE%89%E9%97%A8/%E5%A4%A9%E5%AE%89%E9%97%A8+(7).jpg',1,NULL,1,0,1),
	(11,'北京オリンピック公園','北京オリンピック公園（中: 奥林匹克公园）は、北京市朝陽区に北京オリンピック開催のために整備された総合運動公園。愛称はオリンピック・グリーン。オリンピック公園は11.59km2の総面積を持ち、施設は3つの部分に分かれており、オリンピック森林公園、スポーツ施設、国家オリンピックスポーツセンターに分かれている[1]。1990年に完成した国家オリンピックスポーツセンターは同年開催のアジア大会に向けて建設された。オリンピックスポーツセンタースタジアム、オリンピックスポーツセンター体育館、英東水泳館の3つの施設がある。北京オリンピックの主会場である鳥の巣、水立方等はすべて公園内にある。また、中国科学館、オリンピック森林公園など観光名所は公園周辺にあるので、いくときはこれらの名勝も一緒に見ることをお勧めする。','☆開放時間＆料金\r門がないため、開放時間は年間無休、24時間営業\r入園料：無料','北京市朝阳区北辰東路15号','交通アクセス  \r・地下鉄8号線に乗り、「オリンピック公園」駅で下車','平均観光時間1～2時間',1,4,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(12,'鳥の巣',' 鳥の巣は第２９回オリンピック大会の主会場であり、北京オリンピック公園の内に位置して、北京の中枢線北端の東にある。建築面積は２５．８万平方メットルで、敷地面積は２０．４万平方メットルである。２００８年オリンピック大会開催期間中、開閉幕式陸上競技や男子サッカー決勝などの試合はすべてここで行われた。観客席は十万個で、その中で臨時席は二万個が含めている。 \r  一連の輻射式扉式の鋼の構造がお碗の形をしている座席エリアを囲まれて回転してなしている。空間構造は合理的かつ簡潔で、建物と構造は完璧に統合されている。デザインが珍しくて、構造がユニックゆえに、国内外に独特な建築となる。国家体育場（国家スタジアムとも表記される）は2003年12月24日に工事を始め、2006年に完成し、使用され始めた。 \r  体育場構造の部品がお互いに支えて、ネット状な枠を形成した。外観は枝で作られた鳥の巣のように見える。その灰色の鉱質のような鋼網が透明な膜材料で覆われて、その中に赤色なお碗の形をする体育場観覧席も含まれる。ここで、中国伝統文化中での透かし彫りの技法、陶磁器のしわ、赤色の輝きと情熱、そして最先端的な鋼構造の設計は完璧に融合されている。 \r  全建築は巨大なネット状構造を通じて繋がり、内部に立て柱は一つもない。観覧席が何の遮ることもないのお碗の形で、、巨大な容器みたいに、体育場に不思議な素晴しさと掛け替えない感動さをもたらす。このような均一で連続したネット状は観客に最高な視野を与えて、興奮のテンションを引き上げて、スポーツマンをより速く、高く、強い目標に向かって努力しようと励む。 \r  オリンピック大会閉幕後、八万人が収容できて、重大なスポーツイベント、および非競争イベントの各種さまざまな試合はここで開催されるようになる。鳥の巣は北京で市民のために幅広くスポーツイベントに参加する機会を提供して、楽しめることができる大型なプロ場所であり、全国でも有名なスポーツとエンターテイメントの建物である。',' ☆体育場開放時間＆料金：\r　開放時間：\r　　4月～10月：9：00～9：00   \r      11月～3月：9：00～17：30\r   料金：\r　　50元\r　　通し券（鳥の巣・水立方）：80元\r　　頂美（空中回路）：80元\r　　ＶＩＰ入場券：80元\r      頂美・ＶＩＰ通し券：110元','北京市朝阳区国家体育場南路1号（北京オリンピック公園内）','ＴＥＬ：010-84373008\r交通アクセス  \r・地下鉄8号線に乗り、「オリンピック公園」駅で下車\r・バス380、405、408、415、4１7、518番線に乗って、慧忠里駅で下車\r・バス108、124、328、358、358区、379、380、387、406、408、419、426、430、479、653、694、758、803、849、850、858、984、985番線、特２、運通110に乗って、安慧橋北駅で下車\r・バス207、417番線に乗って北辰東番線駅で下車\r・バス510、839番線に乗って北辰西橋北駅で下車','平均観光時間1～2時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(2).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%B8%9F%E5%B7%A2/%E9%B8%9F%E5%B7%A2+(2).jpg',1,NULL,0,0,1),
	(13,'ウォーターキューブ','中国国家水泳センターは「水立方」（Water Cube）とも呼ばれ、北京オリンピック公園の中にある。2008年の北京オリンピック大会の際に建てられた水泳競技の施設であり、また2008年北京オリンピックの代表的な建築物の一つでもある。 \r　水立方と俗称「鳥の巣」と呼ばれる北京国家体育館（国家スタジアム）は北京市内を分断する中心線の北の両端にあり、両者が北京の歴史文化都市のイメージをなしている。建坪は65000-80000平方メートルで、うち地下部分の面積が15000㎡以上ある。建物の大きさは幅177m、奥行き 177m、高さ30mである。\r水立方は四階建てで、地下１階には競技会場、１階は見学スペース、２階は観客席、３階には競技場の管理事務所がある。 \r水立方の建築構造は石鹸の泡が堆積する様子を表している。その表面は細胞の配列と石鹸の泡のようなデザインになってる。このような構造は今までにないもので創意工夫に満ち溢れている。最も人の目を引いたのは水の泡のような外壁である。この外壁は透明で、館内にとても多くの光を取り込む役割を果たしている。 \r館内は数階に分かれており、対称的に並んだ観客席からは見通しがよく、建物の白がプールの青にとても映えている。2008年のオリンピック大会の期間中、水泳、飛び込み、シンクロナイズド・スイミングなどの競技は「水立方」で行われした。館内は17000人の観客が収容でき、そのうち座席数は6000席、オリンピック期間中に増設された臨時席（試合後撤去）が11000席ある。 \rオリンピック後には「水立方」は水泳、運動、レクリエーションを楽しむ総合的な国際レベルのスポーツセンターになる予定である。「水立方」と「鳥の巣」は北京市の新しいシンボル的な建物になった。 ','☆センターの開放時間＆料金:\r月曜日～日曜日　９：００～２１：００\r※事情により、開放時間を変更する場合がある、正しい開放時間は館内に掲示された当日開放時間を参照\r※切符売り場開放時間：９：００～２０：３０\r\r入園料：３０元\r\r※身長１２０cm以下の児童は大人の同伴の元、無料となる\r※観光ガイドサービスがある、中国語のガイドは１００元/回、英語の場合は１５０元/回\r\r※そのほか、センター内には利用できるプールと水上楽園、劇場がある。\r　・プール：\r　　開放時間　9：00～21：00（切符売りは19：00まで）\r　　料金：50元\r\r　・水上楽園：\r　　開放時間　10：00～21：00（切符売りは19：30まで）\r　　料金：260元\r\r　・水滴劇場\r　　上映時間：9：30～16：45\r　　※上映されているのはコマーシャルと映画等があるが、上映スケジュールは公式サイトを参照。そのうち、コマーシャルは無料、当日センターの入場券で一回観ることができる。映画は有料、料金は20元/人。\r','北京市朝陽区天辰東路11号  （北京オリンピック公園内）','交通アクセス  \r・地下鉄8号線に乗り、「オリンピック公園」駅で下車\r・バス689、611、658、386、407、656、660、740内、740外、753、939、944、944支、983支、運通113線に乗って北辰橋西駅で下車\r・バス81、82、510、839番線に乗って北辰西橋北駅で下車','平均観光時間1～2時間',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(1).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%B0%B4%E7%AB%8B%E6%96%B9/%E6%B0%B4%E7%AB%8B%E6%96%B9+(1).jpg',1,NULL,0,0,1),
	(14,'中国科学技術館',' 中国科学技術館は国立の科学技術館であり、全館占有面積は5.8ヘクタール、総建築面積は6.5万㎡。1988年に建設された2万㎡の一期プロジェクト部分が一般に開放され、2000年には2.2万㎡の新ホールが新世紀の幕開けとともに一般に開放された。\r　中国科学技術館の主な役割は展示、研修、実験である。その特徴は、科学の原理と応用にもとづいて、科学的、知識性、興味性を併せ持った展示設計になっている。入場者が自ら進んで探究、実践したくなるように工夫して作られている。科学知識を広めるだけではなく、さらに広く科学への興味と関心を持ってもらうことを目的とし、科学的思考とその普及も担っている。\r　主な物として、航空と宇宙・エネルギーと交通・材料と機械・情報技術・生命科学・環境科学および基礎科学など、それぞれの分野に展示物300あまり、さらに中国古代の科学技術を示したものが250あまり展示されている。','☆開放時間＆料金:\r開放時間：火曜日～日曜日　9：30～17：30\r閉館日：月曜日（祝日を除く）、大晦日、旧正月、旧暦の正月二日\r入園料：\r・主展示ホール：30元\r　※未成年者（18歳以下）は下記の開館日以外の日に大人の同伴で入園する場合、入園料が無料となる：祝日、土曜日、日曜日、こどもの日（中国の場合は6月1日）、夏休み（7月1日～8月31日）、それ以外の場合は、半額となる\r\r・科学楽園展示ホール：\r　大人10元、子供20元\r・映画館\n   30元\r※切符売り場開放時間：火曜日～日曜日（9：30～16：00）、閉館時間は切符を売りません。','北京市朝陽区北辰東路5号','交通アクセス:  \r・地下鉄8号線に乗り、「オリンピック公園」駅で下車、東北口より出る\r・地下鉄8号線に乗り、「森林公園南門」駅で下車、南口より出る\r・バス328, 379, 419, 484, 617線, 628, 630, 751, 913, 運通110線, 40番線を利用、洼里南口バス停で下車','①当日券で購入する場合は、科学技術館西口より入場してください。\r②一部の展示品は定時展示となっているため、西ホールで展示スケジュール表をもらって確認してください。',1,4,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(15,'オリンピック森林公園','北京オリンピック森林公園（英語名：Beijing Olympic Forest Park）は、北京オリンピックメインスタジアムエリアの北側に位置し、敷地面積は約7000平方メートルもある。北京を南北に貫く中軸線の北の端にあり、緑で覆われた北京最大の湿地公園である。\r  地下鉄8号線はオリンピック専用線路として建設され、駅内は鳥の巣（オリンピックスタジアム）に似た建築スタイルで装飾されている。壁にも中国の代表的な要素、「青花磁」と呼ばれる陶磁器の柄絵が描かれている。\r　公園の南門を入ると、ユニークな形の二人乗りの自転車や小型電気自動車などをレンタル出来る場所がある。\r公園の北側には、春から夏を北京で過ごす渡り鳥のアマツバメが「巣を作れるように」と設けられた「アマツバメ塔」、多くの大木が植えられた「大樹園」、ヒマワリが中心に植えられた広さ10万平方メートルにもなる広場などがある。\r　北京オリンピック森林公園は、「自然あふれる公園」と呼ばれている。全体のイメージにあわせ、トイレマークや案内看板にも木をモチーフにしたデザインが使われている。\r　忙しい毎日を過ごし、時には心身を開放して、自然な森や花に包まれリラックスしたいと思っているのであれば、「北京オリンピック森林公園」へ足を運んでみてください。','☆公園の開放時間＆料金:\r・3月15日～11月15日　6：00～20：00\r・11月16日～3月14日　6：00～20:00\r入園料：無料','北京市朝阳区安立路(「鳥の巣」の北侧) ','交通アクセス:  \r・地下鉄8号線に乗り、「オリンピック森林公園南門」駅で下車','①公園内は自動車、自転車の通行を禁止しておりますが、公園内で自転車または電動車のレンタルができる。\r②直行バスがないため、行くときは地下鉄を利用することがお勧め',1,4,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(16,'承徳避暑山荘と外八廟','承徳避暑山荘と外八廟（しょうとくひしょさんそうとがいはちびょう）は中国、河北省、承徳市にある離宮。1994年にはユネスコの世界遺産（文化遺産）に登録された。\r  北京から東北に250km離れた承徳は、気候が爽やかで、山々とゆったり流れる武烈河が山紫水明と呼ぶのにふさわしい土地。ここに清王朝歴代皇帝が夏の離宮として造営した「避暑山荘」がある。山荘の面積は564万㎡、建物は110余り、塀の長さは10kmという広大さで、承徳市の約半分を占めている。1703年康熈帝が造営を始めてから89年後の乾隆帝の時代に完成した。現存する世界最大の皇室御苑として、訪れる人も多い。\r 　「避暑山荘」は素朴で野趣あふれる佇まいが特徴で、山水の自然な姿が生かされている。「宮殿区」と「苑景区」のふたつに分かれ、「宮殿区」は皇帝の執務や儀式、生活が行われた場所。楠をそのまま使った正宮など、簡素でいて格調高い建物が多い。「苑景区」には湖、平原、山などがあり、中国各地の有名な楼閣を模した建物が並ぶ湖畔や、手つかずの渓谷美など、多彩な風景が楽しめる。中には冬でも凍らない泉･熱河泉があり、この山荘を別名「熱河行宮」ともいう。中国全土のミニチュア版とも呼べる景観が広がり、満州族出身の康熈帝･乾隆帝が憧れた江南地方の美しい風景を、離宮に再現している。\r 　山荘の東と北を取り巻くように並ぶ寺廟群が「外八廟」。1713年から1780年にかけて建立され、主に清朝が尊重したチベット仏教の寺院。小ポタラ宮と呼ばれる「普陀宗乗之廟」や北京の祈年殿に似た「普楽寺の旭光閣」、高さ22m余りと世界で一番高い木彫の仏像がある「普寧寺の大乗之閣」など色彩豊か。それぞれに個性的で華麗な建物が林立している。その姿は隣の「避暑山荘」の重厚素朴な味わいとは対極にある。\r　※外八廟：溥仁寺、溥善寺、普楽寺、安遠廟、普寧寺、普祐寺、広縁寺、須弥山福寿之廟、普陀宗乗之廟、広安寺、羅漢堂、殊像寺','☆開放時間＆料金\r・承徳避暑山荘景区\n   4月～10月：　7:00～18:00　入園料：120元\r　11月～3月：　8:00～17:30　入園料：90元\r　  (承徳避暑山荘入場料と承徳避暑山庄博物館入場料を含め)     \r・小ポタラ宮景区（中：布达拉·行宫bù dá lā·xíng gōng  \rブー ダー ラー·シン ゴン ）\r　4月～10月：　8:00～17:00　入園料：80元\r　11月～3月：　8:30～16:30　入園料：60元\r　（普陀宗乗之廟入場料、須弥福寿之廟入場料を含め）      \r・普寧寺景区\r　4月～10月：　8:00～17:00　入園料：80元\r　11月～3月：　8:30～17:00　入園料：60元\r(普寧寺入場料と普祐寺入場料を含め）\r・磬錘峰景区　\r　4月～10月：　7:00～18:00　入園料：50元\r　11月～3月：　8:00～16:30　入園料：50元\r (磬錘峰森林公園入場料、普楽寺入場料と安遠廟入場料を含め）\r※ 六十歳以上，50パーセント割引。七十歳以上，無料。パスポートの提出が必要。','河北省承徳市','・承徳避暑山荘\r　0314-2029771 \r・小ポタラ宮\r　0314-2029771 \r・普寧寺\r　0314-2058209 \r・磬錘峰景区\r  0314-2029771 \r交通アクセス:\r ・承徳避暑山荘\r　バス6、7、10、26、118番線に乗ってバス停避暑山荘で下車       \r・小ポタラ宮\r　バス118番線に乗ってバス停普陀宗乗之廟で下車\r・普寧寺\r　バス15番線に乗ってバス停大佛寺で下車\r・磬錘峰景区\r  バス10番線で索道公司駅で下車','※承徳は北京から北東へ250キロ、燕山山脈中の盆地にある。\r北京から承徳行くには下記の交通手段を選ぶことができる：\r・自家用車、3時間程度\r・長距離バス：5時間程度、料金85元程度、朝出発の場合、お昼ごろには、承徳につく\r・列車の場合は、下記の列車がお勧め、K7711/7712　朝8時半の出発で、お昼12時半着く、料金は50元程度。',1,4,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E5%B0%8F%E5%B8%83%E8%BE%BE%E6%8B%89.jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%89%BF%E5%BE%B7/%E5%B0%8F%E5%B8%83%E8%BE%BE%E6%8B%89.jpg',1,NULL,1,1,1),
	(17,'外灘','通称「バンド」と呼ばれる。市内を流れる黄浦江に沿った旧行動租界だった一帯。レンガ造りの洋風建築が立ち並び、異国的雰囲気を醸し出している。現在はブティックやレストランが入るおしゃれなビルも多い。黄浦江の遊覧船も発着し、特にライトアップが見られる夜のクルーズはお勧め。また、黄浦江の両岸を結ぶ「外灘観光隧道」は無人のマシーンの乗車光のトンネルへ、約5分間の光の旅を体感出来る。',' ☆開園時間＆料金 ：\r　 散策自由','上海市中山東一路','TEL：021-63231268 \r交通アクセス：\r・ 鉄道の上海(シャンハイ)駅から5KM、タクシーで 20分程度。\r・地下鉄 浦西側は2号線で南京東路駅で下車、徒歩1分。','①24時間観光可。19：00～22：00はライトアップあり（季節により変更）。\r②所要観光時間：45分',2,NULL,'https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(11).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E5%A4%96%E6%BB%A9/%E5%A4%96%E6%BB%A9+(11).jpg',1,NULL,1,0,0),
	(18,'朱家角鎮','朱家角古鎮の歴史は古く、「江南の明珠」、「東方のベニス」とも呼ばれている。朱家角には36ヶ所の古い橋があり、古めかしく質朴かつ優雅である。9つの通りは水のそばに造られ、住宅は水に沿って建てられている。すべて明朝と清朝の時代の建物で趣がある。特に川にかかっている明朝時代の建築物――石に５つの穴を開けて作られたアーチ型の放生橋は明朝万歴時代に造られ、形は美しく壮観である。この橋は上海で最も古いアーチ型の石橋で、朱家角十景のひとつである。 \r　川を隔てた二つの小さな街にはたくさんの面白い物があり、田子坊と同様に非常に特色がある。朱家角は恵まれた自然環境と便利な水路の交通網があったため、かつて商人たちはここに集い、往来が絶えなかった。江南地方ではかつて織物業が盛んで「衣服と布団ここにあり」と称され、有名になった。明朝の末期、清朝の初期に朱家角の米穀業は特に発展し、それにともないすべての商売が盛んになった。その時代には「3里の町に1000軒の店」といわれるくらい町には多くの店があり様々な土地の物が揃っていて、その郷脚（農村の定期市）は江蘇・浙江２省(約百里)の外まで広がっていた。 \r　現在では朱家角は上海の一部として、美しい水辺、古い橋、めずらしい街並み、すばらしい庭園、芳醇な香りの酒や花といい気分に浸ることができる場所になっている。ここに住む人たちは静かで趣がある生活を過ごし、観光客は町をのんびりと散策して古鎮の魅力を感じる。',' ☆開園時間＆料金 ：\r　 散策自由 ','上海市青浦区','交通アクセス：\r・上海市内から朱家角古鎮へのアクセス：人民広場駅から朱沪専用線に乗り、約１時間。運賃は75元ほど。普通と急行がある。朱家角バス停からは大通りに沿って歩くと朱家角古鎮につく。','平均観光時間1～2時間',2,NULL,'https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(8).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E6%9C%B1%E5%AE%B6%E8%A7%92/%E6%9C%B1%E5%AE%B6%E8%A7%92+(8).jpg',1,NULL,1,0,1),
	(19,'上海環球金融中心','世界で一番高い場所にある展望台\r地上101階建て、高さ492メートル。世界最高地点に位置する展望台。\r97階には空中に浮くような展望ブリッジを、94階には素晴らしいパノラマを背景に様々なイベントが楽しめる コミュニケーションスペースを設けている。','☆開放時間＆料金\r・開放時間\r　8時～23時（最終入場22時）\r・参観料：\r　94階＋97階＋100階展望台　180元\r　94階　120元','浦東新区世紀大道100号　環球金融中心94～100階','TEL：021-68777878\r交通アクセス：\r・地下鉄2号線陸家嘴駅から徒歩5分\r・地下鉄2号線東昌路駅から徒歩5分','平均観光時間1～2時間',2,NULL,'https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(6).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83/%E7%8E%AF%E7%90%83%E9%87%91%E8%9E%8D%E4%B8%AD%E5%BF%83+(6).jpg',1,NULL,1,0,0),
	(20,'豫園',' 上海観光の定番中の定番。明代に造られた、400年以上の歴史を持つ古典庭園。園内の庁堂楼閣、築山と流泉は、いずれも明・清時代の中国南部の庭園建築芸術を代表するもの。 上海随一の観光スポットとしても有名で、約2万㎡もの面積の中に40ヵ所余りの見どころを持ち、生き生きとした龍壁、曲がりくねった回廊およびさまざまな形をした花窓によって巧みに隔てられている。建物、緑、池の水面、美しい名石とが見事に調和し、中国の古典的な美の世界が堪能できる。','☆開放時間＆料金\r・開放時間\r　9時～17時（1６時30分最終入場）\r・入園料：\r　4月～6月、9月～11月：40元\r　7月～8月、12月～3月：30元\r※①身長140cm以下の子供は10元\r②70歳以上の年寄は10元/人となる（パスポート持参要） ','上海市黄浦区安仁街137号','TEL：021-63260830\r交通アクセス：\r・都市観光バス1番線を利用、城隍庙豫園バス停で下車\r・バス11番線、26番線、64番線、71番線、145番線、581番線、715番線、730番線、736番線、801番線、926番線、929番線、932番線、969番線、980番線、方川線を利用、豫園駅、または新北門、城隍庙バス停で下車\r・地下鉄10号線を利用、豫園駅で下車','周辺観光地：豫園商場。中国らしい雰囲気が溢れ、ありとあらゆる買い物ができると言っても過言ではない。上海風味レストランやお茶、シルク小物、漢方薬、中国楽器、本などのお土産物屋が所狭しと並んでいる。春節にはランタン祭りが行われ更に賑やかになる。',2,NULL,'https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(8).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD/%E4%B8%8A%E6%B5%B7%E8%B1%AB%E5%9B%AD+(8).jpg',1,NULL,1,NULL,1),
	(21,'上海野生動物園','公園内の動物の種類は多くて、園内ではアシカ、象、山羊、ライオン、虎などのショーがある。それだけでなく、観光バスに乗って、野獣区を遊覧することができ、ガラス越しに現れた動物と「近い距離」で触れられる。 \r　上海野生動物園は上海浦東新区三灶鎮の境界内に位置し、敷地面積は153ヘクタールに達し、上海市の中心から約35キロ離れている。 \r　園内には世界各地で代表的な珍しい動物が200余種飼育されている。その中には国外からのキリン、シマウマ、カモシカ、サイなどがおり、また我が国の一級保護動物でもある：パンダ、キンシコウ、華南虎、アジア象などがいる。 \r　観光客が遊園する時、園内は「車入区」、「歩入区」とに分かれている。上海野生動物園の車入区ではキリン、象、我が国の三大国宝の1つの金髪ターキン、チーターなどを見ることができる。歩入区では白獅、白虎、白カンガルー、パンダ、ヨウスコウワニなど世界でも稀な動物を見ることができる。 \r　園内は草食動物養殖区、肉食動物養殖区、フラミンゴ区、散養動物区、水禽湖、稀少動物飼育区、百鳥園、蝶蝶園及び児童ペット園に分かれている。また、動物の出演するショーなどたくさんの特色あるプログラムを設けている。入口のところで案内図を受け取り、案内図にショースケジュールがあるので、時計回りの方向に廻ると、大抵各種のショーを見ることができる。','☆開放時間＆料金\r・開放時間：\r　3月～11月：8:00-17:000（入園は16：00まで）\r　12月～次年2月：8:30—16:30（入園は15：30まで）\r・入園料：\r　成人：130元、児童：65元\r※①身長130cm以下または6歳以下の子供は無料\r②70歳以上の年寄は半額、65元となる（パスポート持参要） ','上海浦東新区三灶鎮南六公路178号','TEL：021-61181235 \r交通アクセス： \r直行できるバスは以下のとおり：\r・上海体育場で2線（6：30-19：15、15分毎に発車） \r・上海駅（竜門ホテル）で远通バス（5：30-19：50） \r・上海体育館の公共交通の中枢駅で万野専用線（6：30-18：30、15分毎に発車） \r・人民広場で原野専用線（成都北路の大沽交差点7：30-10：30、30分毎に発車）','平均観光時間1～2時間',2,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(22,'上海科学技術館','上海科学技術館は上海市浦東新区花木行政文化中心区世紀大道2000号に位置する科学教育の展覧館である。占地面積は6.8万平方メートル。建築面積は9.8万平方メートル。総投資額は15億人民元。\r　RTKL国際有限会社と上海建築設計院の共同で設計。2001年10月21日にAPECの第9回非公式首脳会合が行われたのち、2001年12月18日に正式に営業を開始。\r　地下鉄2号線上海科技館駅と直結し、周辺は世紀公園と一体化した都市公園となっている。',' ☆開放時間＆料金\r・開放時間：\r　火曜日～金曜日　9：00～17：15　\r　月曜日休館、ただし、月曜日は祝日の場合は開館\r・料金：\n   60元\r※①身長130cmの子供は半額、30元となる。\r②70歳以上の年寄は無料となる（パスポート持参要） ','上海浦東新区世紀大道2000号','TEL：021-68542000\r交通アクセス： \r・地下鉄2号線上海科技館駅で下車\r・バス640番線、794番線、815番線、984番線、638番線、983番線、184番線、975番線を利用、世紀大道丁香路駅で下車','平均観光時間1～2時間',2,NULL,'https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E7%A7%91%E6%8A%80%E9%A6%86/%E4%B8%8A%E6%B5%B7%E7%A7%91%E6%8A%80%E9%A6%86.jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%8A%E6%B5%B7%E7%A7%91%E6%8A%80%E9%A6%86/%E4%B8%8A%E6%B5%B7%E7%A7%91%E6%8A%80%E9%A6%86.jpg',1,NULL,1,0,0),
	(23,'拙政園','明代の16世紀初頭、高官を失脚した王献臣により造られた「蘇州四大名園」のうち最大の庭園。水をテーマとし、5ヘクタールの敷地のうち池や堀が約7割を占める。園内は東園、中園、西園の3つに分かれている。また拙政園の名は、庭が賄賂で造られたとの噂から「拙き者が政治を為す」という詩句から皮肉ったもの。中国の古典『紅楼夢』の舞台にもなっている。','☆開放時間＆料金\r・開放時間\r　4/16～10/30：　7：30～17：30\r　10/31～4/15：　7：30～17：00\r　定休日：年中無休\r・料金：\r　4/16～10/30：　70元\r　10/31～4/15：　50元','蘇州市東北街178号','TEL：0512-67510286\r交通アクセス：\r・鉄道をご利用の場合、「蘇州」駅よりタクシーで約15分','所要観光時間：1時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(24,'留園',' 留園は中国にある有名な古典園林であり、江南の歴史ある街蘇州に位置し、園内の建築は精巧を極め、奇石（太湖石）が多く名高い。1961年、留園は中華人民共和国国務院により最初の中華人民共和国全国重点文物保護単位の一つとして公表された。1997年、留園を含めた蘇州古典園林は世界文化遺産として登録された。\r　「蘇州四大名園」であるばかりか「中国四大名園」としても名高い、清代の建築造園様式を今に伝える傑作。創建は16世紀にさかのぼるが、清代18世紀に劉恕が改築後、劉園となり後に留園と改名された。園内は楼閣や回廊で4つの景区に分かれている。高さ6.5mの太湖石、廊壁を飾る透かし彫りの花窓が連なっているほか、名書家の墨跡『留園法帖』も見事。','☆開放時間＆料金\r・開放時間\r　4/16～10/30：　7：30～17：30\r　10/31～4/15：　7：30～17：00\r　定休日：年中無休\r※入場は閉門30分前まで\r・料金：\r　4/16～10/30：　40元\r　10/31～4/15：　30元','蘇州市留園路338号','TEL：0512-65579466\r交通アクセス：\r・鉄道をご利用の場合、「蘇州」駅よりタクシーで約15分','所要観光時間：1時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(25,'滄浪亭','唐代末期956年、呉越広陵王の銭元僚により造園された蘇州最古の庭園。後の宋代に詩人の蘇舜欽が別荘として改築し、滄浪亭と呼ばれるようになった。自然に寄り添うようなシンプルな造りを特徴とし、園前に流れる運河もまた蘇州らしい風情を醸し出している。池や川、樹木が茂っていることから「都市の中の山林」という言葉もあり落ち着いた雰囲気がある。','☆開放時間＆料金\r・開放時間\r　3/1～11/15：　7：30～17：30\r　11/16～2/末：　7：30～17：00\r　定休日：年中無休\r※入場は閉門30分前まで\r・料金：\r　4/16～10/30：　20元\r　10/31～4/15：　15元','蘇州市滄浪亭街3号','TEL：0512-65296567\r交通アクセス：\r・鉄道をご利用の場合、「蘇州」駅よりタクシーで約10分','平均観光時間1～2時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(26,'獅子林','城内の園林路にあり「蘇州四大名園」のひとつ。太湖産の奇石、太湖石で埋め尽くされた摩訶不思議な造形美で知られる。回廊には宋代の名家の書を中心とした石刻60枚余りがはめ込まれている。創建されたのは元代1342年、天如という僧侶による。太湖石が林立する築山にはまるで迷路のように通路が巡らされており、ちょっぴり冒険気分で散策を楽しめる。','☆開放時間＆料金\r・開放時間\r　4/1～10/31：　7：30～17：30\r　11/1～3/31：　7：30～17：00\r　定休日：年中無休\r※入場は閉門30分前まで\r\r・料金：\r　4/1～10/31：　30元\r　11/1～3/31：　20元','蘇州市園林路23号','TEL：0512-67272428\r交通アクセス：\r・鉄道をご利用の場合、「蘇州」駅よりタクシーで約5分','平均観光時間1～2時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(27,'虎丘','越王との戦いに破れた呉王・闔閭が葬られた小高い丘。葬儀の3日後に墓に現れたという白い虎の伝説からこの名が付いた。現在の虎丘は泉や庭園をちりばめた市民の憩いの場。のんびり散策も楽しめる。丘の上にそびえ建つ961年建立の高さ47m、八角七層の雲巌寺塔は、地盤沈下により3.5度傾いた東洋の斜塔として名高い。','☆開放時間＆料金\r・開放時間\r　3/初～11/15：7：30～17：30\r　11/16～2/末：　7：30～17：00\r　定休日：年中無休\r・料金：\r　4/16～10/30：　60元\r　10/31～4/15：　40元','蘇州市虎丘山門内8号','TEL：0512-65323488\r\r交通アクセス：\r・鉄道をご利用の場合、「蘇州」駅よりタクシーで約20分','平均観光時間1～2時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(28,'周荘','周荘は上海と蘇州の間に位置しており、蘇州から約38キロメートル、上海から約80キロメートルである。\r　古くは「貞富里」と称されていた。宋代の1086年、周迪功郎が仏教への篤心から自邸を寺院（全福寺）に約13ヘクタールの荘田を寄進、周迪功郎の名を冠とし周荘と荘田と称されるようになった。かつては周辺地域の水運や商業の要所として繁栄し、今でも6割以上が残る明清時代の建物や水路の風景が訪れる人々を魅了してやまない場所である。\r　中国有名な画家の呉冠中は周荘の美しさを「中国水郷の綺麗さを納める」と賛美した、海外の新聞は「周庄が中国第一の水郷である」とも賛美した。　周荘は約9百年の歴史を持っていて、豊富な文化の含みもあり、西晋の文学者の張翰、唐代の詩人の劉禹錫、陸亀蒙などの歴代名人がここに住んだことがある。周荘も元末明初の江南の巨富の沈万三の故郷である；周荘は典型的な江南水鎮なので、ここで撮影する各種の映画とドラマは40数冊がある。\r 　橋、川、小屋が水郷の特色で、周庄の河川は「井」の字形になっており、町の中から横切って、“咫尺の往来も全て船”，誰の家でも埠頭がある。','☆開放時間＆料金\r・開放時間\r　8：00～21:00\r・入場料\r　100元（古鎮内観光名勝の通し券）\r　夜間入場の場合：80元（夕方16：00以降の入園、「沈庁」「張庁」の入場券のみ含む）\r※\r①周荘も宿泊する場合は、チケット売り場の隣にある撮影場所にて写真撮影を行ってください。チケットの有効期限が3日に延ばされる。\r②身長120cm以下の児童の場合は無料、身長120cm～150cmの児童の場合は半額となる\r③60歳～69歳のお年寄の場合は半額となる、70歳以上のお年寄の場合は無料となる。\r（パスポートの持参要）','江蘇省昆山市周荘鎮','TEL ：  0512-57211699\r\r交通アクセス：\r　周荘には空港、鉄道の駅等がありません、周荘へのアクセスは上海、南京、蘇州、昆山からのバスを利用するのが一般的、長距離バスの終点は昆山周荘ターミナルで、そこから徒歩20分程度で、周荘古鎮に着く。\r・蘇州―周荘\r　蘇州北バスターミナルから周荘行きバスを利用、乗車時間はおよそ40分で、料金は15元程度\r・昆山―周荘\r　昆山バスターミナルから周荘行きバスを利用、乗車時間はおよそ30分で、料金は7元程度\r・上海―周荘\r　上海体育場の横にある「旅遊集散中心」から直通バスを利用、乗車時間は約1時間半で、料金は25元程度。\r※上海体育場の横にある「旅遊集散中心」の窓口で往復のバス代と9ヶ所の周遊券（施設入館料）がセットになったチケット（140元）が購入できるので、ツアーを利用しない場合はこちらが便利。この場合、7:30から約1時間おきに出発する直通の座席指定バスに乗車。','①毎晩19：30～20：30「四季周庄（荘）」という水上ショーがある、チケット代は150元/人、身長120cm以下が無料となる。\r②古鎮内を巡る周遊船は「昼遊」と「夜遊」に２つがあります。一隻の乗船人数は8人まで。 \r★昼遊\r時間／8:00～16:00 料金／80元（一隻） \rルート／富安橋→太平橋→青龍橋→博物館→福洪橋→通秀橋→貞豊橋（終点） \r★夜遊\r時間／16:00～21:00 料金／80元（一隻） \rルート／富安橋→双橋→廊棚→古戯台→全功橋→太平橋→青龍橋→博物館（終点）',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(29,'太湖観光地',' 太湖はかつて、震澤、又の名を五湖と呼ばれた。中国で三番目に大きな淡水湖である。太湖の面積は2000平方km、大小48の島があり、周囲の峰は72を数える。湖面は山肌を映し、山水は幾重にも相照らし、光輝く、自然美を呈し、「天下一秀麗な太湖」と称される。太湖の湖岸線は405km、平均水深は1.89mであり、湖底の地形から見れば、湖盆が東から右へ傾け、小皿の形状となり、湖面は西に突き出た三日月のように見える。太湖周辺に網のように分布する江、川、渓流、用水路は太湖を周囲に点々と分布する小さな湖と繋ぎ、特色のある江南水郷を形成する。\r     太湖風景の最も美しい所は｢呉中｣地域にある。蘇州呉中太湖観光区は、楽園と称される蘇州西南部にある太湖の湖岸にある。観光景区の中に太湖公園、東山風景区、穹窿山風景区、旺山風景区がある。太湖の風景は翡翠のような水、青々とした山、湖面に浮ぶ島々、点々と散在する舟、この山水の景色と太湖に散見する人文的古跡と相呼応して、まるで一巻の絶景の江南山水画を描いたようだ。太湖は湖面が広がり、麗しい山水を持つ一方、朝が晴れなのに夕方が雨、四季の移り変わりもはっきりしていて、実に変化に富む自然風景でもある。山々に囲まれ島が浮かぶ太湖は艶やかさと雄大さがうまく融合され、人々を魅了する力がある。','☆開放時間＆料金\r・開放時間\r　7：00～17：30\r・料金\r　105元','蘇州市太湖国民休暇村環太湖大道（水車）','交通アクセス：\r・飛行機にて太湖観光リゾートへいらっしゃるお客様は、下記のバスを利用するのがお勧め：\r★上海浦東国際空港から蘇州行きリムジン\r　乗車場所：1号ターミナル、2号ターミナル\r　発車時刻：10:00-20:00\r★上海虹橋空港から蘇州行きリムジン\r　乗車場所：虹橋枢紐西交通中心\r　発車時刻：11:10-21:00\r・公共バス：\r★観光リゾートセンター方面\r　列車で蘇州にいらっしゃるお客様：69番バスを利用\r　蘇州市内のお客様：58番、63番バスを利用\r★西山景区方面\r　列車で蘇州にいらっしゃるお客様：69番バスを利用\r　蘇州市内のお客様：58番バスを利用\r★光福景区方面\r　列車で蘇州にいらっしゃるお客様：64番バスを利用\r　蘇州市内のお客様：63番、65番、43番バスを利用\r★東山景区方面\r　列車で蘇州にいらっしゃるお客様：502番バスを利用\r　蘇州市内のお客様：441番、43番、62番バスを利用','所要観光時間：2日',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(30,'沙家浜観光地','近年、「革命観光」が中国でブームとなっている。沙家浜はむしろそのうち、観光と教育の両建てに成功する数少ない事例の中のひとつである。京劇「沙家浜」は中国では広く知られている。それゆえ、常熟市陽澄湖畔に位置する沙家浜の名声も、そのおかげで、遠くまで伝わっている。このところ、沙家浜は独自の革命的伝統と豊富な観光資源を活用し、観光産業を加速するための政策と措置を次々と発表した。観光客は京劇「沙家浜」のストーリに沿って当時の「春来茶館」でお茶を楽しみながら、あの頃の「阿慶嫂」と敵との機知を用いる会話を思い出し味わうことができるし、あるいは「芦葦迷路」に漕ぎだし、当時傷病員たちが追手から逃れる緊張するシーンをも自ら体験することができる。','☆開放時間＆料金\r・開放時間\r　8：00～16：30\r・入場料\r　6月～11月：100元\r　12月～5月：80元\r※\r①身長120cm以下または6歳以下の児童の場合は無料、身長120cm～150cmまたは年齢が6歳～18歳の児童の場合は半額となる\r②60歳～69歳のお年寄の場合は半額となる、70歳以上のお年寄の場合は無料となる。\r（パスポートの持参要）','江蘇省陽澄湖畔','交通アクセス：\r・上海からいらっしゃる場合：\r　土曜日、日曜日および祝日、下記のバスターミナルより直行バスが運行される、料金は直行バスの往復券プラス入場料で100元。発車時刻は下記のとおり：\r　「楊浦体育センター」では7：00、\r　「虹口サッカ場」では7：30、\r　「上海体育場」では8：00、\r　復路はすべて16：30発車。\r・そのほかの近隣都市からいらっしゃる場合も各バスターミナルより直行バスを利用することが可能\r・バスの場合：\r　常熟111番環線を利用、「沙家浜観光地」バス停で下車','所要観光時間：1日',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(31,'尚湖観光地','中国語には「太公望の魚釣り」という諺がある。常熟の尚湖は、太公望（呂尚）があの頃、纣王の暴政を避けるために、尚湖に釣りの毎日の隠遁生活を始まったという言い伝えから名乗られたという。それで、従来尚湖は文人から憧れられ、60年代までも、自然の風景の保存がよくできていた。尚湖観光地には、10万平方キロのゴルフクラブがあり、ゴルフ好きな人が日々ここに集まってくる。ほかには、「釣魚渚」の北側には太公望の彫刻が立てられ、尚湖の中には千本の糸杉が植えられ、歴史的にも観光的にもすばらしい場所である。','☆開放時間＆料金\r・開放時間\r　8：00～16：10\r・入場料\r3月～5月、9月～11月：80元\r6月～8月、12月～2月：60元\r※\r①身長120cm以下の児童の場合は無料、身長120cm～150cmの児童の場合は半額となる\r②60歳～69歳のお年寄の場合は半額となる、70歳以上のお年寄の場合は無料となる。\r（パスポートの持参要）','江蘇省常熟市尚湖観光地','交通アクセス：\r・上海からいらっしゃる場合：\r　土曜日、日曜日および祝日、下記のバスターミナルより直行バスが運行される、料金は直行バスの往復券プラス入場料で100元。発車時刻は下記のとおり：\r　「楊浦体育センター」では7：00、\r　「虹口サッカ場」では7：30、\r　「上海体育場」では8：00、\r　復路はすべて16：30発車。\r・そのほかの近隣都市からいらっしゃる場合も各バスターミナルより直行バスを利用することが可能\r・バスの場合：\r　常熟116番線、常熟11７番線を利用、「尚湖」バス停で下車','所要観光時間：４－６時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(32,'虞山森林公園','常熟の文化蓄積の層の厚さといえば、虞山公園が一番だといっても過言ではない。虞山は中国有名な観光地で、旧称烏目山である。太公望の次男虞仲が逝去なされた後、この山に埋葬されたので、虞山に名前を変えた。自然景観が数多くあり、人文景観も見物とされている。虞山にはなくなった有名人のお墓が大勢並んでいる。「画聖」王石谷や、孔子の弟子言子など、かつて歴史上輝いていた常熟の偉人は、ここで後代の人々に仰ぎみられ、その精神を代々伝わっていく。','☆開放時間＆料金\r・開放時間\r　7:30～16:30\r・入場料\r45元\r※\r①身長120cm以下の児童の場合は無料、身長120cm～140cmの児童の場合は半額となる\r②60歳～69歳のお年寄の場合は半額となる、70歳以上のお年寄の場合は無料となる。\r（パスポートの持参要）','江蘇省常熟市城西北','交通アクセス：\r・　常熟110番線、常熟112番線、常熟113番線、常熟11４番線を利用、「虞山公園」バス停で下車','所要観光時間：１時間',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(33,'同里','同里は蘇州から南東に２５キロ。千年の歴史を持ち、多数の科挙合格者、文人を輩出した文化の薫り高い街でもある。古鎮に入る橋を渡れば、明清時代に迷い込んだかのようだ。\r 　街で水が占める面積は総面積の五分の一。五十近い橋が街の風景に風情を添えている。一番小さい橋は三尺足らずの「独木橋」、最も古い橋は｢思本橋」で７００年以上の歴史を持つ。\r　また｢太平」、「吉利」」、「長慶」と呼ばれる３つの橋は品字型にかけられ、同里の人は結婚の慶事、６６歳の過寿の時には吉祥の意味を込め、必ずこの橋を渡るという。\r 名所旧跡も多く、明清時代の主な建築としては退思園、耕楽堂、崇本堂などがある。特に世界文化遺産に登録されている退思園は、蘇州の古典庭園の傑作の一つ。清代光緒年間に任蘭生が官職を解かれ、故郷に戻った時に建造された。池を中心に回廊、楼閣、草堂などすべての建物があたかも水に浮かんでいるように設計されている。\r 歩き疲れたら、同里の一番南にある南園茶社で、地元のお年寄りが奏でる二胡を聞きながら、ゆっくりお茶を飲むのも一興。','☆開放時間＆料金\r・開放時間\r　7:30～21:00\r・夜間開放時間：\r　金曜日～日曜日：18:30～21:00　\r・入場料\r　100元（古鎮内観光名勝の通し券）\r　夜間入場の場合：50元（退思園の入場券のみ）\r※\r①チケットの有効期間は2日、チケット購入当日の午後15：00以降、サービスセンターで押し印をもらってください。\r②身長120cm以下または6歳以下の児童の場合は無料、6歳～18歳の児童の場合は半額となる\r③60歳～69歳のお年寄の場合は半額となる、70歳以上のお年寄の場合は無料となる。\r（パスポートの持参要）','江蘇省呉江市同里鎮','TEL：　0512-63331140\r\r交通アクセス：\r・路線バス\r　蘇州駅、南バスターミナルから同里行きを利用、乗車時間はおよそ30，40分程度','所要観光時間：１～２日',4,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
	(34,'金石灘国家観光リゾート','金石灘国家観光リゾートは遼東半島――大連東北側の黄海沿岸に位置して、中国初のベスト観光都市――ロマンチックな都市大連の総合リゾートガーデンである。 \r　金石灘は1988年、国家級風景名勝区に指定された。1992年10月、国務院より、「国家観光リゾート地」として批准された。「2000年、全国初の国家AAAA級観光名所に指定された」。2002年、IS014001とISO9001認証を取得した。2004年、国家地質公園に選定された。２０１０年に国家AAAAA級観光名所に指定された。 \r　金石灘は大連市中心部から約５０キロメートルのところに位置し。陸地面積は６２平方キロメートルであり、海域面積は５８平方キロメートルである。三方海に囲まれており、冬暖かく、夏涼しい快適な気候であり、３０キロメートル余長く続く海岸線は３－９億年間の地質奇観を集めている。６億年前に生まれたエディアカラ岩石は壮麗な奇石景観になり、「岩石の動物世界」、「自然地質博物館」と高評価される。観光名所としては、金石灘浜海国家地質公園、発見王国テーマパーク 、金石蝋人形館、 金石灘文化博覧広場 、金石ゴルフ場、狩猟場、黄金海岸などで有名になっている。','☆開放時間＆料金：\r・開放時間：\r　4月25日～10月26日: 　8:30～17:00\r　10月27日～4月24日: 　8:30～16:30\r\r・料金：\r・通し券①：90元/人\r　（金石蝋人形館、金石灘地質博物館、毛沢東バッジギャラリー、金石縁公園 、玫瑰園、狩猟場、大連徐悲鴻芸術館を含む）\r・通し券②：160元/人\r　（金石蝋人形館や蝋人形芸術展示センター、生命奥秘博物馆、石文化博物館、毛沢東バッジギャラリーを含む）\r・通し券③：100元/人\r（石文化博物館、金石縁公園、玫瑰園、恐竜園、南秀園、大亀ビーチを含む）\r\r※各観光ポイントの切符も発売されている\r金石蝋人形館：30元、金石灘地質博物館：10元、毛沢東バッジギャラリー：10元、金石縁公園：10元、玫瑰園：10元、狩猟場：10元、大連徐悲鴻芸術館：30元。','大連市金州区丹楓路金石灘国家観光リゾート','TEL: 0411-87900065\r交通アクセス：\r・大連空港からの場合：\r①バス710番線香炉礁駅で軽軌3号線に乗り換え、金石灘で下車\r②タクシーを利用、乗車時間は20分で、料金は25元程度\r・大連駅からの場合：\r①毎日6：00～18：00、20分間隔で直行バスが運行されている、料金は10元\r②軽軌3号線を利用、乗車時間52分程度、料金は8元\r\r※・軽軌(軽軌)\r　大連駅北口から開発区を通り、金石灘までの48.58kmを52分で結ぶ「3号線」が開通している。運賃は行き先により1～8元で変動する。大連駅からは8元。\r　大連快軌站(大連駅北口の専用駅) - 香炉礁 - 金家街 - 泉水 - 後塩 - 大連湾 - 金馬路 - 開発区 - 保税区 - 双D港 - 小窯湾 - 金石灘','平均観光時間1～2時間',3,NULL,'https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(2).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E9%87%91%E7%9F%B3%E6%BB%A9%E6%99%AF%E5%8C%BA/%E5%A4%A7%E8%BF%9E%E9%87%91%E7%9F%B3%E6%BB%A9+(2).jpg',1,NULL,0,0,1),
	(35,'東方明珠電視塔','東方明珠テレビタワー、オリエンタルパールタワーとも呼ばれている。上海市の黄浦江のほとり、浦東新区陸家嘴金融貿易区に位置し、１９９１年７月３０日から着工し、１９９４年１０月１日に完成した。高さは４６８メートルで、上海市のシンボルの一つになっている。 \r　オリエンタルパールタワーについて、最も特別なのは、１１個の大きさの異なっているボールを形よく直列に繋いでいることである。主な二つのボール、いわゆる上球体と下球体の直径はそれぞれ５０メートルと４５メートルで、三本の柱によって繋がれている。また、最高のボールの直径は１４メートルである。建築全体はすべて太い三本の柱はに支えられている。 \r　オリエンタルパールタワーは合わせて１５階の観光フロアがある。最高の観光フロアー宇宙カプセルという展望台は３５０メートルの高さに位置し、それから２５０メートルのメーン展望台と２５９メートル、９０メートルの室外の展望台が設けられいている。タワーの頂点では、電波の波及の役割として、長さ１１８メートルのアンテナが設置されている。世界によく知られている回転レストランは２６７メートルにあり、また２０個部屋を持っている宇宙ホテルという場所は二つの球体間に位置している。オリエンタルパールタワーは展覧、食事、ショッピングを一体とする観光スポットである。\r　２００９年５月１日、２５９メートルに位置している高空観光回廊は正式に一般の市民に向けてオープンした。高空回廊は二番目のボールに位置し、周長は２５０メートルで、広さ２．１メートルである。観光客は透明なグラスの下の黄浦江の美しい景色を満喫することもできる。','☆開放時間＆料金\r・開放時間：8:00 ～21：30\n切符売り場営業時間：21：00まで　　　　　　　　　　　　　　　　　　　　　　　　　　　　 \r・入場料\r◎観光+遊船　180元　上球体までの見学と、塔内にある上海城市歴史発展陳列館入場料、浦江遊覧船セット。\r◎A票　180元　全ての展望台見学と上海城市歴史発展陳列館のセット。\r◎B票　150元　上球体までの見学と上海城市歴史発展陳列館のセット。\r◎C票　120元　上球体の見学と上海城市歴史発展陳列館のセット。\r◎午餐　268元　B票に昼食をセットしたもの。\r◎晩餐　298元　B票に夕食をセットしたもの。\r※入場料の割引\r①70歳以上は4割引。（パスポート持参要）\r②身長1m40㎝以下の子供は半額、1m以下の子供は無料。','上海市浦東世紀大道 1 号','※ 外灘から外灘観光隧道を使って川を渡るのがもっとも便利\rTEL：021-58791888\r交通アクセス：\r・空港からのアクセス：\r　上海虹橋空港からの場合、距離は23KM、タクシーで35分程度\r　上海浦東国際空港からの場合、距離は43KM、タクシーで50分程度\r・地下鉄2号線で陸家嘴駅で下車\r・バス81番線、82番線、85番線、774番線、789番線、795番線、870番線、971番線、983番線、985番線、993番線、陸家嘴金融城1番線、 陸家嘴旅遊環線を利用する\r※外灘から外灘観光トンネルを使って川を渡るのがもっとも便利\r','①周辺観光情報：\r　ショッピング：IFC、正大広場\r 　ホテル：香格里拉酒店、丽思卡尔顿酒店、新天哈瓦那酒店、上海国际会议中心 \r②所要観光時間：２～３時間',2,1,'https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(5).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0/%E4%B8%9C%E6%96%B9%E6%98%8E%E7%8F%A0+(5).jpg',1,NULL,0,0,1),
	(36,'老虎灘','4kmの海岸線と断崖絶壁の岩場により形成された大連市を代表する景勝地で、老虎灘広場には中国を代表する彫刻家であり、北京オリンピックのマスコット・福娃のデザイナーとしても知られる韓美林の手による35mの巨大な6頭のトラのモニュメント「群虎彫塑（群虎彫像）」が控える。岬の突端には「老虎灘」と刻まれた石碑が建てられ、その下には老虎洞という洞穴がある。隣接する大連老虎灘海洋公園には、鳥語林（野鳥園）、白熊などの動物をはじめ、イルカ・アシカのショーを見学できる大連極地館、珊瑚館などがあり、2005年5月8日には、国家旅遊局から最高級である国家5A級景区に指定された。','☆公園の開放時間＆料金\r・開放時間：8:00～17:00\r・入園料：\r　4月～10月：　210元\r　11月～3月：　190元\r※切符はすべて通し券である、鳥語林（野鳥園）、大連極地館、珊瑚館などの施設の入園料を含む。しかし、利用できるのは一回だけであるため、少し離れた鳥語林（野鳥園）は一番最初または最後に訪れたほうがよい\r※割引券：\r①身長130cm以下の児童は入園料を免除\r②身長130cm以上、年齢が18歳以下の場合、入園料は170元となる。（パスポートを持参する必要がある）\r③65歳以上のお年よりは入園料が半額となる。（パスポートを持参する必要がある）','大連市中山区浜海中路9号','交通アクセス：\r・バス30、404番線で老虎灘バス停で下車\r・バス２番線で工人療養院バス停で下車\r・バス２、４、403、404番線で解放路バス停で下車\r・空港からタクシーを利用する場合は、およそ30分で、料金は35元程度','①平均観光時間は3～7時間\r②近くにある観光地：',3,7,'https://s3-ap-northeast-1.amazonaws.com/travle/%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD/%E5%A4%A7%E8%BF%9E%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD+(4).jpg','https://s3-ap-northeast-1.amazonaws.com/travle/%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD/%E5%A4%A7%E8%BF%9E%E8%80%81%E8%99%8E%E6%BB%A9%E6%B5%B7%E6%B4%8B%E5%85%AC%E5%9B%AD+(4).jpg',1,NULL,0,0,1);

/*!40000 ALTER TABLE `scenic` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
