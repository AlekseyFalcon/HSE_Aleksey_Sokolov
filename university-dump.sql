-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: university
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `SubjectID` int DEFAULT NULL,
  `TeacherID` int DEFAULT NULL,
  `AcademicYear` varchar(9) NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `SubjectID` (`SubjectID`),
  KEY `TeacherID` (`TeacherID`),
  CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`),
  CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`TeacherID`) REFERENCES `teachers` (`TeacherID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` (`CourseID`, `SubjectID`, `TeacherID`, `AcademicYear`) VALUES (1,4,1,'23-24'),(2,2,2,'23-24'),(3,3,3,'23-24');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `GradeID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `SubjectID` int DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `GradeDate` date NOT NULL,
  `Semester` enum('Осенний','Весенний') NOT NULL,
  `AcademicYear` varchar(9) NOT NULL,
  PRIMARY KEY (`GradeID`),
  KEY `StudentID` (`StudentID`),
  KEY `SubjectID` (`SubjectID`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`SubjectID`) REFERENCES `subjects` (`SubjectID`),
  CONSTRAINT `grades_chk_1` CHECK ((`Grade` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` (`GradeID`, `StudentID`, `SubjectID`, `Grade`, `GradeDate`, `Semester`, `AcademicYear`) VALUES (1,1,4,5,'2023-11-14','Осенний','23-24'),(2,2,2,4,'2023-11-14','Осенний','23-24'),(3,3,3,4,'2023-11-14','Осенний','23-24'),(4,1,4,5,'2023-11-15','Осенний','23-24'),(5,2,2,5,'2023-11-15','Осенний','23-24'),(6,3,3,5,'2023-11-15','Осенний','23-24'),(7,4,4,5,'2023-11-15','Осенний','23-24'),(8,5,2,4,'2023-11-15','Осенний','23-24'),(9,6,3,3,'2023-11-15','Осенний','23-24'),(10,7,4,5,'2023-11-15','Осенний','23-24'),(11,8,2,2,'2023-11-15','Осенний','23-24'),(12,9,3,4,'2023-11-15','Осенний','23-24'),(13,10,4,3,'2023-11-15','Осенний','23-24'),(14,11,4,3,'2023-11-16','Осенний','23-24'),(15,12,2,4,'2023-11-16','Осенний','23-24'),(16,13,3,4,'2023-11-16','Осенний','23-24'),(17,1,2,2,'2023-11-16','Осенний','23-24'),(18,3,2,2,'2023-11-16','Осенний','23-24'),(43,1,4,4,'2024-02-15','Весенний','23-24'),(44,2,2,5,'2024-02-16','Весенний','23-24'),(45,3,3,3,'2024-02-17','Весенний','23-24'),(46,1,2,2,'2024-02-18','Весенний','23-24'),(47,2,3,4,'2024-02-19','Весенний','23-24'),(48,3,4,5,'2024-02-20','Весенний','23-24'),(49,12,4,4,'2024-02-15','Весенний','23-24'),(50,10,3,5,'2024-02-16','Весенний','23-24'),(51,3,2,3,'2024-02-17','Весенний','23-24'),(52,5,4,2,'2024-02-18','Весенний','23-24'),(53,8,2,4,'2024-02-19','Весенний','23-24'),(54,9,4,5,'2024-02-20','Весенний','23-24'),(55,1,4,4,'2024-02-15','Весенний','23-24'),(56,2,2,5,'2024-02-16','Весенний','23-24'),(57,3,3,3,'2024-02-17','Весенний','23-24'),(58,1,2,2,'2024-02-18','Весенний','23-24'),(59,2,3,4,'2024-02-19','Весенний','23-24'),(60,3,4,5,'2024-02-20','Весенний','23-24'),(61,12,4,4,'2024-02-15','Весенний','23-24'),(62,10,3,5,'2024-02-16','Весенний','23-24'),(63,3,2,3,'2024-02-17','Весенний','23-24'),(64,5,4,2,'2024-02-18','Весенний','23-24'),(65,8,2,4,'2024-02-19','Весенний','23-24'),(66,9,4,5,'2024-02-20','Весенний','23-24'),(67,1,2,3,'2024-12-11','Осенний','24-25');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentgroups`
--

DROP TABLE IF EXISTS `studentgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentgroups` (
  `GroupID` int NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(255) NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentgroups`
--

LOCK TABLES `studentgroups` WRITE;
/*!40000 ALTER TABLE `studentgroups` DISABLE KEYS */;
INSERT INTO `studentgroups` (`GroupID`, `GroupName`) VALUES (1,'Группа А'),(2,'Группа Б');
/*!40000 ALTER TABLE `studentgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `ContactInfo` varchar(255) DEFAULT NULL,
  `GroupID` int DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `FullName` (`FullName`,`DateOfBirth`),
  KEY `FK_Student_Group` (`GroupID`),
  CONSTRAINT `FK_Student_Group` FOREIGN KEY (`GroupID`) REFERENCES `studentgroups` (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`StudentID`, `FullName`, `DateOfBirth`, `ContactInfo`, `GroupID`) VALUES (1,'Никита Сергеев','2002-05-12','sergeev@example.com',1),(2,'Мария Васильева','2003-01-19','vasileva@example.com',2),(3,'Артем Алексеев','2001-08-22','alekseev@example.com',1),(4,'Анна Кузнецова','2002-02-14','kuznetsova@example.com',2),(5,'Дмитрий Павлов','2003-07-18','pavlov@example.com',1),(6,'Ольга Морозова','2001-11-25','morozova@example.com',2),(7,'Кирилл Волков','2002-03-06','volkov@example.com',1),(8,'Екатерина Алексеева','2003-08-22','alexeeva@example.com',2),(9,'Михаил Новиков','2002-01-10','novikov@example.com',1),(10,'Юлия Федорова','2001-09-30','fedorova@example.com',2),(11,'Сергей Михайлов','2003-05-15','mikhailov@example.com',1),(12,'Виктория Соколова','2002-04-19','sokolova@example.com',2),(13,'Андрей Васильев','2001-12-12','vasiliev@example.com',1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `SubjectID` int NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(255) NOT NULL,
  `SubjectType` enum('Гуманитарный','Математический') NOT NULL,
  PRIMARY KEY (`SubjectID`),
  UNIQUE KEY `SubjectName` (`SubjectName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` (`SubjectID`, `SubjectName`, `SubjectType`) VALUES (2,'Регулирование ИИ','Гуманитарный'),(3,'Базы данных','Математический'),(4,'Удаленный предмет','Гуманитарный');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `TeacherID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(255) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `ContactInfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TeacherID`),
  UNIQUE KEY `FullName` (`FullName`,`DateOfBirth`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` (`TeacherID`, `FullName`, `DateOfBirth`, `ContactInfo`) VALUES (1,'Иван Петров','1975-09-01','petrov@example.com'),(2,'Елена Иванова','1980-03-15','ivanova@example.com'),(3,'Алексей Смирнов','1965-11-23','smirnov@example.com');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-16 18:31:33
