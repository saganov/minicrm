-- MySQL dump 10.13  Distrib 5.5.30, for Linux (i686)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	5.5.30-log

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
-- Table structure for table `jos_lovefactory_photos`
--

DROP TABLE IF EXISTS `jos_lovefactory_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_lovefactory_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  `is_main` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=364 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_lovefactory_photos`
--

LOCK TABLES `jos_lovefactory_photos` WRITE;
/*!40000 ALTER TABLE `jos_lovefactory_photos` DISABLE KEYS */;
INSERT INTO `jos_lovefactory_photos` VALUES (10,73,'b75ca7ff765dcec60c767b2d062efe46.jpg',0,1,'2012-01-09 16:56:07',0),(11,74,'73a7f9bc99ff315b549f71074b0b5721.jpg',0,1,'2012-01-09 17:01:37',0),(9,72,'c2597e8d8def143387b1c902f95e1d53.jpg',0,1,'2012-01-09 16:50:41',0),(12,2,'f61b9c296c4f9121a4e1bf7c4e562308.jpg',1,1,'2012-01-09 17:42:52',0),(25,75,'b2c548dbf4c1907fb865394dbbbb57a8.png',0,0,'2012-01-23 16:54:25',0),(17,2,'2478504c6a083c3859210560885e02d9.jpg',2,0,'2012-01-12 20:21:38',0),(18,2,'116227dc29d17982a3078fce379f82e0.jpg',3,0,'2012-01-12 20:22:07',0),(21,62,'208a52c9e3f14830ec413f3759092bbd.jpg',1,1,'2012-01-13 09:07:09',0),(39,88,'78cd5be4d94f89ff0f266914f2aa084c.jpg',1,1,'2012-01-27 14:18:51',0),(33,86,'49a49729d504100514d41027c4c6677d.jpg',1,1,'2012-01-25 17:14:23',0),(28,81,'3b4fb7dd8db1f0118048e9afb7acfe5c.jpg',0,1,'2012-01-25 11:36:39',0),(29,81,'95b42eb42fef72698e7fd4702e5055e8.jpg',1,0,'2012-01-25 11:36:59',0),(30,81,'f74ccd2a2f079733e5072e2326c9f115.jpg',2,0,'2012-01-25 11:37:36',0),(31,81,'d4c762d5415678550c2128b082702cd1.jpg',3,0,'2012-01-25 11:38:05',0),(32,81,'3179dceb06a76f4d97fb1dc1e57280b1.jpg',4,0,'2012-01-25 11:38:48',0),(34,86,'a6c2eb49777620dd3b5bb3cf60e29e04.jpg',2,0,'2012-01-25 17:14:50',0),(35,86,'ab7cfa92b076cf9d6da954e35c41d62a.jpg',3,0,'2012-01-25 17:15:16',0),(36,86,'40cbc7e77637c03f8a2d9b606ae15b15.jpg',4,0,'2012-01-25 17:15:25',0),(37,86,'dc4c614b45fe574d9723cbabeb3083a6.jpg',5,0,'2012-01-25 17:15:47',0),(43,82,'cd6fe1090c11a89a3b815ca464f0e6e4.jpg',1,1,'2012-01-28 19:57:04',0),(40,88,'76bcdf876d703db54d55c3968d005b0e.jpg',2,0,'2012-01-27 14:19:15',0),(41,88,'ff7590ab0a32a29e25996f434c48c697.jpg',3,0,'2012-01-27 14:19:21',0),(45,89,'3459cdfe152dfebededb26f35b1ad4cc.jpg',1,0,'2012-01-29 16:35:07',0),(47,89,'8500deed6c02239abe96f31ccf9efda2.jpg',2,1,'2012-01-29 16:47:28',0),(48,89,'0faa108dfe287bf4bb0f616950a720f5.jpg',3,0,'2012-01-29 16:47:50',0),(49,89,'2d19e3d822160de3c069fc72d6985aaa.jpg',4,0,'2012-01-29 16:48:07',0),(50,90,'8992d02b763b67138ef519a926d65afc.jpg',1,0,'2012-01-29 17:02:10',0),(51,90,'32b9eef0c26617f4575228a33e4f4b90.jpg',2,0,'2012-01-29 17:02:21',0),(52,90,'44c8084e1966a3b46ff75ace10011638.jpg',3,0,'2012-01-29 17:02:52',0),(53,90,'272c52b0114df5125e9095ac17547401.jpg',4,0,'2012-01-29 17:03:50',0),(54,90,'57f3406edd8d753b0e774db9e097e6a4.jpg',5,0,'2012-01-29 17:05:46',0),(56,91,'04b50e5209c2dbbf2b6319ac18f8ec0b.jpg',1,0,'2012-01-29 17:45:32',0),(57,91,'efb433502a53f3c076891dfe1e97c196.jpg',2,0,'2012-01-29 17:45:50',0),(58,91,'e01032d19296fae5fc24ab83a3381539.jpg',3,0,'2012-01-29 17:46:05',0),(59,91,'d34a9167dbc76f948b5b148abe118f45.jpg',4,0,'2012-01-29 17:46:14',0),(60,91,'82873c57c467b22258ce6612dc5a7168.jpg',5,1,'2012-01-29 17:47:23',0),(135,90,'728cfa8fdef09c1f8674d2b6c4a336cd.jpg',6,1,'2012-02-19 16:42:34',0),(62,93,'28fbfdaeee47406df5d24ec8c9a1f1bd.jpg',1,1,'2012-01-29 18:58:02',0),(64,97,'4b64a24846e8373ff71914fa10401214.jpg',1,1,'2012-01-30 17:35:41',0),(65,97,'600ab0386499c80f493c324e5c761525.jpg',2,0,'2012-01-30 17:35:44',0),(66,100,'a31cd02553113655b77adbdfa9c18d4b.jpg',1,0,'2012-01-30 17:44:48',0),(67,100,'bef07f8abc871ffa57a6d631b10f4e2e.jpg',2,1,'2012-01-30 17:44:49',0),(68,97,'073607882ddc941c2508829a980f8463.jpg',3,0,'2012-01-30 20:20:41',0),(69,94,'253bfb8268c24ccd3a62aac025a8770d.jpg',1,1,'2012-02-01 16:57:46',0),(70,92,'0c35615e5556c55b443815dd1727a786.jpg',1,1,'2012-02-01 18:08:57',0),(71,104,'46b5489f4998551e08ef6afbab3b5575.jpg',1,0,'2012-02-05 09:37:16',0),(72,104,'dd79df59be9be27c119c9997ccac6e6e.jpg',2,0,'2012-02-05 09:37:29',0),(73,104,'1ab4992df9dfe144855ee9fd641659f2.jpg',3,0,'2012-02-05 09:37:34',0),(74,104,'db9610be1737e90a15ac7ad6d9130783.jpg',4,0,'2012-02-05 09:38:26',0),(87,108,'c7c5a75baa262b02bd105fbdc6f5e9ea.jpg',1,1,'2012-02-14 11:30:09',0),(77,105,'befb8f22e3deebddbf14bba5dea2d249.jpg',3,0,'2012-02-05 10:19:23',0),(78,105,'a473e0c2bab50499b59552b5fe86e2cf.jpg',4,0,'2012-02-05 10:19:25',0),(79,105,'ed9b9c51d820d581dac75c654b2de46f.jpg',5,0,'2012-02-05 10:19:26',0),(80,105,'298a9d3eb5ce8d3d6d1fd62087e7d729.jpg',6,1,'2012-02-05 10:19:28',0),(82,106,'4c49489d20f7ef782a4a1838d06f03e2.jpg',1,0,'2012-02-05 10:51:42',0),(83,106,'e1d31f481976709e95f3c6acff4fb87b.jpg',2,1,'2012-02-05 10:51:53',0),(84,106,'38d4a2c43527dc27bf7b076cefbbd8df.jpg',3,0,'2012-02-05 10:53:05',0),(85,106,'6ce9c53d237ccbd61e18e20145e33846.jpg',4,0,'2012-02-05 10:54:53',0),(86,106,'2cea833697c353eab743502519d75a13.jpg',5,0,'2012-02-05 10:56:39',0),(89,124,'b7b4b7a32fe74bc65b7ff9dddcee6fa7.jpg',0,1,'2012-02-16 20:53:54',0),(106,117,'35d64c68df2663d4ede3cfcbee405701.jpg',0,1,'2012-02-16 21:37:09',0),(113,117,'06b1dbccd9f7157a3e5de1a25ba02499.jpg',1,0,'2012-02-19 13:23:14',0),(115,117,'03043b3215aaa09c7417a479d429f109.jpg',2,0,'2012-02-19 13:24:10',0),(116,117,'0998c147ff4236efbee1afd5006da1d6.jpg',3,0,'2012-02-19 13:24:28',0),(117,117,'62cfb830acfdbde436b9640768ba134c.jpg',4,0,'2012-02-19 13:24:50',0),(118,117,'63cc70429ce5d8deb102c579af10264b.jpg',1,0,'2012-02-19 13:25:15',2),(119,124,'48594abb95f990bcb425c8551082cda1.jpg',1,0,'2012-02-19 13:33:15',0),(120,124,'87615a08db53f4d0c0c8cabe4f17f90a.jpg',2,0,'2012-02-19 13:33:34',0),(121,124,'38bdd974bee9bfd3318c208f4da4cd6f.jpg',3,0,'2012-02-19 13:33:42',0),(122,124,'239049f78941cd11d68fe3c5538ae9d2.jpg',4,0,'2012-02-19 13:34:00',0),(123,124,'9f2735ad50c6474177d796db45318e58.jpg',1,0,'2012-02-19 13:34:30',1),(124,125,'af08cfb65f911ae8e58e7da23f2b4842.jpg',0,0,'2012-02-19 13:42:52',0),(125,125,'287a271fc02d271c8530756729e67e2b.jpg',1,0,'2012-02-19 13:43:06',0),(130,125,'3202c96193a81b084b5b3bdcde962946.jpg',4,1,'2012-02-19 13:50:02',0),(127,125,'b71c5c530508e7a1da3f19d9595e87d8.jpg',2,0,'2012-02-19 13:43:30',0),(128,125,'a1639ecba863627c3b82d23b4b90df8a.jpg',3,0,'2012-02-19 13:43:58',0),(129,125,'320f05bf9b20cdeff3a3e33ec502331e.jpg',0,0,'2012-02-19 13:44:46',1),(131,116,'d0b9b6085f0cda7e3a0dead48e9f4bee.jpg',1,0,'2012-02-19 14:02:43',0),(132,116,'d8799c74e644139a51f31ebc3be178be.jpg',2,0,'2012-02-19 14:03:03',0),(133,116,'e2b3079013e45c3988d6e742c2c9d5fd.jpg',3,0,'2012-02-19 14:03:14',0),(136,116,'29cfaeef2da3e8fe76ee98712b431e04.jpg',4,0,'2012-02-19 20:35:09',0),(137,116,'a0d17c7c845cfe62ad0ccfdbb0e475e0.jpg',5,0,'2012-02-19 20:35:35',0),(138,116,'ec25dc5aaf8ed21c06b4c90dfc2e90da.jpg',1,0,'2012-02-19 20:35:53',1),(139,116,'dd5270e422f394d06206afca140fe3d0.jpg',6,1,'2012-02-19 20:37:14',0),(146,121,'1e514fd6be30b876065a071815cb881d.jpg',5,1,'2012-02-19 20:58:18',0),(141,101,'d7ac69616e492beda95c1223a208e16a.jpg',2,1,'2012-02-19 20:44:21',0),(143,121,'3ee2b3400482de2dd07801fa6e115515.jpg',2,0,'2012-02-19 20:56:14',0),(144,121,'2d207496b48229937ac4d670878953bc.jpg',3,0,'2012-02-19 20:56:22',0),(145,121,'e4e448e47aeaafcfdd54e4ba7aeca0f1.jpg',4,0,'2012-02-19 20:56:29',0),(147,102,'a582034e7d6908e0efbe040c5a787b78.jpg',1,1,'2012-02-19 21:08:37',0),(148,102,'2bab58d9fa992046d999b2521a3fad17.jpg',2,0,'2012-02-19 21:08:53',0),(152,126,'24054891121e10ec70ec7d9ba591ecc8.jpg',2,0,'2012-02-26 21:17:52',0),(151,126,'f4b8d5f8f2a8f966142311dda3f172e3.jpg',1,1,'2012-02-26 21:17:36',0),(153,126,'ffdc45c40148aabb1cb4af8f39733f88.jpg',3,0,'2012-02-26 21:18:26',0),(155,127,'bb411b6b39bf5c74e9fdf34e34ec6bb8.jpg',1,1,'2012-03-02 08:24:23',0),(156,129,'882a516119ee1f67cd121487442dce5b.jpg',0,0,'2012-03-04 13:19:06',0),(157,129,'ac51758c7ffb7698d32fcc3fe138dc8d.jpg',1,1,'2012-03-04 13:20:48',0),(158,131,'89b8650603fec9a2ed880006de006d5e.jpg',1,1,'2012-03-07 17:43:55',0),(159,131,'c4d62a10ae587a608ecf9caa29ff634b.jpg',2,0,'2012-03-07 17:44:14',0),(160,131,'1655a23418dd3064cd62f3d3bdd460d2.jpg',3,0,'2012-03-07 17:44:23',0),(161,131,'cca6bc48a256b3c2327aa6173cc0ecb6.jpg',4,0,'2012-03-07 17:44:31',0),(162,131,'c48c9431e422f8e442219e25e702280b.jpg',5,0,'2012-03-07 17:44:41',0),(165,133,'bed456507f0a3e61044207c352447ad1.jpg',1,0,'2012-03-07 20:25:16',0),(166,133,'d65bf8778b24544c8686b8d0223058ca.jpg',2,0,'2012-03-07 20:25:21',0),(167,133,'9adba193a0fea0dbd0a56f53eec48067.jpg',3,0,'2012-03-07 20:25:38',0),(168,133,'983880d156c64ef96b126d5ec79d4b96.jpg',4,0,'2012-03-07 20:26:27',0),(171,133,'b33c8b9725149a8c84b8570feb35dd3c.jpg',7,1,'2012-03-07 20:28:31',0),(170,133,'0f40d345ba7c0794430fdd28a2940053.jpg',6,0,'2012-03-07 20:27:18',0),(172,134,'a46668b2f80c8768018af9e4b69e514a.jpg',1,0,'2012-03-07 21:18:31',0),(173,134,'3535798c6408c7c6b9aae582da91961e.jpg',2,0,'2012-03-07 21:18:45',0),(174,134,'830758d298986258164392f253922ed1.jpg',3,0,'2012-03-07 21:18:53',0),(175,134,'38306cc69ed7372ce23409331605d1be.jpg',4,0,'2012-03-07 21:19:02',0),(176,134,'001bbb1bcef4135469ba846631a9a926.jpg',5,1,'2012-03-07 21:20:15',0),(177,134,'83a08db0b8d26a6850243dc56391daf8.jpg',6,0,'2012-03-07 21:20:20',0),(178,135,'f41de2ec65c67ad0574ad8647ff541ae.jpg',0,0,'2012-03-09 03:47:53',0),(180,135,'00a7fb8b29379c7efc5007a9ff6d1ee8.jpg',1,1,'2012-03-09 03:49:36',0),(181,135,'608d37e0c5d4319dc36182d75727afb3.jpg',2,0,'2012-03-09 03:51:39',0),(182,135,'90bfce51d52330749257a6ac23fa3a3f.jpg',3,0,'2012-03-09 03:51:47',0),(183,138,'2ba3dd5f188c723d0ecb00a1821daea4.jpg',1,0,'2012-03-16 22:46:32',0),(184,138,'3837ccfbe42f14804117344a37dcb497.jpg',2,0,'2012-03-16 22:48:06',0),(185,138,'407de1d1202742a3a1c58299be93042f.jpg',3,0,'2012-03-16 22:56:02',0),(186,138,'e1174973db87c2e2f6525c0fb5f7bbb5.jpg',4,1,'2012-03-16 22:56:28',0),(188,138,'d5d19d3ec14634b798241f38d773c8b1.jpg',5,0,'2012-03-16 22:57:18',0),(189,138,'fd1fa77ebdfcf1ffad77c8936cfc1844.jpg',6,0,'2012-03-16 22:57:41',0),(190,104,'814778f444bd5a265217ce4061310391.jpg',6,0,'2012-04-03 11:58:18',0),(191,141,'e45e1e12c59164b4a5db1f94973af0d0.jpg',1,1,'2012-05-18 13:10:34',0),(192,141,'c27622100ef517bbe21f8590fabec9df.jpg',1,0,'2012-05-18 13:43:55',1),(193,141,'b6f13437ed5da5588678f9029fefd03b.jpg',2,0,'2012-05-18 13:44:07',1),(194,141,'e81f4afb64ba76ba3f1d43e62bade01f.jpg',3,0,'2012-05-18 13:44:22',1),(195,141,'6b9eee30be66a8a542656ae0b742cf91.jpg',4,0,'2012-05-18 13:44:40',1),(196,141,'48f3ab1af739f95618a9ddd370483860.jpg',5,0,'2012-05-18 13:44:49',1),(202,148,'f9b811d7cf7c248cdd148154aa1412c0.jpg',1,0,'2012-06-05 18:37:15',0),(203,148,'63a67f96f6cd1b70d5b43ea3c7007776.jpg',1,0,'2012-06-05 18:37:37',1),(204,148,'07dc9c46cb73153e01ecf0a59a54c816.jpg',2,0,'2012-06-05 18:37:59',0),(205,148,'4d45bc5960e07f24252b2647129518c0.jpg',3,0,'2012-06-05 18:38:22',0),(206,148,'b59c38a06db1072f265e0729f812b9b1.jpg',4,0,'2012-06-05 18:40:52',0),(207,148,'19e31a34b3598ea7d3cb1345fab9f6b9.jpg',5,1,'2012-06-05 18:40:58',0),(210,157,'a430e3da66013a3b20953bbbc129a586.jpg',1,0,'2012-07-21 08:26:15',0),(211,157,'f4b3e39ac43ab5be877efa6c10409220.jpg',2,0,'2012-07-21 08:26:41',0),(212,157,'05c41a0968c0b3dde2faf51f902b95e9.jpg',3,0,'2012-07-21 08:27:09',0),(213,157,'06b1d82f41f896d0e0ffec0d67ca0635.jpg',4,0,'2012-07-21 08:27:39',0),(214,157,'89bb25cb1791f3619e0318c1988bbf68.jpg',5,0,'2012-07-21 08:28:05',0),(215,157,'d935932e7f8d90131794838b995f083c.jpg',6,1,'2012-07-21 08:30:02',0),(216,159,'2c5fd756e6998cd3eb7f908ebf26647f.jpg',1,1,'2012-07-21 08:39:53',0),(217,159,'be7aa02e1f884be88d124fa75d24be7c.jpg',2,0,'2012-07-21 08:40:12',0),(221,159,'b15617188491bf8880d2563cacc0eacd.jpg',6,0,'2012-07-21 08:43:25',0),(219,159,'024adad24dd6ec51bd574b483aa3a049.jpg',4,0,'2012-07-21 08:40:38',0),(220,159,'3a84e607a6d483334153632bfee5c685.jpg',5,0,'2012-07-21 08:41:51',0),(223,161,'9265882c5c40dc33a34000df4425da5e.jpg',1,1,'2012-07-21 08:51:59',0),(224,161,'e546cb6cab59df8e70562bfbd09a1b10.jpg',2,0,'2012-07-21 08:52:25',0),(225,161,'ca92d178798c9feee6fa546fb1fc6837.jpg',3,0,'2012-07-21 08:52:40',0),(226,161,'1557ee1ddd36503090c4c3412177129a.jpg',4,0,'2012-07-21 08:53:06',0),(227,162,'d810af5727c2099c6830a4778b732780.jpg',1,1,'2012-07-21 09:00:06',0),(228,162,'a97fa2eea64c98e13dfd7f60cd057429.jpg',2,0,'2012-07-21 09:00:18',0),(229,162,'9e42a44251c22ce65994ad493bda42b2.jpg',3,0,'2012-07-21 09:00:29',0),(230,162,'d5f2bbcaa3ebd0bec58f62ff3f247160.jpg',4,0,'2012-07-21 09:00:38',0),(231,162,'e29264813e5162051a1ca976d9de4c1f.jpg',5,0,'2012-07-21 09:01:03',0),(232,163,'cb9269bceafe13f37d26ff4ce44d7cac.jpg',1,1,'2012-07-21 09:28:48',0),(233,164,'7de9c67a6ec5897dd2e64f5301b8eb55.jpg',1,0,'2012-07-21 09:35:14',0),(234,164,'c83ccca32ebef87e4f86c71012355fb5.jpg',2,0,'2012-07-21 09:35:24',0),(235,164,'30b07ccf5ec364b2311bcc9bb6289196.jpg',3,0,'2012-07-21 09:35:38',0),(236,164,'af1b52b1d3ac49fa8600c976d6be5e83.jpg',4,0,'2012-07-21 09:35:50',0),(237,164,'8c190d54e29809d82942ffb74cda0f34.jpg',5,0,'2012-07-21 09:36:06',0),(238,164,'ed0f8b6643402f3dcf1d935d13b74ba4.jpg',6,1,'2012-07-21 09:37:08',0),(239,165,'d392c230364345a719e9876f7c565009.jpg',1,0,'2012-07-30 16:43:42',0),(240,165,'9ed7b34fd15b706907207a97259cc363.jpg',2,1,'2012-07-30 16:43:56',0),(241,165,'22ecc3987fb8e7e4c2e4e089599f5878.jpg',3,0,'2012-07-30 16:44:10',0),(242,165,'a81689fabd1710ef1bdc48c5dea9b78b.jpg',4,0,'2012-07-30 16:44:22',0),(243,165,'75409448d552ab7a461022a274c6492d.jpg',5,0,'2012-07-30 16:44:36',0),(244,166,'455eef0f428a4cb50a97a9497fa5da67.jpg',1,0,'2012-07-30 16:52:57',0),(245,166,'f9016d639a2a044427499a016755d3d8.jpg',2,0,'2012-07-30 16:53:19',0),(247,166,'4f749e3e9b1b01904c5e76f613d896c4.jpg',4,1,'2012-07-30 16:55:56',0),(248,168,'60e5ab77653da0116abff0b108eb02d7.jpg',1,1,'2012-08-10 14:25:00',0),(249,167,'e4445906831f2b1f918c65d08d0c4fd9.jpg',1,1,'2012-08-10 14:27:56',0),(252,173,'e21eaa81039c954cfe81c1cbdadc1ee8.jpg',1,1,'2012-08-11 11:52:04',0),(251,172,'a055bb1f16cb36795673872b56fa2643.jpg',1,1,'2012-08-11 11:36:10',0),(253,173,'67171fc145262b77c630a3c8c3dfb97e.jpg',2,0,'2012-08-11 11:52:26',0),(254,173,'a8c7fc3a7ce74cccedf491d2c832d040.jpg',3,0,'2012-08-11 11:52:42',0),(255,173,'f02cd44acca8e92ab9161f2d2f2497f0.jpg',4,0,'2012-08-11 11:53:19',0),(259,174,'9b620a1156087d7e60f7809225329b34.jpg',1,1,'2012-08-14 15:14:45',0),(258,176,'87a12131bd9733ac319a7bded5f750b1.jpg',2,1,'2012-08-14 14:54:44',0),(260,177,'9e18a383c6ba6f3ae1b3e87d7eb2d088.jpg',1,1,'2012-08-14 15:26:46',0),(261,177,'44cf77eb5cfc919d1b2fa9a84b718fbe.jpg',2,0,'2012-08-14 15:27:07',0),(262,177,'41d50f594e104bf9b78782604c296ce6.jpg',3,0,'2012-08-14 15:27:21',0),(263,177,'0ac219527271bda6104e93576ff6dbe8.jpg',4,0,'2012-08-14 15:27:30',0),(264,177,'d7ac204696904fce76670edeb0ee6f63.jpg',5,0,'2012-08-14 15:27:46',0),(270,179,'51618fb7e6d1535b806382389ce94f10.jpg',6,0,'2012-08-14 16:25:04',0),(268,179,'fc796c5da327005cfc713a5e640a19e5.jpg',4,1,'2012-08-14 16:24:38',0),(269,179,'ebec6da85c6fafc9a9d23175b0092095.jpg',5,0,'2012-08-14 16:24:54',0),(271,179,'5cb4cc4b1031d035159191c5f0c851f9.jpg',7,0,'2012-08-14 16:25:13',0),(272,180,'666f577e725e366d9cc2bf919667e13f.jpg',1,1,'2012-08-14 16:37:12',0),(273,181,'2c079dc7e00c9458b7d099ff09b39b40.jpg',1,1,'2012-08-14 16:55:11',0),(274,185,'db340acf763af6221a8b448ee9b92d96.jpg',1,1,'2012-08-15 18:05:17',0),(276,189,'025700374455b37682de65d1c2e0af0d.jpg',1,1,'2012-08-16 16:42:32',0),(278,190,'9d46d274f5e0cf714c6257cfa2e4f52b.jpg',1,1,'2012-08-16 16:48:58',0),(279,192,'10b5aec6523b9a4ad987286af5728222.jpg',1,1,'2012-08-16 17:04:52',0),(280,188,'25e6e55d61d31eb771683984a32be377.jpg',1,1,'2012-08-16 17:10:31',0),(281,193,'4fd150945121713888839edc031e76a4.jpg',1,1,'2012-08-16 17:19:05',0),(283,194,'c975cb44240410848028e1640004dfa3.jpg',1,1,'2012-08-16 17:26:37',0),(284,195,'0dce9559ee03bd0c070cf16ac65fdb10.jpg',1,1,'2012-08-17 14:13:17',0),(285,196,'f835878dbcfb7b7b973032da5be1a179.jpg',1,1,'2012-08-17 14:18:33',0),(286,197,'38d2f59114cad23e6103ff7800a9bafc.jpg',1,1,'2012-08-17 16:58:39',0),(287,199,'a31f42590b951710ff987fdd059d296d.jpg',1,1,'2012-08-17 17:07:58',0),(288,200,'0e9431e9d3d9f10c369562a728cde0f3.jpg',1,1,'2012-08-17 17:53:18',0),(289,202,'de4481ad81e4f2d53431d947a49cf67e.jpg',1,1,'2012-08-17 18:00:56',0),(290,205,'230b689c57dbc262d9b29bb7277cefae.jpg',1,1,'2012-08-18 18:29:20',0),(291,211,'e1e9605f44d1be8ed7fb1522303d445a.jpg',1,1,'2012-08-19 08:03:17',0),(292,210,'5ab02d944d9c80bad119780e3fdf32d9.jpg',1,1,'2012-08-19 08:06:42',0),(293,209,'f4a752dcf7d7a48ce3e92c0bbd5258c8.jpg',1,1,'2012-08-19 08:09:05',0),(295,213,'f04c8f8bafa180c4239265bfef023cae.jpg',1,1,'2012-08-19 08:30:52',0),(296,214,'f970d050e33fceb1dd174fc4eb7326ca.jpg',1,1,'2012-08-19 08:35:59',0),(297,215,'c6be0e505e9481719e1ccacede66b5b9.jpg',1,1,'2012-08-19 09:06:48',0),(298,221,'405c08928f4c24364965381838b1ace2.jpg',1,1,'2012-08-20 19:59:08',0),(299,222,'171f3afe5a36a1e74c54560f268e0ce2.jpg',1,1,'2012-08-21 18:02:11',0),(300,224,'2bc0a4a12e5cdc8829380d89462f772d.jpg',1,1,'2012-08-21 18:14:09',0),(301,225,'c241f40f3c0a4ba43153c72e0eaf253c.jpg',1,0,'2012-08-22 17:09:12',0),(302,226,'0374600968dbdd526dc930792dbabb18.jpg',1,1,'2012-08-24 11:33:35',0),(303,226,'d7190ae8ad44cfde3789eb06b9d91320.jpg',2,0,'2012-08-24 11:33:58',0),(304,226,'6cc990a308b7f78b27982c5b581de5fa.jpg',3,0,'2012-08-24 11:35:15',0),(305,226,'33b95471f50e756d2a1105ac54fe2a6c.jpg',4,0,'2012-08-24 11:59:29',0),(306,226,'419fdbe8e4d3c391f51625825788b3d3.jpg',1,0,'2012-08-24 12:14:22',1),(307,230,'1a7ddaf9e3eb1d28d8a564d8139e3b20.jpg',1,1,'2012-08-27 19:41:46',0),(308,230,'0f55ebd213da86db924aac5068d353fb.jpg',2,0,'2012-08-27 19:42:07',0),(309,230,'40ddda274f91c582ec5ff80b3bab93a4.jpg',3,0,'2012-08-27 19:42:34',0),(310,230,'d5298049ead1d767c29c5f1c14070fca.jpg',4,0,'2012-08-27 19:43:46',0),(312,232,'dd3aab649c104b08ab5e2ede189ad0e0.jpg',1,1,'2012-08-28 19:13:53',0),(313,232,'c9dedb1b18af8d1710c8b8d6e3bd9e82.jpg',2,0,'2012-08-28 19:14:15',0),(314,232,'f084b0373ebe6723d641ffd56fb85e5a.jpg',3,0,'2012-08-28 19:14:51',0),(315,235,'1decf7ad61f6759c4a363c7841a0621e.jpg',1,1,'2012-09-03 18:54:13',0),(316,239,'a1050915302bef436e79b650bbb0b43a.jpg',1,1,'2012-09-06 21:15:35',0),(317,239,'3de5dfb38c3774f449d7ddd98e5a7ced.jpg',2,0,'2012-09-06 21:15:48',0),(318,239,'a74f25b281c564153d095b65762e0094.jpg',3,0,'2012-09-06 21:15:54',0),(319,239,'5b41fccf5680d3a56355bf5efd486e57.jpg',1,0,'2012-09-06 21:16:02',2),(320,239,'862d5aacbed9de9df27dd75ad800555b.jpg',2,0,'2012-09-06 21:16:07',2),(321,239,'7c2baf91ce97f85332ce1b92e2039884.jpg',3,0,'2012-09-06 21:16:14',2),(322,241,'23a97b8d25b6dbbacad436b15fa14f8b.jpg',1,1,'2012-09-09 16:49:43',0),(323,241,'54b6fe5f050831c90aa6e927e2dc96de.jpg',2,0,'2012-09-09 16:50:17',0),(324,241,'a318194a23079fd737908222903a5cbf.jpg',3,0,'2012-09-09 16:51:00',0),(325,241,'bc9bcc5bd868cfa7703043ba21efd6f9.jpg',4,0,'2012-09-09 16:51:18',0),(326,241,'bcaa2eff78ff7e4e977ca48bd673648c.jpg',5,0,'2012-09-09 16:51:56',0),(327,241,'1751100bb2a723cb1e72339e51c1c2a7.jpg',6,0,'2012-09-09 16:52:07',0),(332,244,'8d3cc1c17cd00f8dcdd1ca8e4c001c36.jpg',1,0,'2012-09-16 07:34:58',0),(333,244,'02c2e8930ecb0ddf0f09e209d4e04391.jpg',2,0,'2012-09-16 07:35:14',0),(334,245,'09eb3021f2f26b856b0b310e18290d1b.jpg',1,1,'2012-09-18 17:11:43',0),(336,248,'0ba53a3e3d06918262ee3dfe9a665c53.jpg',1,1,'2012-09-18 17:21:13',0),(337,249,'1c2983e47e7f1649af7983c45631656d.jpg',1,0,'2012-09-20 22:57:17',2),(338,249,'86dda5aee3545385a5c022e60d6ced27.jpg',2,0,'2012-09-20 22:57:18',2),(339,249,'93458c0e0c732d61ac1d6be7a826f255.jpg',3,0,'2012-09-20 22:57:19',2),(340,249,'2600422152e72b7bb74e7e442bb3a1bb.jpg',4,0,'2012-09-20 22:57:20',2),(341,249,'de4770394242d2e5a8c09ee7745b433d.jpg',5,0,'2012-09-20 22:57:21',2),(342,249,'4e8bca8e7af212b917b3cdb867f12697.jpg',6,0,'2012-09-20 22:57:22',2),(345,251,'9c233180a86f1ae81ee3031769df6811.jpg',2,0,'2012-09-22 07:07:00',0),(344,251,'b8820eb76dae571e993e3940ffd90631.png',1,1,'2012-09-22 07:05:00',0),(346,252,'2f2082e1cb3d9aa8c4ca49635b053e14.jpg',1,1,'2012-09-26 10:51:58',0),(347,104,'cae706f7abe9fd7f1494be05af7e22e1.jpg',7,1,'2012-09-27 19:28:54',0),(348,253,'dee24ef0c354f2068ff0c8c77e1c0af7.jpg',1,1,'2012-10-01 10:30:02',0),(350,257,'b657099dcd4bb7bd1a2a6a9d13c8545d.jpg',1,1,'2012-10-01 10:36:04',0),(351,258,'3791b78352519ffe291a8fe8c1ebf21c.jpg',1,1,'2012-10-01 20:53:21',0),(352,259,'7d2cb3eac3e79f1f7ad45297daf2e571.jpg',0,1,'2012-10-03 15:11:50',0),(354,268,'12c1b8feef97ac06dbf5d64047732778.jpg',1,0,'2012-11-06 20:00:17',0),(355,268,'90bcd33bc93dcc3fd5664b437ace40ae.jpg',2,0,'2012-11-06 20:00:23',0),(356,268,'52c924fa1ce9126e767dbcb759270e9b.jpg',3,0,'2012-11-06 20:00:38',0),(357,268,'872001f92b28552d84e9b36a52b4f879.jpg',4,0,'2012-11-06 20:00:56',0),(358,271,'351c5aac202b4813cc1db956c30d0670.jpg',0,0,'2012-11-19 22:03:41',0),(359,271,'7aba837dec0a101ded57c2acdf73a368.jpg',1,1,'2012-11-19 22:03:45',0),(360,271,'c866e804c977c2ff14e71463ca36ecc9.jpg',2,0,'2012-11-19 22:03:48',0),(361,271,'83410d4b28af3ce17d513bc252841faf.jpg',3,0,'2012-11-19 22:03:55',0),(362,271,'d1cf0750dba4514ce3df5bb3baf79df5.jpg',4,0,'2012-11-19 22:03:59',0),(363,271,'3022980f0c0ba011e6969f9928e34ec7.jpg',5,0,'2012-11-19 22:04:03',0);
/*!40000 ALTER TABLE `jos_lovefactory_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_lovefactory_profiles`
--

DROP TABLE IF EXISTS `jos_lovefactory_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_lovefactory_profiles` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL DEFAULT '0',
  `field_16` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_17` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `height` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `field_32` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_31` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `occupation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `education` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `religion` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `martial_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `children` int(11) NOT NULL DEFAULT '0',
  `language_spoken` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `english_proficiency` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `smoking` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `looking_for_age` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_21` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `field_22` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hobbies` text COLLATE utf8_unicode_ci,
  `field_18` text COLLATE utf8_unicode_ci,
  `ideal_relationship` text COLLATE utf8_unicode_ci,
  `portrait` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo1_not_used` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo2_not_used` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo3_not_used` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo4_not_used` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo5_not_used` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passport` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_lovefactory_profiles`
--

LOCK TABLES `jos_lovefactory_profiles` WRITE;
/*!40000 ALTER TABLE `jos_lovefactory_profiles` DISABLE KEYS */;
INSERT INTO `jos_lovefactory_profiles` VALUES (1,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(2,1,'Petr','Saganov','1976-03-27',176,85,'brown','brown','Occupation','high school','Atheism','never married',0,'Languages Spoken','intermediate','no','18','City','Country','Phone','saganoff@gmail.com','Post Address','My hobbies are','More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/9159.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','/files/9159.jpg','',0,NULL),(3,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(4,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(5,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(6,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(7,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(8,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(9,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(10,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','','',0,NULL),(11,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','','',0,NULL),(12,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me More about me More about me More about me More about me More about me More about me More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','','',0,NULL),(13,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me More about me More about me More about me More about me More about me More about me More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','/files/9159.jpg','',0,NULL),(14,2,'Mew','Persone','1990-01-01',180,70,'green','red','Occupation','high school','Christianity','never married',0,'Languages Spoken','basic','yes','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address Post Address Post Address Post Address Post Address Post Address Post Address Post Addr','My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are ','More about me More about me More about me More about me More about me More about me More about me More about me More about me More about me More about me More about me ','Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship ','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','','',0,NULL);
/*!40000 ALTER TABLE `jos_lovefactory_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logged`
--

DROP TABLE IF EXISTS `logged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logged` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logged`
--

LOCK TABLES `logged` WRITE;
/*!40000 ALTER TABLE `logged` DISABLE KEYS */;
INSERT INTO `logged` VALUES (1,1,'cf723fdf37146a00ab628ede65d34b2e6b83d9e92771619420ec0adfee6c00f60b66afe59debd19fc6939afaf04144e7784f857494ac96b2d9f6847a90dc82ac'),(2,1,'2f30755671fa8053c6912aca789ff7fc0b76e45e5860c1dfbbb4def11b3d1ef8248b7d5320ee3bd259e64a366f88af6ef9a27f821afd71a1d7418d5ca6a6aec8'),(3,1,'edc04331b352222e11a49fb7e29567d01e260fa3be22b2418769afe0bbde2a3f1bb562aaec818aec4069d95822980ff79aa0d0584d2e3b41e7ab519ce1147003'),(4,1,'c9e5e95efee63163ce4af4b40f70360696d1bb8a60caa7ebd6b2ed4e4edd5f77beb85f2c01adad4f004aa0f6dc26b23f5ea3f70c917e6da9f35b0b90a0ad09f9'),(5,1,'bd684bca2afb4054255c7fd8aae0e404d55d296a52f3f9ce9023ac7f02aac19299e336c96b3b716536ed265e0bbc296f81dd414752d2f455fff0d7efc0bbe2e8'),(6,1,'0e1021654bf98bc0db30a338ca0cb6f4fa4a442184c43ce6260ed4a3ff17b27b5007903da733f948c746973fcef79364aed63f47b85f003740cb7f08dee47429'),(7,1,'ad56cfff46b66f3ca193b4149939cafafdf18f7e8ecf4854a7d22354c11f986fb12df35e335a9d3d8408c4ff03b4f47cba583e97a753616599b5dba717d92f32'),(8,1,'55604da89ae39d6ff0d78377a647f39bc9de9214ae37e07187d3c477cb0b4d06618399306087677e66622b4f255dc3d81affc5cc9b94908e19bcf93a75672c7f'),(9,1,'399b65c282e46f3899f81468cf6daf03863cc265d85110983ca4a68147a60c874735e235ad7e1648e0ee784f2e07e83c545eaadbdfadfbe5cf7727f433a58b1b'),(10,1,'e457865dadb9897e30808a445a4e9fea611bdde751c87e1bfcb630600b498cfb9eaca758caa0d3f8d92ed9f139918bf7d109813b220d6f6ab85cfdcea61d69df'),(11,2,'00d9c217282b3e7f036694de64dc450388a0332a8c1b306b770dcdcaea549d48f276e31ba9f90370c5a96f545441a2cdd6b1b8eddbcfccd2e6f277e2ed70df63'),(12,1,'0a1089e6374642acc3150a53b5f0f047c80f51de061d6e6973c2d94aa64dbb722181ab61a63b9952f8f6b872a49ee775fb609dcac73051f244f1e48e246b489b'),(13,1,'4283aa4ecfa645bb337602c1d25f415affd1c469ffe38c7547d5312360dc26434c6513908dd7366653af6a8a0ea4ce052a03daf25015ba389293f5fe5f84e786'),(14,1,'b2b98b912ab91fc382454b46484941c79673a33f80beffcfee9ac8afbd7ccda93d74ec13fdd5c3ee8b9c912493f06eaeb4a66b0680aff5bc5516886cf4d02853'),(15,2,'fd78ff4e5c39506da8242cc7c70e4c1a037343deb6907f8c928d9e8625e64365a70f5cb037356d1d982f12acd082828cd0135960b6212de143d9258144bc7b59'),(16,1,'29b92a30979992daef330180c9fc5102c516550cf3aab7ce2d8e16b7fbab6d178926720158067c52ddd02c36b400a013d69271688fda246dd78914256e4cda15'),(17,1,'588eb201136a47669dba85366ed0c904a504442b98a7d8c63df3ed18484713427d0c367af71b4e4585edc99fa610e7f86dbd1d3573f8cfa9019a39970f6eb6f2'),(18,1,'619ac70313e1110d38a8807f3911736c7880665e8291469204a4da9a4885f7f1afe031e7ff0f0c0bab1694c990d2bdd8ba27efa4f0ce64a4f39cbb38c4139db7'),(19,1,'28f5162b5fb4b41e32e62c21a100fc1caf59aacdc903caafeba7a98e2da74dfe4730b59ab97335f336dcb2f163e16841868d091814dec4bc840024ac4813ec0c'),(20,1,'780b7e0bbfee069f9b92229ebe35e01a6b40c7e5a888075c337af633d050d78896738673ec989211543462f3244e211910bdf210bf811f930ed644f1c55f43d3'),(21,0,'867d9ca6c936fda49882b8c1faf14809ca1f0eb4a68ed26449e5f4f9a38d5bd32e52a8276a7b0ec66df859d1266e91c1254950d51cc7abba88fbd9a3851cbfef'),(22,0,'c1c7050f1ce0ec06dd877782b220143289a3c2e4bb92c0ac6663b8fb58942a669a2c4957fd4aa176ed687942fd2596b9d9746b4fa00c6ecf5c180a028cd6e957'),(23,1,'141df5c51536dcba97b88cd215cd26f2a3b4a59c9c8956c6b6f4ba6a39ee98985c89747c276e514021dc1dece858785c8da0f0dc408dcabe3649096b6d5430dc'),(24,1,'96e31318d1d52216920e438f59361d64c02b43f5942c6f91375040d47171248497ed362f8742d66d8caa4d5525ba2e9a1abfd045fc9e2d5f0505bb52c25a582a'),(25,1,'f9260ba51c219091aa1c4746570f903d0dc237be0bd0778d15d7cb2f3792ffdee47b1cf41fa823bd84fdc000e416d73d47321dd824ccbc1f41f1653464a6b8e6'),(26,1,'adbb297c4508a44ca11894308e543011a1595299dfdeab2b40250ec859d4ff19643494e5ad2f9f5ce2789d9bf22b9aa0afd6012e2d1141e2c92d781a53b7d763'),(27,1,'1d0503e52c0285c62320c06efa423f00d845d74ff2990e13dcdfd2c522e6c32375eb88798df681c22a82e1d301949eb775d890f190d5cb8774278e564daaff10'),(28,1,'0ed814f95a08507a510a61d0301c73a1b4ce7465f66bbfbf8635afb6b90d9a075391bed44c6c49cfb4b0db055073af181db6c7989d07c6c1e8009e088ed63e44'),(29,1,'15bfaaddb9b54e21f7a9b2c98bc2ae7436973f501b9de73ccde8b58713934b9a08465bdfc4dec33a63df420532d40e2122e6272997eddc0abb4985f67f5a3575');
/*!40000 ALTER TABLE `logged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_item`
--

DROP TABLE IF EXISTS `news_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_phrase` int(11) NOT NULL DEFAULT '0',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `show` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `QUERY_INDEX` (`query_phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_item`
--

LOCK TABLES `news_item` WRITE;
/*!40000 ALTER TABLE `news_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persone`
--

DROP TABLE IF EXISTS `persone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `height` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `eyes` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hair` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `occupation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `education` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `religion` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `martial_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `children` int(11) NOT NULL DEFAULT '0',
  `language_spoken` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `english_proficiency` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `smoking` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `looking_for_age` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hobbies` text COLLATE utf8_unicode_ci,
  `about` text COLLATE utf8_unicode_ci,
  `ideal_relationship` text COLLATE utf8_unicode_ci,
  `portrait` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo2` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo3` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo4` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo5` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `passport` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  `status` enum('active','inactive') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persone`
--

LOCK TABLES `persone` WRITE;
/*!40000 ALTER TABLE `persone` DISABLE KEYS */;
INSERT INTO `persone` VALUES (0,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(2,1,'Petr','Saganov','1976-03-27',176,85,'brown','brown','Occupation','high school','Atheism','never married',0,'Languages Spoken','intermediate','no','18','City','Country','Phone','saganoff@gmail.com','Post Address','My hobbies are','More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/9159.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','/files/9159.jpg',0,0,NULL),(3,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(4,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(5,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(6,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(7,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(8,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(9,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(10,1,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0,NULL),(11,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','',0,0,NULL),(12,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me More about me More about me More about me More about me More about me More about me More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','',0,0,NULL),(13,1,'Taty','Vaka','1985-06-16',163,65,'green','blonde','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address','My hobbies are','More about me More about me More about me More about me More about me More about me More about me More about me','Ideal relationship','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','/files/9159.jpg',0,0,NULL),(14,2,'Mew','Persone','1990-01-01',180,70,'green','red','Occupation','high school','Christianity','never married',0,'Languages Spoken','basic','yes','18','City','Country','+380667090485','tvakulenko@gmail.com','Post Address Post Address Post Address Post Address Post Address Post Address Post Address Post Addr','My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are My hobbies are ','More about me More about me More about me More about me More about me More about me More about me More about me More about me More about me More about me More about me ','Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship Ideal relationship ','/files/my-new-bar-march-2010.jpg','/files/0c1c40a0e9a02ac1983d3cf8613b1a8f.jpg','','','','','',0,0,NULL);
/*!40000 ALTER TABLE `persone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `birthday` date NOT NULL,
  `height` int(11) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `eyes` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hair` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `occupation` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `education` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `religion` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `martial_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `children` int(11) NOT NULL DEFAULT '0',
  `language_spoken` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `english_proficiency` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `smoking` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `looking_for_age` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `hobbies` text COLLATE utf8_unicode_ci,
  `about` text COLLATE utf8_unicode_ci,
  `ideal_relationship` text COLLATE utf8_unicode_ci,
  `portrait` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo1` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `photo2` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo3` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo4` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `photo5` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `passport` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `show` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'First Name','Last Name','0000-00-00',0,0,'Eyes','Hair','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','Looking for age','City','Country','Phone','Email','Post Address ','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0),(2,'First Name','Last Name','0000-00-00',0,0,'Eyes','Hair','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','Looking for age','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0),(3,'First Name','Last Name','0000-00-00',0,0,'Eyes','Hair','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','Looking for age','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0),(4,'Petr','Saganov','1976-03-25',176,85,'brown','dark','Occupation','Education','Religion','Marital Status',0,'Languages Spoken','English Proficiency','Smoking','18','City','Country','Phone','Email','Post Address','My hobbies are','More about me','Ideal relationship','','','','','','','',0,0);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query_phrase`
--

DROP TABLE IF EXISTS `query_phrase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_phrase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query_phrase`
--

LOCK TABLES `query_phrase` WRITE;
/*!40000 ALTER TABLE `query_phrase` DISABLE KEYS */;
INSERT INTO `query_phrase` VALUES (1,'test');
/*!40000 ALTER TABLE `query_phrase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_item`
--

DROP TABLE IF EXISTS `search_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `search_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_phrase` int(11) NOT NULL DEFAULT '0',
  `source_domain` int(11) NOT NULL DEFAULT '0',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `show` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `QUERY_INDEX` (`query_phrase`),
  KEY `DOMAIN_INDEX` (`source_domain`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_item`
--

LOCK TABLES `search_item` WRITE;
/*!40000 ALTER TABLE `search_item` DISABLE KEYS */;
INSERT INTO `search_item` VALUES (1,1,1,'http://super.domain.com/test','Test on super.domain.com','Description of the Test on super.domain.com','2012-12-16 10:10:15',1,1),(2,1,1,'http://super.domain.com/test2','Test Second on super.domain.com','Description of the Test 2 on super.domain.com','2012-12-16 10:10:15',2,1),(3,1,1,'http://super.domain.com/test3','Test Third on super.domain.com','Description of the Test 3 on super.domain.com','2012-12-16 10:10:15',3,1);
/*!40000 ALTER TABLE `search_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source_domain`
--

DROP TABLE IF EXISTS `source_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `source_domain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source_domain`
--

LOCK TABLES `source_domain` WRITE;
/*!40000 ALTER TABLE `source_domain` DISABLE KEYS */;
INSERT INTO `source_domain` VALUES (1,'en.wikipedia.org'),(2,'ru.wikipedia.org'),(3,'lurkmore.to');
/*!40000 ALTER TABLE `source_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistic`
--

DROP TABLE IF EXISTS `statistic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `shown` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `clicked` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `CLIENT_INDEX` (`client`),
  KEY `SEARCH_INDEX` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistic`
--

LOCK TABLES `statistic` WRITE;
/*!40000 ALTER TABLE `statistic` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'saganoff@gmail.com','1','Name','+380667090485','Kharkov','2013-01-09 20:58:23'),(2,1,'tvakulenko@gmail.com','1','Taty','+380667090485','Kharkov','2013-01-23 23:50:35');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `youtube_item`
--

DROP TABLE IF EXISTS `youtube_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `youtube_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_phrase` int(11) NOT NULL DEFAULT '0',
  `url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `show` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `QUERY_INDEX` (`query_phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `youtube_item`
--

LOCK TABLES `youtube_item` WRITE;
/*!40000 ALTER TABLE `youtube_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `youtube_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-19 22:11:06
