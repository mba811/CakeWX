# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.0.41)
# Database: wln_test_db2
# Generation Time: 2014-06-06 08:58:40 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cx_languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_languages`;

CREATE TABLE `cx_languages` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `native` varchar(255) collate utf8_unicode_ci NOT NULL,
  `alias` varchar(255) collate utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL default '1',
  `weight` int(11) default NULL,
  `updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table cx_schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_schema_migrations`;

CREATE TABLE `cx_schema_migrations` (
  `id` int(11) NOT NULL auto_increment,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `cx_schema_migrations` WRITE;
/*!40000 ALTER TABLE `cx_schema_migrations` DISABLE KEYS */;

INSERT INTO `cx_schema_migrations` (`id`, `class`, `type`, `created`)
VALUES
	(1,'InitMigrations','Migrations','2014-05-13 16:28:03'),
	(2,'ConvertVersionToClassNames','Migrations','2014-05-13 16:28:03'),
	(3,'IncreaseClassNameLength','Migrations','2014-05-13 16:28:03'),
	(4,'FirstMigrationSettings','Settings','2014-05-13 16:28:03'),
	(5,'FirstMigrationWebchat','Webchat','2014-05-13 16:28:03');

/*!40000 ALTER TABLE `cx_schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cx_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_settings`;

CREATE TABLE `cx_settings` (
  `id` int(20) NOT NULL auto_increment,
  `key` varchar(64) collate utf8_unicode_ci NOT NULL,
  `value` text collate utf8_unicode_ci NOT NULL,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `description` varchar(255) collate utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) collate utf8_unicode_ci NOT NULL default 'text',
  `editable` tinyint(1) NOT NULL default '1',
  `weight` int(11) default NULL,
  `params` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `cx_settings` WRITE;
/*!40000 ALTER TABLE `cx_settings` DISABLE KEYS */;

INSERT INTO `cx_settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`)
VALUES
	(1,'Croogo.stvsd','1','','','',0,1,''),
	(2,'Croogo.installed','1','','','',0,2,''),
	(3,'Site.title','开源免费的微信公众账号管理系统','','','',0,3,''),
	(4,'Site.name','CakeWX','','','',0,4,''),
	(5,'Site.keywords','CakeWX，微信公众平台，微信公众账号，订阅号，服务号，微信营销','','','',0,5,''),
	(6,'Site.description','CakeWX，开源免费的微信公众账号管理系统','','','',0,6,'');

/*!40000 ALTER TABLE `cx_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cx_tperson
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_tperson`;

CREATE TABLE `cx_tperson` (
  `Id` varchar(38) NOT NULL,
  `FMemberId` varchar(38) NOT NULL,
  `FPassWord` varchar(200) NOT NULL,
  `FullName` varchar(200) default NULL,
  `FEName` varchar(200) default NULL,
  `FSex` int(50) default NULL,
  `FBirthday` datetime default NULL,
  `FEMail` varchar(500) default NULL,
  `FMobileNumber` varchar(100) default NULL,
  `FPhone` varchar(500) default NULL,
  `FAddress` varchar(500) default NULL,
  `FCity` varchar(200) default NULL,
  `FCreatedate` datetime default NULL,
  `FUpdatedate` datetime default NULL,
  `FIsActive` tinyint(1) default NULL,
  `FIsAuth` tinyint(1) default NULL,
  `FIsAdmin` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`Id`),
  UNIQUE KEY `FMemberId` (`FMemberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cx_tperson` WRITE;
/*!40000 ALTER TABLE `cx_tperson` DISABLE KEYS */;

