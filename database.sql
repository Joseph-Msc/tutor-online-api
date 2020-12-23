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
DROP DATABASE IF EXISTS `friends`;
CREATE DATABASE IF NOT EXISTS `friends` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `friends`;

-- Dumping structure for table friends.family_friends
DROP TABLE IF EXISTS `family_friends`;
CREATE TABLE IF NOT EXISTS `family_friends` (
  `id` int(10) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL
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

-- Dumping structure for table friends.family_friends_family_members
DROP TABLE IF EXISTS `family_friends_family_members`;
CREATE TABLE IF NOT EXISTS `family_friends_family_members` (
  `family_member_id` int(11) NOT NULL,
  `family_friend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Dumping data for table friends.family_friends_family_members: ~49 rows (approximately)
/*!40000 ALTER TABLE `family_friends_family_members` DISABLE KEYS */;
INSERT INTO `family_friends_family_members` (`family_member_id`, `family_friend_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(5, 2),
	(6, 3),
	(7, 3),
	(8, 3),
	(9, 4),
	(10, 4),
	(11, 5),
	(12, 5),
	(13, 6),
	(14, 6),
	(15, 6),
	(16, 7),
	(17, 7),
	(18, 8),
	(19, 8),
	(20, 9),
	(21, 9),
	(22, 9),
	(23, 10),
	(24, 10),
	(25, 11),
	(26, 11),
	(27, 11),
	(28, 12),
	(29, 12),
	(30, 13),
	(31, 13),
	(32, 13),
	(33, 14),
	(34, 14),
	(35, 14),
	(36, 15),
	(37, 15),
	(38, 16),
	(39, 16),
	(40, 17),
	(41, 17),
	(42, 17),
	(43, 18),
	(44, 18),
	(45, 19),
	(46, 19),
	(47, 19),
	(48, 20),
	(49, 20),
	(4, 2);
/*!40000 ALTER TABLE `family_friends_family_members` ENABLE KEYS */;

-- Dumping structure for table friends.family_friends_hobbies
DROP TABLE IF EXISTS `family_friends_hobbies`;
CREATE TABLE IF NOT EXISTS `family_friends_hobbies` (
  `id_ff` int(11) NOT NULL,
  `id_h` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table friends.family_friends_hobbies: ~49 rows (approximately)
/*!40000 ALTER TABLE `family_friends_hobbies` DISABLE KEYS */;
INSERT INTO `family_friends_hobbies` (`id_ff`, `id_h`) VALUES
	(1, 45),
	(2, 54),
	(1, 23),
	(1, 14),
	(2, 8),
	(2, 3),
	(2, 12),
	(3, 21),
	(4, 34),
	(5, 21),
	(5, 29),
	(5, 47),
	(6, 39),
	(6, 1),
	(7, 25),
	(9, 43),
	(10, 20),
	(11, 26),
	(12, 46),
	(13, 13),
	(8, 21),
	(14, 32),
	(15, 50),
	(17, 7),
	(18, 41),
	(19, 27),
	(16, 20),
	(20, 25),
	(1, 1),
	(7, 34),
	(7, 40),
	(8, 12),
	(9, 41),
	(9, 53),
	(9, 37),
	(11, 56),
	(12, 41),
	(13, 35),
	(13, 57),
	(14, 7),
	(16, 1),
	(16, 3),
	(16, 19),
	(17, 20),
	(17, 1),
	(19, 16),
	(20, 37),
	(20, 19),
	(20, 1);
/*!40000 ALTER TABLE `family_friends_hobbies` ENABLE KEYS */;

-- Dumping structure for table friends.family_members
DROP TABLE IF EXISTS `family_members`;
CREATE TABLE IF NOT EXISTS `family_members` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `family_friend_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table friends.family_members: ~49 rows (approximately)
/*!40000 ALTER TABLE `family_members` DISABLE KEYS */;
INSERT INTO `family_members` (`id`, `first_name`, `last_name`, `family_friend_id`) VALUES
	(1, 'Jack', 'Goldsmith', 1),
	(2, 'Will', 'Goldsmith', 1),
	(3, 'Ruth', 'Goldsmith', 1),
	(5, 'Lisa', 'Banks', 2),
	(6, 'Jasper', 'Lau', 3),
	(7, 'Milo', 'Lau', 3),
	(8, 'Zoe', 'Lau', 3),
	(9, 'Bob', 'Xu', 4),
	(10, 'Jing', 'Xu', 4),
	(11, 'Derea', 'Kelly', 5),
	(12, 'Simon', 'Kelly', 5),
	(13, 'Lucy', 'Mckennel', 6),
	(14, 'Denise', 'Mckennel', 6),
	(15, 'Dave', 'Mckennel', 6),
	(16, 'Harry', 'Berry', 7),
	(17, 'Cathy', 'Berry', 7),
	(18, 'Danny', 'Flowers', 8),
	(19, 'Lucy', 'Flowers', 8),
	(20, 'Cara', 'Lee', 9),
	(21, 'Marie', 'Lee', 9),
	(22, 'James', 'Lee', 9),
	(23, 'Jamey', 'Smith', 10),
	(24, 'Mary', 'Smith', 10),
	(25, 'MInjay', 'Gold', 11),
	(26, 'Deena', 'Gold', 11),
	(27, 'Dave', 'Gold', 11),
	(28, 'Ava', 'Goith', 12),
	(29, 'Daniel', 'Goith', 12),
	(30, 'Dipesh', 'Patel', 13),
	(31, 'Daniel', 'Patel', 13),
	(32, 'Samantha', 'Patel', 13),
	(33, 'Elsa', 'Humphries', 14),
	(34, 'Amber', 'Humphries', 14),
	(35, 'Will', 'Humphries', 14),
	(36, 'Ron', 'Green', 15),
	(37, 'Holly', 'Green', 15),
	(38, 'James', 'Blake', 16),
	(39, 'Audie', 'Blake', 16),
	(40, 'Bridget', 'James', 17),
	(41, 'Barry', 'James', 17),
	(42, 'Linda', 'James', 17),
	(43, 'Carrie', 'Lam', 18),
	(44, 'David', 'Lam', 18),
	(45, 'Shela', 'Evens', 19),
	(46, 'Mandy', 'Evens', 19),
	(47, 'Albert', 'Evens', 19),
	(48, 'Lillian', 'Rong', 20),
	(49, 'Jullian', 'Rong', 20),
	(4, 'Paul', 'Banks', 2);
/*!40000 ALTER TABLE `family_members` ENABLE KEYS */;

-- Dumping structure for table friends.family_members_hobbies
DROP TABLE IF EXISTS `family_members_hobbies`;
CREATE TABLE IF NOT EXISTS `family_members_hobbies` (
  `id_fm` int(11) DEFAULT NULL,
  `id_h` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table friends.family_members_hobbies: ~117 rows (approximately)
/*!40000 ALTER TABLE `family_members_hobbies` DISABLE KEYS */;
INSERT INTO `family_members_hobbies` (`id_fm`, `id_h`) VALUES
	(2, 11),
	(3, 16),
	(4, 9),
	(5, 1),
	(6, 27),
	(7, 1),
	(8, 4),
	(9, 4),
	(11, 17),
	(1, 23),
	(12, 8),
	(13, 23),
	(14, 51),
	(15, 23),
	(16, 11),
	(17, 31),
	(19, 22),
	(10, 51),
	(19, 14),
	(18, 33),
	(21, 1),
	(22, 1),
	(23, 5),
	(24, 21),
	(26, 32),
	(20, 51),
	(27, 8),
	(28, 57),
	(29, 10),
	(30, 1),
	(32, 41),
	(25, 44),
	(33, 34),
	(35, 15),
	(31, 51),
	(36, 45),
	(38, 48),
	(34, 10),
	(39, 15),
	(37, 47),
	(41, 24),
	(42, 20),
	(43, 39),
	(44, 20),
	(45, 9),
	(46, 16),
	(47, 24),
	(48, 14),
	(49, 39),
	(40, 26),
	(1, 55),
	(1, 22),
	(2, 23),
	(2, 44),
	(3, 18),
	(3, 29),
	(3, 14),
	(4, 14),
	(6, 19),
	(6, 34),
	(7, 18),
	(8, 23),
	(9, 2),
	(11, 10),
	(12, 41),
	(13, 4),
	(14, 30),
	(14, 21),
	(14, 33),
	(14, 20),
	(14, 41),
	(18, 56),
	(21, 4),
	(21, 23),
	(22, 2),
	(22, 3),
	(23, 12),
	(23, 34),
	(23, 43),
	(23, 23),
	(24, 16),
	(25, 51),
	(26, 2),
	(26, 3),
	(27, 12),
	(28, 16),
	(28, 9),
	(29, 11),
	(30, 2),
	(30, 3),
	(30, 4),
	(32, 35),
	(33, 29),
	(33, 45),
	(34, 30),
	(35, 16),
	(35, 10),
	(40, 29),
	(40, 21),
	(49, 18),
	(49, 36),
	(48, 12),
	(47, 57),
	(47, 1),
	(46, 14),
	(43, 38),
	(43, 14),
	(43, 20),
	(42, 21),
	(42, 22),
	(42, 23),
	(42, 24),
	(42, 25),
	(42, 27),
	(42, 28),
	(42, 29),
	(42, 37);
/*!40000 ALTER TABLE `family_members_hobbies` ENABLE KEYS */;

-- Dumping structure for table friends.hobbies
DROP TABLE IF EXISTS `hobbies`;
CREATE TABLE IF NOT EXISTS `hobbies` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table friends.hobbies: ~57 rows (approximately)
/*!40000 ALTER TABLE `hobbies` DISABLE KEYS */;
INSERT INTO `hobbies` (`id`, `name`) VALUES
	(1, 'football'),
	(2, 'reading'),
	(3, 'drawing'),
	(4, 'guitar'),
	(5, 'running'),
	(6, 'Gaming'),
	(7, 'art'),
	(8, 'cooking'),
	(9, 'shopping'),
	(10, 'yoga'),
	(11, 'Chess'),
	(12, 'dogs'),
	(13, 'coding'),
	(14, 'basketball'),
	(15, 'swimming'),
	(16, 'netball'),
	(17, 'karate'),
	(18, 'judo'),
	(19, 'taekwondo'),
	(20, 'music'),
	(21, 'maths'),
	(22, 'cleaning'),
	(23, 'shopping'),
	(24, 'dancing'),
	(25, 'driving'),
	(26, 'writing'),
	(27, 'gardening'),
	(28, 'painting'),
	(29, 'magic'),
	(30, 'tennis'),
	(31, 'horse riding'),
	(32, 'singing'),
	(33, 'boxing'),
	(34, 'skydiving'),
	(35, 'knitting'),
	(36, 'dt'),
	(37, 'showering'),
	(38, 'golf'),
	(39, 'badminton'),
	(40, 'memes'),
	(41, 'surfing'),
	(42, 'cycling'),
	(43, 'genelogy'),
	(44, 'rugby'),
	(45, 'baking'),
	(46, 'blogging'),
	(47, 'piano'),
	(48, 'catering'),
	(49, 'refinishing furniture'),
	(50, 'public speaking'),
	(51, 'playing the stock market'),
	(52, 'sculpting'),
	(53, 'walking'),
	(54, 'cats'),
	(55, 'comics'),
	(56, 'naps'),
	(57, 'tv');
/*!40000 ALTER TABLE `hobbies` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
