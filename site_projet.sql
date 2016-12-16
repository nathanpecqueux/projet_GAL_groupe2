-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: site_projet
-- ------------------------------------------------------
-- Server version	5.5.43-0+deb8u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `RANKING`
--

DROP TABLE IF EXISTS `RANKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RANKING` (
  `RANK_ID` int(11) NOT NULL,
  `RANK_NAME` varchar(20) DEFAULT NULL,
  `RANK_PLAYER` int(3) DEFAULT NULL,
  PRIMARY KEY (`RANK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RANKING`
--

LOCK TABLES `RANKING` WRITE;
/*!40000 ALTER TABLE `RANKING` DISABLE KEYS */;
/*!40000 ALTER TABLE `RANKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_assets`
--

DROP TABLE IF EXISTS `bak_icng4_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_assets`
--

LOCK TABLES `bak_icng4_assets` WRITE;
/*!40000 ALTER TABLE `bak_icng4_assets` DISABLE KEYS */;
INSERT INTO `bak_icng4_assets` VALUES (1,0,0,119,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,22,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,23,24,1,'com_cpanel','com_cpanel','{}'),(10,1,25,26,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,27,28,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,29,30,1,'com_login','com_login','{}'),(13,1,31,32,1,'com_mailto','com_mailto','{}'),(14,1,33,34,1,'com_massmail','com_massmail','{}'),(15,1,35,36,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,37,38,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,39,40,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,41,86,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,87,90,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,91,92,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,93,94,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,95,96,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,97,98,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,99,102,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,103,104,1,'com_wrapper','com_wrapper','{}'),(27,8,18,21,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,88,89,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,100,101,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,105,106,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,107,108,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,109,110,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,111,112,1,'com_contenthistory','com_contenthistory','{}'),(37,1,113,114,1,'com_ajax','com_ajax','{}'),(38,1,115,116,1,'com_postinstall','com_postinstall','{}'),(39,18,42,43,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,44,45,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,46,47,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,48,49,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,50,51,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,52,53,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,54,55,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,56,57,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,58,59,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,60,61,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,62,63,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,64,65,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,66,67,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,68,69,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,70,71,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,18,72,73,2,'com_modules.module.87','Popular Tags','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,18,74,75,2,'com_modules.module.88','Site Information','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,18,76,77,2,'com_modules.module.89','Release News','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,18,78,79,2,'com_modules.module.90','Latest Articles','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,18,80,81,2,'com_modules.module.91','User Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(59,18,82,83,2,'com_modules.module.92','Image Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(60,18,84,85,2,'com_modules.module.93','Search','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(61,27,19,20,3,'com_content.article.1','Getting Started','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,1,117,118,1,'#__ucm_content.1','#__ucm_content.1','[]');
/*!40000 ALTER TABLE `bak_icng4_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_associations`
--

DROP TABLE IF EXISTS `bak_icng4_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_associations`
--

LOCK TABLES `bak_icng4_associations` WRITE;
/*!40000 ALTER TABLE `bak_icng4_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_banner_clients`
--

DROP TABLE IF EXISTS `bak_icng4_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_banner_clients`
--

LOCK TABLES `bak_icng4_banner_clients` WRITE;
/*!40000 ALTER TABLE `bak_icng4_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_banner_tracks`
--

DROP TABLE IF EXISTS `bak_icng4_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_banner_tracks`
--

LOCK TABLES `bak_icng4_banner_tracks` WRITE;
/*!40000 ALTER TABLE `bak_icng4_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_banners`
--

DROP TABLE IF EXISTS `bak_icng4_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_banners`
--

LOCK TABLES `bak_icng4_banners` WRITE;
/*!40000 ALTER TABLE `bak_icng4_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_categories`
--

DROP TABLE IF EXISTS `bak_icng4_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_categories`
--

LOCK TABLES `bak_icng4_categories` WRITE;
/*!40000 ALTER TABLE `bak_icng4_categories` DISABLE KEYS */;
INSERT INTO `bak_icng4_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',28,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'non-categorise','com_content','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',28,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'non-categorise','com_banners','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',28,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'non-categorise','com_contact','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',28,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'non-categorise','com_newsfeeds','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',28,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'non-categorise','com_users','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',28,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `bak_icng4_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_contact_details`
--

DROP TABLE IF EXISTS `bak_icng4_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_contact_details`
--

LOCK TABLES `bak_icng4_contact_details` WRITE;
/*!40000 ALTER TABLE `bak_icng4_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_content`
--

DROP TABLE IF EXISTS `bak_icng4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_content`
--

LOCK TABLES `bak_icng4_content` WRITE;
/*!40000 ALTER TABLE `bak_icng4_content` DISABLE KEYS */;
INSERT INTO `bak_icng4_content` VALUES (1,61,'Comment débuter ?','comment-debuter','<p>La création d\'un site web avec Joomla est simple, le déploiement de ce site exemple vous y aidera. <br />Les quelques principes de base présentés ci-dessous vous guideront dans la compréhension de ce logiciel.</p><h3>Qu\'est-ce qu\'un Système de Gestion de Contenu ?</h3><p>Un   système de gestion de contenu (SGC ou CMS de l\'anglais Content  Management System) est un logiciel qui vous permet de créer  et gérer  des pages Web facilement, séparant la création des contenus de la  gestion technique nécessaire à une diffusion sur le web.</p><p>Le  contenu rédactionnel est stocké et restitué par une base de données, l\'aspect (police, taille, couleur, emplacement, etc.) est géré par un  template (habillage du site). Le logiciel Joomla permet d\'unir ces deux  structures de manière conviviale et de les rendre accessibles au plus  grand nombre d\'utilisateurs.</p><h3>Deux interfaces</h3><p>Un site Joomla est structuré en deux parties distinctes : la partie visible du site appelée «Frontal» de <em>Frontend</em> en anglais et, la partie d\'administration pure appelée «Administration» de <em>Administrator</em>.</p><h3>Administration</h3><p>Vous pouvez accéder à l\'administration en cliquant sur le sur le lien «Administration» présent dans le module de menu «Menu membre» visible après vous être connecté sur le site ou, en  ajoutant  <em>/administrator</em> dans l\'URL après le nom de domaine (exemple : www.mon-domaine.com/administrator).</p><p>Utilisez le nom d\'utilisateur et le mot de passe créés lors de l\'installation de Joomla.</p><h3>Frontal</h3><p>Si votre profil possède les droits suffisants, vous pouvez créer des articles et les éditer depuis l\'interface frontale du site.</p><p>Connectez-vous par le module «Connexion» en utilisant le nom d\'utilisateur et le mot de passe créés lors de l\'installation de Joomla.</p><h3>Créer un article en frontal</h3><p>Lorsque vous êtes connecté, un nouveau menu nommé «Menu Membres» apparaît. Cliquez sur le lien  «Créer un article» pour afficher l\'éditeur de texte et d\'insertion de médias.</p><p>Pour enregistrer l\'article, vous devez spécifier à quelle catégorie il appartient ainsi que son statut de publication. Pour le modifier, cliquez sur l\'icône d\'édition <img src=\"media/system/images/edit.png\" border=\"0\" alt=\"Editer un article\" width=\"18\" height=\"18\" style=\"vertical-align: middle;\" />.</p><p>Vous pouvez travailler sur des articles non publiés ou de publication programmée dans le temps et, dans le cadre d\'un travail collaboratif, ne les rendre visibles qu\'à un groupe d\'utilisateurs donnés avant de les rendre publics.</p><h3>En savoir plus</h3><p>Une pleine utilisation de Joomla requiert certaines connaissances approfondies que vous pourrez acquérir dans la <a href=\"http://docs.joomla.org/\" target=\"_blank\">documentation officielle de Joomla</a> ou sur le <a href=\"http://aide.joomla.fr/\" target=\"_blank\">site d\'aide francophone</a> et dans le <a href=\"http://forum.joomla.org/\" target=\"_blank\">forum officiel</a> ou le <a href=\"http://forum.joomla.fr/\" target=\"_blank\">forum francophone</a>.</p>','',1,2,'2013-11-16 00:00:00',28,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-11-16 00:00:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `bak_icng4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_content_frontpage`
--

DROP TABLE IF EXISTS `bak_icng4_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_content_frontpage`
--

LOCK TABLES `bak_icng4_content_frontpage` WRITE;
/*!40000 ALTER TABLE `bak_icng4_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_content_rating`
--

DROP TABLE IF EXISTS `bak_icng4_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_content_rating`
--

LOCK TABLES `bak_icng4_content_rating` WRITE;
/*!40000 ALTER TABLE `bak_icng4_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_content_types`
--

DROP TABLE IF EXISTS `bak_icng4_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_content_types`
--

LOCK TABLES `bak_icng4_content_types` WRITE;
/*!40000 ALTER TABLE `bak_icng4_content_types` DISABLE KEYS */;
INSERT INTO `bak_icng4_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `bak_icng4_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_contentitem_tag_map`
--

DROP TABLE IF EXISTS `bak_icng4_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_contentitem_tag_map`
--

LOCK TABLES `bak_icng4_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `bak_icng4_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `bak_icng4_contentitem_tag_map` VALUES ('com_content.article',1,1,2,'2013-11-16 06:00:00',1);
/*!40000 ALTER TABLE `bak_icng4_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_core_log_searches`
--

DROP TABLE IF EXISTS `bak_icng4_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_core_log_searches`
--

LOCK TABLES `bak_icng4_core_log_searches` WRITE;
/*!40000 ALTER TABLE `bak_icng4_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_extensions`
--

DROP TABLE IF EXISTS `bak_icng4_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=803 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_extensions`
--

LOCK TABLES `bak_icng4_extensions` WRITE;
/*!40000 ALTER TABLE `bak_icng4_extensions` DISABLE KEYS */;
INSERT INTO `bak_icng4_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"fr-FR\",\"site\":\"fr-FR\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(104,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.18.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2016\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.4.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','','','',0,'0000-00-00 00:00:00',0,0),(453,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(455,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(602,'French (fr-FR)','language','fr-FR','',0,1,0,0,'{\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/www.joomla.fr\",\"version\":\"3.6.4.1\",\"description\":\"French site language for Joomla 3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(603,'French (FR)','language','fr-FR','',1,1,0,0,'{\"name\":\"French (FR)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/www.joomla.fr\",\"version\":\"3.6.4.1\",\"description\":\"French administrator language for Joomla 3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(605,'French Language pack','package','pkg_fr-FR','',0,1,1,0,'{\"name\":\"French Language pack\",\"type\":\"package\",\"creationDate\":\"22\\/10\\/2016\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2016 Joomla.fr and Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/joomla.fr\",\"version\":\"3.6.4.1\",\"description\":\"<div style=\\\"text-align:left;\\\">\\n<h3>Joomla! 3.6.4 Full French (fr-FR) Language Package - Version 3.6.4.1<\\/h3>\\n<h3>Paquet de langue Joomla! 3.6.4 fran\\u00e7ais (fr-FR) complet - Version 3.6.4.1<\\/h3>\\n<\\/div>\",\"group\":\"\",\"filename\":\"pkg_fr-FR\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `bak_icng4_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_filters`
--

DROP TABLE IF EXISTS `bak_icng4_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_filters`
--

LOCK TABLES `bak_icng4_finder_filters` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links`
--

LOCK TABLES `bak_icng4_finder_links` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms0`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms0`
--

LOCK TABLES `bak_icng4_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms1`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms1`
--

LOCK TABLES `bak_icng4_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms2`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms2`
--

LOCK TABLES `bak_icng4_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms3`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms3`
--

LOCK TABLES `bak_icng4_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms4`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms4`
--

LOCK TABLES `bak_icng4_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms5`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms5`
--

LOCK TABLES `bak_icng4_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms6`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms6`
--

LOCK TABLES `bak_icng4_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms7`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms7`
--

LOCK TABLES `bak_icng4_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms8`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms8`
--

LOCK TABLES `bak_icng4_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_terms9`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_terms9`
--

LOCK TABLES `bak_icng4_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_termsa`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_termsa`
--

LOCK TABLES `bak_icng4_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_termsb`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_termsb`
--

LOCK TABLES `bak_icng4_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_termsc`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_termsc`
--

LOCK TABLES `bak_icng4_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_termsd`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_termsd`
--

LOCK TABLES `bak_icng4_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_termse`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_termse`
--

LOCK TABLES `bak_icng4_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_links_termsf`
--

DROP TABLE IF EXISTS `bak_icng4_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_links_termsf`
--

LOCK TABLES `bak_icng4_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_taxonomy`
--

DROP TABLE IF EXISTS `bak_icng4_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_taxonomy`
--

LOCK TABLES `bak_icng4_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `bak_icng4_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `bak_icng4_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `bak_icng4_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_taxonomy_map`
--

LOCK TABLES `bak_icng4_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_terms`
--

DROP TABLE IF EXISTS `bak_icng4_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_terms`
--

LOCK TABLES `bak_icng4_finder_terms` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_terms_common`
--

DROP TABLE IF EXISTS `bak_icng4_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_terms_common`
--

LOCK TABLES `bak_icng4_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_terms_common` DISABLE KEYS */;
INSERT INTO `bak_icng4_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('alors','fr'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('au','fr'),('aucuns','fr'),('aussi','fr'),('autre','fr'),('avant','fr'),('avec','fr'),('avoir','fr'),('be','en'),('bon','fr'),('but','en'),('by','en'),('car','fr'),('ce','fr'),('cela','fr'),('ces','fr'),('ceux','fr'),('chaque','fr'),('ci','fr'),('comme','fr'),('comment','fr'),('dans','fr'),('début','fr'),('dedans','fr'),('dehors','fr'),('depuis','fr'),('des','fr'),('deux','fr'),('devrait','fr'),('doit','fr'),('donc','fr'),('dos','fr'),('droite','fr'),('du','fr'),('elle','fr'),('elles','fr'),('en','fr'),('encore','fr'),('essai','fr'),('est','fr'),('et','fr'),('eu','fr'),('fait','fr'),('faites','fr'),('fois','fr'),('font','fr'),('for','en'),('force','fr'),('from','en'),('get','en'),('go','en'),('haut','fr'),('hors','fr'),('how','en'),('ici','fr'),('if','en'),('il','fr'),('ils','fr'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('je','fr'),('juste','fr'),('la','fr'),('là','fr'),('le','fr'),('les','fr'),('leur','fr'),('ma','fr'),('maintenant','fr'),('mais','fr'),('me','en'),('même','fr'),('mes','fr'),('mine','fr'),('moins','fr'),('mon','fr'),('more','en'),('most','en'),('mot','fr'),('must','en'),('my','en'),('new','en'),('ni','fr'),('no','en'),('nommés','fr'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('notre','fr'),('nous','fr'),('nouveaux','fr'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('ou','fr'),('où','fr'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('par','fr'),('parce','fr'),('parole','fr'),('pas','fr'),('personnes','fr'),('peu','fr'),('peut','fr'),('pièce','fr'),('plupart','fr'),('pour','fr'),('pourquoi','fr'),('quand','fr'),('que','fr'),('quel','fr'),('quelle','fr'),('quelles','fr'),('quels','fr'),('qui','fr'),('sa','fr'),('sans','fr'),('ses','fr'),('seulement','fr'),('she','en'),('should','en'),('si','fr'),('sien','fr'),('small','en'),('so','en'),('some','en'),('son','fr'),('sont','fr'),('sous','fr'),('soyez','fr'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `bak_icng4_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_tokens`
--

DROP TABLE IF EXISTS `bak_icng4_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_tokens`
--

LOCK TABLES `bak_icng4_finder_tokens` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `bak_icng4_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_tokens_aggregate`
--

LOCK TABLES `bak_icng4_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_finder_types`
--

DROP TABLE IF EXISTS `bak_icng4_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_finder_types`
--

LOCK TABLES `bak_icng4_finder_types` WRITE;
/*!40000 ALTER TABLE `bak_icng4_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_languages`
--

DROP TABLE IF EXISTS `bak_icng4_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_languages`
--

LOCK TABLES `bak_icng4_languages` WRITE;
/*!40000 ALTER TABLE `bak_icng4_languages` DISABLE KEYS */;
INSERT INTO `bak_icng4_languages` VALUES (1,0,'en-GB','English (UK)','English (UK)','en','en_gb','','','','',1,1,2),(2,0,'fr-FR','Français (FR)','Français (FR)','fr','fr','','','','',1,1,1);
/*!40000 ALTER TABLE `bak_icng4_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_menu`
--

DROP TABLE IF EXISTS `bak_icng4_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_menu`
--

LOCK TABLES `bak_icng4_menu` WRITE;
/*!40000 ALTER TABLE `bak_icng4_menu` DISABLE KEYS */;
INSERT INTO `bak_icng4_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,55,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',23,28,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',24,25,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',26,27,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',29,34,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',30,31,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',35,40,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',36,37,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',38,39,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',43,44,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',45,46,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',47,48,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',49,50,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',51,52,0,'*',1),(101,'mainmenu','Accueil','accueil','','accueil','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,54,1,'*',0),(102,'usermenu','Votre profil','votre-profil','','votre-profil','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,25,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,0,'*',0),(103,'usermenu','Administration','2013-11-16-23-26-41','','2013-11-16-23-26-41','administrator','url',1,1,1,0,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',17,18,0,'*',0),(104,'usermenu','Créer un article','creer-un-article','','creer-un-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,'0000-00-00 00:00:00',0,3,'',0,'{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(106,'usermenu','Paramètres du template','parametres-du-template','','parametres-du-template','index.php?option=com_config&view=templates&controller=config.display.templates','component',1,1,1,23,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',19,20,0,'*',0),(107,'usermenu','Paramètres du site','parametre-du-site','','parametre-du-site','index.php?option=com_config&view=config&controller=config.display.config','component',1,1,1,23,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',21,22,0,'*',0);
/*!40000 ALTER TABLE `bak_icng4_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_menu_types`
--

DROP TABLE IF EXISTS `bak_icng4_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_menu_types`
--

LOCK TABLES `bak_icng4_menu_types` WRITE;
/*!40000 ALTER TABLE `bak_icng4_menu_types` DISABLE KEYS */;
INSERT INTO `bak_icng4_menu_types` VALUES (1,0,'mainmenu','Menu principal','Le menu principal du site'),(2,0,'usermenu','Menu utilisateur','Menu pour les utilisateurs connectés');
/*!40000 ALTER TABLE `bak_icng4_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_messages`
--

DROP TABLE IF EXISTS `bak_icng4_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_messages`
--

LOCK TABLES `bak_icng4_messages` WRITE;
/*!40000 ALTER TABLE `bak_icng4_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_messages_cfg`
--

DROP TABLE IF EXISTS `bak_icng4_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_messages_cfg`
--

LOCK TABLES `bak_icng4_messages_cfg` WRITE;
/*!40000 ALTER TABLE `bak_icng4_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_modules`
--

DROP TABLE IF EXISTS `bak_icng4_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_modules`
--

LOCK TABLES `bak_icng4_modules` WRITE;
/*!40000 ALTER TABLE `bak_icng4_modules` DISABLE KEYS */;
INSERT INTO `bak_icng4_modules` VALUES (1,39,'Menu principal','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Connexion','','',1,'connexion',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Article populaire','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,42,'Article ajoutés récemments','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,43,'Barre d\'outils','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Utilisateurs connectés','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Connexion','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Fil de navigation','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Statut multilingue','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Version de Joomla','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,54,'Tags populaires','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_tags_popular',1,1,'{\"maximum\":\"10\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,55,'Informations du site','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats_admin',3,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(89,56,'Mises à jours','','',0,'postinstall',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(90,57,'Derniers articles','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,58,'Menu utilisateur','','',3,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"usermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,59,'Images aléatoire','','<p><img src=\"images/headers/blue-flower.jpg\" alt=\"Blue Flower\" /></p>',0,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,60,'Recherche','','',0,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `bak_icng4_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_modules_menu`
--

DROP TABLE IF EXISTS `bak_icng4_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_modules_menu`
--

LOCK TABLES `bak_icng4_modules_menu` WRITE;
/*!40000 ALTER TABLE `bak_icng4_modules_menu` DISABLE KEYS */;
INSERT INTO `bak_icng4_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0);
/*!40000 ALTER TABLE `bak_icng4_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_newsfeeds`
--

DROP TABLE IF EXISTS `bak_icng4_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_newsfeeds`
--

LOCK TABLES `bak_icng4_newsfeeds` WRITE;
/*!40000 ALTER TABLE `bak_icng4_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_overrider`
--

DROP TABLE IF EXISTS `bak_icng4_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_overrider`
--

LOCK TABLES `bak_icng4_overrider` WRITE;
/*!40000 ALTER TABLE `bak_icng4_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_postinstall_messages`
--

DROP TABLE IF EXISTS `bak_icng4_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_postinstall_messages`
--

LOCK TABLES `bak_icng4_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `bak_icng4_postinstall_messages` DISABLE KEYS */;
INSERT INTO `bak_icng4_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1);
/*!40000 ALTER TABLE `bak_icng4_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_redirect_links`
--

DROP TABLE IF EXISTS `bak_icng4_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_redirect_links`
--

LOCK TABLES `bak_icng4_redirect_links` WRITE;
/*!40000 ALTER TABLE `bak_icng4_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_schemas`
--

DROP TABLE IF EXISTS `bak_icng4_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_schemas`
--

LOCK TABLES `bak_icng4_schemas` WRITE;
/*!40000 ALTER TABLE `bak_icng4_schemas` DISABLE KEYS */;
INSERT INTO `bak_icng4_schemas` VALUES (700,'3.6.3-2016-08-16');
/*!40000 ALTER TABLE `bak_icng4_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_session`
--

DROP TABLE IF EXISTS `bak_icng4_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_session`
--

LOCK TABLES `bak_icng4_session` WRITE;
/*!40000 ALTER TABLE `bak_icng4_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_tags`
--

DROP TABLE IF EXISTS `bak_icng4_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_tags`
--

LOCK TABLES `bak_icng4_tags` WRITE;
/*!40000 ALTER TABLE `bak_icng4_tags` DISABLE KEYS */;
INSERT INTO `bak_icng4_tags` VALUES (1,0,0,3,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',28,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,1,2,1,'joomla','Joomla','joomla','','',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',28,'2013-11-16 00:00:00','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `bak_icng4_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_template_styles`
--

DROP TABLE IF EXISTS `bak_icng4_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_template_styles`
--

LOCK TABLES `bak_icng4_template_styles` WRITE;
/*!40000 ALTER TABLE `bak_icng4_template_styles` DISABLE KEYS */;
INSERT INTO `bak_icng4_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `bak_icng4_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_ucm_base`
--

DROP TABLE IF EXISTS `bak_icng4_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_ucm_base`
--

LOCK TABLES `bak_icng4_ucm_base` WRITE;
/*!40000 ALTER TABLE `bak_icng4_ucm_base` DISABLE KEYS */;
INSERT INTO `bak_icng4_ucm_base` VALUES (1,1,1,0);
/*!40000 ALTER TABLE `bak_icng4_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_ucm_content`
--

DROP TABLE IF EXISTS `bak_icng4_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_ucm_content`
--

LOCK TABLES `bak_icng4_ucm_content` WRITE;
/*!40000 ALTER TABLE `bak_icng4_ucm_content` DISABLE KEYS */;
INSERT INTO `bak_icng4_ucm_content` VALUES (1,'com_content.article','Comment débuter ?','comment-debuter','<p>La création d\'un site web avec Joomla est simple, le déploiement de ce site exemple vous y aidera. <br />Les quelques principes de base présentés ci-dessous vous guideront dans la compréhension de ce logiciel.</p><h3>Qu\'est-ce qu\'un Système de Gestion de Contenu ?</h3><p>Un   système de gestion de contenu (SGC ou CMS de l\'anglais Content  Management System) est un logiciel qui vous permet de créer  et gérer  des pages Web facilement, séparant la création des contenus de la  gestion technique nécessaire à une diffusion sur le web.</p><p>Le  contenu rédactionnel est stocké et restitué par une base de données, l\'aspect (police, taille, couleur, emplacement, etc.) est géré par un  template (habillage du site). Le logiciel Joomla permet d\'unir ces deux  structures de manière conviviale et de les rendre accessibles au plus  grand nombre d\'utilisateurs.</p><h3>Deux interfaces</h3><p>Un site Joomla est structuré en deux parties distinctes : la partie visible du site appelée «Frontal» de <em>Frontend</em> en anglais et, la partie d\'administration pure appelée «Administration» de <em>Administrator</em>.</p><h3>Administration</h3><p>Vous pouvez accéder à l\'administration en cliquant sur le sur le lien «Administration» présent dans le module de menu «Menu membre» visible après vous être connecté sur le site ou, en  ajoutant  <em>/administrator</em> dans l\'URL après le nom de domaine (exemple : www.mon-domaine.com/administrator).</p><p>Utilisez le nom d\'utilisateur et le mot de passe créés lors de l\'installation de Joomla.</p><h3>Frontal</h3><p>Si votre profil possède les droits suffisants, vous pouvez créer des articles et les éditer depuis l\'interface frontale du site.</p><p>Connectez-vous par le module «Connexion» en utilisant le nom d\'utilisateur et le mot de passe créés lors de l\'installation de Joomla.</p><h3>Créer un article en frontal</h3><p>Lorsque vous êtes connecté, un nouveau menu nommé «Menu Membres» apparaît. Cliquez sur le lien  «Créer un article» pour afficher l\'éditeur de texte et d\'insertion de médias.</p><p>Pour enregistrer l\'article, vous devez spécifier à quelle catégorie il appartient ainsi que son statut de publication. Pour le modifier, cliquez sur l\'icône d\'édition <img src=\"media/system/images/edit.png\" border=\"0\" alt=\"Editer un article\" width=\"18\" height=\"18\" style=\"vertical-align: middle;\" />.</p><p>Vous pouvez travailler sur des articles non publiés ou de publication programmée dans le temps et, dans le cadre d\'un travail collaboratif, ne les rendre visibles qu\'à un groupe d\'utilisateurs donnés avant de les rendre publics.</p><h3>En savoir plus</h3><p>Une pleine utilisation de Joomla requiert certaines connaissances approfondies que vous pourrez acquérir dans la <a href=\"http://docs.joomla.org/\" target=\"_blank\">documentation officielle de Joomla</a> ou sur le <a href=\"http://aide.joomla.fr/\" target=\"_blank\">site d\'aide francophone</a> et dans le <a href=\"http://forum.joomla.org/\" target=\"_blank\">forum officiel</a> ou le <a href=\"http://forum.joomla.fr/\" target=\"_blank\">forum francophone</a>.</p>',1,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',28,'','2013-11-16 00:00:00',0,'0000-00-00 00:00:00','*','2013-11-16 00:00:00','0000-00-00 00:00:00',1,62,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,1,0,'','',2,'',1);
/*!40000 ALTER TABLE `bak_icng4_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_ucm_history`
--

DROP TABLE IF EXISTS `bak_icng4_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_ucm_history`
--

LOCK TABLES `bak_icng4_ucm_history` WRITE;
/*!40000 ALTER TABLE `bak_icng4_ucm_history` DISABLE KEYS */;
INSERT INTO `bak_icng4_ucm_history` VALUES (1,2,10,'Initial content','2013-11-16 00:00:00',28,558,'be28228b479aa67bad3dc1db2975232a033d5f0f','{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0),(2,1,1,'Initial content','2013-11-16 00:00:00',28,4539,'4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f','{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"http:\\/\\/forum.joomla.org\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `bak_icng4_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_update_sites`
--

DROP TABLE IF EXISTS `bak_icng4_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_update_sites`
--

LOCK TABLES `bak_icng4_update_sites` WRITE;
/*!40000 ALTER TABLE `bak_icng4_update_sites` DISABLE KEYS */;
INSERT INTO `bak_icng4_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,0,''),(2,'Joomla! Extension Directory','collection','https://update.joomla.org/jed/list.xml',1,0,''),(3,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,0,''),(4,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,'');
/*!40000 ALTER TABLE `bak_icng4_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_update_sites_extensions`
--

DROP TABLE IF EXISTS `bak_icng4_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_update_sites_extensions`
--

LOCK TABLES `bak_icng4_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `bak_icng4_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `bak_icng4_update_sites_extensions` VALUES (1,700),(2,700),(3,802),(4,28),(5,605);
/*!40000 ALTER TABLE `bak_icng4_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_updates`
--

DROP TABLE IF EXISTS `bak_icng4_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_updates`
--

LOCK TABLES `bak_icng4_updates` WRITE;
/*!40000 ALTER TABLE `bak_icng4_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_user_keys`
--

DROP TABLE IF EXISTS `bak_icng4_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_user_keys`
--

LOCK TABLES `bak_icng4_user_keys` WRITE;
/*!40000 ALTER TABLE `bak_icng4_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_user_notes`
--

DROP TABLE IF EXISTS `bak_icng4_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_user_notes`
--

LOCK TABLES `bak_icng4_user_notes` WRITE;
/*!40000 ALTER TABLE `bak_icng4_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_user_profiles`
--

DROP TABLE IF EXISTS `bak_icng4_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_user_profiles`
--

LOCK TABLES `bak_icng4_user_profiles` WRITE;
/*!40000 ALTER TABLE `bak_icng4_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `bak_icng4_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_user_usergroup_map`
--

DROP TABLE IF EXISTS `bak_icng4_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_user_usergroup_map`
--

LOCK TABLES `bak_icng4_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `bak_icng4_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `bak_icng4_user_usergroup_map` VALUES (28,8);
/*!40000 ALTER TABLE `bak_icng4_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_usergroups`
--

DROP TABLE IF EXISTS `bak_icng4_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_usergroups`
--

LOCK TABLES `bak_icng4_usergroups` WRITE;
/*!40000 ALTER TABLE `bak_icng4_usergroups` DISABLE KEYS */;
INSERT INTO `bak_icng4_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Enregistré'),(3,2,9,14,'Auteur'),(4,3,10,13,'Rédacteur'),(5,4,11,12,'Validateur'),(6,1,4,7,'Gestionnaire'),(7,6,5,6,'Administrateur'),(8,1,16,17,'Super Utilisateur'),(9,1,2,3,'Invité');
/*!40000 ALTER TABLE `bak_icng4_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_users`
--

DROP TABLE IF EXISTS `bak_icng4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_users`
--

LOCK TABLES `bak_icng4_users` WRITE;
/*!40000 ALTER TABLE `bak_icng4_users` DISABLE KEYS */;
INSERT INTO `bak_icng4_users` VALUES (28,'Super Utilisateur','kvasseur','vasseur.isn@gmail.com','$2y$10$LnhgI1lrfh/3XL8ek59oC.SqU/jbjSVJ2TcnIELHwUUf86usEZ2MW',0,1,'2016-12-13 11:14:43','0000-00-00 00:00:00','0','','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `bak_icng4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_utf8_conversion`
--

DROP TABLE IF EXISTS `bak_icng4_utf8_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_utf8_conversion`
--

LOCK TABLES `bak_icng4_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `bak_icng4_utf8_conversion` DISABLE KEYS */;
INSERT INTO `bak_icng4_utf8_conversion` VALUES (2);
/*!40000 ALTER TABLE `bak_icng4_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bak_icng4_viewlevels`
--

DROP TABLE IF EXISTS `bak_icng4_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bak_icng4_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bak_icng4_viewlevels`
--

LOCK TABLES `bak_icng4_viewlevels` WRITE;
/*!40000 ALTER TABLE `bak_icng4_viewlevels` DISABLE KEYS */;
INSERT INTO `bak_icng4_viewlevels` VALUES (1,'Accès public',0,'[1]'),(2,'Accès enregistré',2,'[6,2,8]'),(3,'Accès spécial',3,'[6,3,8]'),(5,'Accès invité',1,'[9]'),(6,'Accès super utilisateur',4,'[8]');
/*!40000 ALTER TABLE `bak_icng4_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `game_winner` varchar(20) DEFAULT NULL,
  `game_loser` varchar(20) DEFAULT NULL,
  `game_time` int(4) DEFAULT NULL,
  `game_btoken` int(2) DEFAULT NULL,
  `game_wtoken` int(2) DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_assets`
--

DROP TABLE IF EXISTS `icng4_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_assets`
--

LOCK TABLES `icng4_assets` WRITE;
/*!40000 ALTER TABLE `icng4_assets` DISABLE KEYS */;
INSERT INTO `icng4_assets` VALUES (1,0,0,157,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1,\"1\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,30,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,31,32,1,'com_cpanel','com_cpanel','{}'),(10,1,33,34,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,35,36,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,37,38,1,'com_login','com_login','{}'),(13,1,39,40,1,'com_mailto','com_mailto','{}'),(14,1,41,42,1,'com_massmail','com_massmail','{}'),(15,1,43,44,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,45,46,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,47,48,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,49,124,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,125,128,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,129,130,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,131,132,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,133,134,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,135,136,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,137,140,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,141,142,1,'com_wrapper','com_wrapper','{}'),(27,8,18,29,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,126,127,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,138,139,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,143,144,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,145,146,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,147,148,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,149,150,1,'com_contenthistory','com_contenthistory','{}'),(37,1,151,152,1,'com_ajax','com_ajax','{}'),(38,1,153,154,1,'com_postinstall','com_postinstall','{}'),(39,18,50,51,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,52,53,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,54,55,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,56,57,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,58,59,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,60,61,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,62,63,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,64,65,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,66,67,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,68,69,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,70,71,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,72,73,2,'com_modules.module.16','Connexion','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(51,18,74,75,2,'com_modules.module.17','Fil de navigation','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(52,18,76,77,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,78,79,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,18,80,81,2,'com_modules.module.87','Popular Tags','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(55,18,82,83,2,'com_modules.module.88','Site Information','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,18,84,85,2,'com_modules.module.89','Release News','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(57,18,86,87,2,'com_modules.module.90','Latest Articles','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(58,18,88,89,2,'com_modules.module.91','Menu utilisateur','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(59,18,90,91,2,'com_modules.module.92','Images aléatoire','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"module.edit.frontend\":[]}'),(60,18,92,93,2,'com_modules.module.93','Search','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(61,27,19,20,3,'com_content.article.1','Bienvenue!','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(62,1,155,156,1,'#__ucm_content.1','#__ucm_content.1','[]'),(63,18,94,95,2,'com_modules.module.94','BT Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(64,18,96,97,2,'com_modules.module.95','connexion','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(65,27,21,22,3,'com_content.article.2','Espace jeu','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(66,18,98,99,2,'com_modules.module.96','Réseaux sociaux','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(68,18,100,101,2,'com_modules.module.97','Réseaux sociaux','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(69,18,102,103,2,'com_modules.module.98','Sensomedia Social Bookmarks','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(70,18,104,105,2,'com_modules.module.99','mod_jbox_addthis','{}'),(71,18,106,107,2,'com_modules.module.100','Réseaux sociaux','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(72,18,108,109,2,'com_modules.module.101','RSSocial!','{}'),(73,18,110,111,2,'com_modules.module.102','Facebook','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(74,18,112,113,2,'com_modules.module.103','Réseaux sociaux','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(75,18,114,115,2,'com_modules.module.104','Réseaux sociaux','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(76,18,116,117,2,'com_modules.module.105','Réseaux sociaux','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(77,18,118,119,2,'com_modules.module.106','HD-Background Selector','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(78,27,23,24,3,'com_content.article.3','Administration','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(79,18,120,121,2,'com_modules.module.107','Langues','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(80,27,25,26,3,'com_content.article.4','Classement','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(81,27,27,28,3,'com_content.article.5','Règles','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(82,18,122,123,2,'com_modules.module.108','Recherche classement','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}');
/*!40000 ALTER TABLE `icng4_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_associations`
--

DROP TABLE IF EXISTS `icng4_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_associations`
--

LOCK TABLES `icng4_associations` WRITE;
/*!40000 ALTER TABLE `icng4_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_banner_clients`
--

DROP TABLE IF EXISTS `icng4_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_banner_clients`
--

LOCK TABLES `icng4_banner_clients` WRITE;
/*!40000 ALTER TABLE `icng4_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_banner_tracks`
--

DROP TABLE IF EXISTS `icng4_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_banner_tracks`
--

LOCK TABLES `icng4_banner_tracks` WRITE;
/*!40000 ALTER TABLE `icng4_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_banners`
--

DROP TABLE IF EXISTS `icng4_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_banners`
--

LOCK TABLES `icng4_banners` WRITE;
/*!40000 ALTER TABLE `icng4_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_categories`
--

DROP TABLE IF EXISTS `icng4_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_categories`
--

LOCK TABLES `icng4_categories` WRITE;
/*!40000 ALTER TABLE `icng4_categories` DISABLE KEYS */;
INSERT INTO `icng4_categories` VALUES (1,0,0,0,11,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',891,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'non-categorise','com_content','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',891,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'non-categorise','com_banners','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',891,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'non-categorise','com_contact','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',891,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'non-categorise','com_newsfeeds','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',891,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,9,10,1,'non-categorise','com_users','Non catégorisé','non-categorise','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',891,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `icng4_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_contact_details`
--

DROP TABLE IF EXISTS `icng4_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_contact_details`
--

LOCK TABLES `icng4_contact_details` WRITE;
/*!40000 ALTER TABLE `icng4_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_content`
--

DROP TABLE IF EXISTS `icng4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_content`
--

LOCK TABLES `icng4_content` WRITE;
/*!40000 ALTER TABLE `icng4_content` DISABLE KEYS */;
INSERT INTO `icng4_content` VALUES (1,61,'Bienvenue!','comment-debuter','','',1,2,'2013-11-16 00:00:00',891,'','2016-12-15 08:06:14',891,0,'0000-00-00 00:00:00','2013-11-16 00:00:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,4,'','',1,634,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,65,'Espace jeu','espace-jeu','<table style=\"height: 80px; width: 80px; border-color: black; background-color(odd): pink; margin-left: auto; margin-right: auto;\" border=\"1\" cellpadding=\"20\" cellspacing=\"0\"><caption>JEU DE DAMES</caption>\r\n<tbody class=\"miseEnFormePlateau\">\r\n<tr>\r\n<td data-line=\"0\" data-column=\"0\">0</td>\r\n<td id=\"test\" data-line=\"0\" data-column=\"1\"></td>\r\n<td data-line=\"0\" data-column=\"2\"></td>\r\n<td data-line=\"0\" data-column=\"3\"></td>\r\n<td data-line=\"0\" data-column=\"4\"></td>\r\n<td data-line=\"0\" data-column=\"5\"></td>\r\n<td data-line=\"0\" data-column=\"6\"></td>\r\n<td data-line=\"0\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"1\" data-column=\"0\"></td>\r\n<td data-line=\"1\" data-column=\"1\"></td>\r\n<td data-line=\"1\" data-column=\"2\"></td>\r\n<td data-line=\"1\" data-column=\"3\"></td>\r\n<td data-line=\"1\" data-column=\"4\"></td>\r\n<td data-line=\"1\" data-column=\"5\"></td>\r\n<td data-line=\"1\" data-column=\"6\"></td>\r\n<td data-line=\"1\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"2\" data-column=\"0\"></td>\r\n<td data-line=\"2\" data-column=\"1\"></td>\r\n<td data-line=\"2\" data-column=\"2\"></td>\r\n<td data-line=\"2\" data-column=\"3\"></td>\r\n<td data-line=\"2\" data-column=\"4\"></td>\r\n<td data-line=\"2\" data-column=\"5\"></td>\r\n<td data-line=\"2\" data-column=\"6\"></td>\r\n<td data-line=\"2\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"3\" data-column=\"0\"></td>\r\n<td data-line=\"3\" data-column=\"1\"></td>\r\n<td data-line=\"3\" data-column=\"2\"></td>\r\n<td data-line=\"3\" data-column=\"3\"></td>\r\n<td data-line=\"3\" data-column=\"4\"></td>\r\n<td data-line=\"3\" data-column=\"5\"></td>\r\n<td data-line=\"3\" data-column=\"6\"></td>\r\n<td data-line=\"3\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"4\" data-column=\"0\"></td>\r\n<td data-line=\"4\" data-column=\"1\"></td>\r\n<td data-line=\"4\" data-column=\"2\"></td>\r\n<td data-line=\"4\" data-column=\"3\"></td>\r\n<td data-line=\"4\" data-column=\"4\"></td>\r\n<td data-line=\"4\" data-column=\"5\"></td>\r\n<td data-line=\"4\" data-column=\"6\"></td>\r\n<td data-line=\"4\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"5\" data-column=\"0\"></td>\r\n<td data-line=\"5\" data-column=\"1\"></td>\r\n<td data-line=\"5\" data-column=\"2\"></td>\r\n<td data-line=\"5\" data-column=\"3\"></td>\r\n<td data-line=\"5\" data-column=\"4\"></td>\r\n<td data-line=\"5\" data-column=\"5\"></td>\r\n<td data-line=\"5\" data-column=\"6\"></td>\r\n<td data-line=\"5\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"6\" data-column=\"0\"></td>\r\n<td data-line=\"6\" data-column=\"1\"></td>\r\n<td data-line=\"6\" data-column=\"2\"></td>\r\n<td data-line=\"6\" data-column=\"3\"></td>\r\n<td data-line=\"6\" data-column=\"4\"></td>\r\n<td data-line=\"6\" data-column=\"5\"></td>\r\n<td data-line=\"6\" data-column=\"6\"></td>\r\n<td data-line=\"6\" data-column=\"7\"></td>\r\n</tr>\r\n<tr>\r\n<td data-line=\"7\" data-column=\"0\"></td>\r\n<td data-line=\"7\" data-column=\"1\"></td>\r\n<td data-line=\"7\" data-column=\"2\"></td>\r\n<td data-line=\"7\" data-column=\"3\"></td>\r\n<td data-line=\"7\" data-column=\"4\"></td>\r\n<td data-line=\"7\" data-column=\"5\"></td>\r\n<td data-line=\"7\" data-column=\"6\"></td>\r\n<td data-line=\"7\" data-column=\"7\"></td>\r\n</tr>\r\n</tbody>\r\n</table>','',1,2,'2016-12-14 08:59:24',891,'','2016-12-15 12:18:03',891,0,'0000-00-00 00:00:00','2016-12-14 08:59:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',17,3,'','',1,294,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,78,'Administration','administration','<p>Partie admin</p>','',1,2,'2016-12-15 08:15:45',891,'','2016-12-15 08:18:41',891,0,'0000-00-00 00:00:00','2016-12-15 08:15:45','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"1\",\"link_titles\":\"\",\"show_tags\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',5,2,'','',6,33,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,80,'Classement','classement','{source}<span style=\"font-family: courier new, courier, monospace;\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\"/site_projet/projet_GAL_groupe2/media/sourcerer/images/tab.png\"><img src=\"/site_projet/projet_GAL_groupe2/media/sourcerer/images/tab.png\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users order by user_win desc\');<br>?&gt;<br><br>&lt;table class=\"miseEnFormeClassement\"&gt;<br>&lt;tr&gt;<br><img src=\"/site_projet/projet_GAL_groupe2/media/sourcerer/images/tab.png\">	&lt;th&gt;name&lt;/th&gt;<br><img src=\"/site_projet/projet_GAL_groupe2/media/sourcerer/images/tab.png\">&lt;th&gt;username&lt;/th&gt;<br><img src=\"/site_projet/projet_GAL_groupe2/media/sourcerer/images/tab.png\">&lt;th&gt;user_win&lt;/th&gt;<br>&lt;/tr&gt;<br><img src=\"/site_projet/projet_GAL_groupe2/media/sourcerer/images/tab.png\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'name\'];?&gt;&lt;/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;/td&gt;<br>&lt;/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;/table&gt;<br></span>{/source}<br>','',1,2,'2016-12-15 09:16:12',891,'','2016-12-15 12:47:46',891,0,'0000-00-00 00:00:00','2016-12-15 09:16:12','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',80,1,'','',1,253,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(5,81,'Règles','regles','<h1>Jeu de Dames (Variante)</h1>\r\n<h2>Règles du jeu</h2>\r\n<p></p>\r\n<p align=\"left\"><strong>Le plateau :</strong></p>\r\n<p></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Le jeu se déroule sur un plateau de 8 cases sur 8.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Les deux joueurs possèdent respectivement 16 pions noirs et blancs.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Sur cette variante, les premières et dernières rangées du plateau de jeu sont laissées vides .</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple de plateau :</em></p>\r\n<p><img src=\"images/regles/1.png\" /></p>\r\n<p align=\"left\"></p>\r\n<p><strong>But du jeu :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Pour pouvoir gagner une partie, le joueur doit réussir à capturer tous les pions de l\'adversaire</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p><em>Exemple:</em></p>\r\n<p><img src=\"images/regles/2.png\" /></p>\r\n<p></p>\r\n<p></p>\r\n<p align=\"left\"><strong>Déroulement d\'une partie :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Le joueur ayant les pions blancs commencent toujours la partie.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">À chaque tour de jeu, le joueur peut effectuer un mouvement parmi les suivants :</p>\r\n<ul>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Il peut déplacer un pion (voir fiche déplacement des pions)</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Il peut déplacer une dame (voir fiche déplacement des dames)</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Il peut capturer un pion adverse selon certaines conditions de capture.</p>\r\n</li>\r\n</ul>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple :</em></p>\r\n<p><img src=\"images/regles/3.png\" /></p>\r\n<p></p>\r\n<p align=\"left\"><strong> Déplacements et actions d\'un pion :</strong></p>\r\n<p></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Un pion peut se déplacer d\'une seule case à l\'horizontale ou à la verticale.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Un pion ne peut revenir en arrière.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">La capture d\'un pion adverse se fait via un saut sur la case qui se situe derrière le pion adverse.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Pour devenir une Dame, le joueur doit amener son pion à la dernière ligne en face de son camp.</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple :</em></p>\r\n<p></p>\r\n<p></p>\r\n<p><img src=\"images/regles/4.png\" /></p>\r\n<p></p>\r\n<p></p>\r\n<p align=\"left\"><strong>Déplacement et actions d\'une Dame :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Une Dame peut se déplacer à l\'horizontale et à la verticale sur n\'importe quelle case vide.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Une Dame peut capturer un pion adverse en sautant au-dessus et en atterrissant sur une case vide derrière celui-ci.</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple :</em></p>\r\n<p><img src=\"images/regles/5.png\" /></p>\r\n<p></p>\r\n<p align=\"left\"><strong>Obligations et Restrictions :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Si le joueur peut effectuer une capture, il est obligé de le faire et ne peut pas effectuer d\'autre mouvements.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Si le joueur est dans la possibilité de faire plusieurs saut avec différents pions, il peut choisir entre chaque capture.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Chaque pion capturé par les joueurs sont enlevés du plateau, laissant la case vide.</p>\r\n</li>\r\n</ul>\r\n<p align=\"left\"><strong>Promotion :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Quand un joueur arrive à faire atteindre la dernière ligne en face à l\'un de ses pions, il le transforme en Dame.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">S\'il ne reste qu\'un pion dans chaque camp, ces deux pions deviennent respectivement des Dames.</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p style=\"text-align: center;\"></p>\r\n<h1 style=\"text-align: center;\">Bon jeu!</h1>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>','',1,2,'2016-12-15 10:53:04',891,'','2016-12-16 08:37:35',891,0,'0000-00-00 00:00:00','2016-12-15 10:53:04','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',4,0,'','',1,32,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `icng4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_content_frontpage`
--

DROP TABLE IF EXISTS `icng4_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_content_frontpage`
--

LOCK TABLES `icng4_content_frontpage` WRITE;
/*!40000 ALTER TABLE `icng4_content_frontpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_content_rating`
--

DROP TABLE IF EXISTS `icng4_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_content_rating`
--

LOCK TABLES `icng4_content_rating` WRITE;
/*!40000 ALTER TABLE `icng4_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_content_types`
--

DROP TABLE IF EXISTS `icng4_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_content_types`
--

LOCK TABLES `icng4_content_types` WRITE;
/*!40000 ALTER TABLE `icng4_content_types` DISABLE KEYS */;
INSERT INTO `icng4_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `icng4_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_contentitem_tag_map`
--

DROP TABLE IF EXISTS `icng4_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_contentitem_tag_map`
--

LOCK TABLES `icng4_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `icng4_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `icng4_contentitem_tag_map` VALUES ('com_content.article',1,1,2,'2016-12-15 08:06:15',1);
/*!40000 ALTER TABLE `icng4_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_core_log_searches`
--

DROP TABLE IF EXISTS `icng4_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_core_log_searches`
--

LOCK TABLES `icng4_core_log_searches` WRITE;
/*!40000 ALTER TABLE `icng4_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_extensions`
--

DROP TABLE IF EXISTS `icng4_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10027 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_extensions`
--

LOCK TABLES `icng4_extensions` WRITE;
/*!40000 ALTER TABLE `icng4_extensions` DISABLE KEYS */;
INSERT INTO `icng4_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"fr-FR\",\"site\":\"fr-FR\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"1\",\"sendpassword\":\"1\",\"useractivation\":\"0\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"f64ad02c47f678456489cdce958bf82c\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,1,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',891,'2016-12-13 14:23:32',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.18.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',891,'2016-12-14 13:38:14',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2016\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.4.3\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"skin\":\"0\",\"skin_admin\":\"0\",\"mode\":\"1\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"lang_code\":\"en\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"1\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"code_sample\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',891,'2016-12-15 12:56:52',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,1,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1481876904}','','',0,'0000-00-00 00:00:00',0,0),(453,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":3,\"lastrun\":1481703960,\"unique_id\":\"3ba2d67488d605407f2a3bedc5a272e64d0d5f71\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),(455,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(602,'French (fr-FR)','language','fr-FR','',0,1,0,0,'{\"name\":\"French (fr-FR)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/www.joomla.fr\",\"version\":\"3.6.4.1\",\"description\":\"French site language for Joomla 3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(603,'French (FR)','language','fr-FR','',1,1,0,0,'{\"name\":\"French (FR)\",\"type\":\"language\",\"creationDate\":\"October 2016\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/www.joomla.fr\",\"version\":\"3.6.4.1\",\"description\":\"French administrator language for Joomla 3\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(605,'French Language pack','package','pkg_fr-FR','',0,1,1,0,'{\"name\":\"French Language pack\",\"type\":\"package\",\"creationDate\":\"22\\/10\\/2016\",\"author\":\"French translation team : joomla.fr\",\"copyright\":\"Copyright (C) 2005 - 2016 Joomla.fr and Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"traduction@joomla.fr\",\"authorUrl\":\"http:\\/\\/joomla.fr\",\"version\":\"3.6.4.1\",\"description\":\"<div style=\\\"text-align:left;\\\">\\n<h3>Joomla! 3.6.4 Full French (fr-FR) Language Package - Version 3.6.4.1<\\/h3>\\n<h3>Paquet de langue Joomla! 3.6.4 fran\\u00e7ais (fr-FR) complet - Version 3.6.4.1<\\/h3>\\n<\\/div>\",\"group\":\"\",\"filename\":\"pkg_fr-FR\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.4.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,'fevrier_07_2016_3','template','fevrier_07_2016_3','',0,1,1,0,'{\"name\":\"fevrier_07_2016_3\",\"type\":\"template\",\"creationDate\":\"2016-07-21\",\"author\":\"Pascal Riebel\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/joomla-themes.fr\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"siteTitle\":\"Headline\",\"siteSlogan\":\"Slogan\",\"logoFile\":\"\",\"logoLink\":\"\",\"contentImported\":\"0\",\"home\":\"\",\"blog\":\"\",\"sample_blog\":\"\",\"post\":\"\",\"page\":\"\",\"products\":\"\",\"productoverview\":\"\",\"shoppingcart\":\"\",\"default\":\"\",\"error404\":\"\",\"sampleData\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10002,'BT Login','module','mod_bt_login','',0,1,0,0,'{\"name\":\"BT Login\",\"type\":\"module\",\"creationDate\":\"April 2012\",\"author\":\"BowThemes\",\"copyright\":\"Copyright (C) 2012 Bowthemes. All rights reserved.\",\"authorEmail\":\"support@bowthemes.com\",\"authorUrl\":\"http:\\/\\/www.bowthemes.com\",\"version\":\"2.6.4\",\"description\":\"MOD_BT_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_bt_login\"}','{\"align_option\":\"right\",\"display_type\":\"0\",\"mouse_event\":\"click\",\"login\":\"\",\"logout\":\"\",\"name\":\"0\",\"logout_button\":\"1\",\"enabled_registration\":\"1\",\"enabled_registration_tab\":\"1\",\"enabled_login_tab\":\"1\",\"tag_login_modal\":\"\",\"tag_register_modal\":\"\",\"module_id\":\"19\",\"module_position\":\"0\",\"use_captcha\":\"1\",\"integrated_component\":\"\",\"module_option\":\"0\",\"link_option\":\"\",\"loadJquery\":\"auto\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10003,'Sensomedia Social Bookmarks','module','mod_sensomediabookmarks','',0,1,0,0,'{\"name\":\"Sensomedia Social Bookmarks\",\"type\":\"module\",\"creationDate\":\"2016-05-20\",\"author\":\"Fred Oliver\",\"copyright\":\"Copyright (c)2012-2016 Sensomedia\",\"authorEmail\":\"contact@sensomedia.com\",\"authorUrl\":\"www.sensomedia.com\",\"version\":\"3.4.2\",\"description\":\"\\n\\t\\t<h2>Thank you for using the module Sensomedia Social Bookmarks<\\/h2>\\n\\t\\t<p>Please feel free to contact us to report bugs : contact@sensomedia.com<\\/p>\\n\\t\",\"group\":\"\",\"filename\":\"mod_sensomediabookmarks\"}','{\"align\":\"left\",\"btnsize\":\"32\",\"roundcorners\":\"0\",\"url_facebook\":\"\",\"url_twitter\":\"\",\"url_googleplus\":\"\",\"url_linkedin\":\"\",\"url_viadeo\":\"\",\"url_flickr\":\"\",\"url_instagram\":\"\",\"url_pinterest\":\"\",\"url_scoopit\":\"\",\"url_myspace\":\"\",\"url_digg\":\"\",\"url_delicious\":\"\",\"url_stumbleupon\":\"\",\"url_reddit\":\"\",\"url_newsvine\":\"\",\"url_technorati\":\"\",\"url_soundcloud\":\"\",\"url_youtube\":\"\",\"url_dailymotion\":\"\",\"url_googlemaps\":\"\",\"url_email\":\"\",\"url_rss\":\"\",\"bgcolor\":\"#2a2a2a\",\"iconscolor\":\"white\",\"iconshcolor\":\"white\",\"color_facebook\":\"#3b5997\",\"color_twitter\":\"#33ccff\",\"color_googleplus\":\"#d34331\",\"color_linkedin\":\"#0274b3\",\"color_viadeo\":\"#f4982b\",\"color_flickr\":\"#ff0084\",\"color_innstagram\":\"#2e5d85\",\"color_pinterest\":\"#cc2127\",\"color_scoopit\":\"#90d303\",\"color_myspace\":\"#003399\",\"color_digg\":\"#1b5791\",\"color_delicious\":\"#0000ff\",\"color_stumbleupon\":\"#eb4823\",\"color_reddit\":\"#cee3f8\",\"color_newsvine\":\"#005221\",\"color_technorati\":\"#3bb001\",\"color_soundcloud\":\"#ff5100\",\"color_youtube\":\"#d52423\",\"color_dailymotion\":\"#005377\",\"color_googlemaps\":\"#f7584d\",\"color_email\":\"#6a91ac\",\"color_rss\":\"#ff9900\",\"likebox\":\"\",\"facebook_lang\":\"en_US\",\"likeboxtext\":\"Like me\",\"likeboxcolor\":\"#3b5997\",\"likeboxbg\":\"\",\"likeboxiconcolor\":\"white\",\"likeboxcolorscheme\":\"light\",\"likeboxposition\":\"after\",\"likeboxsize\":\"132\",\"likeboxoffset\":\"-28px 0 0 -60px\",\"text\":\"\",\"textformat\":\"h2\",\"textcolor\":\"\",\"textposition\":\"before\",\"jqueryload\":\"1\",\"customcss\":\"\",\"customcsshover\":\"\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10004,'mod_jbox_addthis','module','mod_jbox_addthis','',0,1,0,0,'{\"name\":\"mod_jbox_addthis\",\"type\":\"module\",\"creationDate\":\"February 2014\",\"author\":\"JBox Web\",\"copyright\":\"(C) 2014 JBox Web\",\"authorEmail\":\"jteam@jbox-web.com\",\"authorUrl\":\"www.jbox-web.com\",\"version\":\"1.0.1\",\"description\":\"MOD_JBOX_ADDTHIS_DESC\",\"group\":\"\",\"filename\":\"mod_jbox_addthis\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10005,'RSSocial!','module','mod_rssocial','',0,1,0,0,'{\"name\":\"RSSocial!\",\"type\":\"module\",\"creationDate\":\"May 2014\",\"author\":\"RSJoomla!\",\"copyright\":\"Copyright (C) 2014\",\"authorEmail\":\"supporttickets@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.1.2\",\"description\":\"<div id=\\\"installer-top\\\"><p>RSSocial! module for displaying links to most common social sites &shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;<\\/p><\\/div>\\n<div id=\\\"installer-left\\\">\\n\\t<img src=\\\"..\\/media\\/mod_rssocial\\/images\\/rssocial.png\\\" alt=\\\"RSSocial!\\\" \\/>\\n<\\/div>\\n<div id=\\\"installer-right\\\">\\n\\t<h3>RSSocial! v1.1.2 Changelog<\\/h3>\\n\\t<ul class=\\\"version-history\\\">\\n\\t\\t<li><span class=\\\"version-fixed\\\">FIX<\\/span> Tumblr sharing script was loaded despite the selected option.<\\/li>\\n\\t<\\/ul>\\n\\t<a class=\\\"tpl-button\\\" href=\\\"index.php?option=com_modules\\\">Start using RSSocial!<\\/a>\\n\\t<a class=\\\"tpl-button\\\" href=\\\"http:\\/\\/www.rsjoomla.com\\/support\\/documentation\\/view-knowledgebase\\/228-rssocial.html\\\" target=\\\"_blank\\\">Read the RSSocial! User Guide<\\/a>\\n\\t<a class=\\\"tpl-button\\\" href=\\\"http:\\/\\/www.rsjoomla.com\\/customer-support\\/tickets.html\\\" target=\\\"_blank\\\">Get Support!<\\/a>\\n<\\/div>\\n<div style=\\\"clear: both;\\\"><\\/div>\\n<style type=\\\"text\\/css\\\">\\n.version-history {\\n\\tmargin: 0 0 2em 0;\\n\\tpadding: 0;\\n\\tlist-style-type: none;\\n}\\n.version-history > li {\\n\\tmargin: 0 0 0.5em 0;\\n\\tpadding: 0 0 0 4em;\\n\\ttext-align:left;\\n\\tfont-weight:normal;\\n}\\n.version-new,\\n.version-fixed,\\n.version-upgraded {\\n\\tfloat: left;\\n\\tfont-size: 0.8em;\\n\\tmargin-left: -4.9em;\\n\\twidth: 4.5em;\\n\\tcolor: white;\\n\\ttext-align: center;\\n\\tfont-weight: bold;\\n\\ttext-transform: uppercase;\\n\\t-webkit-border-radius: 4px;\\n\\t-moz-border-radius: 4px;\\n\\tborder-radius: 4px;\\n}\\n\\n.version-new {\\n\\tbackground: #7dc35b;\\n}\\n.version-fixed {\\n\\tbackground: #e9a130;\\n}\\n.version-upgraded {\\n\\tbackground: #61b3de;\\n}\\n\\n.install-ok {\\n\\tbackground: #7dc35b;\\n\\tcolor: #fff;\\n\\tpadding: 3px;\\n}\\n\\n.install-not-ok {\\n\\tbackground: #E9452F;\\n\\tcolor: #fff;\\n\\tpadding: 3px;\\n}\\n\\n#installer-top {\\n\\ttext-align: left;\\n}\\n\\n#installer-left {\\n\\tfloat: left;\\n\\tpadding: 5px;\\n}\\n\\n#installer-right {\\n\\tfloat: left;\\n\\tmargin: 0 0 60px 30px;\\n}\\n#installer-right h3 {\\n\\ttext-align: left;\\n}\\n\\n.tpl-button {\\n\\tdisplay: inline-block;\\n\\tbackground: #459300 url(..\\/media\\/mod_rssocial\\/images\\/bg-button-green.gif) top left repeat-x !important;\\n\\tborder: 1px solid #459300 !important;\\n\\tpadding: 2px;\\n\\tcolor: #fff !important;\\n\\tcursor: pointer;\\n\\tmargin: 0;\\n\\t-webkit-border-radius: 5px;\\n    -moz-border-radius: 5px;\\n    border-radius: 5px;\\n\\ttext-decoration: none !important;\\n}\\n.tpl-button:hover {\\n\\ttext-decoration: underline !important;\\n}\\n\\n.big-warning {\\n\\tbackground: #FAF0DB;\\n\\tborder: solid 1px #EBC46F;\\n\\tpadding: 5px;\\n}\\n\\n.big-warning b {\\n\\tcolor: red;\\n}\\n<\\/style>\\n\",\"group\":\"\",\"filename\":\"mod_rssocial\"}','{\"facebook\":\"1\",\"facebook_like_action\":\"button_count\",\"facebook_like_type\":\"button_count\",\"facebook_like_show_faces\":\"0\",\"facebook_like_font\":\"arial\",\"facebook_share_button\":\"1\",\"facebook_width\":\"124\",\"facebook_height\":\"20\",\"googleplus\":\"1\",\"googleplus_style\":\"medium\",\"twitter\":\"1\",\"tweet_counter\":\"horizontal\",\"youtube\":\"1\",\"linkedin\":\"1\",\"linkedin_counter\":\"right\",\"lastfm\":\"1\",\"pinterest\":\"1\",\"pinterest_size\":\"20\",\"pinterest_counter\":\"beside\",\"pinterest_static_image\":\"0\",\"pinterest_static_description\":\"0\",\"soundcloud\":\"1\",\"tumblr\":\"1\",\"tumblr_style\":\"2\",\"flickr\":\"1\",\"github\":\"1\",\"vimeo\":\"1\",\"digg\":\"1\",\"skype\":\"1\",\"instagram\":\"1\",\"rss\":\"1\",\"stumbleupon\":\"1\",\"stumbleupon_style\":\"1\",\"reddit\":\"1\",\"reddit_style\":\"2\",\"mail\":\"1\",\"recommend\":\"1\",\"mode\":\"icons\",\"icon_positioning\":\"inline\",\"icon_theme\":\"bg\",\"icon_effect\":\"push\",\"icon_font_color\":\"#ffffff\",\"icon_background_color\":\"#000000\",\"icon_size\":\"24\",\"icon_transparency\":\"0.75\",\"icon_transparency_hover\":\"0.5\",\"caption\":\"0\",\"caption_font_color\":\"#ffffff\",\"caption_background_color\":\"#000000\",\"caption_size\":\"14\",\"caption_transparency\":\"0.75\",\"caption_transparency_hover\":\"0.5\",\"icon_float\":\"left\",\"icon_fixed\":\"0\",\"icon_alignment\":\"center\"}','','',0,'0000-00-00 00:00:00',0,0),(10006,'HD-Background Selector','module','mod_hd-bgselector','',0,1,0,0,'{\"name\":\"HD-Background Selector\",\"type\":\"module\",\"creationDate\":\"February 2013\",\"author\":\"Hyde-Design\",\"copyright\":\"2012\",\"authorEmail\":\"sales@hyde-design.co.uk\",\"authorUrl\":\"www.hyde-design.co.uk\",\"version\":\"1.3\",\"description\":\"A simple module to apply a background style to a specific page. Set the module to appear on the page of your choice at any module position.\",\"group\":\"\",\"filename\":\"mod_hd-bgselector\"}','{\"bgid\":\"body\",\"imageposition\":\"center top\",\"imageattachment\":\"scroll\",\"imagerepeat\":\"repeat\",\"bgcolor\":\"transparent\",\"importance\":\"No\",\"customcss\":\"\",\"bgtype\":\"standard\",\"gradtop\":\"000000\",\"gradbottom\":\"ffffff\",\"urlsniffer\":\"\",\"browsersniffer\":\"all\"}','','',0,'0000-00-00 00:00:00',0,0),(10008,'plg_system_regularlabs','plugin','regularlabs','system',0,1,1,0,'{\"name\":\"plg_system_regularlabs\",\"type\":\"plugin\",\"creationDate\":\"November 2016\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"16.11.23782\",\"description\":\"PLG_SYSTEM_REGULARLABS_DESC\",\"group\":\"\",\"filename\":\"regularlabs\"}','{\"combine_admin_menu\":\"0\",\"show_help_menu\":\"1\",\"max_list_count\":\"2500\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,'plg_editors-xtd_sourcerer','plugin','sourcerer','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_sourcerer\",\"type\":\"plugin\",\"creationDate\":\"November 2016\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"6.3.7\",\"description\":\"PLG_EDITORS-XTD_SOURCERER_DESC\",\"group\":\"\",\"filename\":\"sourcerer\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10010,'plg_system_sourcerer','plugin','sourcerer','system',0,1,1,0,'{\"name\":\"plg_system_sourcerer\",\"type\":\"plugin\",\"creationDate\":\"November 2016\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"6.3.7\",\"description\":\"PLG_SYSTEM_SOURCERER_DESC\",\"group\":\"\",\"filename\":\"sourcerer\"}','{\"syntax_word\":\"source\",\"tag_characters\":\"{.}\",\"trim\":\"0\",\"enable_in_head\":\"0\",\"remove_from_search\":\"0\",\"include_path\":\"\\/\",\"enable_css\":\"1\",\"enable_js\":\"1\",\"enable_php\":\"1\",\"forbidden_php\":\"dl, escapeshellarg, escapeshellcmd, exec, passthru, popen, proc_close, proc_open, shell_exec, symlink, system\",\"forbidden_tags\":\"\",\"@notice_articles_security_level\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_articles_enable_css\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_articles_enable_js\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_articles_enable_php\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_components_enable_css\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_components_enable_js\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_components_enable_php\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@wizard\":\"0\",\"@noticeother_enable_css\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_other_enable_js\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"@notice_other_enable_php\":\"RL_ONLY_AVAILABLE_IN_PRO\",\"button_text\":\"Code\",\"enable_frontend\":\"1\",\"addsourcetags\":\"1\",\"@notice_use_example_code\":\"RL_ONLY_AVAILABLE_IN_PRO\"}','','',0,'0000-00-00 00:00:00',0,0),(10025,'Regular Labs Library','library','regularlabs','',0,1,1,0,'{\"name\":\"Regular Labs Library\",\"type\":\"library\",\"creationDate\":\"November 2016\",\"author\":\"Regular Labs (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 Regular Labs - All Rights Reserved\",\"authorEmail\":\"info@regularlabs.com\",\"authorUrl\":\"https:\\/\\/www.regularlabs.com\",\"version\":\"16.11.23782\",\"description\":\"\",\"group\":\"\",\"filename\":\"regularlabs\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10026,'coverlineblack','template','coverlineblack','',0,1,1,0,'{\"name\":\"coverlineblack\",\"type\":\"template\",\"creationDate\":\"mars 2014\",\"author\":\"Inconnu\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0.0\",\"description\":\"\\n\\n\\t      <h1> COVERLINE black joomla template <\\/h1>\\n\\t   \\n\\t\\t\\t<br \\/><br \\/>\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"bodybackground\":\"templates\\/coverlineblack\\/images\\/bg.jpg\",\"sitename\":\"coverline\",\"sloganweb\":\"pro template for your website\",\"slidedisable\":\"1\",\"image1\":\"templates\\/coverlineblack\\/images\\/slide1.jpg\",\"image2\":\"templates\\/coverlineblack\\/images\\/slide2.jpg\",\"image3\":\"templates\\/coverlineblack\\/images\\/slide3.jpg\",\"caption1\":\"My latest Images\",\"caption2\":\"Tour around the world\",\"caption3\":\"You are always on my mind...\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `icng4_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_filters`
--

DROP TABLE IF EXISTS `icng4_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_filters`
--

LOCK TABLES `icng4_finder_filters` WRITE;
/*!40000 ALTER TABLE `icng4_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links`
--

DROP TABLE IF EXISTS `icng4_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links`
--

LOCK TABLES `icng4_finder_links` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links` DISABLE KEYS */;
INSERT INTO `icng4_finder_links` VALUES (2,'index.php?option=com_content&view=article&id=5','index.php?option=com_content&view=article&id=5:regles&catid=2&Itemid=114','Règles',' Jeu de Dames (Variante) Règles du jeu Le plateau : Le jeu se déroule sur un plateau de 8 cases sur 8. Les deux joueurs possèdent respectivement 16 pions noirs et blancs. Sur cette variante, les premières et dernières rangées du plateau de jeu sont laissé','2016-12-16 09:37:36','deb7d561520daae87ef37bd493d83c6d',1,1,1,'*','2016-12-15 10:53:04','0000-00-00 00:00:00','2016-12-15 10:53:04','0000-00-00 00:00:00',0,0,4,'O:19:\"FinderIndexerResult\":19:{s:11:\"\0*\0elements\";a:24:{s:2:\"id\";s:1:\"5\";s:5:\"alias\";s:6:\"regles\";s:7:\"summary\";s:3704:\"<h1>Jeu de Dames (Variante)</h1>\r\n<h2>Règles du jeu</h2>\r\n<p></p>\r\n<p align=\"left\"><strong>Le plateau :</strong></p>\r\n<p></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Le jeu se déroule sur un plateau de 8 cases sur 8.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Les deux joueurs possèdent respectivement 16 pions noirs et blancs.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Sur cette variante, les premières et dernières rangées du plateau de jeu sont laissées vides .</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple de plateau :</em></p>\r\n<p><img src=\"images/regles/1.png\" /></p>\r\n<p align=\"left\"></p>\r\n<p><strong>But du jeu :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Pour pouvoir gagner une partie, le joueur doit réussir à capturer tous les pions de l\'adversaire</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p><em>Exemple:</em></p>\r\n<p><img src=\"images/regles/2.png\" /></p>\r\n<p></p>\r\n<p></p>\r\n<p align=\"left\"><strong>Déroulement d\'une partie :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Le joueur ayant les pions blancs commencent toujours la partie.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">À chaque tour de jeu, le joueur peut effectuer un mouvement parmi les suivants :</p>\r\n<ul>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Il peut déplacer un pion (voir fiche déplacement des pions)</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Il peut déplacer une dame (voir fiche déplacement des dames)</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Il peut capturer un pion adverse selon certaines conditions de capture.</p>\r\n</li>\r\n</ul>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple :</em></p>\r\n<p><img src=\"images/regles/3.png\" /></p>\r\n<p></p>\r\n<p align=\"left\"><strong> Déplacements et actions d\'un pion :</strong></p>\r\n<p></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Un pion peut se déplacer d\'une seule case à l\'horizontale ou à la verticale.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Un pion ne peut revenir en arrière.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">La capture d\'un pion adverse se fait via un saut sur la case qui se situe derrière le pion adverse.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Pour devenir une Dame, le joueur doit amener son pion à la dernière ligne en face de son camp.</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple :</em></p>\r\n<p></p>\r\n<p></p>\r\n<p><img src=\"images/regles/4.png\" /></p>\r\n<p></p>\r\n<p></p>\r\n<p align=\"left\"><strong>Déplacement et actions d\'une Dame :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Une Dame peut se déplacer à l\'horizontale et à la verticale sur n\'importe quelle case vide.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Une Dame peut capturer un pion adverse en sautant au-dessus et en atterrissant sur une case vide derrière celui-ci.</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p align=\"left\"><em>Exemple :</em></p>\r\n<p><img src=\"images/regles/5.png\" /></p>\r\n<p></p>\r\n<p align=\"left\"><strong>Obligations et Restrictions :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Si le joueur peut effectuer une capture, il est obligé de le faire et ne peut pas effectuer d\'autre mouvements.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Si le joueur est dans la possibilité de faire plusieurs saut avec différents pions, il peut choisir entre chaque capture.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">Chaque pion capturé par les joueurs sont enlevés du plateau, laissant la case vide.</p>\r\n</li>\r\n</ul>\r\n<p align=\"left\"><strong>Promotion :</strong></p>\r\n<ul>\r\n<li>\r\n<p align=\"left\">Quand un joueur arrive à faire atteindre la dernière ligne en face à l\'un de ses pions, il le transforme en Dame.</p>\r\n</li>\r\n<li>\r\n<p align=\"left\">S\'il ne reste qu\'un pion dans chaque camp, ces deux pions deviennent respectivement des Dames.</p>\r\n</li>\r\n</ul>\r\n<p></p>\r\n<p style=\"text-align: center;\"></p>\r\n<h1 style=\"text-align: center;\">Bon jeu!</h1>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\";s:4:\"body\";s:0:\"\";s:5:\"catid\";s:1:\"2\";s:10:\"created_by\";s:3:\"891\";s:16:\"created_by_alias\";s:0:\"\";s:8:\"modified\";s:19:\"2016-12-16 08:37:35\";s:11:\"modified_by\";s:3:\"891\";s:6:\"params\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":76:{s:14:\"article_layout\";s:9:\"_:default\";s:10:\"show_title\";s:1:\"0\";s:11:\"link_titles\";s:1:\"1\";s:10:\"show_intro\";s:1:\"1\";s:19:\"info_block_position\";s:1:\"0\";s:21:\"info_block_show_title\";s:1:\"0\";s:13:\"show_category\";s:1:\"0\";s:13:\"link_category\";s:1:\"1\";s:20:\"show_parent_category\";s:1:\"0\";s:20:\"link_parent_category\";s:1:\"0\";s:11:\"show_author\";s:1:\"0\";s:11:\"link_author\";s:1:\"0\";s:16:\"show_create_date\";s:1:\"0\";s:16:\"show_modify_date\";s:1:\"0\";s:17:\"show_publish_date\";s:1:\"0\";s:20:\"show_item_navigation\";s:1:\"0\";s:9:\"show_vote\";s:1:\"0\";s:13:\"show_readmore\";s:1:\"0\";s:19:\"show_readmore_title\";s:1:\"1\";s:14:\"readmore_limit\";s:3:\"100\";s:9:\"show_tags\";s:1:\"0\";s:10:\"show_icons\";s:1:\"0\";s:15:\"show_print_icon\";s:1:\"0\";s:15:\"show_email_icon\";s:1:\"0\";s:9:\"show_hits\";s:1:\"0\";s:11:\"show_noauth\";s:1:\"0\";s:13:\"urls_position\";s:1:\"0\";s:23:\"show_publishing_options\";s:1:\"1\";s:20:\"show_article_options\";s:1:\"1\";s:12:\"save_history\";s:1:\"1\";s:13:\"history_limit\";i:10;s:25:\"show_urls_images_frontend\";s:1:\"0\";s:24:\"show_urls_images_backend\";s:1:\"1\";s:7:\"targeta\";i:0;s:7:\"targetb\";i:0;s:7:\"targetc\";i:0;s:11:\"float_intro\";s:4:\"left\";s:14:\"float_fulltext\";s:4:\"left\";s:15:\"category_layout\";s:6:\"_:blog\";s:32:\"show_category_heading_title_text\";s:1:\"1\";s:19:\"show_category_title\";s:1:\"0\";s:16:\"show_description\";s:1:\"0\";s:22:\"show_description_image\";s:1:\"0\";s:8:\"maxLevel\";s:1:\"1\";s:21:\"show_empty_categories\";s:1:\"0\";s:16:\"show_no_articles\";s:1:\"1\";s:16:\"show_subcat_desc\";s:1:\"1\";s:21:\"show_cat_num_articles\";s:1:\"0\";s:13:\"show_cat_tags\";s:1:\"1\";s:21:\"show_base_description\";s:1:\"1\";s:11:\"maxLevelcat\";s:2:\"-1\";s:25:\"show_empty_categories_cat\";s:1:\"0\";s:20:\"show_subcat_desc_cat\";s:1:\"1\";s:25:\"show_cat_num_articles_cat\";s:1:\"1\";s:20:\"num_leading_articles\";s:1:\"1\";s:18:\"num_intro_articles\";s:1:\"4\";s:11:\"num_columns\";s:1:\"2\";s:9:\"num_links\";s:1:\"4\";s:18:\"multi_column_order\";s:1:\"0\";s:24:\"show_subcategory_content\";s:1:\"0\";s:21:\"show_pagination_limit\";s:1:\"1\";s:12:\"filter_field\";s:4:\"hide\";s:13:\"show_headings\";s:1:\"1\";s:14:\"list_show_date\";s:1:\"0\";s:11:\"date_format\";s:0:\"\";s:14:\"list_show_hits\";s:1:\"1\";s:16:\"list_show_author\";s:1:\"1\";s:11:\"orderby_pri\";s:5:\"order\";s:11:\"orderby_sec\";s:5:\"rdate\";s:10:\"order_date\";s:9:\"published\";s:15:\"show_pagination\";s:1:\"2\";s:23:\"show_pagination_results\";s:1:\"1\";s:13:\"show_featured\";s:4:\"show\";s:14:\"show_feed_link\";s:1:\"1\";s:12:\"feed_summary\";s:1:\"0\";s:18:\"feed_show_readmore\";s:1:\"0\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"metakey\";s:0:\"\";s:8:\"metadesc\";s:0:\"\";s:8:\"metadata\";O:24:\"Joomla\\Registry\\Registry\":3:{s:7:\"\0*\0data\";O:8:\"stdClass\":4:{s:6:\"robots\";s:0:\"\";s:6:\"author\";s:0:\"\";s:6:\"rights\";s:0:\"\";s:10:\"xreference\";s:0:\"\";}s:14:\"\0*\0initialized\";b:1;s:9:\"separator\";s:1:\".\";}s:7:\"version\";s:1:\"4\";s:8:\"ordering\";s:1:\"0\";s:8:\"category\";s:16:\"Non catégorisé\";s:9:\"cat_state\";s:1:\"1\";s:10:\"cat_access\";s:1:\"1\";s:4:\"slug\";s:8:\"5:regles\";s:7:\"catslug\";s:16:\"2:non-categorise\";s:6:\"author\";s:17:\"Super Utilisateur\";s:6:\"layout\";s:7:\"article\";s:4:\"path\";s:23:\"index.php/regles-du-jeu\";s:10:\"metaauthor\";N;}s:15:\"\0*\0instructions\";a:5:{i:1;a:3:{i:0;s:5:\"title\";i:1;s:8:\"subtitle\";i:2;s:2:\"id\";}i:2;a:2:{i:0;s:7:\"summary\";i:1;s:4:\"body\";}i:3;a:8:{i:0;s:4:\"meta\";i:1;s:10:\"list_price\";i:2;s:10:\"sale_price\";i:3;s:7:\"metakey\";i:4;s:8:\"metadesc\";i:5;s:10:\"metaauthor\";i:6;s:6:\"author\";i:7;s:16:\"created_by_alias\";}i:4;a:2:{i:0;s:4:\"path\";i:1;s:5:\"alias\";}i:5;a:1:{i:0;s:8:\"comments\";}}s:11:\"\0*\0taxonomy\";a:4:{s:4:\"Type\";a:1:{s:7:\"Article\";O:7:\"JObject\":4:{s:10:\"\0*\0_errors\";a:0:{}s:5:\"title\";s:7:\"Article\";s:5:\"state\";i:1;s:6:\"access\";i:1;}}s:6:\"Author\";a:1:{s:17:\"Super Utilisateur\";O:7:\"JObject\":4:{s:10:\"\0*\0_errors\";a:0:{}s:5:\"title\";s:17:\"Super Utilisateur\";s:5:\"state\";i:1;s:6:\"access\";i:1;}}s:8:\"Category\";a:1:{s:16:\"Non catégorisé\";O:7:\"JObject\":4:{s:10:\"\0*\0_errors\";a:0:{}s:5:\"title\";s:16:\"Non catégorisé\";s:5:\"state\";i:1;s:6:\"access\";i:1;}}s:8:\"Language\";a:1:{s:1:\"*\";O:7:\"JObject\":4:{s:10:\"\0*\0_errors\";a:0:{}s:5:\"title\";s:1:\"*\";s:5:\"state\";i:1;s:6:\"access\";i:1;}}}s:3:\"url\";s:46:\"index.php?option=com_content&view=article&id=5\";s:5:\"route\";s:72:\"index.php?option=com_content&view=article&id=5:regles&catid=2&Itemid=114\";s:5:\"title\";s:7:\"Règles\";s:11:\"description\";s:2002:\" Jeu de Dames (Variante) Règles du jeu Le plateau : Le jeu se déroule sur un plateau de 8 cases sur 8. Les deux joueurs possèdent respectivement 16 pions noirs et blancs. Sur cette variante, les premières et dernières rangées du plateau de jeu sont laissées vides . Exemple de plateau : But du jeu : Pour pouvoir gagner une partie, le joueur doit réussir à capturer tous les pions de l\'adversaire Exemple: Déroulement d\'une partie : Le joueur ayant les pions blancs commencent toujours la partie. À chaque tour de jeu, le joueur peut effectuer un mouvement parmi les suivants : Il peut déplacer un pion (voir fiche déplacement des pions) Il peut déplacer une dame (voir fiche déplacement des dames) Il peut capturer un pion adverse selon certaines conditions de capture. Exemple : Déplacements et actions d\'un pion : Un pion peut se déplacer d\'une seule case à l\'horizontale ou à la verticale. Un pion ne peut revenir en arrière. La capture d\'un pion adverse se fait via un saut sur la case qui se situe derrière le pion adverse. Pour devenir une Dame, le joueur doit amener son pion à la dernière ligne en face de son camp. Exemple : Déplacement et actions d\'une Dame : Une Dame peut se déplacer à l\'horizontale et à la verticale sur n\'importe quelle case vide. Une Dame peut capturer un pion adverse en sautant au-dessus et en atterrissant sur une case vide derrière celui-ci. Exemple : Obligations et Restrictions : Si le joueur peut effectuer une capture, il est obligé de le faire et ne peut pas effectuer d\'autre mouvements. Si le joueur est dans la possibilité de faire plusieurs saut avec différents pions, il peut choisir entre chaque capture. Chaquepion capturé par les joueurs sont enlevés du plateau, laissant la case vide. Promotion : Quand un joueur arrive à faire atteindre la dernière ligne en face à l\'un de ses pions, il le transforme en Dame. S\'il ne reste qu\'un pion dans chaque camp, ces deux pions deviennent respectivement des Dames. Bon jeu! \";s:9:\"published\";N;s:5:\"state\";i:1;s:6:\"access\";s:1:\"1\";s:8:\"language\";s:1:\"*\";s:18:\"publish_start_date\";s:19:\"2016-12-15 10:53:04\";s:16:\"publish_end_date\";s:19:\"0000-00-00 00:00:00\";s:10:\"start_date\";s:19:\"2016-12-15 10:53:04\";s:8:\"end_date\";s:19:\"0000-00-00 00:00:00\";s:10:\"list_price\";N;s:10:\"sale_price\";N;s:7:\"type_id\";i:4;s:15:\"defaultLanguage\";s:5:\"fr-FR\";}');
/*!40000 ALTER TABLE `icng4_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms0`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms0`
--

LOCK TABLES `icng4_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms0` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms0` VALUES (2,1049,0.65338),(2,1050,0.98),(2,1051,1.09669),(2,1052,1.00331),(2,1053,1.12),(2,1054,1.30676),(2,1055,0.93331),(2,1056,1.12),(2,1057,0.98),(2,1058,1.16669),(2,1059,0.93331),(2,1060,1.05),(2,1061,1.00331),(2,1062,1.23669),(2,1063,0.28),(2,1064,0.93331),(2,1065,1.05),(2,1066,0.32669),(2,1067,0.93331),(2,1068,1.12),(2,1069,0.28),(2,1070,0.88669),(2,1071,1.02669),(2,1072,0.56004),(2,1073,0.42),(2,1074,0.98),(2,1075,1.19),(2,1076,0.56),(2,1077,1.07331),(2,1078,1.16669),(2,1079,0.42),(2,1080,0.98),(2,1081,1.05),(2,1082,0.18669),(2,1083,1.05),(2,1084,1.19),(2,1085,0.23331),(2,1086,0.91),(2,1087,1.05),(2,1628,0.18669),(2,1629,0.86331),(2,1630,1.00331),(2,1631,0.37338),(2,1632,0.91),(2,1633,1.16669),(2,1634,0.88669),(2,1635,0.95669),(2,1636,0.32669),(2,1637,1.09669),(2,1638,1.16669),(2,1639,0.46655),(2,1640,1.91338),(2,1641,1.00331),(2,1642,1.09669),(2,1643,0.93331),(2,1644,1.02669),(2,1645,0.86331),(2,1646,0.95669),(2,1647,0.88669),(2,1648,1.09669),(2,1649,0.23331),(2,1650,1.05),(2,1651,1.30669),(2,1652,0.14),(2,1653,0.91),(2,1654,0.98),(2,1655,0.23331),(2,1656,0.93331),(2,1657,0.98),(2,1658,0.18662),(2,1659,1.63338),(2,1660,1.96),(2,1661,0.23331),(2,1662,1.02669),(2,1663,1.09669),(2,1664,0.28),(2,1665,0.88669),(2,1666,1.07331),(2,1667,0.88669),(2,1668,0.93331),(2,1669,0.37338),(2,1670,0.98),(2,1671,1.05),(2,1672,1.00331),(2,1673,1.14331),(2,1674,0.37331),(2,1675,0.95669),(2,1676,1.07331),(2,1677,0.79992),(2,1678,3.76008),(2,1679,0.84),(2,1680,0.81669),(2,1681,0.91),(2,1682,0.91),(2,1683,1.12),(2,1684,0.84),(2,1685,0.95669),(2,1686,1.00331),(2,1687,1.16669),(2,1688,0.84),(2,1689,1.02669),(2,1690,0.86331),(2,1691,0.98);
/*!40000 ALTER TABLE `icng4_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms1`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms1`
--

LOCK TABLES `icng4_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms2`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms2`
--

LOCK TABLES `icng4_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms2` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms2` VALUES (2,1405,0.56),(2,1406,1.16669),(2,1407,1.4),(2,1408,1.21338),(2,1409,1.07331),(2,1410,1.12),(2,1411,1.07331),(2,1412,1.12),(2,1413,0.18669),(2,1414,0.86331),(2,1415,0.95669),(2,1416,0.83979),(2,1417,0.93331),(2,1418,1.05),(2,1419,1.72662),(2,1420,0.95669),(2,1421,0.98),(2,1422,1.91338),(2,1423,2.19338),(2,1424,0.91),(2,1425,0.95669),(2,1426,1.02669),(2,1427,1.09669),(2,1428,1.96),(2,1429,1.07331),(2,1430,1.05),(2,1431,0.37331),(2,1432,0.95669),(2,1433,1.07331),(2,1434,0.37331),(2,1435,1.02669),(2,1436,1.21331),(2,1437,1.02641),(2,1438,0.88669),(2,1439,0.95669),(2,1440,0.84),(2,1441,0.91),(2,1442,4.55),(2,1443,1.05),(2,1444,1.02669),(2,1445,1.00331),(2,1446,2.05338),(2,1447,0.86331),(2,1448,1.05),(2,1449,0.93331),(2,1450,1.00331),(2,1451,1.00331),(2,1452,1.07331),(2,1453,0.84),(2,1454,0.88669),(2,1455,1.07331),(2,1456,0.95669),(2,1457,1.07331),(2,1458,1.82),(2,1459,1.07331),(2,1460,0.98),(2,1461,1.00331),(2,1462,1.07331),(2,1463,0.98),(2,1464,1.05),(2,1465,0.46662),(2,1466,1.77338),(2,1467,2.00662);
/*!40000 ALTER TABLE `icng4_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms3`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms3`
--

LOCK TABLES `icng4_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms3` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms3` VALUES (2,1376,0.98),(2,1377,0.84),(2,1378,0.98),(2,1379,1.68),(2,1380,1.00331),(2,1381,1.02669),(2,1382,0.88669),(2,1383,1.07331),(2,1384,0.84),(2,1385,1.02669),(2,1386,0.88669),(2,1387,1.09669),(2,1388,1.96),(2,1389,1.00331),(2,1390,1.05),(2,1391,0.98),(2,1392,1.07331),(2,1393,1.91338),(2,1394,1.12),(2,1395,1.14331),(2,1396,0.93331),(2,1397,1.05),(2,1398,1.91338),(2,1399,2.38),(2,1400,0.65338),(2,1401,1.09669),(2,1402,1.4),(2,1403,0.98),(2,1404,1.16669);
/*!40000 ALTER TABLE `icng4_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms4`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms4`
--

LOCK TABLES `icng4_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms4` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms4` VALUES (2,1098,0.37338),(2,1099,0.88669),(2,1100,1.00331),(2,1101,0.98),(2,1102,1.26),(2,1103,1.63345),(2,1104,1.02669),(2,1105,1.14331),(2,1106,0.98),(2,1107,1.09669),(2,1108,1.05),(2,1109,1.35331),(2,1110,0.93331),(2,1111,1.02669),(2,1112,0.95669),(2,1113,1.05),(2,1114,1.11993),(2,1115,1.00331),(2,1116,1.09669),(2,1117,1.91338),(2,1118,2.14662),(2,1119,0.93345),(2,1120,0.84),(2,1121,1.16669),(2,1122,0.88669),(2,1123,0.95669),(2,1124,2.73),(2,1125,1.12),(2,1126,1.14331),(2,1127,1.00331),(2,1128,0.23331),(2,1129,0.91),(2,1130,0.95669),(2,1131,0.80004),(2,1132,0.37331),(2,1133,1.07331),(2,1134,1.35331),(2,1135,0.42),(2,1136,1.16669),(2,1137,1.23669),(2,1138,0.14),(2,1139,0.88669),(2,1140,1.02669),(2,1141,0.23331),(2,1142,1.02669),(2,1143,1.12),(2,1144,1.12),(2,1145,0.95669),(2,1146,1.05),(2,1147,1.02669),(2,1148,1.19),(2,1149,0.95669),(2,1150,1.14331),(2,1151,0.95669),(2,1152,1.02669),(2,1153,0.32669),(2,1154,1.00331),(2,1155,1.16669),(2,1156,0.46669),(2,1157,1.14331),(2,1158,1.21331),(2,1159,0.46669),(2,1160,1.00331),(2,1161,1.19),(2,1605,0.32669),(2,1606,0.93331),(2,1607,1.12),(2,1608,1.76),(2,1609,0.91),(2,1610,1.00331),(2,1611,1.30662),(2,1612,1.09669),(2,1613,1.23669),(2,1614,1.12),(2,1615,1.26),(2,1616,0.23331),(2,1617,0.95669),(2,1618,1.07331),(2,1619,0.56),(2,1620,1.05),(2,1621,1.12),(2,1622,0.32669),(2,1623,0.91),(2,1624,1.12),(2,1625,0.32669),(2,1626,0.93331),(2,1627,1.12);
/*!40000 ALTER TABLE `icng4_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms5`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms5`
--

LOCK TABLES `icng4_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms6`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms6`
--

LOCK TABLES `icng4_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms6` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms6` VALUES (2,1468,0.42),(2,1469,1.05),(2,1470,1.14331),(2,1471,0.46669),(2,1472,1.00331),(2,1473,1.07331);
/*!40000 ALTER TABLE `icng4_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms7`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms7`
--

LOCK TABLES `icng4_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms7` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms7` VALUES (2,1474,0.42),(2,1475,1.07331),(2,1476,1.19),(2,1477,0.27993),(2,1478,1.72662),(2,1479,0.95669),(2,1480,1.05),(2,1481,0.88669),(2,1482,1.02669),(2,1483,0.23331),(2,1484,0.88669),(2,1485,1.05),(2,1486,0.24),(2,1487,1.76004),(2,1593,0.23331),(2,1594,0.93331),(2,1595,1.05),(2,1596,0.23331),(2,1597,0.88669),(2,1598,1.05),(2,1599,0.28),(2,1600,0.95669),(2,1601,1.07331),(2,1602,0.14),(2,1603,0.84),(2,1604,0.98),(2,1704,0.83979),(2,1705,0.91),(2,1706,1.07331),(2,1707,0.98),(2,1708,1.12),(2,1709,4.31655),(2,1710,2.1),(2,1711,0.93331),(2,1712,0.98),(2,1713,0.98),(2,1714,0.93331),(2,1715,1.00331),(2,1716,0.86331),(2,1717,0.95669),(2,1718,0.98),(2,1719,0.95669),(2,1720,1.02669),(2,1721,0.88669),(2,1722,1.00331),(2,1723,3.54676),(2,1724,0.95669),(2,1725,2.00662),(2,1726,1.00331),(2,1727,0.93331),(2,1728,1.00331),(2,1729,1.75992);
/*!40000 ALTER TABLE `icng4_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms8`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms8`
--

LOCK TABLES `icng4_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms8` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms8` VALUES (2,1162,0.32669),(2,1163,1.12),(2,1164,1.19),(2,1165,0.37338),(2,1166,1.82),(2,1167,1.09669),(2,1168,0.98),(2,1169,0.69993),(2,1170,0.93331),(2,1171,1.02669),(2,1172,0.98),(2,1173,1.05),(2,1174,0.95669),(2,1175,1.07331),(2,1176,1.12014),(2,1177,0.86331),(2,1178,1.82),(2,1179,1.12),(2,1180,0.98),(2,1181,0.91),(2,1182,0.98),(2,1183,0.88669),(2,1184,1.00331),(2,1185,0.91),(2,1186,1.05),(2,1187,0.69993),(2,1188,0.91),(2,1189,1.00331),(2,1190,0.88669),(2,1191,1.00331),(2,1192,1.02669),(2,1193,1.19),(2,1194,0.37338),(2,1195,0.95669),(2,1196,1.07331),(2,1197,0.86331),(2,1198,1.14331),(2,1199,1.02641),(2,1200,0.79331),(2,1201,0.93331),(2,1202,0.93331),(2,1203,1.12),(2,1204,0.88669),(2,1205,1.09669),(2,1206,0.88669),(2,1207,1.12),(2,1208,1.68),(2,1209,0.91),(2,1210,0.95669),(2,1211,1.05),(2,1212,1.23669),(2,1213,0.81669),(2,1214,0.95669),(2,1215,0.93331),(2,1216,1.02669),(2,1217,0.84),(2,1218,0.98),(2,1219,0.84),(2,1220,0.95669),(2,1221,1.53993),(2,1222,2.1),(2,1223,1.19),(2,1224,1.19),(2,1225,1.02669),(2,1226,1.21331),(2,1227,0.56),(2,1228,1.05),(2,1229,1.23669),(2,1230,1.49324),(2,1231,0.93331),(2,1232,1.26),(2,1233,1.02669),(2,1234,1.16669),(2,1235,0.95669),(2,1236,1.07331),(2,1237,0.98),(2,1238,1.09669),(2,1239,0.74662),(2,1240,2.05338),(2,1241,2.19338),(2,1242,0.42),(2,1243,1.09669),(2,1244,1.16669),(2,1245,0.32669),(2,1246,0.95669),(2,1247,1.02669),(2,1248,0.51331),(2,1249,1.09669),(2,1250,1.26),(2,1251,0.74662),(2,1252,1.09669),(2,1253,1.28331),(2,1254,0.95669),(2,1255,1.07331),(2,1256,0.42),(2,1257,1.82),(2,1258,1.00331),(2,1259,0.98),(2,1260,0.91),(2,1261,0.98),(2,1262,0.37338),(2,1263,0.98),(2,1264,1.21331),(2,1265,0.93331),(2,1266,1.19),(2,1267,0.32669),(2,1268,0.95669),(2,1269,1.07331),(2,1270,0.46669),(2,1271,1.28331),(2,1272,1.37669),(2,1273,0.46669),(2,1274,1.07331),(2,1275,1.14331),(2,1276,0.37338),(2,1277,0.95669),(2,1278,1.05),(2,1279,0.98),(2,1280,1.02669),(2,1281,0.37324),(2,1282,1.68),(2,1283,0.91),(2,1284,0.95669),(2,1285,1.86662),(2,1286,1.00331),(2,1287,1.14331),(2,1345,0.37338),(2,1346,0.84),(2,1347,0.95669),(2,1348,0.86331),(2,1349,0.95669),(2,1350,0.69993),(2,1351,1.05),(2,1352,1.12),(2,1353,0.88669),(2,1354,0.95669),(2,1355,1.05),(2,1356,1.16669),(2,1357,0.18669),(2,1358,0.88669),(2,1359,0.95669),(2,1360,0.46662),(2,1361,2.19338),(2,1362,2.38),(2,1366,0.55986),(2,1367,0.84),(2,1368,1.00331),(2,1369,0.81669),(2,1370,1.07331),(2,1371,3.45324),(2,1372,1.07331),(2,1373,1.05),(2,1374,2.14662),(2,1375,0.6666),(2,1497,0.14),(2,1498,0.86331),(2,1499,1.05),(2,1500,0.23331),(2,1501,0.91),(2,1502,1.12),(2,1503,0.84),(2,1504,0.88669),(2,1505,1.05),(2,1506,1.82),(2,1507,2.14662),(2,1508,0.14),(2,1509,1.00331),(2,1510,1.19),(2,1511,2.05359),(2,1512,2.00662),(2,1513,2.14662),(2,1514,0.98),(2,1515,1.12),(2,1516,2.00662),(2,1517,1.07331),(2,1518,1.09669),(2,1519,2.05338),(2,1520,1.09669),(2,1521,1.12),(2,1522,0.88669),(2,1523,1.12),(2,1524,0.98),(2,1525,1.05),(2,1526,1.72662),(2,1527,2.14662),(2,1528,2.05359),(2,1529,0.84),(2,1530,0.91),(2,1531,3.92),(2,1532,1.05),(2,1533,1.09669),(2,1534,1.05),(2,1535,1.12),(2,1536,0.98),(2,1537,1.07331),(2,1538,0.91),(2,1539,1.07331),(2,1540,0.86331),(2,1541,0.98),(2,1542,0.91),(2,1543,0.98),(2,1544,0.86331),(2,1545,0.98),(2,1546,0.91),(2,1547,1.05),(2,1548,1.63317),(2,1549,0.98),(2,1550,1.23669),(2,1551,0.88669),(2,1552,1.19),(2,1553,1.07331),(2,1554,1.4),(2,1555,2.66007),(2,1556,0.95669),(2,1557,2.00662),(2,1558,0.95669),(2,1559,1.02669),(2,1560,1.63345),(2,1561,0.95669),(2,1562,1.02669),(2,1563,1.86662),(2,1564,0.98),(2,1565,1.02669),(2,1566,1.07331),(2,1567,1.14331),(2,1568,0.93331),(2,1569,1.02669),(2,1570,0.42),(2,1571,1.02669),(2,1572,1.14331),(2,1573,0.42),(2,1574,1.26),(2,1575,1.33),(2,1576,0.51331),(2,1577,1.02669),(2,1578,1.16669),(2,1579,0.37338),(2,1580,0.98),(2,1581,1.07331),(2,1582,0.98),(2,1583,1.14331),(2,1584,0.32669),(2,1585,1.02669),(2,1586,1.12),(2,1587,0.42),(2,1588,0.98),(2,1589,1.21331),(2,1590,0.42),(2,1591,1.05),(2,1592,1.12);
/*!40000 ALTER TABLE `icng4_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_terms9`
--

DROP TABLE IF EXISTS `icng4_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_terms9`
--

LOCK TABLES `icng4_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_terms9` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_terms9` VALUES (2,1088,0.56),(2,1089,1.09669),(2,1090,1.30669),(2,1091,0.93331),(2,1092,1.07331),(2,1093,0.14),(2,1094,0.86331),(2,1095,0.14),(2,1096,0.84),(2,1097,0.93331),(2,1730,0.74662),(2,1731,0.98),(2,1732,1.21331),(2,1733,1.05),(2,1734,1.12),(2,1735,0.84),(2,1736,1.00331),(2,1737,1.23669),(2,1738,0.98),(2,1739,1.09669),(2,1740,0.14),(2,1741,0.84),(2,1742,0.95669),(2,1743,0.56007),(2,1744,1.00331),(2,1745,1.21331),(2,1746,1.02669),(2,1747,1.16669),(2,1748,0.88669),(2,1749,1.00331),(2,1750,0.23331),(2,1751,1.00331),(2,1752,1.07331),(2,1753,0.37338),(2,1754,1.86662),(2,1755,2.42662);
/*!40000 ALTER TABLE `icng4_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_termsa`
--

DROP TABLE IF EXISTS `icng4_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_termsa`
--

LOCK TABLES `icng4_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_termsb`
--

DROP TABLE IF EXISTS `icng4_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_termsb`
--

LOCK TABLES `icng4_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_termsb` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_termsb` VALUES (2,1363,0.28),(2,1364,0.93331),(2,1365,1.09669);
/*!40000 ALTER TABLE `icng4_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_termsc`
--

DROP TABLE IF EXISTS `icng4_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_termsc`
--

LOCK TABLES `icng4_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_termsc` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_termsc` VALUES (2,1025,0.14),(2,1026,0.88669),(2,1027,1.02669),(2,1029,0.14),(2,1030,0.86331),(2,1031,0.95669),(2,1032,0.81669),(2,1033,0.93331),(2,1034,0.42021),(2,1035,0.93331),(2,1036,1.05),(2,1037,0.88669),(2,1038,1.00331),(2,1039,0.86331),(2,1040,1.09669),(2,1041,2.1),(2,1042,1.12),(2,1043,1.12),(2,1044,0.84),(2,1045,0.91),(2,1046,2.37993),(2,1047,1.00331),(2,1048,2.05338);
/*!40000 ALTER TABLE `icng4_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_termsd`
--

DROP TABLE IF EXISTS `icng4_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_termsd`
--

LOCK TABLES `icng4_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_termsd` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_termsd` VALUES (2,1024,0),(2,1488,0.51331),(2,1489,1.02669),(2,1490,1.33),(2,1491,0.28),(2,1492,0.91),(2,1493,0.98),(2,1494,0.09331),(2,1495,0.79331),(2,1496,0.86331);
/*!40000 ALTER TABLE `icng4_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_termse`
--

DROP TABLE IF EXISTS `icng4_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_termse`
--

LOCK TABLES `icng4_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_termse` DISABLE KEYS */;
INSERT INTO `icng4_finder_links_termse` VALUES (2,1028,0.17),(2,1288,1.26),(2,1289,1.09669),(2,1290,1.35331),(2,1291,0.98),(2,1292,1.21331),(2,1293,1.00331),(2,1294,1.19),(2,1295,0.55986),(2,1296,0.93331),(2,1297,1.00331),(2,1298,1.05),(2,1299,1.14331),(2,1300,0.86331),(2,1301,0.98),(2,1302,1.72662),(2,1303,0.91),(2,1304,0.93331),(2,1305,0.93331),(2,1306,1.16669),(2,1307,0.32669),(2,1308,0.93331),(2,1309,1.12),(2,1310,0.23331),(2,1311,0.98),(2,1312,1.16669),(2,1313,0.28),(2,1314,0.88669),(2,1315,0.95669),(2,1316,0.93331),(2,1317,1.00331),(2,1318,0.74648),(2,1319,0.79331),(2,1320,0.86331),(2,1321,1.86662),(2,1322,1.05),(2,1323,1.07331),(2,1324,0.91),(2,1325,1.00331),(2,1326,0.98),(2,1327,1.16669),(2,1328,0.81669),(2,1329,1.12),(2,1330,0.81669),(2,1331,0.93331),(2,1332,1.05),(2,1333,1.12),(2,1334,1.63345),(2,1335,0.93331),(2,1336,1.12),(2,1337,1.14331),(2,1338,1.21331),(2,1339,1.16669),(2,1340,1.23669),(2,1341,1.14331),(2,1342,1.28331),(2,1343,1.14331),(2,1344,1.21331),(2,1692,0.37331),(2,1693,0.95669),(2,1694,1.12),(2,1695,0.18669),(2,1696,0.86331),(2,1697,0.95669),(2,1698,0.18669),(2,1699,0.88669),(2,1700,1.02669),(2,1701,0.46669),(2,1702,1.00331),(2,1703,1.12);
/*!40000 ALTER TABLE `icng4_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_links_termsf`
--

DROP TABLE IF EXISTS `icng4_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_links_termsf`
--

LOCK TABLES `icng4_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `icng4_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_taxonomy`
--

DROP TABLE IF EXISTS `icng4_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_taxonomy`
--

LOCK TABLES `icng4_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `icng4_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `icng4_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0),(2,1,'Type',1,1,0),(4,1,'Author',1,1,0),(6,1,'Category',1,1,0),(8,1,'Language',1,1,0),(10,2,'Article',1,1,0),(11,4,'Super Utilisateur',1,1,0),(12,6,'Non catégorisé',1,1,0),(13,8,'*',1,1,0);
/*!40000 ALTER TABLE `icng4_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `icng4_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_taxonomy_map`
--

LOCK TABLES `icng4_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `icng4_finder_taxonomy_map` DISABLE KEYS */;
INSERT INTO `icng4_finder_taxonomy_map` VALUES (2,10),(2,11),(2,12),(2,13);
/*!40000 ALTER TABLE `icng4_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_terms`
--

DROP TABLE IF EXISTS `icng4_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB AUTO_INCREMENT=2047 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_terms`
--

LOCK TABLES `icng4_finder_terms` WRITE;
/*!40000 ALTER TABLE `icng4_finder_terms` DISABLE KEYS */;
INSERT INTO `icng4_finder_terms` VALUES (1024,'','',0,0,0,'',1,'*'),(1025,'16','16',0,0,0.2,'',1,'*'),(1026,'16 pions','16 pions',0,1,1.2667,'P520',1,'*'),(1027,'16 pions noirs','16 pions noirs',0,1,1.4667,'P52562',1,'*'),(1028,'5','5',0,0,0.1,'',1,'*'),(1029,'8','8',0,0,0.1,'',1,'*'),(1030,'8 cases','8 cases',0,1,1.2333,'C000',1,'*'),(1031,'8 cases sur','8 cases sur',0,1,1.3667,'C600',1,'*'),(1032,'8 les','8 les',0,1,1.1667,'L200',1,'*'),(1033,'8 les deux','8 les deux',0,1,1.3333,'L232',1,'*'),(1034,'à','à',0,0,0.0667,'à000',1,'*'),(1035,'à capturer','à capturer',0,1,1.3333,'à2136',1,'*'),(1036,'à capturer tous','à capturer tous',0,1,1.5,'à213632',1,'*'),(1037,'à chaque','à chaque',0,1,1.2667,'à200',1,'*'),(1038,'à chaque tour','à chaque tour',0,1,1.4333,'à236',1,'*'),(1039,'à faire','à faire',0,1,1.2333,'à160',1,'*'),(1040,'à faire atteindre','à faire atteindre',0,1,1.5667,'à163536',1,'*'),(1041,'à l\'horizontale','à l',0,1,1.5,'à462534',1,'*'),(1042,'à l\'horizontale et','à l et',0,1,1.6,'à4625343',1,'*'),(1043,'à l\'horizontale ou','à l ou',0,1,1.6,'à462534',1,'*'),(1044,'à l\'un','à l',0,1,1.2,'à450',1,'*'),(1045,'à l\'un de','à l de',0,1,1.3,'à453',1,'*'),(1046,'à la','à la',0,1,1.1333,'à400',1,'*'),(1047,'à la dernière','à la dernière',0,1,1.4333,'à43656',1,'*'),(1048,'à la verticale','à la verticale',0,1,1.4667,'à416324',1,'*'),(1049,'actions','actions',0,0,0.4667,'A2352',1,'*'),(1050,'actions d\'un','actions d',0,1,1.4,'A235235',1,'*'),(1051,'actions d\'un pion','actions d pion',0,1,1.5667,'A23523515',1,'*'),(1052,'actions d\'une','actions d',0,1,1.4333,'A235235',1,'*'),(1053,'actions d\'une dame','actions d dame',0,1,1.6,'A23523535',1,'*'),(1054,'adverse','adverse',0,0,0.4667,'A3162',1,'*'),(1055,'adverse en','adverse en',0,1,1.3333,'A31625',1,'*'),(1056,'adverse en sautant','adverse en sautant',0,1,1.6,'A316252353',1,'*'),(1057,'adverse pour','adverse pour',0,1,1.4,'A316216',1,'*'),(1058,'adverse pour devenir','adverse pour devenir',0,1,1.6667,'A3162163156',1,'*'),(1059,'adverse se','adverse se',0,1,1.3333,'A3162',1,'*'),(1060,'adverse se fait','adverse se fait',0,1,1.5,'A316213',1,'*'),(1061,'adverse selon','adverse selon',0,1,1.4333,'A316245',1,'*'),(1062,'adverse selon certaines','adverse selon certaines',0,1,1.7667,'A31624526352',1,'*'),(1063,'amener','amener',0,0,0.4,'A560',1,'*'),(1064,'amener son','amener son',0,1,1.3333,'A5625',1,'*'),(1065,'amener son pion','amener son pion',0,1,1.5,'A562515',1,'*'),(1066,'arrière','arrière',0,0,0.4667,'A600',1,'*'),(1067,'arrière la','arrière la',0,1,1.3333,'A640',1,'*'),(1068,'arrière la capture','arrière la capture',0,1,1.6,'A642136',1,'*'),(1069,'arrive','arrive',0,0,0.4,'A610',1,'*'),(1070,'arrive à','arrive à',0,1,1.2667,'A610',1,'*'),(1071,'arrive à faire','arrive à faire',0,1,1.4667,'A616',1,'*'),(1072,'article','article',0,0,0.4667,'A6324',1,'*'),(1073,'atteindre','atteindre',0,0,0.6,'A3536',1,'*'),(1074,'atteindre la','atteindre la',0,1,1.4,'A35364',1,'*'),(1075,'atteindre la dernière','atteindre la dernière',0,1,1.7,'A353643656',1,'*'),(1076,'atterrissant','atterrissant',0,0,0.8,'A36253',1,'*'),(1077,'atterrissant sur','atterrissant sur',0,1,1.5333,'A3625326',1,'*'),(1078,'atterrissant sur une','atterrissant sur une',0,1,1.6667,'A36253265',1,'*'),(1079,'au-dessus','au-dessus',0,0,0.6,'A320',1,'*'),(1080,'au-dessus et','au-dessus et',0,1,1.4,'A323',1,'*'),(1081,'au-dessus et en','au-dessus et en',0,1,1.5,'A3235',1,'*'),(1082,'avec','avec',0,0,0.2667,'A120',1,'*'),(1083,'avec différents','avec différents',0,1,1.5,'A12316532',1,'*'),(1084,'avec différents pions','avec différents pions',0,1,1.7,'A12316532152',1,'*'),(1085,'ayant','ayant',0,0,0.3333,'A530',1,'*'),(1086,'ayant les','ayant les',0,1,1.3,'A5342',1,'*'),(1087,'ayant les pions','ayant les pions',0,1,1.5,'A5342152',1,'*'),(1088,'blancs','blancs',0,0,0.4,'B452',1,'*'),(1089,'blancs commencent','blancs commencent',0,1,1.5667,'B4525253',1,'*'),(1090,'blancs commencent toujours','blancs commencent toujours',0,1,1.8667,'B4525253262',1,'*'),(1091,'blancs sur','blancs sur',0,1,1.3333,'B4526',1,'*'),(1092,'blancs sur cette','blancs sur cette',0,1,1.5333,'B452623',1,'*'),(1093,'bon','bon',0,0,0.2,'B500',1,'*'),(1094,'bon jeu','bon jeu',0,1,1.2333,'B520',1,'*'),(1095,'but','but',0,0,0.2,'B300',1,'*'),(1096,'but du','but du',0,1,1.2,'B300',1,'*'),(1097,'but du jeu','but du jeu',0,1,1.3333,'B320',1,'*'),(1098,'camp','camp',0,0,0.2667,'C510',1,'*'),(1099,'camp ces','camp ces',0,1,1.2667,'C512',1,'*'),(1100,'camp ces deux','camp ces deux',0,1,1.4333,'C51232',1,'*'),(1101,'camp exemple','camp exemple',0,1,1.4,'C512514',1,'*'),(1102,'camp exemple déplacement','camp exemple déplacement',0,1,1.8,'C512514314253',1,'*'),(1103,'capturé','capturé',0,0,0.4667,'C136',1,'*'),(1104,'capture chaque','capture chaque',0,1,1.4667,'C1362',1,'*'),(1105,'capture chaque pion','capture chaque pion',0,1,1.6333,'C136215',1,'*'),(1106,'capture d\'un','capture d',0,1,1.4,'C13635',1,'*'),(1107,'capture d\'un pion','capture d pion',0,1,1.5667,'C1363515',1,'*'),(1108,'capture exemple','capture exemple',0,1,1.5,'C1362514',1,'*'),(1109,'capture exemple déplacements','capture exemple déplacements',0,1,1.9333,'C13625143142532',1,'*'),(1110,'capture il','capture il',0,1,1.3333,'C1364',1,'*'),(1111,'capture il est','capture il est',0,1,1.4667,'C136423',1,'*'),(1112,'capturé par','capturé par',0,1,1.3667,'C13616',1,'*'),(1113,'capturé par les','capturé par les',0,1,1.5,'C1361642',1,'*'),(1114,'capturer','capturer',0,0,0.5333,'C136',1,'*'),(1115,'capturer tous','capturer tous',0,1,1.4333,'C13632',1,'*'),(1116,'capturer tous les','capturer tous les',0,1,1.5667,'C1363242',1,'*'),(1117,'capturer un','capturer un',0,1,1.3667,'C1365',1,'*'),(1118,'capturer un pion','capturer un pion',0,1,1.5333,'C136515',1,'*'),(1119,'case','case',0,0,0.2667,'C000',1,'*'),(1120,'case à','case à',0,1,1.2,'C000',1,'*'),(1121,'case à l\'horizontale','case à l',0,1,1.6667,'C462534',1,'*'),(1122,'case qui','case qui',0,1,1.2667,'C000',1,'*'),(1123,'case qui se','case qui se',0,1,1.3667,'C000',1,'*'),(1124,'case vide','case vide',0,1,1.3,'C130',1,'*'),(1125,'case vide derrière','case vide derrière',0,1,1.6,'C136',1,'*'),(1126,'case vide promotion','case vide promotion',0,1,1.6333,'C1316535',1,'*'),(1127,'case vide une','case vide une',0,1,1.4333,'C135',1,'*'),(1128,'cases','cases',0,0,0.3333,'C000',1,'*'),(1129,'cases sur','cases sur',0,1,1.3,'C600',1,'*'),(1130,'cases sur 8','cases sur 8',0,1,1.3667,'C600',1,'*'),(1131,'catégorisé','catégorisé',0,0,0.6667,'C3262',1,'*'),(1132,'celui-ci','celui-ci',0,0,0.5333,'C420',1,'*'),(1133,'celui-ci exemple','celui-ci exemple',0,1,1.5333,'C42514',1,'*'),(1134,'celui-ci exemple obligations','celui-ci exemple obligations',0,1,1.9333,'C42514142352',1,'*'),(1135,'certaines','certaines',0,0,0.6,'C6352',1,'*'),(1136,'certaines conditions','certaines conditions',0,1,1.6667,'C63525352',1,'*'),(1137,'certaines conditions de','certaines conditions de',0,1,1.7667,'C635253523',1,'*'),(1138,'ces','ces',0,0,0.2,'C000',1,'*'),(1139,'ces deux','ces deux',0,1,1.2667,'C320',1,'*'),(1140,'ces deux pions','ces deux pions',0,1,1.4667,'C32152',1,'*'),(1141,'cette','cette',0,0,0.3333,'C300',1,'*'),(1142,'cette variante','cette variante',0,1,1.4667,'C31653',1,'*'),(1143,'cette variante les','cette variante les',0,1,1.6,'C3165342',1,'*'),(1144,'chaque','chaque',0,0,0.4,'C000',1,'*'),(1145,'chaque camp','chaque camp',0,1,1.3667,'C510',1,'*'),(1146,'chaque camp ces','chaque camp ces',0,1,1.5,'C512',1,'*'),(1147,'chaque capture','chaque capture',0,1,1.4667,'C136',1,'*'),(1148,'chaque capture chaque','chaque capture chaque',0,1,1.7,'C1362',1,'*'),(1149,'chaque pion','chaque pion',0,1,1.3667,'C150',1,'*'),(1150,'chaque pion capturé','chaque pion capturé',0,1,1.6333,'C152136',1,'*'),(1151,'chaque tour','chaque tour',0,1,1.3667,'C360',1,'*'),(1152,'chaque tour de','chaque tour de',0,1,1.4667,'C363',1,'*'),(1153,'choisir','choisir',0,0,0.4667,'C600',1,'*'),(1154,'choisir entre','choisir entre',0,1,1.4333,'C6536',1,'*'),(1155,'choisir entre chaque','choisir entre chaque',0,1,1.6667,'C65362',1,'*'),(1156,'commencent','commencent',0,0,0.6667,'C5253',1,'*'),(1157,'commencent toujours','commencent toujours',0,1,1.6333,'C5253262',1,'*'),(1158,'commencent toujours la','commencent toujours la',0,1,1.7333,'C52532624',1,'*'),(1159,'conditions','conditions',0,0,0.6667,'C5352',1,'*'),(1160,'conditions de','conditions de',0,1,1.4333,'C53523',1,'*'),(1161,'conditions de capture','conditions de capture',0,1,1.7,'C535232136',1,'*'),(1162,'d\'autre','d',0,0,0.4667,'D600',1,'*'),(1163,'d\'autre mouvements','d mouvements',0,1,1.6,'D651532',1,'*'),(1164,'d\'autre mouvements si','d mouvements si',0,1,1.7,'D651532',1,'*'),(1165,'d\'un','d',0,0,0.2667,'D500',1,'*'),(1166,'d\'un pion','d pion',0,1,1.3,'D515',1,'*'),(1167,'d\'un pion adverse','d pion adverse',0,1,1.5667,'D5153162',1,'*'),(1168,'d\'un pion un','d pion un',0,1,1.4,'D515',1,'*'),(1169,'d\'une','d',0,0,0.3333,'D500',1,'*'),(1170,'d\'une dame','d dame',0,1,1.3333,'D535',1,'*'),(1171,'d\'une dame une','d dame une',0,1,1.4667,'D535',1,'*'),(1172,'d\'une partie','d partie',0,1,1.4,'D5163',1,'*'),(1173,'d\'une partie le','d partie le',0,1,1.5,'D51634',1,'*'),(1174,'d\'une seule','d seule',0,1,1.3667,'D524',1,'*'),(1175,'d\'une seule case','d seule case',0,1,1.5333,'D5242',1,'*'),(1176,'dame','dame',0,0,0.2667,'D500',1,'*'),(1177,'dame le','dame le',0,1,1.2333,'D540',1,'*'),(1178,'dame peut','dame peut',0,1,1.3,'D513',1,'*'),(1179,'dame peut capturer','dame peut capturer',0,1,1.6,'D5132136',1,'*'),(1180,'dame peut se','dame peut se',0,1,1.4,'D5132',1,'*'),(1181,'dame s\'il','dame s',0,1,1.3,'D524',1,'*'),(1182,'dame s\'il ne','dame s ne',0,1,1.4,'D5245',1,'*'),(1183,'dame une','dame une',0,1,1.2667,'D500',1,'*'),(1184,'dame une dame','dame une dame',0,1,1.4333,'D535',1,'*'),(1185,'dame voir','dame voir',0,1,1.3,'D516',1,'*'),(1186,'dame voir fiche','dame voir fiche',0,1,1.5,'D51612',1,'*'),(1187,'dames','dames',0,0,0.3333,'D520',1,'*'),(1188,'dames bon','dames bon',0,1,1.3,'D5215',1,'*'),(1189,'dames bon jeu','dames bon jeu',0,1,1.4333,'D52152',1,'*'),(1190,'dames il','dames il',0,1,1.2667,'D524',1,'*'),(1191,'dames il peut','dames il peut',0,1,1.4333,'D52413',1,'*'),(1192,'dames variante','dames variante',0,1,1.4667,'D521653',1,'*'),(1193,'dames variante règles','dames variante règles',0,1,1.7,'D5216536242',1,'*'),(1194,'dans','dans',0,0,0.2667,'D520',1,'*'),(1195,'dans chaque','dans chaque',0,1,1.3667,'D520',1,'*'),(1196,'dans chaque camp','dans chaque camp',0,1,1.5333,'D5251',1,'*'),(1197,'dans la','dans la',0,1,1.2333,'D524',1,'*'),(1198,'dans la possibilité','dans la possibilité',0,1,1.6333,'D52412143',1,'*'),(1199,'de','de',0,0,0.1333,'D000',1,'*'),(1200,'de 8','de 8',0,1,1.1333,'D000',1,'*'),(1201,'de 8 cases','de 8 cases',0,1,1.3333,'D200',1,'*'),(1202,'de capture','de capture',0,1,1.3333,'D2136',1,'*'),(1203,'de capture exemple','de capture exemple',0,1,1.6,'D21362514',1,'*'),(1204,'de dames','de dames',0,1,1.2667,'D520',1,'*'),(1205,'de dames variante','de dames variante',0,1,1.5667,'D521653',1,'*'),(1206,'de faire','de faire',0,1,1.2667,'D160',1,'*'),(1207,'de faire plusieurs','de faire plusieurs',0,1,1.6,'D1614262',1,'*'),(1208,'de jeu','de jeu',0,1,1.2,'D200',1,'*'),(1209,'de jeu le','de jeu le',0,1,1.3,'D240',1,'*'),(1210,'de jeu sont','de jeu sont',0,1,1.3667,'D253',1,'*'),(1211,'de l\'adversaire','de l',0,1,1.5,'D431626',1,'*'),(1212,'de l\'adversaire exemple','de l exemple',0,1,1.7667,'D4316262514',1,'*'),(1213,'de le','de le',0,1,1.1667,'D400',1,'*'),(1214,'de le faire','de le faire',0,1,1.3667,'D416',1,'*'),(1215,'de plateau','de plateau',0,1,1.3333,'D143',1,'*'),(1216,'de plateau but','de plateau but',0,1,1.4667,'D14313',1,'*'),(1217,'de ses','de ses',0,1,1.2,'D200',1,'*'),(1218,'de ses pions','de ses pions',0,1,1.4,'D2152',1,'*'),(1219,'de son','de son',0,1,1.2,'D250',1,'*'),(1220,'de son camp','de son camp',0,1,1.3667,'D25251',1,'*'),(1221,'déplacement','déplacement',0,0,0.7333,'D14253',1,'*'),(1222,'déplacement des','déplacement des',0,1,1.5,'D142532',1,'*'),(1223,'déplacement des dames','déplacement des dames',0,1,1.7,'D142532352',1,'*'),(1224,'déplacement des pions','déplacement des pions',0,1,1.7,'D142532152',1,'*'),(1225,'déplacement et','déplacement et',0,1,1.4667,'D14253',1,'*'),(1226,'déplacement et actions','déplacement et actions',0,1,1.7333,'D142532352',1,'*'),(1227,'déplacements','déplacements',0,0,0.8,'D142532',1,'*'),(1228,'déplacements et','déplacements et',0,1,1.5,'D1425323',1,'*'),(1229,'déplacements et actions','déplacements et actions',0,1,1.7667,'D14253232352',1,'*'),(1230,'déplacer','déplacer',0,0,0.5333,'D1426',1,'*'),(1231,'déplacer à','déplacer à',0,1,1.3333,'D1426',1,'*'),(1232,'déplacer à l\'horizontale','déplacer à l',0,1,1.8,'D1426462534',1,'*'),(1233,'déplacer d\'une','déplacer d',0,1,1.4667,'D142635',1,'*'),(1234,'déplacer d\'une seule','déplacer d seule',0,1,1.6667,'D14263524',1,'*'),(1235,'déplacer un','déplacer un',0,1,1.3667,'D14265',1,'*'),(1236,'déplacer un pion','déplacer un pion',0,1,1.5333,'D1426515',1,'*'),(1237,'déplacer une','déplacer une',0,1,1.4,'D14265',1,'*'),(1238,'déplacer une dame','déplacer une dame',0,1,1.5667,'D1426535',1,'*'),(1239,'dernière','dernière',0,0,0.5333,'D656',1,'*'),(1240,'dernière ligne','dernière ligne',0,1,1.4667,'D656425',1,'*'),(1241,'dernière ligne en','dernière ligne en',0,1,1.5667,'D656425',1,'*'),(1242,'dernières','dernières',0,0,0.6,'D6562',1,'*'),(1243,'dernières rangées','dernières rangées',0,1,1.5667,'D6562652',1,'*'),(1244,'dernières rangées du','dernières rangées du',0,1,1.6667,'D65626523',1,'*'),(1245,'déroule','déroule',0,0,0.4667,'D640',1,'*'),(1246,'déroule sur','déroule sur',0,1,1.3667,'D6426',1,'*'),(1247,'déroule sur un','déroule sur un',0,1,1.4667,'D64265',1,'*'),(1248,'déroulement','déroulement',0,0,0.7333,'D6453',1,'*'),(1249,'déroulement d\'une','déroulement d',0,1,1.5667,'D64535',1,'*'),(1250,'déroulement d\'une partie','déroulement d partie',0,1,1.8,'D64535163',1,'*'),(1251,'derrière','derrière',0,0,0.5333,'D600',1,'*'),(1252,'derrière celui-ci','derrière celui-ci',0,1,1.5667,'D6242',1,'*'),(1253,'derrière celui-ci exemple','derrière celui-ci exemple',0,1,1.8333,'D6242514',1,'*'),(1254,'derrière le','derrière le',0,1,1.3667,'D640',1,'*'),(1255,'derrière le pion','derrière le pion',0,1,1.5333,'D6415',1,'*'),(1256,'des','des',0,0,0.2,'D200',1,'*'),(1257,'des dames','des dames',0,1,1.3,'D2352',1,'*'),(1258,'des dames bon','des dames bon',0,1,1.4333,'D235215',1,'*'),(1259,'des dames il','des dames il',0,1,1.4,'D23524',1,'*'),(1260,'des pions','des pions',0,1,1.3,'D2152',1,'*'),(1261,'des pions il','des pions il',0,1,1.4,'D21524',1,'*'),(1262,'deux','deux',0,0,0.2667,'D200',1,'*'),(1263,'deux joueurs','deux joueurs',0,1,1.4,'D262',1,'*'),(1264,'deux joueurs possèdent','deux joueurs possèdent',0,1,1.7333,'D26212353',1,'*'),(1265,'deux pions','deux pions',0,1,1.3333,'D2152',1,'*'),(1266,'deux pions deviennent','deux pions deviennent',0,1,1.7,'D21523153',1,'*'),(1267,'devenir','devenir',0,0,0.4667,'D156',1,'*'),(1268,'devenir une','devenir une',0,1,1.3667,'D1565',1,'*'),(1269,'devenir une dame','devenir une dame',0,1,1.5333,'D156535',1,'*'),(1270,'deviennent','deviennent',0,0,0.6667,'D153',1,'*'),(1271,'deviennent respectivement','deviennent respectivement',0,1,1.8333,'D15362123153',1,'*'),(1272,'deviennent respectivement des','deviennent respectivement des',0,1,1.9667,'D153621231532',1,'*'),(1273,'différents','différents',0,0,0.6667,'D16532',1,'*'),(1274,'différents pions','différents pions',0,1,1.5333,'D16532152',1,'*'),(1275,'différents pions il','différents pions il',0,1,1.6333,'D165321524',1,'*'),(1276,'doit','doit',0,0,0.2667,'D000',1,'*'),(1277,'doit amener','doit amener',0,1,1.3667,'D560',1,'*'),(1278,'doit amener son','doit amener son',0,1,1.5,'D5625',1,'*'),(1279,'doit réussir','doit réussir',0,1,1.4,'D626',1,'*'),(1280,'doit réussir à','doit réussir à',0,1,1.4667,'D626',1,'*'),(1281,'du','du',0,0,0.1333,'D000',1,'*'),(1282,'du jeu','du jeu',0,1,1.2,'D200',1,'*'),(1283,'du jeu le','du jeu le',0,1,1.3,'D240',1,'*'),(1284,'du jeu pour','du jeu pour',0,1,1.3667,'D216',1,'*'),(1285,'du plateau','du plateau',0,1,1.3333,'D143',1,'*'),(1286,'du plateau de','du plateau de',0,1,1.4333,'D143',1,'*'),(1287,'du plateau laissant','du plateau laissant',0,1,1.6333,'D1434253',1,'*'),(1288,'effectuer','effectuer',0,0,0.6,'E1236',1,'*'),(1289,'effectuer d\'autre','effectuer d',0,1,1.5667,'E123636',1,'*'),(1290,'effectuer d\'autre mouvements','effectuer d mouvements',0,1,1.9333,'E12363651532',1,'*'),(1291,'effectuer un','effectuer un',0,1,1.4,'E12365',1,'*'),(1292,'effectuer un mouvement','effectuer un mouvement',0,1,1.7333,'E12365153',1,'*'),(1293,'effectuer une','effectuer une',0,1,1.4333,'E12365',1,'*'),(1294,'effectuer une capture','effectuer une capture',0,1,1.7,'E123652136',1,'*'),(1295,'en','en',0,0,0.1333,'E500',1,'*'),(1296,'en arrière','en arrière',0,1,1.3333,'E560',1,'*'),(1297,'en arrière la','en arrière la',0,1,1.4333,'E564',1,'*'),(1298,'en atterrissant','en atterrissant',0,1,1.5,'E536253',1,'*'),(1299,'en atterrissant sur','en atterrissant sur',0,1,1.6333,'E53625326',1,'*'),(1300,'en dame','en dame',0,1,1.2333,'E535',1,'*'),(1301,'en dame s\'il','en dame s',0,1,1.4,'E53524',1,'*'),(1302,'en face','en face',0,1,1.2333,'E512',1,'*'),(1303,'en face à','en face à',0,1,1.3,'E512',1,'*'),(1304,'en face de','en face de',0,1,1.3333,'E5123',1,'*'),(1305,'en sautant','en sautant',0,1,1.3333,'E52353',1,'*'),(1306,'en sautant au-dessus','en sautant au-dessus',0,1,1.6667,'E523532',1,'*'),(1307,'enlevés','enlevés',0,0,0.4667,'E5412',1,'*'),(1308,'enlevés du','enlevés du',0,1,1.3333,'E54123',1,'*'),(1309,'enlevés du plateau','enlevés du plateau',0,1,1.6,'E54123143',1,'*'),(1310,'entre','entre',0,0,0.3333,'E536',1,'*'),(1311,'entre chaque','entre chaque',0,1,1.4,'E5362',1,'*'),(1312,'entre chaque capture','entre chaque capture',0,1,1.6667,'E5362136',1,'*'),(1313,'est','est',0,0,0.2,'E230',1,'*'),(1314,'est dans','est dans',0,1,1.2667,'E2352',1,'*'),(1315,'est dans la','est dans la',0,1,1.3667,'E23524',1,'*'),(1316,'est obligé','est obligé',0,1,1.3333,'E23142',1,'*'),(1317,'est obligé de','est obligé de',0,1,1.4333,'E231423',1,'*'),(1318,'et','et',0,0,0.1333,'E300',1,'*'),(1319,'et à','et à',0,1,1.1333,'E300',1,'*'),(1320,'et à la','et à la',0,1,1.2333,'E340',1,'*'),(1321,'et actions','et actions',0,1,1.3333,'E32352',1,'*'),(1322,'et actions d\'un','et actions d',0,1,1.5,'E3235235',1,'*'),(1323,'et actions d\'une','et actions d',0,1,1.5333,'E3235235',1,'*'),(1324,'et blancs','et blancs',0,1,1.3,'E31452',1,'*'),(1325,'et blancs sur','et blancs sur',0,1,1.4333,'E314526',1,'*'),(1326,'et dernières','et dernières',0,1,1.4,'E36562',1,'*'),(1327,'et dernières rangées','et dernières rangées',0,1,1.6667,'E36562652',1,'*'),(1328,'et en','et en',0,1,1.1667,'E350',1,'*'),(1329,'et en atterrissant','et en atterrissant',0,1,1.6,'E3536253',1,'*'),(1330,'et ne','et ne',0,1,1.1667,'E350',1,'*'),(1331,'et ne peut','et ne peut',0,1,1.3333,'E3513',1,'*'),(1332,'et restrictions','et restrictions',0,1,1.5,'E362362352',1,'*'),(1333,'et restrictions si','et restrictions si',0,1,1.6,'E362362352',1,'*'),(1334,'exemple','exemple',0,0,0.4667,'E2514',1,'*'),(1335,'exemple de','exemple de',0,1,1.3333,'E25143',1,'*'),(1336,'exemple de plateau','exemple de plateau',0,1,1.6,'E25143143',1,'*'),(1337,'exemple déplacement','exemple déplacement',0,1,1.6333,'E2514314253',1,'*'),(1338,'exemple déplacement et','exemple déplacement et',0,1,1.7333,'E2514314253',1,'*'),(1339,'exemple déplacements','exemple déplacements',0,1,1.6667,'E25143142532',1,'*'),(1340,'exemple déplacements et','exemple déplacements et',0,1,1.7667,'E251431425323',1,'*'),(1341,'exemple déroulement','exemple déroulement',0,1,1.6333,'E251436453',1,'*'),(1342,'exemple déroulement d\'une','exemple déroulement d',0,1,1.8333,'E2514364535',1,'*'),(1343,'exemple obligations','exemple obligations',0,1,1.6333,'E2514142352',1,'*'),(1344,'exemple obligations et','exemple obligations et',0,1,1.7333,'E25141423523',1,'*'),(1345,'face','face',0,0,0.2667,'F200',1,'*'),(1346,'face à','face à',0,1,1.2,'F200',1,'*'),(1347,'face à l\'un','face à l',0,1,1.3667,'F245',1,'*'),(1348,'face de','face de',0,1,1.2333,'F230',1,'*'),(1349,'face de son','face de son',0,1,1.3667,'F2325',1,'*'),(1350,'faire','faire',0,0,0.3333,'F600',1,'*'),(1351,'faire atteindre','faire atteindre',0,1,1.5,'F63536',1,'*'),(1352,'faire atteindre la','faire atteindre la',0,1,1.6,'F635364',1,'*'),(1353,'faire et','faire et',0,1,1.2667,'F630',1,'*'),(1354,'faire et ne','faire et ne',0,1,1.3667,'F635',1,'*'),(1355,'faire plusieurs','faire plusieurs',0,1,1.5,'F614262',1,'*'),(1356,'faire plusieurs saut','faire plusieurs saut',0,1,1.6667,'F6142623',1,'*'),(1357,'fait','fait',0,0,0.2667,'F300',1,'*'),(1358,'fait via','fait via',0,1,1.2667,'F310',1,'*'),(1359,'fait via un','fait via un',0,1,1.3667,'F315',1,'*'),(1360,'fiche','fiche',0,0,0.3333,'F200',1,'*'),(1361,'fiche déplacement','fiche déplacement',0,1,1.5667,'F2314253',1,'*'),(1362,'fiche déplacement des','fiche déplacement des',0,1,1.7,'F23142532',1,'*'),(1363,'gagner','gagner',0,0,0.4,'G560',1,'*'),(1364,'gagner une','gagner une',0,1,1.3333,'G565',1,'*'),(1365,'gagner une partie','gagner une partie',0,1,1.5667,'G565163',1,'*'),(1366,'il','il',0,0,0.1333,'I400',1,'*'),(1367,'il est','il est',0,1,1.2,'I423',1,'*'),(1368,'il est obligé','il est obligé',0,1,1.4333,'I423142',1,'*'),(1369,'il le','il le',0,1,1.1667,'I400',1,'*'),(1370,'il le transforme','il le transforme',0,1,1.5333,'I43652165',1,'*'),(1371,'il peut','il peut',0,1,1.2333,'I413',1,'*'),(1372,'il peut capturer','il peut capturer',0,1,1.5333,'I4132136',1,'*'),(1373,'il peut choisir','il peut choisir',0,1,1.5,'I41326',1,'*'),(1374,'il peut déplacer','il peut déplacer',0,1,1.5333,'I4131426',1,'*'),(1375,'index','index',0,0,0.3333,'I532',1,'*'),(1376,'jeu','jeu',0,0,0.2,'J000',1,'*'),(1377,'jeu de','jeu de',0,1,1.2,'J300',1,'*'),(1378,'jeu de dames','jeu de dames',0,1,1.4,'J352',1,'*'),(1379,'jeu le','jeu le',0,1,1.2,'J400',1,'*'),(1380,'jeu le joueur','jeu le joueur',0,1,1.4333,'J426',1,'*'),(1381,'jeu le plateau','jeu le plateau',0,1,1.4667,'J4143',1,'*'),(1382,'jeu pour','jeu pour',0,1,1.2667,'J160',1,'*'),(1383,'jeu pour pouvoir','jeu pour pouvoir',0,1,1.5333,'J1616',1,'*'),(1384,'jeu se','jeu se',0,1,1.2,'J000',1,'*'),(1385,'jeu se déroule','jeu se déroule',0,1,1.4667,'J364',1,'*'),(1386,'jeu sont','jeu sont',0,1,1.2667,'J530',1,'*'),(1387,'jeu sont laissées','jeu sont laissées',0,1,1.5667,'J5342',1,'*'),(1388,'joueur','joueur',0,0,0.4,'J600',1,'*'),(1389,'joueur arrive','joueur arrive',0,1,1.4333,'J610',1,'*'),(1390,'joueur arrive à','joueur arrive à',0,1,1.5,'J610',1,'*'),(1391,'joueur ayant','joueur ayant',0,1,1.4,'J653',1,'*'),(1392,'joueur ayant les','joueur ayant les',0,1,1.5333,'J65342',1,'*'),(1393,'joueur doit','joueur doit',0,1,1.3667,'J630',1,'*'),(1394,'joueur doit amener','joueur doit amener',0,1,1.6,'J6356',1,'*'),(1395,'joueur doit réussir','joueur doit réussir',0,1,1.6333,'J63626',1,'*'),(1396,'joueur est','joueur est',0,1,1.3333,'J623',1,'*'),(1397,'joueur est dans','joueur est dans',0,1,1.5,'J62352',1,'*'),(1398,'joueur peut','joueur peut',0,1,1.3667,'J613',1,'*'),(1399,'joueur peut effectuer','joueur peut effectuer',0,1,1.7,'J6131236',1,'*'),(1400,'joueurs','joueurs',0,0,0.4667,'J620',1,'*'),(1401,'joueurs possèdent','joueurs possèdent',0,1,1.5667,'J6212353',1,'*'),(1402,'joueurs possèdent respectivement','joueurs possèdent respectivement',0,1,2,'J621235362123153',1,'*'),(1403,'joueurs sont','joueurs sont',0,1,1.4,'J6253',1,'*'),(1404,'joueurs sont enlevés','joueurs sont enlevés',0,1,1.6667,'J62535412',1,'*'),(1405,'l\'adversaire','l',0,0,0.8,'L31626',1,'*'),(1406,'l\'adversaire exemple','l exemple',0,1,1.6667,'L316262514',1,'*'),(1407,'l\'adversaire exemple déroulement','l exemple déroulement',0,1,2,'L31626251436453',1,'*'),(1408,'l\'horizontale','l',0,0,0.8667,'L62534',1,'*'),(1409,'l\'horizontale et','l et',0,1,1.5333,'L625343',1,'*'),(1410,'l\'horizontale et à','l et à',0,1,1.6,'L625343',1,'*'),(1411,'l\'horizontale ou','l ou',0,1,1.5333,'L62534',1,'*'),(1412,'l\'horizontale ou à','l ou à',0,1,1.6,'L62534',1,'*'),(1413,'l\'un','l',0,0,0.2667,'L500',1,'*'),(1414,'l\'un de','l de',0,1,1.2333,'L530',1,'*'),(1415,'l\'un de ses','l de ses',0,1,1.3667,'L532',1,'*'),(1416,'la','la',0,0,0.1333,'L000',1,'*'),(1417,'la capture','la capture',0,1,1.3333,'L2136',1,'*'),(1418,'la capture d\'un','la capture d',0,1,1.5,'L213635',1,'*'),(1419,'la case','la case',0,1,1.2333,'L200',1,'*'),(1420,'la case qui','la case qui',0,1,1.3667,'L200',1,'*'),(1421,'la case vide','la case vide',0,1,1.4,'L213',1,'*'),(1422,'la dernière','la dernière',0,1,1.3667,'L3656',1,'*'),(1423,'la dernière ligne','la dernière ligne',0,1,1.5667,'L3656425',1,'*'),(1424,'la partie','la partie',0,1,1.3,'L163',1,'*'),(1425,'la partie à','la partie à',0,1,1.3667,'L163',1,'*'),(1426,'la possibilité','la possibilité',0,1,1.4667,'L12143',1,'*'),(1427,'la possibilité de','la possibilité de',0,1,1.5667,'L12143',1,'*'),(1428,'la verticale','la verticale',0,1,1.4,'L16324',1,'*'),(1429,'la verticale sur','la verticale sur',0,1,1.5333,'L1632426',1,'*'),(1430,'la verticale un','la verticale un',0,1,1.5,'L163245',1,'*'),(1431,'laissant','laissant',0,0,0.5333,'L253',1,'*'),(1432,'laissant la','laissant la',0,1,1.3667,'L2534',1,'*'),(1433,'laissant la case','laissant la case',0,1,1.5333,'L25342',1,'*'),(1434,'laissées','laissées',0,0,0.5333,'L200',1,'*'),(1435,'laissées vides','laissées vides',0,1,1.4667,'L2132',1,'*'),(1436,'laissées vides exemple','laissées vides exemple',0,1,1.7333,'L2132514',1,'*'),(1437,'le','le',0,0,0.1333,'L000',1,'*'),(1438,'le faire','le faire',0,1,1.2667,'L160',1,'*'),(1439,'le faire et','le faire et',0,1,1.3667,'L163',1,'*'),(1440,'le jeu','le jeu',0,1,1.2,'L200',1,'*'),(1441,'le jeu se','le jeu se',0,1,1.3,'L200',1,'*'),(1442,'le joueur','le joueur',0,1,1.3,'L260',1,'*'),(1443,'le joueur ayant','le joueur ayant',0,1,1.5,'L2653',1,'*'),(1444,'le joueur doit','le joueur doit',0,1,1.4667,'L263',1,'*'),(1445,'le joueur est','le joueur est',0,1,1.4333,'L2623',1,'*'),(1446,'le joueur peut','le joueur peut',0,1,1.4667,'L2613',1,'*'),(1447,'le pion','le pion',0,1,1.2333,'L150',1,'*'),(1448,'le pion adverse','le pion adverse',0,1,1.5,'L153162',1,'*'),(1449,'le plateau','le plateau',0,1,1.3333,'L143',1,'*'),(1450,'le plateau le','le plateau le',0,1,1.4333,'L1434',1,'*'),(1451,'le transforme','le transforme',0,1,1.4333,'L3652165',1,'*'),(1452,'le transforme en','le transforme en',0,1,1.5333,'L3652165',1,'*'),(1453,'les','les',0,0,0.2,'L200',1,'*'),(1454,'les deux','les deux',0,1,1.2667,'L232',1,'*'),(1455,'les deux joueurs','les deux joueurs',0,1,1.5333,'L23262',1,'*'),(1456,'les joueurs','les joueurs',0,1,1.3667,'L262',1,'*'),(1457,'les joueurs sont','les joueurs sont',0,1,1.5333,'L26253',1,'*'),(1458,'les pions','les pions',0,1,1.3,'L2152',1,'*'),(1459,'les pions blancs','les pions blancs',0,1,1.5333,'L21521452',1,'*'),(1460,'les pions de','les pions de',0,1,1.4,'L21523',1,'*'),(1461,'les premières','les premières',0,1,1.4333,'L216562',1,'*'),(1462,'les premières et','les premières et',0,1,1.5333,'L2165623',1,'*'),(1463,'les suivants','les suivants',0,1,1.4,'L21532',1,'*'),(1464,'les suivants il','les suivants il',0,1,1.5,'L215324',1,'*'),(1465,'ligne','ligne',0,0,0.3333,'L250',1,'*'),(1466,'ligne en','ligne en',0,1,1.2667,'L250',1,'*'),(1467,'ligne en face','ligne en face',0,1,1.4333,'L2512',1,'*'),(1468,'mouvement','mouvement',0,0,0.6,'M153',1,'*'),(1469,'mouvement parmi','mouvement parmi',0,1,1.5,'M153165',1,'*'),(1470,'mouvement parmi les','mouvement parmi les',0,1,1.6333,'M15316542',1,'*'),(1471,'mouvements','mouvements',0,0,0.6667,'M1532',1,'*'),(1472,'mouvements si','mouvements si',0,1,1.4333,'M1532',1,'*'),(1473,'mouvements si le','mouvements si le',0,1,1.5333,'M15324',1,'*'),(1474,'n\'importe','n',0,0,0.6,'N163',1,'*'),(1475,'n\'importe quelle','n quelle',0,1,1.5333,'N16324',1,'*'),(1476,'n\'importe quelle case','n quelle case',0,1,1.7,'N163242',1,'*'),(1477,'ne','ne',0,0,0.1333,'N000',1,'*'),(1478,'ne peut','ne peut',0,1,1.2333,'N130',1,'*'),(1479,'ne peut pas','ne peut pas',0,1,1.3667,'N1312',1,'*'),(1480,'ne peut revenir','ne peut revenir',0,1,1.5,'N136156',1,'*'),(1481,'ne reste','ne reste',0,1,1.2667,'N623',1,'*'),(1482,'ne reste qu\'un','ne reste qu',0,1,1.4667,'N62325',1,'*'),(1483,'noirs','noirs',0,0,0.3333,'N620',1,'*'),(1484,'noirs et','noirs et',0,1,1.2667,'N623',1,'*'),(1485,'noirs et blancs','noirs et blancs',0,1,1.5,'N6231452',1,'*'),(1486,'non','non',0,0,0.2,'N000',1,'*'),(1487,'non catégorisé','non catégorisé',0,1,1.4667,'N23262',1,'*'),(1488,'obligations','obligations',0,0,0.7333,'O142352',1,'*'),(1489,'obligations et','obligations et',0,1,1.4667,'O1423523',1,'*'),(1490,'obligations et restrictions','obligations et restrictions',0,1,1.9,'O142352362362352',1,'*'),(1491,'obligé','obligé',0,0,0.4,'O142',1,'*'),(1492,'obligé de','obligé de',0,1,1.3,'O1423',1,'*'),(1493,'obligé de le','obligé de le',0,1,1.4,'O14234',1,'*'),(1494,'ou','ou',0,0,0.1333,'O000',1,'*'),(1495,'ou à','ou à',0,1,1.1333,'O000',1,'*'),(1496,'ou à la','ou à la',0,1,1.2333,'O400',1,'*'),(1497,'par','par',0,0,0.2,'P600',1,'*'),(1498,'par les','par les',0,1,1.2333,'P642',1,'*'),(1499,'par les joueurs','par les joueurs',0,1,1.5,'P64262',1,'*'),(1500,'parmi','parmi',0,0,0.3333,'P650',1,'*'),(1501,'parmi les','parmi les',0,1,1.3,'P6542',1,'*'),(1502,'parmi les suivants','parmi les suivants',0,1,1.6,'P65421532',1,'*'),(1503,'partie','partie',0,0,0.4,'P630',1,'*'),(1504,'partie à','partie à',0,1,1.2667,'P630',1,'*'),(1505,'partie à chaque','partie à chaque',0,1,1.5,'P632',1,'*'),(1506,'partie le','partie le',0,1,1.3,'P634',1,'*'),(1507,'partie le joueur','partie le joueur',0,1,1.5333,'P63426',1,'*'),(1508,'pas','pas',0,0,0.2,'P200',1,'*'),(1509,'pas effectuer','pas effectuer',0,1,1.4333,'P21236',1,'*'),(1510,'pas effectuer d\'autre','pas effectuer d',0,1,1.7,'P2123636',1,'*'),(1511,'peut','peut',0,0,0.2667,'P300',1,'*'),(1512,'peut capturer','peut capturer',0,1,1.4333,'P32136',1,'*'),(1513,'peut capturer un','peut capturer un',0,1,1.5333,'P321365',1,'*'),(1514,'peut choisir','peut choisir',0,1,1.4,'P326',1,'*'),(1515,'peut choisir entre','peut choisir entre',0,1,1.6,'P326536',1,'*'),(1516,'peut déplacer','peut déplacer',0,1,1.4333,'P31426',1,'*'),(1517,'peut déplacer un','peut déplacer un',0,1,1.5333,'P314265',1,'*'),(1518,'peut déplacer une','peut déplacer une',0,1,1.5667,'P314265',1,'*'),(1519,'peut effectuer','peut effectuer',0,1,1.4667,'P31236',1,'*'),(1520,'peut effectuer un','peut effectuer un',0,1,1.5667,'P312365',1,'*'),(1521,'peut effectuer une','peut effectuer une',0,1,1.6,'P312365',1,'*'),(1522,'peut pas','peut pas',0,1,1.2667,'P312',1,'*'),(1523,'peut pas effectuer','peut pas effectuer',0,1,1.6,'P3121236',1,'*'),(1524,'peut revenir','peut revenir',0,1,1.4,'P36156',1,'*'),(1525,'peut revenir en','peut revenir en',0,1,1.5,'P361565',1,'*'),(1526,'peut se','peut se',0,1,1.2333,'P320',1,'*'),(1527,'peut se déplacer','peut se déplacer',0,1,1.5333,'P3231426',1,'*'),(1528,'pion','pion',0,0,0.2667,'P500',1,'*'),(1529,'pion à','pion à',0,1,1.2,'P500',1,'*'),(1530,'pion à la','pion à la',0,1,1.3,'P540',1,'*'),(1531,'pion adverse','pion adverse',0,1,1.4,'P53162',1,'*'),(1532,'pion adverse en','pion adverse en',0,1,1.5,'P531625',1,'*'),(1533,'pion adverse pour','pion adverse pour',0,1,1.5667,'P5316216',1,'*'),(1534,'pion adverse se','pion adverse se',0,1,1.5,'P53162',1,'*'),(1535,'pion adverse selon','pion adverse selon',0,1,1.6,'P5316245',1,'*'),(1536,'pion capturé','pion capturé',0,1,1.4,'P52136',1,'*'),(1537,'pion capturé par','pion capturé par',0,1,1.5333,'P5213616',1,'*'),(1538,'pion dans','pion dans',0,1,1.3,'P5352',1,'*'),(1539,'pion dans chaque','pion dans chaque',0,1,1.5333,'P5352',1,'*'),(1540,'pion ne','pion ne',0,1,1.2333,'P500',1,'*'),(1541,'pion ne peut','pion ne peut',0,1,1.4,'P513',1,'*'),(1542,'pion peut','pion peut',0,1,1.3,'P513',1,'*'),(1543,'pion peut se','pion peut se',0,1,1.4,'P5132',1,'*'),(1544,'pion un','pion un',0,1,1.2333,'P500',1,'*'),(1545,'pion un pion','pion un pion',0,1,1.4,'P515',1,'*'),(1546,'pion voir','pion voir',0,1,1.3,'P516',1,'*'),(1547,'pion voir fiche','pion voir fiche',0,1,1.5,'P51612',1,'*'),(1548,'pions','pions',0,0,0.3333,'P520',1,'*'),(1549,'pions blancs','pions blancs',0,1,1.4,'P521452',1,'*'),(1550,'pions blancs commencent','pions blancs commencent',0,1,1.7667,'P5214525253',1,'*'),(1551,'pions de','pions de',0,1,1.2667,'P523',1,'*'),(1552,'pions de l\'adversaire','pions de l',0,1,1.7,'P523431626',1,'*'),(1553,'pions deviennent','pions deviennent',0,1,1.5333,'P523153',1,'*'),(1554,'pions deviennent respectivement','pions deviennent respectivement',0,1,2,'P52315362123153',1,'*'),(1555,'pions il','pions il',0,1,1.2667,'P524',1,'*'),(1556,'pions il le','pions il le',0,1,1.3667,'P524',1,'*'),(1557,'pions il peut','pions il peut',0,1,1.4333,'P52413',1,'*'),(1558,'pions noirs','pions noirs',0,1,1.3667,'P52562',1,'*'),(1559,'pions noirs et','pions noirs et',0,1,1.4667,'P525623',1,'*'),(1560,'plateau','plateau',0,0,0.4667,'P430',1,'*'),(1561,'plateau but','plateau but',0,1,1.3667,'P4313',1,'*'),(1562,'plateau but du','plateau but du',0,1,1.4667,'P4313',1,'*'),(1563,'plateau de','plateau de',0,1,1.3333,'P430',1,'*'),(1564,'plateau de 8','plateau de 8',0,1,1.4,'P430',1,'*'),(1565,'plateau de jeu','plateau de jeu',0,1,1.4667,'P432',1,'*'),(1566,'plateau laissant','plateau laissant',0,1,1.5333,'P434253',1,'*'),(1567,'plateau laissant la','plateau laissant la',0,1,1.6333,'P4342534',1,'*'),(1568,'plateau le','plateau le',0,1,1.3333,'P434',1,'*'),(1569,'plateau le jeu','plateau le jeu',0,1,1.4667,'P4342',1,'*'),(1570,'plusieurs','plusieurs',0,0,0.6,'P4262',1,'*'),(1571,'plusieurs saut','plusieurs saut',0,1,1.4667,'P42623',1,'*'),(1572,'plusieurs saut avec','plusieurs saut avec',0,1,1.6333,'P4262312',1,'*'),(1573,'possèdent','possèdent',0,0,0.6,'P2353',1,'*'),(1574,'possèdent respectivement','possèdent respectivement',0,1,1.8,'P235362123153',1,'*'),(1575,'possèdent respectivement 16','possèdent respectivement 16',0,1,1.9,'P235362123153',1,'*'),(1576,'possibilité','possibilité',0,0,0.7333,'P2143',1,'*'),(1577,'possibilité de','possibilité de',0,1,1.4667,'P2143',1,'*'),(1578,'possibilité de faire','possibilité de faire',0,1,1.6667,'P214316',1,'*'),(1579,'pour','pour',0,0,0.2667,'P600',1,'*'),(1580,'pour devenir','pour devenir',0,1,1.4,'P63156',1,'*'),(1581,'pour devenir une','pour devenir une',0,1,1.5333,'P631565',1,'*'),(1582,'pour pouvoir','pour pouvoir',0,1,1.4,'P616',1,'*'),(1583,'pour pouvoir gagner','pour pouvoir gagner',0,1,1.6333,'P616256',1,'*'),(1584,'pouvoir','pouvoir',0,0,0.4667,'P600',1,'*'),(1585,'pouvoir gagner','pouvoir gagner',0,1,1.4667,'P6256',1,'*'),(1586,'pouvoir gagner une','pouvoir gagner une',0,1,1.6,'P62565',1,'*'),(1587,'premières','premières',0,0,0.6,'P6562',1,'*'),(1588,'premières et','premières et',0,1,1.4,'P65623',1,'*'),(1589,'premières et dernières','premières et dernières',0,1,1.7333,'P656236562',1,'*'),(1590,'promotion','promotion',0,0,0.6,'P6535',1,'*'),(1591,'promotion quand','promotion quand',0,1,1.5,'P6535253',1,'*'),(1592,'promotion quand un','promotion quand un',0,1,1.6,'P65352535',1,'*'),(1593,'qu\'un','qu',0,0,0.3333,'Q500',1,'*'),(1594,'qu\'un pion','qu pion',0,1,1.3333,'Q515',1,'*'),(1595,'qu\'un pion dans','qu pion dans',0,1,1.5,'Q515352',1,'*'),(1596,'quand','quand',0,0,0.3333,'Q530',1,'*'),(1597,'quand un','quand un',0,1,1.2667,'Q535',1,'*'),(1598,'quand un joueur','quand un joueur',0,1,1.5,'Q53526',1,'*'),(1599,'quelle','quelle',0,0,0.4,'Q400',1,'*'),(1600,'quelle case','quelle case',0,1,1.3667,'Q420',1,'*'),(1601,'quelle case vide','quelle case vide',0,1,1.5333,'Q4213',1,'*'),(1602,'qui','qui',0,0,0.2,'Q000',1,'*'),(1603,'qui se','qui se',0,1,1.2,'Q000',1,'*'),(1604,'qui se situe','qui se situe',0,1,1.4,'Q300',1,'*'),(1605,'rangées','rangées',0,0,0.4667,'R520',1,'*'),(1606,'rangées du','rangées du',0,1,1.3333,'R523',1,'*'),(1607,'rangées du plateau','rangées du plateau',0,1,1.6,'R523143',1,'*'),(1608,'regles','regles',0,0,0.4,'R242',1,'*'),(1609,'règles du','règles du',0,1,1.3,'R2423',1,'*'),(1610,'règles du jeu','règles du jeu',0,1,1.4333,'R24232',1,'*'),(1611,'respectivement','respectivement',0,0,0.9333,'R2123153',1,'*'),(1612,'respectivement 16','respectivement 16',0,1,1.5667,'R2123153',1,'*'),(1613,'respectivement 16 pions','respectivement 16 pions',0,1,1.7667,'R2123153152',1,'*'),(1614,'respectivement des','respectivement des',0,1,1.6,'R21231532',1,'*'),(1615,'respectivement des dames','respectivement des dames',0,1,1.8,'R21231532352',1,'*'),(1616,'reste','reste',0,0,0.3333,'R230',1,'*'),(1617,'reste qu\'un','reste qu',0,1,1.3667,'R2325',1,'*'),(1618,'reste qu\'un pion','reste qu pion',0,1,1.5333,'R232515',1,'*'),(1619,'restrictions','restrictions',0,0,0.8,'R2362352',1,'*'),(1620,'restrictions si','restrictions si',0,1,1.5,'R2362352',1,'*'),(1621,'restrictions si le','restrictions si le',0,1,1.6,'R23623524',1,'*'),(1622,'réussir','réussir',0,0,0.4667,'R260',1,'*'),(1623,'réussir à','réussir à',0,1,1.3,'R260',1,'*'),(1624,'réussir à capturer','réussir à capturer',0,1,1.6,'R262136',1,'*'),(1625,'revenir','revenir',0,0,0.4667,'R156',1,'*'),(1626,'revenir en','revenir en',0,1,1.3333,'R1565',1,'*'),(1627,'revenir en arrière','revenir en arrière',0,1,1.6,'R15656',1,'*'),(1628,'s\'il','s',0,0,0.2667,'S400',1,'*'),(1629,'s\'il ne','s ne',0,1,1.2333,'S450',1,'*'),(1630,'s\'il ne reste','s ne reste',0,1,1.4333,'S45623',1,'*'),(1631,'saut','saut',0,0,0.2667,'S300',1,'*'),(1632,'saut avec','saut avec',0,1,1.3,'S312',1,'*'),(1633,'saut avec différents','saut avec différents',0,1,1.6667,'S312316532',1,'*'),(1634,'saut sur','saut sur',0,1,1.2667,'S326',1,'*'),(1635,'saut sur la','saut sur la',0,1,1.3667,'S3264',1,'*'),(1636,'sautant','sautant',0,0,0.4667,'S353',1,'*'),(1637,'sautant au-dessus','sautant au-dessus',0,1,1.5667,'S3532',1,'*'),(1638,'sautant au-dessus et','sautant au-dessus et',0,1,1.6667,'S35323',1,'*'),(1639,'se','se',0,0,0.1333,'S000',1,'*'),(1640,'se déplacer','se déplacer',0,1,1.3667,'S31426',1,'*'),(1641,'se déplacer à','se déplacer à',0,1,1.4333,'S31426',1,'*'),(1642,'se déplacer d\'une','se déplacer d',0,1,1.5667,'S3142635',1,'*'),(1643,'se déroule','se déroule',0,1,1.3333,'S364',1,'*'),(1644,'se déroule sur','se déroule sur',0,1,1.4667,'S36426',1,'*'),(1645,'se fait','se fait',0,1,1.2333,'S130',1,'*'),(1646,'se fait via','se fait via',0,1,1.3667,'S131',1,'*'),(1647,'se situe','se situe',0,1,1.2667,'S300',1,'*'),(1648,'se situe derrière','se situe derrière',0,1,1.5667,'S360',1,'*'),(1649,'selon','selon',0,0,0.3333,'S450',1,'*'),(1650,'selon certaines','selon certaines',0,1,1.5,'S4526352',1,'*'),(1651,'selon certaines conditions','selon certaines conditions',0,1,1.8667,'S45263525352',1,'*'),(1652,'ses','ses',0,0,0.2,'S000',1,'*'),(1653,'ses pions','ses pions',0,1,1.3,'S152',1,'*'),(1654,'ses pions il','ses pions il',0,1,1.4,'S1524',1,'*'),(1655,'seule','seule',0,0,0.3333,'S400',1,'*'),(1656,'seule case','seule case',0,1,1.3333,'S420',1,'*'),(1657,'seule case à','seule case à',0,1,1.4,'S420',1,'*'),(1658,'si','si',0,0,0.1333,'S000',1,'*'),(1659,'si le','si le',0,1,1.1667,'S400',1,'*'),(1660,'si le joueur','si le joueur',0,1,1.4,'S426',1,'*'),(1661,'situe','situe',0,0,0.3333,'S300',1,'*'),(1662,'situe derrière','situe derrière',0,1,1.4667,'S360',1,'*'),(1663,'situe derrière le','situe derrière le',0,1,1.5667,'S364',1,'*'),(1664,'son','son',0,0,0.2,'S500',1,'*'),(1665,'son camp','son camp',0,1,1.2667,'S5251',1,'*'),(1666,'son camp exemple','son camp exemple',0,1,1.5333,'S52512514',1,'*'),(1667,'son pion','son pion',0,1,1.2667,'S515',1,'*'),(1668,'son pion à','son pion à',0,1,1.3333,'S515',1,'*'),(1669,'sont','sont',0,0,0.2667,'S530',1,'*'),(1670,'sont enlevés','sont enlevés',0,1,1.4,'S535412',1,'*'),(1671,'sont enlevés du','sont enlevés du',0,1,1.5,'S5354123',1,'*'),(1672,'sont laissées','sont laissées',0,1,1.4333,'S5342',1,'*'),(1673,'sont laissées vides','sont laissées vides',0,1,1.6333,'S5342132',1,'*'),(1674,'suivants','suivants',0,0,0.5333,'S1532',1,'*'),(1675,'suivants il','suivants il',0,1,1.3667,'S15324',1,'*'),(1676,'suivants il peut','suivants il peut',0,1,1.5333,'S1532413',1,'*'),(1677,'super','super',0,0,0.3333,'S160',1,'*'),(1678,'super utilisateur','super utilisateur',0,1,1.5667,'S1634236',1,'*'),(1679,'sur','sur',0,0,0.2,'S600',1,'*'),(1680,'sur 8','sur 8',0,1,1.1667,'S600',1,'*'),(1681,'sur 8 les','sur 8 les',0,1,1.3,'S642',1,'*'),(1682,'sur cette','sur cette',0,1,1.3,'S623',1,'*'),(1683,'sur cette variante','sur cette variante',0,1,1.6,'S6231653',1,'*'),(1684,'sur la','sur la',0,1,1.2,'S640',1,'*'),(1685,'sur la case','sur la case',0,1,1.3667,'S642',1,'*'),(1686,'sur n\'importe','sur n',0,1,1.4333,'S65163',1,'*'),(1687,'sur n\'importe quelle','sur n quelle',0,1,1.6667,'S6516324',1,'*'),(1688,'sur un','sur un',0,1,1.2,'S650',1,'*'),(1689,'sur un plateau','sur un plateau',0,1,1.4667,'S65143',1,'*'),(1690,'sur une','sur une',0,1,1.2333,'S650',1,'*'),(1691,'sur une case','sur une case',0,1,1.4,'S652',1,'*'),(1692,'toujours','toujours',0,0,0.5333,'T262',1,'*'),(1693,'toujours la','toujours la',0,1,1.3667,'T2624',1,'*'),(1694,'toujours la partie','toujours la partie',0,1,1.6,'T2624163',1,'*'),(1695,'tour','tour',0,0,0.2667,'T600',1,'*'),(1696,'tour de','tour de',0,1,1.2333,'T630',1,'*'),(1697,'tour de jeu','tour de jeu',0,1,1.3667,'T632',1,'*'),(1698,'tous','tous',0,0,0.2667,'T200',1,'*'),(1699,'tous les','tous les',0,1,1.2667,'T242',1,'*'),(1700,'tous les pions','tous les pions',0,1,1.4667,'T242152',1,'*'),(1701,'transforme','transforme',0,0,0.6667,'T652165',1,'*'),(1702,'transforme en','transforme en',0,1,1.4333,'T652165',1,'*'),(1703,'transforme en dame','transforme en dame',0,1,1.6,'T65216535',1,'*'),(1704,'un','un',0,0,0.1333,'U500',1,'*'),(1705,'un joueur','un joueur',0,1,1.3,'U526',1,'*'),(1706,'un joueur arrive','un joueur arrive',0,1,1.5333,'U5261',1,'*'),(1707,'un mouvement','un mouvement',0,1,1.4,'U5153',1,'*'),(1708,'un mouvement parmi','un mouvement parmi',0,1,1.6,'U5153165',1,'*'),(1709,'un pion','un pion',0,1,1.2333,'U515',1,'*'),(1710,'un pion adverse','un pion adverse',0,1,1.5,'U5153162',1,'*'),(1711,'un pion ne','un pion ne',0,1,1.3333,'U515',1,'*'),(1712,'un pion peut','un pion peut',0,1,1.4,'U51513',1,'*'),(1713,'un pion voir','un pion voir',0,1,1.4,'U51516',1,'*'),(1714,'un plateau','un plateau',0,1,1.3333,'U5143',1,'*'),(1715,'un plateau de','un plateau de',0,1,1.4333,'U5143',1,'*'),(1716,'un saut','un saut',0,1,1.2333,'U523',1,'*'),(1717,'un saut sur','un saut sur',0,1,1.3667,'U52326',1,'*'),(1718,'une','une',0,0,0.2,'U500',1,'*'),(1719,'une capture','une capture',0,1,1.3667,'U52136',1,'*'),(1720,'une capture il','une capture il',0,1,1.4667,'U521364',1,'*'),(1721,'une case','une case',0,1,1.2667,'U520',1,'*'),(1722,'une case vide','une case vide',0,1,1.4333,'U5213',1,'*'),(1723,'une dame','une dame',0,1,1.2667,'U535',1,'*'),(1724,'une dame le','une dame le',0,1,1.3667,'U5354',1,'*'),(1725,'une dame peut','une dame peut',0,1,1.4333,'U53513',1,'*'),(1726,'une dame voir','une dame voir',0,1,1.4333,'U53516',1,'*'),(1727,'une partie','une partie',0,1,1.3333,'U5163',1,'*'),(1728,'une partie le','une partie le',0,1,1.4333,'U51634',1,'*'),(1729,'utilisateur','utilisateur',0,0,0.7333,'U34236',1,'*'),(1730,'variante','variante',0,0,0.5333,'V653',1,'*'),(1731,'variante les','variante les',0,1,1.4,'V65342',1,'*'),(1732,'variante les premières','variante les premières',0,1,1.7333,'V6534216562',1,'*'),(1733,'variante règles','variante règles',0,1,1.5,'V6536242',1,'*'),(1734,'variante règles du','variante règles du',0,1,1.6,'V65362423',1,'*'),(1735,'verticale','verticale',0,0,0.6,'V6324',1,'*'),(1736,'verticale sur','verticale sur',0,1,1.4333,'V632426',1,'*'),(1737,'verticale sur n\'importe','verticale sur n',0,1,1.7667,'V6324265163',1,'*'),(1738,'verticale un','verticale un',0,1,1.4,'V63245',1,'*'),(1739,'verticale un pion','verticale un pion',0,1,1.5667,'V6324515',1,'*'),(1740,'via','via',0,0,0.2,'V000',1,'*'),(1741,'via un','via un',0,1,1.2,'V500',1,'*'),(1742,'via un saut','via un saut',0,1,1.3667,'V523',1,'*'),(1743,'vide','vide',0,0,0.2667,'V300',1,'*'),(1744,'vide derrière','vide derrière',0,1,1.4333,'V360',1,'*'),(1745,'vide derrière celui-ci','vide derrière celui-ci',0,1,1.7333,'V36242',1,'*'),(1746,'vide promotion','vide promotion',0,1,1.4667,'V316535',1,'*'),(1747,'vide promotion quand','vide promotion quand',0,1,1.6667,'V316535253',1,'*'),(1748,'vide une','vide une',0,1,1.2667,'V350',1,'*'),(1749,'vide une dame','vide une dame',0,1,1.4333,'V3535',1,'*'),(1750,'vides','vides',0,0,0.3333,'V320',1,'*'),(1751,'vides exemple','vides exemple',0,1,1.4333,'V32514',1,'*'),(1752,'vides exemple de','vides exemple de',0,1,1.5333,'V325143',1,'*'),(1753,'voir','voir',0,0,0.2667,'V600',1,'*'),(1754,'voir fiche','voir fiche',0,1,1.3333,'V612',1,'*'),(1755,'voir fiche déplacement','voir fiche déplacement',0,1,1.7333,'V612314253',1,'*');
/*!40000 ALTER TABLE `icng4_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_terms_common`
--

DROP TABLE IF EXISTS `icng4_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_terms_common`
--

LOCK TABLES `icng4_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `icng4_finder_terms_common` DISABLE KEYS */;
INSERT INTO `icng4_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('alors','fr'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('au','fr'),('aucuns','fr'),('aussi','fr'),('autre','fr'),('avant','fr'),('avec','fr'),('avoir','fr'),('be','en'),('bon','fr'),('but','en'),('by','en'),('car','fr'),('ce','fr'),('cela','fr'),('ces','fr'),('ceux','fr'),('chaque','fr'),('ci','fr'),('comme','fr'),('comment','fr'),('dans','fr'),('début','fr'),('dedans','fr'),('dehors','fr'),('depuis','fr'),('des','fr'),('deux','fr'),('devrait','fr'),('doit','fr'),('donc','fr'),('dos','fr'),('droite','fr'),('du','fr'),('elle','fr'),('elles','fr'),('en','fr'),('encore','fr'),('essai','fr'),('est','fr'),('et','fr'),('eu','fr'),('fait','fr'),('faites','fr'),('fois','fr'),('font','fr'),('for','en'),('force','fr'),('from','en'),('get','en'),('go','en'),('haut','fr'),('hors','fr'),('how','en'),('ici','fr'),('if','en'),('il','fr'),('ils','fr'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('je','fr'),('juste','fr'),('la','fr'),('là','fr'),('le','fr'),('les','fr'),('leur','fr'),('ma','fr'),('maintenant','fr'),('mais','fr'),('me','en'),('même','fr'),('mes','fr'),('mine','fr'),('moins','fr'),('mon','fr'),('more','en'),('most','en'),('mot','fr'),('must','en'),('my','en'),('new','en'),('ni','fr'),('no','en'),('nommés','fr'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('notre','fr'),('nous','fr'),('nouveaux','fr'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('ou','fr'),('où','fr'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('par','fr'),('parce','fr'),('parole','fr'),('pas','fr'),('personnes','fr'),('peu','fr'),('peut','fr'),('pièce','fr'),('plupart','fr'),('pour','fr'),('pourquoi','fr'),('quand','fr'),('que','fr'),('quel','fr'),('quelle','fr'),('quelles','fr'),('quels','fr'),('qui','fr'),('sa','fr'),('sans','fr'),('ses','fr'),('seulement','fr'),('she','en'),('should','en'),('si','fr'),('sien','fr'),('small','en'),('so','en'),('some','en'),('son','fr'),('sont','fr'),('sous','fr'),('soyez','fr'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `icng4_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_tokens`
--

DROP TABLE IF EXISTS `icng4_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_tokens`
--

LOCK TABLES `icng4_finder_tokens` WRITE;
/*!40000 ALTER TABLE `icng4_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `icng4_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_tokens_aggregate`
--

LOCK TABLES `icng4_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `icng4_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_finder_types`
--

DROP TABLE IF EXISTS `icng4_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_finder_types`
--

LOCK TABLES `icng4_finder_types` WRITE;
/*!40000 ALTER TABLE `icng4_finder_types` DISABLE KEYS */;
INSERT INTO `icng4_finder_types` VALUES (1,'Tag',''),(2,'Category',''),(3,'Contact',''),(4,'Article',''),(5,'News Feed','');
/*!40000 ALTER TABLE `icng4_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_languages`
--

DROP TABLE IF EXISTS `icng4_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_languages`
--

LOCK TABLES `icng4_languages` WRITE;
/*!40000 ALTER TABLE `icng4_languages` DISABLE KEYS */;
INSERT INTO `icng4_languages` VALUES (1,0,'en-GB','English (UK)','English (UK)','en','en_gb','','','','',1,1,2),(2,0,'fr-FR','Français (FR)','Français (FR)','fr','fr','','','','',1,1,1);
/*!40000 ALTER TABLE `icng4_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_menu`
--

DROP TABLE IF EXISTS `icng4_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_menu`
--

LOCK TABLES `icng4_menu` WRITE;
/*!40000 ALTER TABLE `icng4_menu` DISABLE KEYS */;
INSERT INTO `icng4_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,71,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',23,28,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',24,25,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',26,27,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',29,34,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',30,31,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',35,40,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',36,37,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',38,39,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',41,42,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',43,44,0,'*',1),(18,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',45,46,0,'*',1),(19,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',47,48,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',49,50,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',51,52,0,'*',1),(101,'mainmenu','Accueil','accueil','','accueil','index.php?option=com_content&view=article&id=1','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',53,54,1,'*',0),(102,'usermenu','Votre profil','votre-profil','','votre-profil','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,25,0,'0000-00-00 00:00:00',0,2,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,0,'*',0),(103,'usermenu','Administration','2013-11-16-23-26-41','','2013-11-16-23-26-41','administrator','url',1,1,1,0,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}',17,18,0,'*',0),(104,'usermenu','Créer un article','creer-un-article','','creer-un-article','index.php?option=com_content&view=form&layout=edit','component',1,1,1,22,0,'0000-00-00 00:00:00',0,3,'',0,'{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(106,'usermenu','Paramètres du template','parametres-du-template','','parametres-du-template','index.php?option=com_config&view=templates&controller=config.display.templates','component',1,1,1,23,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',19,20,0,'*',0),(107,'usermenu','Paramètres du site','parametre-du-site','','parametre-du-site','index.php?option=com_config&view=config&controller=config.display.config','component',1,1,1,23,0,'0000-00-00 00:00:00',0,6,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',21,22,0,'*',0),(108,'mainmenu','test','test','','test','index.php?option=com_config&view=config&controller=config.display.config','component',-2,1,1,23,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',55,56,0,'*',0),(109,'mainmenu','Jouer','jouer','','jouer','index.php?option=com_content&view=article&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',57,58,0,'fr-FR',0),(110,'mainmenu','Administration','administration','','administration','index.php?option=com_content&view=article&id=3','component',1,1,1,22,0,'0000-00-00 00:00:00',0,6,' ',7,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),(111,'mainmenu','Mon profil','mon-profil','','mon-profil','index.php?option=com_users&view=profile&layout=edit','component',1,1,1,25,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),(112,'mainmenu','Play','play','','play','index.php?option=com_content&view=article&id=2','component',-2,1,1,22,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'en-GB',0),(113,'mainmenu','Classement','classement','','classement','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',61,62,0,'*',0),(114,'mainmenu','Règles du jeu','regles-du-jeu','','regles-du-jeu','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,'0000-00-00 00:00:00',0,2,' ',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',59,60,0,'*',0);
/*!40000 ALTER TABLE `icng4_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_menu_types`
--

DROP TABLE IF EXISTS `icng4_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_menu_types`
--

LOCK TABLES `icng4_menu_types` WRITE;
/*!40000 ALTER TABLE `icng4_menu_types` DISABLE KEYS */;
INSERT INTO `icng4_menu_types` VALUES (1,0,'mainmenu','Menu principal','Le menu principal du site'),(2,0,'usermenu','Menu utilisateur','Menu pour les utilisateurs connectés');
/*!40000 ALTER TABLE `icng4_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_messages`
--

DROP TABLE IF EXISTS `icng4_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_messages`
--

LOCK TABLES `icng4_messages` WRITE;
/*!40000 ALTER TABLE `icng4_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_messages_cfg`
--

DROP TABLE IF EXISTS `icng4_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_messages_cfg`
--

LOCK TABLES `icng4_messages_cfg` WRITE;
/*!40000 ALTER TABLE `icng4_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_modules`
--

DROP TABLE IF EXISTS `icng4_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_modules`
--

LOCK TABLES `icng4_modules` WRITE;
/*!40000 ALTER TABLE `icng4_modules` DISABLE KEYS */;
INSERT INTO `icng4_modules` VALUES (1,39,'Menu principal','','',1,'position-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(2,40,'Connexion','','',1,'connexion',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Article populaire','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,42,'Article ajoutés récemments','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,43,'Barre d\'outils','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Utilisateurs connectés','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Connexion','','',2,'position-0',0,'0000-00-00 00:00:00','2016-12-13 14:43:05','0000-00-00 00:00:00',-2,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"101\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"1\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h1\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(17,51,'Fil de navigation','','',1,'position-1',0,'0000-00-00 00:00:00','2016-12-13 13:33:46','0000-00-00 00:00:00',-2,'mod_breadcrumbs',1,1,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(79,52,'Statut multilingue','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Version de Joomla','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,54,'Tags populaires','','',1,'position-7',0,'0000-00-00 00:00:00','2016-12-13 12:44:03','0000-00-00 00:00:00',-2,'mod_tags_popular',1,1,'{\"maximum\":\"10\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,55,'Informations du site','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats_admin',3,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(89,56,'Mises à jours','','',0,'postinstall',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*'),(90,57,'Derniers articles','','',1,'position-7',0,'0000-00-00 00:00:00','2016-12-13 12:44:03','0000-00-00 00:00:00',-2,'mod_articles_latest',1,1,'{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,58,'Menu utilisateur','','',1,'position-6',0,'0000-00-00 00:00:00','2016-12-13 13:13:31','0000-00-00 00:00:00',-2,'mod_menu',1,1,'{\"menutype\":\"usermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,59,'Images aléatoire','','<p><img src=\"images/banners/shop-ad.jpg\" alt=\"\" /></p>',1,'position-3',0,'0000-00-00 00:00:00','2016-12-13 13:34:34','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,60,'Recherche','','',0,'position-0',0,'0000-00-00 00:00:00','2016-12-13 13:13:34','0000-00-00 00:00:00',-2,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(94,63,'BT Login','','',1,'position-0',0,'0000-00-00 00:00:00','2016-12-13 14:42:12','0000-00-00 00:00:00',-2,'mod_bt_login',1,1,'{\"align_option\":\"right\",\"display_type\":\"0\",\"mouse_event\":\"click\",\"login\":\"\",\"logout\":\"\",\"name\":\"0\",\"logout_button\":\"1\",\"enabled_registration\":\"1\",\"enabled_registration_tab\":\"1\",\"enabled_login_tab\":\"1\",\"tag_login_modal\":\"\",\"tag_register_modal\":\"\",\"bg_button_color\":\"\",\"text_button_color\":\"\",\"use_captcha\":\"1\",\"integrated_component\":\"\",\"link_option\":\"\",\"loadJquery\":\"auto\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,64,'connexion','','',1,'position-0',0,'0000-00-00 00:00:00','2016-12-14 08:40:22','0000-00-00 00:00:00',1,'mod_login',2,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"101\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(96,66,'Réseaux sociaux','','',1,'footer',0,'0000-00-00 00:00:00','2016-12-14 10:23:54','0000-00-00 00:00:00',-2,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(98,69,'Sensomedia Social Bookmarks','','',1,'footer',0,'0000-00-00 00:00:00','2016-12-14 10:42:48','0000-00-00 00:00:00',-2,'mod_sensomediabookmarks',1,1,'{\"align\":\"left\",\"btnsize\":\"32\",\"roundcorners\":\"0\",\"url_facebook\":\"www.facebook.com\",\"url_twitter\":\"\",\"url_googleplus\":\"\",\"url_linkedin\":\"\",\"url_viadeo\":\"\",\"url_flickr\":\"\",\"url_instagram\":\"\",\"url_pinterest\":\"\",\"url_scoopit\":\"\",\"url_myspace\":\"\",\"url_digg\":\"\",\"url_delicious\":\"\",\"url_stumbleupon\":\"\",\"url_reddit\":\"\",\"url_newsvine\":\"\",\"url_technorati\":\"\",\"url_soundcloud\":\"\",\"url_youtube\":\"\",\"url_dailymotion\":\"\",\"url_googlemaps\":\"\",\"url_email\":\"\",\"url_rss\":\"\",\"bgcolor\":\"#2a2a2a\",\"iconscolor\":\"white\",\"iconshcolor\":\"white\",\"color_facebook\":\"#3b5997\",\"color_twitter\":\"#33ccff\",\"color_googleplus\":\"#d34331\",\"color_linkedin\":\"#0274b3\",\"color_viadeo\":\"#f4982b\",\"color_flickr\":\"#ff0084\",\"color_innstagram\":\"#2e5d85\",\"color_pinterest\":\"#cc2127\",\"color_scoopit\":\"#90d303\",\"color_myspace\":\"#003399\",\"color_digg\":\"#1b5791\",\"color_delicious\":\"#0000ff\",\"color_stumbleupon\":\"#eb4823\",\"color_reddit\":\"#cee3f8\",\"color_newsvine\":\"#005221\",\"color_technorati\":\"#3bb001\",\"color_soundcloud\":\"#ff5100\",\"color_youtube\":\"#d52423\",\"color_dailymotion\":\"#005377\",\"color_googlemaps\":\"#f7584d\",\"color_email\":\"#6a91ac\",\"color_rss\":\"#ff9900\",\"likebox\":\"\",\"facebook_lang\":\"en_US\",\"likeboxtext\":\"Like me\",\"likeboxcolor\":\"#3b5997\",\"likeboxbg\":\"\",\"likeboxiconcolor\":\"white\",\"likeboxcolorscheme\":\"light\",\"likeboxposition\":\"after\",\"likeboxsize\":\"132\",\"likeboxoffset\":\"-28px 0 0 -60px\",\"text\":\"\",\"textformat\":\"h2\",\"textcolor\":\"\",\"textposition\":\"before\",\"jqueryload\":\"1\",\"customcss\":\"\",\"customcsshover\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(99,70,'mod_jbox_addthis','','',0,'',0,'0000-00-00 00:00:00','2016-12-14 10:41:05','0000-00-00 00:00:00',-2,'mod_jbox_addthis',1,1,'',0,'*'),(100,71,'Réseaux sociaux','','',1,'footer',0,'0000-00-00 00:00:00','2016-12-14 12:08:26','0000-00-00 00:00:00',-2,'mod_sensomediabookmarks',1,1,'{\"align\":\"left\",\"btnsize\":\"32\",\"roundcorners\":\"0\",\"url_facebook\":\"facebook.com\",\"url_twitter\":\"\",\"url_googleplus\":\"\",\"url_linkedin\":\"\",\"url_viadeo\":\"\",\"url_flickr\":\"\",\"url_instagram\":\"\",\"url_pinterest\":\"\",\"url_scoopit\":\"\",\"url_myspace\":\"\",\"url_digg\":\"\",\"url_delicious\":\"\",\"url_stumbleupon\":\"\",\"url_reddit\":\"\",\"url_newsvine\":\"\",\"url_technorati\":\"\",\"url_soundcloud\":\"\",\"url_youtube\":\"\",\"url_dailymotion\":\"\",\"url_googlemaps\":\"\",\"url_email\":\"\",\"url_rss\":\"\",\"bgcolor\":\"#2a2a2a\",\"iconscolor\":\"white\",\"iconshcolor\":\"grey\",\"color_facebook\":\"#3b5997\",\"color_twitter\":\"#33ccff\",\"color_googleplus\":\"#d34331\",\"color_linkedin\":\"#0274b3\",\"color_viadeo\":\"#f4982b\",\"color_flickr\":\"#ff0084\",\"color_innstagram\":\"#2e5d85\",\"color_pinterest\":\"#cc2127\",\"color_scoopit\":\"#90d303\",\"color_myspace\":\"#003399\",\"color_digg\":\"#1b5791\",\"color_delicious\":\"#0000ff\",\"color_stumbleupon\":\"#eb4823\",\"color_reddit\":\"#cee3f8\",\"color_newsvine\":\"#005221\",\"color_technorati\":\"#3bb001\",\"color_soundcloud\":\"#ff5100\",\"color_youtube\":\"#d52423\",\"color_dailymotion\":\"#005377\",\"color_googlemaps\":\"#f7584d\",\"color_email\":\"#6a91ac\",\"color_rss\":\"#ff9900\",\"likebox\":\"\",\"facebook_lang\":\"en_US\",\"likeboxtext\":\"Like me\",\"likeboxcolor\":\"#3b5997\",\"likeboxbg\":\"\",\"likeboxiconcolor\":\"white\",\"likeboxcolorscheme\":\"light\",\"likeboxposition\":\"after\",\"likeboxsize\":\"132\",\"likeboxoffset\":\"-28px 0 0 -60px\",\"text\":\"\",\"textformat\":\"h2\",\"textcolor\":\"\",\"textposition\":\"before\",\"jqueryload\":\"0\",\"customcss\":\"\",\"customcsshover\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(101,72,'RSSocial!','','',0,'',0,'0000-00-00 00:00:00','2016-12-14 12:13:01','0000-00-00 00:00:00',-2,'mod_rssocial',1,1,'',0,'*'),(102,73,'Facebook','','',1,'footer',0,'0000-00-00 00:00:00','2016-12-14 12:17:24','0000-00-00 00:00:00',-2,'mod_rssocial',1,1,'{\"facebook\":\"1\",\"facebook_url\":\"facebook.com\",\"facebook_like_action\":\"like\",\"facebook_like_type\":\"button_count\",\"facebook_like_show_faces\":\"1\",\"facebook_like_font\":\"arial\",\"facebook_share_button\":\"1\",\"facebook_width\":\"124\",\"facebook_height\":\"20\",\"googleplus\":\"0\",\"googleplus_url\":\"\",\"googleplus_style\":\"medium\",\"twitter\":\"1\",\"twitter_url\":\"\",\"tweet_counter\":\"horizontal\",\"youtube\":\"0\",\"youtube_url\":\"\",\"linkedin\":\"0\",\"linkedin_url\":\"\",\"linkedin_counter\":\"right\",\"lastfm\":\"0\",\"lastfm_url\":\"\",\"pinterest\":\"0\",\"pinterest_url\":\"\",\"pinterest_size\":\"20\",\"pinterest_counter\":\"beside\",\"pinterest_static_image\":\"0\",\"pinterest_image\":\"\",\"pinterest_static_description\":\"0\",\"pinterest_description\":\"\",\"soundcloud\":\"0\",\"soundcloud_url\":\"\",\"tumblr\":\"0\",\"tumblr_url\":\"\",\"tumblr_style\":\"2\",\"flickr\":\"0\",\"flickr_url\":\"\",\"github\":\"0\",\"github_url\":\"\",\"vimeo\":\"0\",\"vimeo_url\":\"\",\"digg\":\"0\",\"digg_url\":\"\",\"skype\":\"0\",\"skype_url\":\"\",\"instagram\":\"0\",\"instagram_url\":\"\",\"rss\":\"0\",\"rss_url\":\"\",\"stumbleupon\":\"0\",\"stumbleupon_url\":\"\",\"stumbleupon_style\":\"1\",\"reddit\":\"0\",\"reddit_url\":\"\",\"reddit_style\":\"2\",\"mail\":\"1\",\"mail_url\":\"\",\"recommend\":\"1\",\"mode\":\"icons\",\"icon_positioning\":\"inline\",\"icon_theme\":\"bg\",\"icon_effect\":\"push\",\"icon_font_color\":\"#ffffff\",\"icon_background_color\":\"#000000\",\"icon_size\":\"24\",\"icon_transparency\":\"0.75\",\"icon_transparency_hover\":\"0.5\",\"caption\":\"0\",\"caption_font_color\":\"#ffffff\",\"caption_background_color\":\"#000000\",\"caption_size\":\"14\",\"caption_transparency\":\"0.75\",\"caption_transparency_hover\":\"0.5\",\"icon_float\":\"left\",\"icon_fixed\":\"0\",\"icon_alignment\":\"center\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(103,74,'Réseaux sociaux','','',1,'footer',0,'0000-00-00 00:00:00','2016-12-14 12:20:04','0000-00-00 00:00:00',-2,'mod_sensomediabookmarks',1,1,'{\"align\":\"center\",\"btnsize\":\"32\",\"roundcorners\":\"0\",\"url_facebook\":\"https:\\/\\/www.facebook.com\\/\",\"url_twitter\":\"\",\"url_googleplus\":\"\",\"url_linkedin\":\"\",\"url_viadeo\":\"\",\"url_flickr\":\"\",\"url_instagram\":\"\",\"url_pinterest\":\"\",\"url_scoopit\":\"\",\"url_myspace\":\"\",\"url_digg\":\"\",\"url_delicious\":\"\",\"url_stumbleupon\":\"\",\"url_reddit\":\"\",\"url_newsvine\":\"\",\"url_technorati\":\"\",\"url_soundcloud\":\"\",\"url_youtube\":\"\",\"url_dailymotion\":\"\",\"url_googlemaps\":\"\",\"url_email\":\"\",\"url_rss\":\"\",\"bgcolor\":\"#2a2a2a\",\"iconscolor\":\"white\",\"iconshcolor\":\"white\",\"color_facebook\":\"#3b5997\",\"color_twitter\":\"#33ccff\",\"color_googleplus\":\"#d34331\",\"color_linkedin\":\"#0274b3\",\"color_viadeo\":\"#f4982b\",\"color_flickr\":\"#ff0084\",\"color_innstagram\":\"#2e5d85\",\"color_pinterest\":\"#cc2127\",\"color_scoopit\":\"#90d303\",\"color_myspace\":\"#003399\",\"color_digg\":\"#1b5791\",\"color_delicious\":\"#0000ff\",\"color_stumbleupon\":\"#eb4823\",\"color_reddit\":\"#cee3f8\",\"color_newsvine\":\"#005221\",\"color_technorati\":\"#3bb001\",\"color_soundcloud\":\"#ff5100\",\"color_youtube\":\"#d52423\",\"color_dailymotion\":\"#005377\",\"color_googlemaps\":\"#f7584d\",\"color_email\":\"#6a91ac\",\"color_rss\":\"#ff9900\",\"likebox\":\"\",\"facebook_lang\":\"en_US\",\"likeboxtext\":\"Like me\",\"likeboxcolor\":\"#3b5997\",\"likeboxbg\":\"\",\"likeboxiconcolor\":\"white\",\"likeboxcolorscheme\":\"light\",\"likeboxposition\":\"after\",\"likeboxsize\":\"132\",\"likeboxoffset\":\"-28px 0 0 -60px\",\"text\":\"\",\"textformat\":\"h2\",\"textcolor\":\"\",\"textposition\":\"before\",\"jqueryload\":\"1\",\"customcss\":\"\",\"customcsshover\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(104,75,'Réseaux sociaux','','',1,'footer',0,'0000-00-00 00:00:00','2016-12-14 12:21:36','0000-00-00 00:00:00',-2,'mod_jbox_addthis',1,1,'{\"activeShare\":\"1\",\"position\":\"left\",\"numPreferredServices\":\"\",\"postShareTitle\":\"\",\"postShareFollowMsg\":\"\",\"postShareRecommendedMsg\":\"\",\"activeFollow\":\"1\",\"facebook\":\"1\",\"facebookId\":\"\",\"twitter\":\"1\",\"twitterId\":\"\",\"google\":\"1\",\"googleId\":\"\",\"linkedin\":\"1\",\"linkedinId\":\"\",\"postFollowTitle\":\"\",\"postFollowRecommendedMsg\":\"\",\"analyticsId\":\"\",\"responsiveMaxWidth\":\"\",\"responsiveMinWidth\":\"\",\"theme\":\"transparent\",\"styles\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(105,76,'Réseaux sociaux','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sensomediabookmarks',1,1,'{\"align\":\"center\",\"btnsize\":\"32\",\"roundcorners\":\"0\",\"url_facebook\":\"https:\\/\\/www.facebook.com\\/damerevisitee\",\"url_twitter\":\"https:\\/\\/www.twitter.com\\/DameRevisite\",\"url_googleplus\":\"\",\"url_linkedin\":\"\",\"url_viadeo\":\"\",\"url_flickr\":\"\",\"url_instagram\":\"\",\"url_pinterest\":\"\",\"url_scoopit\":\"\",\"url_myspace\":\"\",\"url_digg\":\"\",\"url_delicious\":\"\",\"url_stumbleupon\":\"\",\"url_reddit\":\"\",\"url_newsvine\":\"\",\"url_technorati\":\"\",\"url_soundcloud\":\"\",\"url_youtube\":\"\",\"url_dailymotion\":\"\",\"url_googlemaps\":\"\",\"url_email\":\"\",\"url_rss\":\"\",\"bgcolor\":\"#2a2a2a\",\"iconscolor\":\"white\",\"iconshcolor\":\"white\",\"color_facebook\":\"#3b5997\",\"color_twitter\":\"#33ccff\",\"color_googleplus\":\"#d34331\",\"color_linkedin\":\"#0274b3\",\"color_viadeo\":\"#f4982b\",\"color_flickr\":\"#ff0084\",\"color_innstagram\":\"#2e5d85\",\"color_pinterest\":\"#cc2127\",\"color_scoopit\":\"#90d303\",\"color_myspace\":\"#003399\",\"color_digg\":\"#1b5791\",\"color_delicious\":\"#0000ff\",\"color_stumbleupon\":\"#eb4823\",\"color_reddit\":\"#cee3f8\",\"color_newsvine\":\"#005221\",\"color_technorati\":\"#3bb001\",\"color_soundcloud\":\"#ff5100\",\"color_youtube\":\"#d52423\",\"color_dailymotion\":\"#005377\",\"color_googlemaps\":\"#f7584d\",\"color_email\":\"#6a91ac\",\"color_rss\":\"#ff9900\",\"likebox\":\"\",\"facebook_lang\":\"en_US\",\"likeboxtext\":\"Like me\",\"likeboxcolor\":\"#3b5997\",\"likeboxbg\":\"\",\"likeboxiconcolor\":\"white\",\"likeboxcolorscheme\":\"light\",\"likeboxposition\":\"after\",\"likeboxsize\":\"132\",\"likeboxoffset\":\"-28px 0 0 -60px\",\"text\":\"\",\"textformat\":\"h2\",\"textcolor\":\"\",\"textposition\":\"before\",\"jqueryload\":\"1\",\"customcss\":\"\",\"customcsshover\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(106,77,'HD-Background Selector','','',2,'position-3',0,'0000-00-00 00:00:00','2016-12-14 12:46:06','0000-00-00 00:00:00',-2,'mod_hd-bgselector',1,1,'{\"bgid\":\"body\",\"imagebg\":\"images\\/background.jpg\",\"imageposition\":\"center top\",\"imageattachment\":\"scroll\",\"imagerepeat\":\"repeat\",\"bgcolor\":\"transparent\",\"importance\":\" \",\"customcss\":\"\",\"bgtype\":\"standard\",\"imagebgtwo\":\"\",\"imagebgthree\":\"\",\"imagebgfour\":\"\",\"imagebgfive\":\"\",\"imagebgsix\":\"\",\"imagebgseven\":\"\",\"gradtop\":\"000000\",\"gradbottom\":\"ffffff\",\"urlsniffer\":\"\",\"browsersniffer\":\"all\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(107,79,'Langues','','',1,'position-8',0,'0000-00-00 00:00:00','2016-12-15 08:28:39','0000-00-00 00:00:00',-2,'mod_languages',1,1,'{\"header_text\":\"\",\"footer_text\":\"\",\"dropdown\":\"0\",\"dropdownimage\":\"1\",\"lineheight\":\"0\",\"image\":\"1\",\"show_active\":\"1\",\"full_name\":\"1\",\"inline\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(108,82,'Recherche classement','','',1,'position-0',0,'0000-00-00 00:00:00','2016-12-15 13:07:31','0000-00-00 00:00:00',-2,'mod_search',2,1,'{\"label\":\"\",\"width\":\"\",\"text\":\"Rechercher...\",\"button\":\"0\",\"button_pos\":\"left\",\"imagebutton\":\"0\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `icng4_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_modules_menu`
--

DROP TABLE IF EXISTS `icng4_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_modules_menu`
--

LOCK TABLES `icng4_modules_menu` WRITE;
/*!40000 ALTER TABLE `icng4_modules_menu` DISABLE KEYS */;
INSERT INTO `icng4_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,0),(88,0),(89,0),(90,0),(91,0),(92,0),(93,0),(95,0),(96,0),(97,0),(98,0),(100,0),(102,0),(103,0),(104,0),(105,0),(107,0),(108,113);
/*!40000 ALTER TABLE `icng4_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_newsfeeds`
--

DROP TABLE IF EXISTS `icng4_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_newsfeeds`
--

LOCK TABLES `icng4_newsfeeds` WRITE;
/*!40000 ALTER TABLE `icng4_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_overrider`
--

DROP TABLE IF EXISTS `icng4_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_overrider`
--

LOCK TABLES `icng4_overrider` WRITE;
/*!40000 ALTER TABLE `icng4_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_postinstall_messages`
--

DROP TABLE IF EXISTS `icng4_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_postinstall_messages`
--

LOCK TABLES `icng4_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `icng4_postinstall_messages` DISABLE KEYS */;
INSERT INTO `icng4_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',1),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1);
/*!40000 ALTER TABLE `icng4_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_redirect_links`
--

DROP TABLE IF EXISTS `icng4_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_redirect_links`
--

LOCK TABLES `icng4_redirect_links` WRITE;
/*!40000 ALTER TABLE `icng4_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_schemas`
--

DROP TABLE IF EXISTS `icng4_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_schemas`
--

LOCK TABLES `icng4_schemas` WRITE;
/*!40000 ALTER TABLE `icng4_schemas` DISABLE KEYS */;
INSERT INTO `icng4_schemas` VALUES (700,'3.6.3-2016-08-16');
/*!40000 ALTER TABLE `icng4_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_session`
--

DROP TABLE IF EXISTS `icng4_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_session`
--

LOCK TABLES `icng4_session` WRITE;
/*!40000 ALTER TABLE `icng4_session` DISABLE KEYS */;
INSERT INTO `icng4_session` VALUES ('7t9ijv8gg9ah991n4i07hq1um5',0,0,'1481877611','joomla|s:1040:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozOTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0ODE4NzY5MDM7czo0OiJsYXN0IjtpOjE0ODE4Nzc1MDM7czozOiJub3ciO2k6MTQ4MTg3NzYxMTt9czo1OiJ0b2tlbiI7czozMjoiYlFFc1l6UXUwOHFtSnkxd3hjUGhydWF3TVJXTXlRSkwiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO2E6MDp7fXM6NjoicmV0dXJuIjtzOjU3OiJodHRwOi8vbG9jYWxob3N0L3NpdGVfcHJvamV0L3Byb2pldF9HQUxfZ3JvdXBlMi9pbmRleC5waHAiO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjoxO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiODkxIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";',891,'kvasseur'),('dhpc5847uba59i0r3i4d4l3ip2',1,0,'1481877764','joomla|s:1540:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyMztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0ODE4Nzc0MTE7czo0OiJsYXN0IjtpOjE0ODE4Nzc2NDI7czozOiJub3ciO2k6MTQ4MTg3NzY0Mzt9czo1OiJ0b2tlbiI7czozMjoiVUVVbUpGUFVHQ0hDMnR5c2xtb29FMEFTcWRpWGlPR2QiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjM6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjE7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czozOiI4OTEiO31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7Tjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',891,'kvasseur');
/*!40000 ALTER TABLE `icng4_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_tags`
--

DROP TABLE IF EXISTS `icng4_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_tags`
--

LOCK TABLES `icng4_tags` WRITE;
/*!40000 ALTER TABLE `icng4_tags` DISABLE KEYS */;
INSERT INTO `icng4_tags` VALUES (1,0,0,3,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','',891,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,1,2,1,'joomla','Joomla','joomla','','',0,891,'2016-12-15 13:48:53',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',891,'2013-11-16 00:00:00','',0,'0000-00-00 00:00:00','','',3,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `icng4_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_template_styles`
--

DROP TABLE IF EXISTS `icng4_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_template_styles`
--

LOCK TABLES `icng4_template_styles` WRITE;
/*!40000 ALTER TABLE `icng4_template_styles` DISABLE KEYS */;
INSERT INTO `icng4_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#fff0f0\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(9,'fevrier_07_2016_3',0,'fr-FR','fevrier_07_2016_3 - Par défaut','{\"siteTitle\":\"Jeu de dame\",\"siteSlogan\":\"Jeu de dame\",\"logoFile\":\"\",\"logoLink\":\"\",\"contentImported\":\"0\",\"home\":\"home:home_1\",\"blog\":\"blogTemplate:blog_5\",\"sample_blog\":\"\",\"post\":\"singlePostTemplate:post_6\",\"page\":\"pageTemplate:page_7\",\"products\":\"products:products_3\",\"productoverview\":\"productOverview:productoverview_4\",\"shoppingcart\":\"shoppingCartTemplate:shoppingcart_8\",\"default\":\"default:default_2\",\"error404\":\"template404:error404_9\",\"sampleData\":\"\"}'),(10,'coverlineblack',0,'0','coverlineblack - Par défaut','{\"bodybackground\":\"templates\\/coverlineblack\\/images\\/bg.jpg\",\"sitename\":\"coverline\",\"sloganweb\":\"pro template for your website\",\"slidedisable\":\"1\",\"image1\":\"templates\\/coverlineblack\\/images\\/slide1.jpg\",\"image2\":\"templates\\/coverlineblack\\/images\\/slide2.jpg\",\"image3\":\"templates\\/coverlineblack\\/images\\/slide3.jpg\",\"caption1\":\"My latest Images\",\"caption2\":\"Tour around the world\",\"caption3\":\"You are always on my mind...\"}');
/*!40000 ALTER TABLE `icng4_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_ucm_base`
--

DROP TABLE IF EXISTS `icng4_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_ucm_base`
--

LOCK TABLES `icng4_ucm_base` WRITE;
/*!40000 ALTER TABLE `icng4_ucm_base` DISABLE KEYS */;
INSERT INTO `icng4_ucm_base` VALUES (1,1,1,0);
/*!40000 ALTER TABLE `icng4_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_ucm_content`
--

DROP TABLE IF EXISTS `icng4_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_ucm_content`
--

LOCK TABLES `icng4_ucm_content` WRITE;
/*!40000 ALTER TABLE `icng4_ucm_content` DISABLE KEYS */;
INSERT INTO `icng4_ucm_content` VALUES (1,'com_content.article','Bienvenue!','comment-debuter','',1,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',891,'','2013-11-16 00:00:00',891,'2016-12-15 08:06:14','*','2013-11-16 00:00:00','0000-00-00 00:00:00',1,62,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',537,8,1,'','',2,'',1);
/*!40000 ALTER TABLE `icng4_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_ucm_history`
--

DROP TABLE IF EXISTS `icng4_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_ucm_history`
--

LOCK TABLES `icng4_ucm_history` WRITE;
/*!40000 ALTER TABLE `icng4_ucm_history` DISABLE KEYS */;
INSERT INTO `icng4_ucm_history` VALUES (1,2,10,'Initial content','2013-11-16 00:00:00',891,558,'be28228b479aa67bad3dc1db2975232a033d5f0f','{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0),(2,1,1,'Initial content','2013-11-16 00:00:00',891,4539,'4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f','{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"http:\\/\\/forum.joomla.org\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,1,1,'','2016-12-13 12:41:57',891,1746,'28cbadb611525a13fd75ab670a879e985e78a62a','{\"id\":1,\"asset_id\":\"61\",\"title\":\"Comment d\\u00e9buter ?\",\"alias\":\"comment-debuter\",\"introtext\":\"<p>Bienvenue!<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-13 12:41:57\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-13 12:41:43\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"75\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,1,1,'','2016-12-13 12:42:50',891,1716,'a43383243a13e5779e4a1fc3bd73aa350e710025','{\"id\":1,\"asset_id\":\"61\",\"title\":\"Bienvenue!\",\"alias\":\"comment-debuter\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-13 12:42:50\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-13 12:42:36\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"77\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(5,1,1,'','2016-12-13 12:43:06',891,1716,'d4345b464d24cda18327a54373dcbd389091599a','{\"id\":1,\"asset_id\":\"61\",\"title\":\"Bienvenue!\",\"alias\":\"comment-debuter\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-13 12:43:06\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-13 12:43:02\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"2\",\"hits\":\"78\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(12,2,1,'','2016-12-14 09:12:02',891,5685,'17e47c99bff63d8fce2352234e60062d5df67bc3','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"width: 500px; height: 100px;\\\" cellspacing=\\\"10\\\" cellpadding=\\\"10\\\"><caption>Jeu de dame<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b> <\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b> <\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b> <\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b> <\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 09:12:02\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 09:09:54\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"25\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,2,1,'','2016-12-14 09:12:17',891,5694,'4609c212f5495f139e0d0f4d30d6b07893a3f4bb','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"width: 500px; height: 100px;\\\" border=\\\"1\\\" cellspacing=\\\"10\\\" cellpadding=\\\"10\\\"><caption>Jeu de dame<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 09:12:17\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 09:12:02\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"26\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(14,2,1,'','2016-12-14 14:03:31',891,5789,'cec5822750bc9ab0bb67d19657ede933e658d8ce','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"width: 500px; height: 100px;\\\" border=\\\"1\\\" cellpadding=\\\"10\\\" cellspacing=\\\"10\\\"><caption>Jeu de dame<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0&lt;script type=\\\"text\\/javascript\\\"&gt;<\\/p>\\r\\n<p>alert(\'test\');<\\/p>\\r\\n<p>&lt;\\/script&gt;<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 14:03:31\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 14:02:52\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"225\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(15,2,1,'','2016-12-14 14:03:54',891,5728,'98fb0f2015bcb08f3a9f901a2ea8a786e28e168c','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<script type=\\\"text\\/javascript\\\">\\/\\/ <![CDATA[\\r\\nalert(\'test\');\\r\\n\\/\\/ ]]><\\/script>\\r\\n<table style=\\\"width: 500px; height: 100px;\\\" border=\\\"1\\\" cellpadding=\\\"10\\\" cellspacing=\\\"10\\\"><caption>Jeu de dame<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 14:03:54\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 14:03:31\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"226\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(16,2,1,'','2016-12-14 14:33:33',891,5758,'7957185f839ac363b4c9098091621a25eb3a983b','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<p>\\r\\n<script type=\\\"text\\/javascript\\\">\\/\\/ <![CDATA[\\r\\nalert(\'test\');\\r\\n\\/\\/ ]]><\\/script>\\r\\n<\\/p>\\r\\n<table style=\\\"width: 500px; height: 100px;\\\" border=\\\"1\\\" cellpadding=\\\"10\\\" cellspacing=\\\"10\\\"><caption>Jeu de dame<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\" id=\\\"idtest\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 14:33:33\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 14:32:17\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"235\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(17,1,1,'','2016-12-14 14:57:43',891,1793,'12c509e1f6c0f01047e069e6e44b9157a2781cd8','{\"id\":1,\"asset_id\":\"61\",\"title\":\"Bienvenue!\",\"alias\":\"comment-debuter\",\"introtext\":\"<p>&lt;script&gt;<\\/p>\\r\\n<p>alert(\'ok\');<\\/p>\\r\\n<p>&lt;\\/script&gt;<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 14:57:43\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 14:57:07\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"529\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(18,1,1,'','2016-12-14 14:58:22',891,1779,'ee5c9714fc84eb552c18a1b57350bb91000c24b0','{\"id\":1,\"asset_id\":\"61\",\"title\":\"Bienvenue!\",\"alias\":\"comment-debuter\",\"introtext\":\"<script>\\/\\/ <![CDATA[\\r\\nalert(\'ok\');\\r\\n\\/\\/ ]]><\\/script>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-14 14:58:22\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-14 14:58:14\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"531\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(19,2,1,'','2016-12-15 08:05:52',891,5650,'0841b7c325dd82478bf6b6c55d2f3ce9ba41d9f0','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"width: 500px; height: 100px;\\\" border=\\\"1\\\" cellpadding=\\\"10\\\" cellspacing=\\\"10\\\"><caption>Jeu de dame<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\" id=\\\"idtest\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u2022<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td>\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b>\\u00a0<\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<td><b><span style=\\\"font-family: Arial; font-size: x-large;\\\">\\u25cb<\\/span><\\/b><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td>\\u00a0<\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<td><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:05:52\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:05:39\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"243\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(20,1,1,'','2016-12-15 08:06:14',891,1717,'f4bf4383796c96b7f916337721bcda8adaf7a90a','{\"id\":1,\"asset_id\":\"61\",\"title\":\"Bienvenue!\",\"alias\":\"comment-debuter\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:06:14\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:06:08\",\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"537\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(21,2,1,'','2016-12-15 08:10:21',891,5305,'73d57cb3c7e5cef89263dd12e8dde87d8fad744d','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<p>\\r\\n<script>\\/\\/ <![CDATA[\\r\\nalert(\'test\');\\r\\n\\/\\/ ]]><\\/script>\\r\\n<\\/p>\\r\\n<table style=\\\"height: 80px; width: 80px; border-color: black; background-color(odd): pink; margin-left: auto; margin-right: auto;\\\" border=\\\"1\\\" cellpadding=\\\"20\\\" cellspacing=\\\"0\\\"><caption>JEU DE DAMES<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"konekosakurawasabi\\\" data-line=\\\"0\\\" data-column=\\\"0\\\">0<\\/td>\\r\\n<td id=\\\"test\\\" data-line=\\\"0\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:10:21\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:10:13\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"243\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(22,2,1,'','2016-12-15 08:10:50',891,5223,'e2a5b823c1edaef95fb84a40989767d4be2284a5','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"height: 80px; width: 80px; border-color: black; background-color(odd): pink; margin-left: auto; margin-right: auto;\\\" border=\\\"1\\\" cellpadding=\\\"20\\\" cellspacing=\\\"0\\\"><caption>JEU DE DAMES<\\/caption>\\r\\n<tbody>\\r\\n<tr>\\r\\n<td class=\\\"konekosakurawasabi\\\" data-line=\\\"0\\\" data-column=\\\"0\\\">0<\\/td>\\r\\n<td id=\\\"test\\\" data-line=\\\"0\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:10:50\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:10:21\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"245\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(23,3,1,'','2016-12-15 08:15:45',891,1719,'7613bdc6b9194f8f7c335d5ae7b195b5ae68decc','{\"id\":3,\"asset_id\":78,\"title\":\"Administration\",\"alias\":\"administration\",\"introtext\":\"<p>Partie admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 08:15:45\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:15:45\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-12-15 08:15:45\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(24,3,1,'','2016-12-15 08:17:28',891,1756,'ebb424c9d0f4d0700b5e914f54e683639c6f47c3','{\"id\":3,\"asset_id\":\"78\",\"title\":\"Administration\",\"alias\":\"administration\",\"introtext\":\"<p>Partie admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 08:15:45\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:17:28\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:16:41\",\"publish_up\":\"2016-12-15 08:15:45\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"0\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(25,3,1,'','2016-12-15 08:17:36',891,1757,'67a002068c972cc840e7596ea852f5ca2d5d6a31','{\"id\":3,\"asset_id\":\"78\",\"title\":\"Administration\",\"alias\":\"administration\",\"introtext\":\"<p>Partie admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 08:15:45\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:17:36\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:17:28\",\"publish_up\":\"2016-12-15 08:15:45\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"0\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(26,3,1,'','2016-12-15 08:17:58',891,1758,'25a7409e27605c22f3f697cbc4f444ef82e388f4','{\"id\":3,\"asset_id\":\"78\",\"title\":\"Administration\",\"alias\":\"administration\",\"introtext\":\"<p>Partie admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 08:15:45\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:17:58\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:17:36\",\"publish_up\":\"2016-12-15 08:15:45\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"0\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(27,3,1,'','2016-12-15 08:18:41',891,1759,'7af3b4ccdfbd7811ebbb9d8d46fe66a6e401220c','{\"id\":3,\"asset_id\":\"78\",\"title\":\"Administration\",\"alias\":\"administration\",\"introtext\":\"<p>Partie admin<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 08:15:45\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 08:18:41\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 08:17:58\",\"publish_up\":\"2016-12-15 08:15:45\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"0\\\",\\\"show_intro\\\":\\\"0\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"0\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"0\\\",\\\"link_parent_category\\\":\\\"0\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"0\\\",\\\"show_create_date\\\":\\\"0\\\",\\\"show_modify_date\\\":\\\"0\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"0\\\",\\\"show_icons\\\":\\\"0\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"0\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"0\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"6\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(63,5,1,'','2016-12-15 10:53:04',891,5997,'7ff233fe5b8e5825cba362226758ea7e0e45ad5d','{\"id\":5,\"asset_id\":81,\"title\":\"R\\u00e8gles\",\"alias\":\"regles\",\"introtext\":\"{source}\\r\\n<h1>Jeu de Dames (Variante)<\\/h1>\\r\\n<h2>R\\u00e8gles du jeu<\\/h2>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>Le plateau :<\\/strong><\\/p>\\r\\n<p><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Le jeu se d\\u00e9roule sur un plateau de 8 cases sur 8.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Les deux joueurs poss\\u00e8dent respectivement 16 pions noirs et blancs.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Sur cette variante, les premi\\u00e8res et derni\\u00e8res rang\\u00e9es du plateau de jeu sont laiss\\u00e9es vides .<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple de plateau :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/1.png\\\" \\/><\\/p>\\r\\n<p align=\\\"left\\\"><\\/p>\\r\\n<p><strong>But du jeu :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Pour pouvoir gagner une partie, le joueur doit r\\u00e9ussir \\u00e0 capturer tous les pions de l\'adversaire<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p><em>Exemple:<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/2.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>D\\u00e9roulement d\'une partie :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Le joueur ayant les pions blancs commencent toujours la partie.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">\\u00c0 chaque tour de jeu, le joueur peut effectuer un mouvement parmi les suivants :<\\/p>\\r\\n<ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut d\\u00e9placer un pion (voir fiche d\\u00e9placement des pions)<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut d\\u00e9placer une dame (voir fiche d\\u00e9placement des dames)<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut capturer un pion adverse selon certaines conditions de capture.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/3.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong> D\\u00e9placements et actions d\'un pion :<\\/strong><\\/p>\\r\\n<p><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Un pion peut se d\\u00e9placer d\'une seule case \\u00e0 l\'horizontale ou \\u00e0 la verticale.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Un pion ne peut revenir en arri\\u00e8re.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">La capture d\'un pion adverse se fait via un saut sur la case qui se situe derri\\u00e8re le pion adverse.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Pour devenir une Dame, le joueur doit amener son pion \\u00e0 la derni\\u00e8re ligne en face de son camp.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/4.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>D\\u00e9placement et actions d\'une Dame :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Une Dame peut se d\\u00e9placer \\u00e0 l\'horizontale et \\u00e0 la verticale sur n\'importe quelle case vide.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Une Dame peut capturer un pion adverse en sautant au-dessus et en atterrissant sur une case vide derri\\u00e8re celui-ci.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/5.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>Obligations et Restrictions :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Si le joueur peut effectuer une capture, il est oblig\\u00e9 de le faire et ne peut pas effectuer d\'autre mouvements.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Si le joueur est dans la possibilit\\u00e9 de faire plusieurs saut avec diff\\u00e9rents pions, il peut choisir entre chaque capture.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Chaque pion captur\\u00e9 par les joueurs sont enlev\\u00e9s du plateau, laissant la case vide.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"left\\\"><strong>Promotion :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Quand un joueur arrive \\u00e0 faire atteindre la derni\\u00e8re ligne en face \\u00e0 l\'un de ses pions, il le transforme en Dame.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">S\'il ne reste qu\'un pion dans chaque camp, ces deux pions deviennent respectivement des Dames.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">Bon jeu!<\\/h1>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n{\\/source}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 10:53:04\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 10:53:04\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2016-12-15 10:53:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(64,5,1,'','2016-12-15 10:54:02',891,5990,'1bec86908257ecea8582c7382482f45b852836d0','{\"id\":5,\"asset_id\":\"81\",\"title\":\"R\\u00e8gles\",\"alias\":\"regles\",\"introtext\":\"<h1>Jeu de Dames (Variante)<\\/h1>\\r\\n<h2>R\\u00e8gles du jeu<\\/h2>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>Le plateau :<\\/strong><\\/p>\\r\\n<p><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Le jeu se d\\u00e9roule sur un plateau de 8 cases sur 8.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Les deux joueurs poss\\u00e8dent respectivement 16 pions noirs et blancs.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Sur cette variante, les premi\\u00e8res et derni\\u00e8res rang\\u00e9es du plateau de jeu sont laiss\\u00e9es vides .<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple de plateau :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/1.png\\\" \\/><\\/p>\\r\\n<p align=\\\"left\\\"><\\/p>\\r\\n<p><strong>But du jeu :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Pour pouvoir gagner une partie, le joueur doit r\\u00e9ussir \\u00e0 capturer tous les pions de l\'adversaire<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p><em>Exemple:<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/2.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>D\\u00e9roulement d\'une partie :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Le joueur ayant les pions blancs commencent toujours la partie.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">\\u00c0 chaque tour de jeu, le joueur peut effectuer un mouvement parmi les suivants :<\\/p>\\r\\n<ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut d\\u00e9placer un pion (voir fiche d\\u00e9placement des pions)<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut d\\u00e9placer une dame (voir fiche d\\u00e9placement des dames)<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut capturer un pion adverse selon certaines conditions de capture.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/3.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong> D\\u00e9placements et actions d\'un pion :<\\/strong><\\/p>\\r\\n<p><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Un pion peut se d\\u00e9placer d\'une seule case \\u00e0 l\'horizontale ou \\u00e0 la verticale.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Un pion ne peut revenir en arri\\u00e8re.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">La capture d\'un pion adverse se fait via un saut sur la case qui se situe derri\\u00e8re le pion adverse.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Pour devenir une Dame, le joueur doit amener son pion \\u00e0 la derni\\u00e8re ligne en face de son camp.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/4.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>D\\u00e9placement et actions d\'une Dame :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Une Dame peut se d\\u00e9placer \\u00e0 l\'horizontale et \\u00e0 la verticale sur n\'importe quelle case vide.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Une Dame peut capturer un pion adverse en sautant au-dessus et en atterrissant sur une case vide derri\\u00e8re celui-ci.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/5.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>Obligations et Restrictions :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Si le joueur peut effectuer une capture, il est oblig\\u00e9 de le faire et ne peut pas effectuer d\'autre mouvements.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Si le joueur est dans la possibilit\\u00e9 de faire plusieurs saut avec diff\\u00e9rents pions, il peut choisir entre chaque capture.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Chaque pion captur\\u00e9 par les joueurs sont enlev\\u00e9s du plateau, laissant la case vide.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"left\\\"><strong>Promotion :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Quand un joueur arrive \\u00e0 faire atteindre la derni\\u00e8re ligne en face \\u00e0 l\'un de ses pions, il le transforme en Dame.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">S\'il ne reste qu\'un pion dans chaque camp, ces deux pions deviennent respectivement des Dames.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">Bon jeu!<\\/h1>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 10:53:04\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 10:54:02\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 10:53:50\",\"publish_up\":\"2016-12-15 10:53:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(90,4,1,'','2016-12-15 12:04:39',891,2757,'98c1aebc6f15ad3204b691faddf5c0051b9a9df7','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;html&gt;<br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req= $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table&gt;<br><br>&lt;tr&gt;<br>&lt;th&gt;nom&lt;\\/th&gt;<br>&lt;th&gt;username&lt;\\/th&gt;<br>&lt;th&gt;win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><br>&lt;?php<br>while($donnees = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $donnees[\'nom\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $donnees[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $donnees[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br>&lt;\\/table&gt;<br>&lt;\\/html&gt;<br><\\/span>{\\/source}<br>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:04:39\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:03:01\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":64,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"190\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(91,2,1,'','2016-12-15 12:16:12',891,5252,'5cbfb5d4543dab3ddb86f03f7681c4d8dc235f5b','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"height: 80px; width: 80px; border-color: black; background-color(odd): pink; margin-left: auto; margin-right: auto;\\\" border=\\\"1\\\" cellpadding=\\\"20\\\" cellspacing=\\\"0\\\"><caption>JEU DE DAMES<\\/caption>\\r\\n<tbody class=\\\"miseEnFormePlateau\\\">\\r\\n<tr>\\r\\n<td class=\\\"konekosakurawasabi\\\" data-line=\\\"0\\\" data-column=\\\"0\\\">0<\\/td>\\r\\n<td id=\\\"test\\\" data-line=\\\"0\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:16:12\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:15:45\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"277\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(92,2,1,'','2016-12-15 12:16:22',891,5223,'d787bc4160bcb74fc55c26cc112b0ed5e96e2d26','{\"id\":2,\"asset_id\":\"65\",\"title\":\"Espace jeu\",\"alias\":\"espace-jeu\",\"introtext\":\"<table style=\\\"height: 80px; width: 80px; border-color: black; background-color(odd): pink; margin-left: auto; margin-right: auto;\\\" border=\\\"1\\\" cellpadding=\\\"20\\\" cellspacing=\\\"0\\\"><caption>JEU DE DAMES<\\/caption>\\r\\n<tbody class=\\\"miseEnFormePlateau\\\">\\r\\n<tr>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"0\\\">0<\\/td>\\r\\n<td id=\\\"test\\\" data-line=\\\"0\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"0\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"1\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"2\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"3\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"4\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"5\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"6\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"0\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"1\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"2\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"3\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"4\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"5\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"6\\\"><\\/td>\\r\\n<td data-line=\\\"7\\\" data-column=\\\"7\\\"><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-14 08:59:24\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:16:22\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:16:12\",\"publish_up\":\"2016-12-14 08:59:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"277\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(93,4,1,'','2016-12-15 12:24:25',891,4081,'d7ab0f8de2f347acf2f6dc49d73a11e58b250561','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;html&gt;<br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req= $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table&gt;<br><br>&lt;tr&gt;<br>&lt;th&gt;nom&lt;\\/th&gt;<br>&lt;th&gt;username&lt;\\/th&gt;<br>&lt;th&gt;win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><br>&lt;?php<br>while($donnees = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $donnees[\'nom\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $donnees[\'u{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;nom&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'nom\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><\\/span>{\\/source}<br>&lt;table&gt;sername\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $donnees[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br>&lt;\\/table&gt;<br>&lt;\\/html&gt;<br><\\/span>{\\/source}<br>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:24:25\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:18:10\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":67,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"194\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(94,4,1,'','2016-12-15 12:25:50',891,3125,'43a98ee2402001a66702558d59516db23ffac023','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;nom&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'nom\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:25:50\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:24:25\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":68,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"195\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(95,4,1,'','2016-12-15 12:29:01',891,3076,'560b5d4d72f208faf4756c3824049555d28731e5','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table classe=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;nom&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'nom\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:29:01\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:25:50\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":69,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"196\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(96,4,1,'','2016-12-15 12:31:33',891,3075,'a46252a618e1240243ef67d23039063798f3336c','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table class=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;nom&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'nom\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:31:33\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:30:46\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":71,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"206\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(97,4,1,'','2016-12-15 12:38:47',891,3081,'21fd9d78c89ca0ed607c57c53da197c2f7acaa07','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table classe=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;nom&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'name\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}<br>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:38:47\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:32:35\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":75,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"220\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(98,4,1,'','2016-12-15 12:39:36',891,3082,'3c20c6d8bdf3630370a3ea5708786b4a8c9968b1','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table classe=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;name&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'name\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}<br>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:39:36\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:38:47\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":76,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"221\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(99,4,1,'','2016-12-15 12:40:45',891,3077,'117c16331c1d4396dfa8310f4b1ce1dd668fd126','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users\');<br>?&gt;<br><br>&lt;table class=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;name&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'name\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:40:45\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:39:36\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":77,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"222\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(100,4,1,'','2016-12-15 12:42:10',891,3095,'5aa91628b1255b17aa314312b776e3d27a574cd8','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users order by user_win\');<br>?&gt;<br><br>&lt;table class=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;name&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'name\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:42:10\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:40:45\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":78,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"225\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(101,4,1,'','2016-12-15 12:46:40',891,3104,'fbcf1bf7ed6b8f8c35e3af9e2a7c46917b051e63','{\"id\":4,\"asset_id\":\"80\",\"title\":\"Classement\",\"alias\":\"classement\",\"introtext\":\"{source}<span style=\\\"font-family: courier new, courier, monospace;\\\"><br>&lt;?php<br>try{<br>$bdd = new PDO(\'mysql:host=localhost;dbname=site_projet;charset=utf8\', \'root\', \'toto\');<br>}catch(Exception $e){<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">die(\'Erreur : \'.$e-&gt;getMessage());<br>}<br>$req = $bdd-&gt;query(\'SELECT * FROM icng4_users order by user_win desc\');<br>?&gt;<br><br>&lt;table class=\\\"miseEnFormeClassement\\\"&gt;<br>&lt;tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">\\t&lt;th&gt;name&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;username&lt;\\/th&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\">&lt;th&gt;user_win&lt;\\/th&gt;<br>&lt;\\/tr&gt;<br><img src=\\\"\\/site_projet\\/projet_GAL_groupe2\\/media\\/sourcerer\\/images\\/tab.png\\\"><br>&lt;?php<br>while($row = $req-&gt;fetch()){<br>?&gt;<br><br>&lt;tr&gt;<br>&lt;td&gt;&lt;?php echo $row[\'name\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'username\'];?&gt;&lt;\\/td&gt;<br>&lt;td&gt;&lt;?php echo $row[\'user_win\'];?&gt;&lt;\\/td&gt;<br>&lt;\\/tr&gt;<br><br><br>&lt;?php<br>}<br>mysql_close();<br>?&gt;<br><br>&lt;\\/table&gt;<br><\\/span>{\\/source}<br>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 09:16:12\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-15 12:46:40\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-15 12:42:10\",\"publish_up\":\"2016-12-15 09:16:12\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":79,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"228\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(102,5,1,'','2016-12-16 08:37:12',891,5992,'e6bd9ef72a41c5c2753d4b4f0c0302996d9eb749','{\"id\":5,\"asset_id\":\"81\",\"title\":\"R\\u00e8gles\",\"alias\":\"regles\",\"introtext\":\"<h1>Jeu de Dames (Variante)<\\/h1>\\r\\n<h2>R\\u00e8gles du jeu<\\/h2>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>Le plateau :<\\/strong><\\/p>\\r\\n<p><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Le jeu se d\\u00e9roule sur un plateau de 8 cases sur 8.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Les deux joueurs poss\\u00e8dent respectivement 16 pions noirs et blancs.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Sur cette variante, les premi\\u00e8res et derni\\u00e8res rang\\u00e9es du plateau de jeu sont laiss\\u00e9es vides .<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple de plateau :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/1.png\\\" \\/><\\/p>\\r\\n<p align=\\\"left\\\"><\\/p>\\r\\n<p><strong>But du jeu :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Pour pouvoir gagner une partie, le joueur doit r\\u00e9ussir \\u00e0 capturer tous les pions de l\'adversaire<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p><em>Exemple:<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/2.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>D\\u00e9roulement d\'une partie :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Le joueur ayant les pions blancs commencent toujours la partie.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">\\u00c0 chaque tour de jeu, le joueur peut effectuer un mouvement parmi les suivants :<\\/p>\\r\\n<ul>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut d\\u00e9placer un pion (voir fiche d\\u00e9placement des pions)<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut d\\u00e9placer une dame (voir fiche d\\u00e9placement des dames)<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Il peut capturer un pion adverse selon certaines conditions de capture.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/3.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong> D\\u00e9placements et actions d\'un pion :<\\/strong><\\/p>\\r\\n<p><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Un pion peut se d\\u00e9placer d\'une seule case \\u00e0 l\'horizontale ou \\u00e0 la verticale.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Un pion ne peut revenir en arri\\u00e8re.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">La capture d\'un pion adverse se fait via un saut sur la case qui se situe derri\\u00e8re le pion adverse.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Pour devenir une Dame, le joueur doit amener son pion \\u00e0 la derni\\u00e8re ligne en face de son camp.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/4.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>D\\u00e9placement et actions d\'une Dame :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Une Dame peut se d\\u00e9placer \\u00e0 l\'horizontale et \\u00e0 la verticale sur n\'importe quelle case vide.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Une Dame peut capturer un pion adverse en sautant au-dessus et en atterrissant sur une case vide derri\\u00e8re celui-ci.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><em>Exemple :<\\/em><\\/p>\\r\\n<p><img src=\\\"images\\/regles\\/5.png\\\" \\/><\\/p>\\r\\n<p><\\/p>\\r\\n<p align=\\\"left\\\"><strong>Obligations et Restrictions :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Si le joueur peut effectuer une capture, il est oblig\\u00e9 de le faire et ne peut pas effectuer d\'autre mouvements.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Si le joueur est dans la possibilit\\u00e9 de faire plusieurs saut avec diff\\u00e9rents pions, il peut choisir entre chaque capture.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Chaque pion captur\\u00e9 par les joueurs sont enlev\\u00e9s du plateau, laissant la case vide.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p align=\\\"left\\\"><strong>Promotion :<\\/strong><\\/p>\\r\\n<ul>\\r\\n<li>\\r\\n<p align=\\\"left\\\">Quand un joueur arrive \\u00e0 faire atteindre la derni\\u00e8re ligne en face \\u00e0 l\'un de ses pions, il le transforme en Dame.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<p align=\\\"left\\\">S\'il ne reste qu\'un pion dans chaque camp, ces deux pions deviennent respectivement des Dames.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<p><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">Bon jeu!<\\/h1>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\\r\\n<p><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2016-12-15 10:53:04\",\"created_by\":\"891\",\"created_by_alias\":\"\",\"modified\":\"2016-12-16 08:37:12\",\"modified_by\":\"891\",\"checked_out\":\"891\",\"checked_out_time\":\"2016-12-16 08:37:06\",\"publish_up\":\"2016-12-15 10:53:04\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"23\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `icng4_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_update_sites`
--

DROP TABLE IF EXISTS `icng4_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_update_sites`
--

LOCK TABLES `icng4_update_sites` WRITE;
/*!40000 ALTER TABLE `icng4_update_sites` DISABLE KEYS */;
INSERT INTO `icng4_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1481877663,''),(2,'Joomla! Extension Directory','collection','https://update.joomla.org/jed/list.xml',1,1481877683,''),(3,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,1481877703,''),(4,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1481877723,''),(5,'Sensomedia Social Bookmarks Updates','extension','http://www.sensomedia.com/update1.xml',1,1481877743,''),(6,'Regular Labs - Sourcerer','extension','http://download.regularlabs.com/updates.xml?e=sourcerer&type=.xml',1,1481877763,'');
/*!40000 ALTER TABLE `icng4_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_update_sites_extensions`
--

DROP TABLE IF EXISTS `icng4_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_update_sites_extensions`
--

LOCK TABLES `icng4_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `icng4_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `icng4_update_sites_extensions` VALUES (1,700),(2,700),(3,802),(4,28),(5,605),(5,10003),(6,10010);
/*!40000 ALTER TABLE `icng4_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_updates`
--

DROP TABLE IF EXISTS `icng4_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_updates`
--

LOCK TABLES `icng4_updates` WRITE;
/*!40000 ALTER TABLE `icng4_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_user_keys`
--

DROP TABLE IF EXISTS `icng4_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_user_keys`
--

LOCK TABLES `icng4_user_keys` WRITE;
/*!40000 ALTER TABLE `icng4_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_user_notes`
--

DROP TABLE IF EXISTS `icng4_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_user_notes`
--

LOCK TABLES `icng4_user_notes` WRITE;
/*!40000 ALTER TABLE `icng4_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_user_profiles`
--

DROP TABLE IF EXISTS `icng4_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_user_profiles`
--

LOCK TABLES `icng4_user_profiles` WRITE;
/*!40000 ALTER TABLE `icng4_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `icng4_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_user_usergroup_map`
--

DROP TABLE IF EXISTS `icng4_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_user_usergroup_map`
--

LOCK TABLES `icng4_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `icng4_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `icng4_user_usergroup_map` VALUES (891,8),(893,2);
/*!40000 ALTER TABLE `icng4_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_usergroups`
--

DROP TABLE IF EXISTS `icng4_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_usergroups`
--

LOCK TABLES `icng4_usergroups` WRITE;
/*!40000 ALTER TABLE `icng4_usergroups` DISABLE KEYS */;
INSERT INTO `icng4_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Enregistré'),(3,2,9,14,'Auteur'),(4,3,10,13,'Rédacteur'),(5,4,11,12,'Validateur'),(6,1,4,7,'Gestionnaire'),(7,6,5,6,'Administrateur'),(8,1,16,17,'Super Utilisateur'),(9,1,2,3,'Invité');
/*!40000 ALTER TABLE `icng4_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_users`
--

DROP TABLE IF EXISTS `icng4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `user_win` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=894 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_users`
--

LOCK TABLES `icng4_users` WRITE;
/*!40000 ALTER TABLE `icng4_users` DISABLE KEYS */;
INSERT INTO `icng4_users` VALUES (891,'Super Utilisateur','kvasseur','vasseur.isn@gmail.com','$2y$10$yAExibGqjE8LkDfls/fsg.UxXFrC7B1PMinAGCuo3I5zcUuh98x.K',0,1,'2016-12-13 11:16:54','2016-12-16 08:37:01','0','{\"editor\":\"\",\"timezone\":\"\",\"language\":\"\",\"admin_style\":\"\",\"admin_language\":\"fr-FR\",\"helpsite\":\"https:\\/\\/help.joomla.fr\\/index.php?option=com_help&keyref=Help{major}{minor}:{keyref}\"}','0000-00-00 00:00:00',0,'','',0,17),(893,'vasseur','k_vasseur','vasseur.kev@outlook.fr','$2y$10$SMgqnmdQWFDBWcCAA0wtWeqTo/cdIWHCkKk9IMv5NGrTz3sFMDfAu',0,0,'2016-12-14 08:20:33','2016-12-15 13:00:38','','{\"editor\":\"\",\"timezone\":\"\",\"language\":\"fr-FR\"}','0000-00-00 00:00:00',0,'','',0,10);
/*!40000 ALTER TABLE `icng4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_utf8_conversion`
--

DROP TABLE IF EXISTS `icng4_utf8_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_utf8_conversion`
--

LOCK TABLES `icng4_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `icng4_utf8_conversion` DISABLE KEYS */;
INSERT INTO `icng4_utf8_conversion` VALUES (2);
/*!40000 ALTER TABLE `icng4_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icng4_viewlevels`
--

DROP TABLE IF EXISTS `icng4_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icng4_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icng4_viewlevels`
--

LOCK TABLES `icng4_viewlevels` WRITE;
/*!40000 ALTER TABLE `icng4_viewlevels` DISABLE KEYS */;
INSERT INTO `icng4_viewlevels` VALUES (1,'Accès public',0,'[1]'),(2,'Accès enregistré',2,'[6,2,8]'),(3,'Accès spécial',3,'[6,3,8]'),(5,'Accès invité',1,'[9]'),(6,'Accès super utilisateur',4,'[8]');
/*!40000 ALTER TABLE `icng4_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-16  9:48:12
