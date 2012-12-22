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
  `first_name` VARCHAR(100) NOT NULL DEFAULT '',
  `last_name`  VARCHAR(100) NOT NULL DEFAULT '',
  `birthday`   DATE         NOT NULL,
  `height`     INTEGER      NOT NULL DEFAULT 0,
  `weight`     INTEGER      NOT NULL DEFAULT 0,
  `eyes`       VARCHAR(100) NOT NULL DEFAULT '',
  `hair`       VARCHAR(100) NOT NULL DEFAULT '',
  `occupation` VARCHAR(100) NOT NULL DEFAULT '',
  `education`  VARCHAR(100) NOT NULL DEFAULT '',
  `religion`   VARCHAR(100) NOT NULL DEFAULT '',
  `martial_status` VARCHAR(100) NOT NULL DEFAULT '',
  `children`   INTEGER      NOT NULL DEFAULT 0,
  `language_spoken` VARCHAR(100) NOT NULL DEFAULT '',
  `english_proficiency` VARCHAR(100) NOT NULL DEFAULT '',
  `smoking`    VARCHAR(100) NOT NULL DEFAULT '',
  `looking_for_age` VARCHAR(100) NOT NULL DEFAULT '',
  `city`       VARCHAR(100) NOT NULL DEFAULT '',
  `country`    VARCHAR(100) NOT NULL DEFAULT '',
  `phone`      VARCHAR(100) NOT NULL DEFAULT '',
  `email`      VARCHAR(100) NOT NULL DEFAULT '',
  `post_address` VARCHAR(100) NOT NULL DEFAULT '',
  `hobbies`    TEXT,
  `about`      TEXT,
  `ideal_relationship` TEXT,
  `portrait`   VARCHAR(100) DEFAULT '',
  `photo1`     VARCHAR(100) NOT NULL DEFAULT '',
  `photo2`     VARCHAR(100) DEFAULT '',
  `photo3`     VARCHAR(100) DEFAULT '',
  `photo4`     VARCHAR(100) DEFAULT '',
  `photo5`     VARCHAR(100) DEFAULT '',
  `passport`   VARCHAR(100) NOT NULL DEFAULT '',
  `show`       INTEGER DEFAULT 0,
  `click`      INTEGER DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--
-- INSERT INTO `profile` VALUES
-- (NULL,'Miss First','Description of the Miss First',NULL,0,0),
-- (NULL,'Miss Second','Description of the Miss Second',NULL,0,0),
-- (NULL,'Miss Third','Description of the Miss Third',NULL,0,0);

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

