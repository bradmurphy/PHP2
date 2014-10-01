# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.34)
# Database: php2project1
# Generation Time: 2014-09-29 15:04:19 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table gallery
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(2000) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;

INSERT INTO `gallery` (`id`, `filename`, `title`, `description`)
VALUES
	(1,'http://img1.wikia.nocookie.net/__cb20081118162020/starwars/images/f/fb/Ackbar_HS.jpg','Ackbar','The leader of the resistance!'),
	(2,'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTcBTCe1Y_D0v4uOQ5OJXJQoWovf8jzd8CJbgdWkBre12G0J-Ba','Knitted form','You can cuddle him. It\'s not a trap.'),
	(3,'http://www.thecitrusreport.com/wp-content/uploads/2010/09/779780edf4d80a33bf6a98dbd15b17418f0cca9a_m.jpg','Running for office','Vote Ackbar.');

/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
