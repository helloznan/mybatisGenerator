# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: mybatisGenerator
# Generation Time: 2019-01-21 14:03:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table privilege
# ------------------------------------------------------------

DROP TABLE IF EXISTS `privilege`;

CREATE TABLE `privilege` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;

INSERT INTO `privilege` (`id`, `name`)
VALUES
	(1,'只读'),
	(2,'读写'),
	(3,'查阅报表');

/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`)
VALUES
	(1,'管理员'),
	(2,'开发人员'),
	(3,'项目经理');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles_privilege
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles_privilege`;

CREATE TABLE `roles_privilege` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(11) NOT NULL,
  `privilege_id` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `roles_privilege` WRITE;
/*!40000 ALTER TABLE `roles_privilege` DISABLE KEYS */;

INSERT INTO `roles_privilege` (`id`, `role_id`, `privilege_id`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(4,2,3);

/*!40000 ALTER TABLE `roles_privilege` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table school
# ------------------------------------------------------------

DROP TABLE IF EXISTS `school`;

CREATE TABLE `school` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `school` WRITE;
/*!40000 ALTER TABLE `school` DISABLE KEYS */;

INSERT INTO `school` (`id`, `name`)
VALUES
	(1,'清华大学'),
	(2,'北京大学');

/*!40000 ALTER TABLE `school` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usr
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr`;

CREATE TABLE `usr` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `pwd` varchar(20) NOT NULL DEFAULT '',
  `school_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usr` WRITE;
/*!40000 ALTER TABLE `usr` DISABLE KEYS */;

INSERT INTO `usr` (`id`, `name`, `pwd`, `school_id`)
VALUES
	(1,'jim','111',1),
	(2,'tom','222',1),
	(3,'kate','333',2),
	(4,'jerry','111',2);

/*!40000 ALTER TABLE `usr` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table usr_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr_roles`;

CREATE TABLE `usr_roles` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(11) DEFAULT NULL,
  `user_id` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_role_id` (`role_id`),
  KEY `index_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `usr_roles` WRITE;
/*!40000 ALTER TABLE `usr_roles` DISABLE KEYS */;

INSERT INTO `usr_roles` (`id`, `role_id`, `user_id`)
VALUES
	(4,1,1),
	(5,2,1),
	(6,2,2);

/*!40000 ALTER TABLE `usr_roles` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
