-- --------------------------------------------------------
-- Host:                         database-1.cvy7wbz5p7ok.us-east-1.rds.amazonaws.com
-- Server version:               8.0.28 - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for employee
CREATE DATABASE IF NOT EXISTS `employee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employee`;

-- Dumping structure for table employee.attendance
CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL DEFAULT '0',
  `attendance_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`attendance_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `FK1_employee` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table employee.attendance: ~0 rows (approximately)

-- Dumping structure for table employee.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pri_skill` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table employee.employee: ~9 rows (approximately)
INSERT INTO `employee` (`emp_id`, `first_name`, `last_name`, `pri_skill`, `location`) VALUES
	(1, 'June', 'Lee', 'Read', 'Toilet'),
	(2, 'Bryan', 'Tee', 'Write', 'School'),
	(3, 'Jeremy', 'Tang', 'Code', 'Home'),
	(4, 'Jay', 'Hen', 'Code', 'Library'),
	(6, 'Xiong', 'Keat', 'Sleep', 'Canteen'),
	(7, 'Elvis', 'Lim', 'Run', 'Van'),
	(8, 'Gavin', 'Pui', 'Eat', 'Hostel'),
	(9, 'Xande', 'Yong', 'Party', 'Block D'),
	(10, 'Wincan', 'Wong', 'Cry', 'Space');

-- Dumping structure for table employee.leave
CREATE TABLE IF NOT EXISTS `leave` (
  `leave_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL DEFAULT '0',
  `leave_date` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`leave_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `FK1_leave` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table employee.leave: ~0 rows (approximately)

-- Dumping structure for table employee.salary
CREATE TABLE IF NOT EXISTS `salary` (
  `salary_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL DEFAULT '0',
  `salary_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`salary_id`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `FK1_salary` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table employee.salary: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
