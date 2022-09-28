-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tickets
CREATE DATABASE IF NOT EXISTS `tickets` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tickets`;

-- Dumping structure for table tickets.ticket
CREATE TABLE IF NOT EXISTS `ticket` (
  `Ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`Ticketid`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tickets.ticket: ~5 rows (approximately)
INSERT INTO `ticket` (`Ticketid`, `customer`, `email`, `issue`, `priority`, `status`) VALUES
	(104, 'Test', 'skysales0321@gmail.com', 'TESTING ISSUE/REPORTS', 'High', 'Active'),
	(109, 'Test', 'skysales0321@gmail.com', 'asdqweqwe', 'Medium', 'Active'),
	(110, 'Test', 'skysales0321@gmail.com', 'asdqweqwe', 'High', 'Active'),
	(111, 'Test', 'skysales0321@gmail.com', 'asdqweqwe', 'Low', 'Ticket Solve'),
	(112, 'Test', 'skysales0321@gmail.com', 'asdqweqwe', 'High', 'Ticket Solve');

-- Dumping structure for table tickets.users
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(150) NOT NULL DEFAULT '',
  `create_datetime` varchar(150) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tickets.users: ~3 rows (approximately)
INSERT INTO `users` (`username`, `password`, `email`, `create_datetime`) VALUES
	('dekuchan21', 'e10adc3949ba59abbe56e057f20f883e', 'skysales0321@gmail.com', '2022-09-28 11:47:34'),
	('asdasd', 'd553d148479a268914cecb77b2b88e6a', 'skysales0321@gmail.com', '2022-09-28 12:12:48'),
	('admin', '0192023a7bbd73250516f069df18b500', 'skysales0321@gmail.com', '2022-09-28 16:32:12');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