INSERT INTO `cx_tperson` (`Id`, `FMemberId`, `FPassWord`, `FullName`, `FEName`, `FSex`, `FBirthday`, `FEMail`, `FMobileNumber`, `FPhone`, `FAddress`, `FCity`, `FCreatedate`, `FUpdatedate`, `FIsActive`, `FIsAuth`, `FIsAdmin`)
VALUES
	('5371d7a0-6ed0-4f4d-b5c9-04b74d223f93','admin','b1b94097ba722dcf46e3982a0631af1110fedf8a','系统管理员',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2014-05-13 16:28:16','2014-05-13 16:28:16',1,1,1);

/*!40000 ALTER TABLE `cx_tperson` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cx_wcdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_wcdata`;

CREATE TABLE `cx_wcdata` (
  `Id` varchar(38) NOT NULL,
  `FWebchat` varchar(38) NOT NULL,
  `FDefaultType` tinyint(1) default NULL,
  `FDefaultContent` text,
  `FDefaultId` varchar(38) default NULL,
  `FFollowType` tinyint(1) default NULL,
  `FFollowContent` text,
  `FFollowId` varchar(38) default NULL,
  `FCreatedate` datetime default NULL,
  `FUpdatedate` datetime default NULL,
  `FSignText` varchar(500) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cx_wcdata_kds
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_wcdata_kds`;

CREATE TABLE `cx_wcdata_kds` (
  `Id` varchar(38) NOT NULL,
  `FWebchat` varchar(38) NOT NULL,
  `FKey` varchar(200) NOT NULL,
  `FType` int(11) default NULL,
  `FTwj` text,
  `FWbContent` text,
  `FCreatedate` datetime default NULL,
  `FUpdatedate` datetime default NULL,
  `FKeyMacth` tinyint(1) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cx_wcdata_mus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_wcdata_mus`;

CREATE TABLE `cx_wcdata_mus` (
  `Id` varchar(38) NOT NULL,
  `FWebchat` varchar(38) NOT NULL,
  `FOwnerMenu` varchar(200) default NULL,
  `FName` varchar(200) default NULL,
  `FOrder` int(11) default NULL,
  `FKeysOrLink` varchar(200) default NULL,
  `FIsActive` tinyint(1) default NULL,
  `FCreatedate` datetime default NULL,
  `FUpdatedate` datetime default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cx_wcdata_tw
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_wcdata_tw`;

CREATE TABLE `cx_wcdata_tw` (
  `Id` varchar(38) NOT NULL,
  `FWebchat` varchar(38) NOT NULL,
  `FTitle` varchar(200) NOT NULL,
  `FUrl` varchar(1000) default NULL,
  `FUpyunUrl` varchar(1000) default NULL,
  `FMemo` varchar(500) default NULL,
  `FCreatedate` datetime default NULL,
  `FUpdatedate` datetime default NULL,
  `FType` tinyint(1) default NULL,
  `FAuthor` varchar(100) default NULL,
  `FContent` text,
  `FLink` varchar(1000) default NULL,
  `FTwj` text,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cx_wcsess
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_wcsess`;

CREATE TABLE `cx_wcsess` (
  `Id` int(38) NOT NULL auto_increment,
  `FData` text NOT NULL,
  `FExpires` int(11) default NULL,
  `FWebchat` varchar(38) default NULL,
  `FCreatedate` datetime default NULL,
  `FUpdatedate` datetime default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cx_webchat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cx_webchat`;

CREATE TABLE `cx_webchat` (
  `Id` varchar(38) NOT NULL,
  `FPerson` varchar(38) NOT NULL,
  `FWxopenId` varchar(200) default NULL,
  `FWxId` varchar(200) default NULL,
  `FName` varchar(200) default NULL,
  `FCreatedate` datetime default NULL,
  `FOffdate` datetime default NULL,
  `FIcon` varchar(500) NOT NULL,
  `FStatus` tinyint(1) NOT NULL,
  `FIsActive` tinyint(1) default NULL,
  `FWxType` varchar(200) default NULL,
  `FWxApi` varchar(200) default NULL,
  `FWxToken` varchar(200) default NULL,
  `FWxAppId` varchar(200) default NULL,
  `FWxAppSecret` varchar(200) default NULL,
  `FAddress` varchar(200) default NULL,
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
