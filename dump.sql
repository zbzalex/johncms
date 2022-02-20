-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: johncms
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.21.10.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refid` int NOT NULL,
  `realid` int NOT NULL,
  `type` char(3) NOT NULL,
  `time` int NOT NULL,
  `from` varchar(25) NOT NULL,
  `to` varchar(15) NOT NULL,
  `dpar` char(3) NOT NULL,
  `text` text NOT NULL,
  `ip` text NOT NULL,
  `soft` text NOT NULL,
  `nas` text NOT NULL,
  `otv` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refid` (`refid`),
  KEY `type` (`type`),
  KEY `time` (`time`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_ads`
--

DROP TABLE IF EXISTS `cms_ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL,
  `view` int NOT NULL,
  `layout` int NOT NULL,
  `count` int NOT NULL,
  `count_link` int NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `to` int NOT NULL DEFAULT '0',
  `color` varchar(10) NOT NULL,
  `time` int NOT NULL,
  `day` int NOT NULL,
  `font` int NOT NULL,
  `mesto` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ads`
--

LOCK TABLES `cms_ads` WRITE;
/*!40000 ALTER TABLE `cms_ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_ban_ip`
--

DROP TABLE IF EXISTS `cms_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ban_ip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip1` int NOT NULL,
  `ip2` int NOT NULL,
  `ban_type` tinyint NOT NULL DEFAULT '0',
  `link` varchar(100) NOT NULL,
  `who` varchar(25) NOT NULL,
  `reason` text NOT NULL,
  `date` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip1` (`ip1`),
  UNIQUE KEY `ip2` (`ip2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ban_ip`
--

LOCK TABLES `cms_ban_ip` WRITE;
/*!40000 ALTER TABLE `cms_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_ban_users`
--

DROP TABLE IF EXISTS `cms_ban_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_ban_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `ban_time` int NOT NULL,
  `ban_while` int NOT NULL,
  `ban_type` tinyint NOT NULL DEFAULT '1',
  `ban_who` varchar(30) NOT NULL,
  `ban_ref` int NOT NULL,
  `ban_reason` text NOT NULL,
  `ban_raz` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `ban_time` (`ban_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_ban_users`
--

LOCK TABLES `cms_ban_users` WRITE;
/*!40000 ALTER TABLE `cms_ban_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_ban_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_counters`
--

DROP TABLE IF EXISTS `cms_counters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_counters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sort` int NOT NULL DEFAULT '1',
  `name` varchar(30) NOT NULL,
  `link1` text NOT NULL,
  `link2` text NOT NULL,
  `mode` tinyint NOT NULL DEFAULT '1',
  `switch` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_counters`
--

LOCK TABLES `cms_counters` WRITE;
/*!40000 ALTER TABLE `cms_counters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_counters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_forum_files`
--

DROP TABLE IF EXISTS `cms_forum_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_forum_files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cat` int NOT NULL,
  `subcat` int NOT NULL,
  `topic` int NOT NULL,
  `post` int NOT NULL,
  `time` int NOT NULL,
  `filename` text NOT NULL,
  `filetype` tinyint NOT NULL,
  `dlcount` int NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cat` (`cat`),
  KEY `subcat` (`subcat`),
  KEY `topic` (`topic`),
  KEY `post` (`post`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_forum_files`
--

LOCK TABLES `cms_forum_files` WRITE;
/*!40000 ALTER TABLE `cms_forum_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_forum_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_forum_rdm`
--

DROP TABLE IF EXISTS `cms_forum_rdm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_forum_rdm` (
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  `time` int NOT NULL,
  PRIMARY KEY (`topic_id`,`user_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_forum_rdm`
--

LOCK TABLES `cms_forum_rdm` WRITE;
/*!40000 ALTER TABLE `cms_forum_rdm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_forum_rdm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_guests`
--

DROP TABLE IF EXISTS `cms_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_guests` (
  `session_id` char(32) NOT NULL,
  `ip` int NOT NULL,
  `browser` tinytext NOT NULL,
  `lastdate` int NOT NULL,
  `sestime` int NOT NULL,
  `movings` int NOT NULL DEFAULT '0',
  `place` varchar(30) NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `time` (`lastdate`),
  KEY `place` (`place`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_guests`
--

LOCK TABLES `cms_guests` WRITE;
/*!40000 ALTER TABLE `cms_guests` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_settings` (
  `key` tinytext NOT NULL,
  `val` text NOT NULL,
  PRIMARY KEY (`key`(30))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES ('emailadmina',''),('meta_key',''),('meta_desc',''),('sdvigclock','0'),('copyright','99dev.ru'),('homeurl','http://localhost:3001'),('admp','panel'),('flsz','1000'),('gzip','1'),('clean_time','1644360440'),('mod_reg','1'),('mod_forum','2'),('mod_chat','0'),('mod_guest','2'),('mod_lib','0'),('mod_gal','0'),('mod_down_comm','0'),('mod_down','0'),('mod_lib_comm','0'),('mod_gal_comm','1'),('skindef','oz');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refid` int NOT NULL,
  `adres` text NOT NULL,
  `time` int NOT NULL,
  `name` text NOT NULL,
  `type` varchar(4) NOT NULL,
  `avtor` varchar(25) NOT NULL,
  `ip` text NOT NULL,
  `soft` text NOT NULL,
  `text` text NOT NULL,
  `screen` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refid` (`refid`),
  KEY `type` (`type`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refid` int NOT NULL DEFAULT '0',
  `type` char(1) NOT NULL DEFAULT '',
  `time` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  `from` varchar(25) NOT NULL DEFAULT '',
  `realid` int NOT NULL DEFAULT '0',
  `ip` text NOT NULL,
  `soft` text NOT NULL,
  `text` text NOT NULL,
  `close` tinyint(1) NOT NULL DEFAULT '0',
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `edit` text NOT NULL,
  `tedit` int NOT NULL DEFAULT '0',
  `kedit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `refid` (`refid`),
  KEY `type` (`type`),
  KEY `time` (`time`),
  KEY `user_id` (`user_id`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_vote`
--

DROP TABLE IF EXISTS `forum_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NOT NULL DEFAULT '0',
  `time` int NOT NULL DEFAULT '0',
  `topic` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_vote`
--

LOCK TABLES `forum_vote` WRITE;
/*!40000 ALTER TABLE `forum_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_vote_us`
--

DROP TABLE IF EXISTS `forum_vote_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_vote_us` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` int NOT NULL DEFAULT '0',
  `topic` int NOT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_vote_us`
--

LOCK TABLES `forum_vote_us` WRITE;
/*!40000 ALTER TABLE `forum_vote_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_vote_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refid` int NOT NULL,
  `time` int NOT NULL,
  `type` char(2) NOT NULL,
  `avtor` varchar(25) NOT NULL,
  `text` text NOT NULL,
  `name` text NOT NULL,
  `user` binary(1) NOT NULL,
  `ip` text NOT NULL,
  `soft` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `refid` (`refid`),
  KEY `time` (`time`),
  KEY `type` (`type`),
  KEY `avtor` (`avtor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adm` tinyint(1) NOT NULL DEFAULT '0',
  `time` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(25) NOT NULL,
  `text` text NOT NULL,
  `ip` int NOT NULL,
  `browser` tinytext NOT NULL,
  `admin` varchar(25) NOT NULL,
  `otvet` text NOT NULL,
  `otime` int NOT NULL,
  `edit_who` varchar(20) NOT NULL,
  `edit_time` int NOT NULL,
  `edit_count` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `adm` (`adm`),
  KEY `time` (`time`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib`
--

DROP TABLE IF EXISTS `lib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refid` int NOT NULL,
  `time` int NOT NULL,
  `type` varchar(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `announce` text NOT NULL,
  `avtor` varchar(25) NOT NULL,
  `text` mediumtext NOT NULL,
  `ip` int NOT NULL,
  `soft` text NOT NULL,
  `moder` tinyint(1) NOT NULL DEFAULT '0',
  `count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `moder` (`moder`),
  KEY `time` (`time`),
  KEY `refid` (`refid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib`
--

LOCK TABLES `lib` WRITE;
/*!40000 ALTER TABLE `lib` DISABLE KEYS */;
/*!40000 ALTER TABLE `lib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` int NOT NULL,
  `avt` varchar(25) NOT NULL DEFAULT '',
  `name` text NOT NULL,
  `text` text NOT NULL,
  `kom` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privat`
--

DROP TABLE IF EXISTS `privat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(25) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `time` varchar(25) NOT NULL DEFAULT '',
  `author` varchar(25) NOT NULL DEFAULT '',
  `type` char(3) NOT NULL DEFAULT '',
  `chit` char(3) NOT NULL DEFAULT '',
  `temka` text NOT NULL,
  `otvet` binary(1) NOT NULL DEFAULT '\0',
  `me` varchar(25) NOT NULL DEFAULT '',
  `cont` varchar(25) NOT NULL DEFAULT '',
  `ignor` varchar(25) NOT NULL DEFAULT '',
  `attach` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `me` (`me`),
  KEY `ignor` (`ignor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privat`
--

LOCK TABLES `privat` WRITE;
/*!40000 ALTER TABLE `privat` DISABLE KEYS */;
/*!40000 ALTER TABLE `privat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `immunity` int NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL DEFAULT '',
  `name_lat` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `imname` varchar(25) NOT NULL DEFAULT '',
  `sex` varchar(2) NOT NULL DEFAULT '',
  `komm` int NOT NULL DEFAULT '0',
  `postforum` int NOT NULL DEFAULT '0',
  `postguest` int NOT NULL DEFAULT '0',
  `postchat` int NOT NULL DEFAULT '0',
  `otvetov` int NOT NULL DEFAULT '0',
  `yearofbirth` int NOT NULL DEFAULT '0',
  `datereg` int NOT NULL DEFAULT '0',
  `lastdate` int NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `icq` int NOT NULL DEFAULT '0',
  `skype` varchar(255) DEFAULT NULL,
  `jabber` varchar(255) DEFAULT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `live` varchar(50) NOT NULL DEFAULT '',
  `mibile` varchar(50) NOT NULL DEFAULT '',
  `rights` int NOT NULL DEFAULT '0',
  `status` varchar(255) DEFAULT NULL,
  `ip` varchar(25) NOT NULL DEFAULT '',
  `browser` text NOT NULL,
  `time` int NOT NULL DEFAULT '0',
  `preg` binary(1) NOT NULL DEFAULT '\0',
  `regadm` varchar(25) NOT NULL DEFAULT '',
  `kod` int NOT NULL DEFAULT '0',
  `mailvis` tinyint(1) NOT NULL DEFAULT '1',
  `dayb` int NOT NULL DEFAULT '0',
  `monthb` int NOT NULL DEFAULT '0',
  `plus` int NOT NULL DEFAULT '0',
  `minus` int NOT NULL DEFAULT '0',
  `vrrat` int NOT NULL DEFAULT '0',
  `alls` varchar(25) NOT NULL DEFAULT '',
  `balans` int NOT NULL DEFAULT '0',
  `sestime` int NOT NULL DEFAULT '0',
  `total_on_site` int NOT NULL DEFAULT '0',
  `lastpost` int NOT NULL DEFAULT '0',
  `rest_code` varchar(45) DEFAULT NULL,
  `rest_time` int NOT NULL DEFAULT '0',
  `movings` int NOT NULL DEFAULT '0',
  `place` varchar(255) DEFAULT NULL,
  `set_user` varchar(255) DEFAULT NULL,
  `set_forum` varchar(255) DEFAULT NULL,
  `set_chat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_lat` (`name_lat`),
  KEY `lastdate` (`lastdate`),
  KEY `place` (`place`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'admin','admin','63ee451939ed580ef3c4b6f0109d1fd0','alex','m',0,0,1,0,0,0,1644360956,1644361365,'',0,NULL,NULL,'','test','','',9,NULL,'','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/53',0,_binary '1','',0,1,0,0,0,0,0,'',0,1644360957,409,1644361159,NULL,0,31,'mainpage','a:11:{s:6:\"avatar\";i:1;s:7:\"smileys\";i:1;s:8:\"translit\";i:1;s:8:\"quick_go\";i:1;s:4:\"gzip\";i:1;s:6:\"online\";i:1;s:7:\"movings\";i:1;s:6:\"digest\";i:1;s:5:\"sdvig\";i:0;s:5:\"kmess\";i:10;s:4:\"skin\";s:2:\"oz\";}',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vik`
--

DROP TABLE IF EXISTS `vik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vopros` text NOT NULL,
  `otvet` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vik`
--

LOCK TABLES `vik` WRITE;
/*!40000 ALTER TABLE `vik` DISABLE KEYS */;
/*!40000 ALTER TABLE `vik` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-20 21:34:42
