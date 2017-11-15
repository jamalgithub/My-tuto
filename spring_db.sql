-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           10.2.8-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour spring_db
DROP DATABASE IF EXISTS `spring_db`;
CREATE DATABASE IF NOT EXISTS `spring_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `spring_db`;

-- Export de la structure de la table spring_db. organisation
DROP TABLE IF EXISTS `organisation`;
CREATE TABLE IF NOT EXISTS `organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(50) NOT NULL,
  `year_of_incorporation` int(11) NOT NULL DEFAULT 0,
  `postal_code` varchar(50) NOT NULL DEFAULT '0',
  `employee_count` int(11) NOT NULL DEFAULT 0,
  `slogan` varchar(200) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Export de données de la table spring_db.organisation : ~0 rows (environ)
DELETE FROM `organisation`;
/*!40000 ALTER TABLE `organisation` DISABLE KEYS */;
INSERT INTO `organisation` (`id`, `company_name`, `year_of_incorporation`, `postal_code`, `employee_count`, `slogan`) VALUES
	(1, 'BMW', 1929, '45456', 10000, 'BMW slogan'),
	(2, 'Amazon', 1994, '75757', 20000, 'Amazon slogan');
/*!40000 ALTER TABLE `organisation` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
