# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34)
# Database: php2project1
# Generation Time: 2014-10-08 14:34:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table galleries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `galleries`;

CREATE TABLE `galleries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;

INSERT INTO `galleries` (`id`, `name`)
VALUES
	(1,'Admiral Ackbar'),
	(2,'Jar Jar Binks'),
	(3,'Luke Skywalker');

/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(2000) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;

INSERT INTO `images` (`id`, `filename`, `title`, `description`, `gallery_id`)
VALUES
	(1,'http://img1.wikia.nocookie.net/__cb20081118162020/starwars/images/f/fb/Ackbar_HS.jpg','Ackbar','The leader of the resistance!',1),
	(2,'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTcBTCe1Y_D0v4uOQ5OJXJQoWovf8jzd8CJbgdWkBre12G0J-Ba','Knitted form','You can cuddle him. It\'s not a trap.',1),
	(3,'http://www.thecitrusreport.com/wp-content/uploads/2010/09/779780edf4d80a33bf6a98dbd15b17418f0cca9a_m.jpg','Running for office','Vote Ackbar.',1),
	(4,'http://cinemania.es/img/conts/04b80a218aaf.jpg','POW!','Not a popular character',2),
	(5,'http://fc09.deviantart.net/fs71/i/2013/087/e/a/jar_jar_binks_by_carolinesalinas-d5zktja.jpg','Stupid Voice','Mesa no liken episode one',2),
	(6,'http://i.ytimg.com/vi/VxwCmO1QL7w/maxresdefault.jpg','Bad Guy','He should have been a bad guy so he could die at the end.',2);

/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
