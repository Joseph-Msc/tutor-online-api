-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.5-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.6096
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for friends
CREATE DATABASE IF NOT EXISTS `friends` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `friends`;

-- Dumping structure for table friends.family_friends
CREATE TABLE IF NOT EXISTS `family_friends` (
  `id` int(10) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table friends.family_friends: ~20 rows (approximately)
/*!40000 ALTER TABLE `family_friends` DISABLE KEYS */;
INSERT INTO `family_friends` (`id`, `first_name`, `last_name`) VALUES
	(1, 'Sam', 'Goldsmith'),
	(2, 'Tim', 'Banks'),
	(3, 'Zach', 'Lau'),
	(4, 'Henry', 'Xu'),
	(5, 'Alex', 'Kelly'),
	(6, 'Ciaran', 'Mckennel'),
	(7, 'Sebastian', 'Berry'),
	(8, 'Will', 'Flowers'),
	(9, 'Ethan', 'Lee'),
	(10, 'Rory', 'Smith'),
	(11, 'Kush', 'Gold'),
	(12, 'Jack', 'Goith'),
	(13, 'Harry', 'Patel'),
	(14, 'Charlie', 'Humphries'),
	(15, 'Ben', 'Green'),
	(16, 'Paul', 'Blake'),
	(17, 'Millie', 'James'),
	(18, 'Sam', 'Lam'),
	(19, 'Perry', 'Evens'),
	(20, 'Elyse', 'Rong');
/*!40000 ALTER TABLE `family_friends` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
