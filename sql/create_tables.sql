-- MySQL dump x.xx

--
-- Host: localhost    Database: crm
-- -------------------------------------------------------
-- Server version       x.xx.xx

--
-- Table structure for table `profile`
--
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `description` TEXT,
  `date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `show` INTEGER DEFAULT 0,
  `click` INTEGER DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--
INSERT INTO `profile` VALUES
(NULL,'Miss First','Description of the Miss First',NULL,0,0),
(NULL,'Miss Second','Description of the Miss Second',NULL,0,0),
(NULL,'Miss Third','Description of the Miss Third',NULL,0,0);

--
-- Table structure for table `statistics`
--
DROP TABLE IF EXISTS `statistic`;
CREATE TABLE `statistic` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `client` VARCHAR(40) NOT NULL,
  `item_id` INTEGER NOT NULL,
  `shown` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  `clicked` TIMESTAMP DEFAULT 0,
  KEY CLIENT_INDEX (`client`),
  KEY SEARCH_INDEX (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

