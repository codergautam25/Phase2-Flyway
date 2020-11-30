-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: flyaway
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `flightdetails`
--

DROP TABLE IF EXISTS `flightdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flightdetails` (
  `flightno` varchar(20) DEFAULT NULL,
  `airline_name` varchar(30) DEFAULT NULL,
  `origin` varchar(40) DEFAULT NULL,
  `destination` varchar(40) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  `departure_time` varchar(20) DEFAULT NULL,
  `arrival_time` varchar(10) DEFAULT NULL,
  `fare` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightdetails`
--

LOCK TABLES `flightdetails` WRITE;
/*!40000 ALTER TABLE `flightdetails` DISABLE KEYS */;
INSERT INTO `flightdetails` VALUES ('6E-227','Indigo','Kolkata','Hyderabad','16 Feb 21','09:40','16:40',2863),('6E-868','Indigo','Kolkata','Hyderabad','16 Feb 21','17:15','23:10',2869),('6E-6527','Indigo','Kolkata','Hyderabad','16 Feb 21','07:55','16:00',3521),('6E-6956','Indigo','Kolkata','Hyderabad','16 Feb 21','12:10','16:55',3679),('G8-122','GoAir','Kolkata','Hyderabad','16 Feb 21','08:30','10:35',3369),('I5-551','AirAsia','Kolkata','pune','16 Feb 21','10:15','16:15',2381),('I5-2473','AirAsia','Kolkata','pune','16 Feb 21','09:45','18:55',3365),('6E-286','Indigo','Kolkata','pune','16 Feb 21','11:15','19:35',3132),('6E-286','Indigo','Kolkata','pune','16 Feb 21','09:20','11:55',3132),('SG-274','SpiceJet','Kolkata','pune','16 Feb 21','08:55','11:40',4369),('SG-224','SpiceJet','Kolkata','pune','16 Feb 21','08:25','11:40',2354);
/*!40000 ALTER TABLE `flightdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 21:41:02
