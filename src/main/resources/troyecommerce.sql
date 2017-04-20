-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: troyecommerce
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeuserid` varchar(20) DEFAULT NULL,
  `patientname` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `healthproblem` varchar(64) DEFAULT NULL,
  `doctoruserid` varchar(20) DEFAULT NULL,
  `appointmentdate` varchar(20) DEFAULT NULL,
  `appointmenttime` varchar(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT 'if 1 then schedule, if 2 then re-schedule (re-schedule can be updated if the given appointmentdate and appointmenttime are same as in the database)',
  PRIMARY KEY (`id`),
  KEY `employeeuserid` (`employeeuserid`,`doctoruserid`),
  KEY `doctoruserid` (`doctoruserid`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`employeeuserid`) REFERENCES `employees` (`username`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`doctoruserid`) REFERENCES `employees` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1488 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1487,NULL,'1',1,1,'1',NULL,'2008/03/07','1:00 am',1);
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catalog`
--

DROP TABLE IF EXISTS `catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catalog` (
  `CatalogID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CatalogName` varchar(45) NOT NULL DEFAULT '',
  `CatalogDesc` text,
  `CatalogImage` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`CatalogID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catalog`
--

LOCK TABLES `catalog` WRITE;
/*!40000 ALTER TABLE `catalog` DISABLE KEYS */;
INSERT INTO `catalog` VALUES (5,'demo2','demo','images/1-(2).jpg'),(6,'demo22','demo22','images/1-(2).jpg'),(8,'demo3','demo3','images/1-(2).jpg');
/*!40000 ALTER TABLE `catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CatalogID` int(10) unsigned NOT NULL DEFAULT '0',
  `CategoryName` varchar(100) NOT NULL DEFAULT '',
  `CategoryDescription` text,
  `CategoryImage` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`CategoryID`),
  KEY `FK_Catalog` (`CatalogID`),
  CONSTRAINT `FK_Catalog` FOREIGN KEY (`CatalogID`) REFERENCES `catalog` (`CatalogID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctorfees`
--

DROP TABLE IF EXISTS `doctorfees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctorfees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctoruserid` varchar(20) DEFAULT NULL,
  `healthproblem` varchar(64) DEFAULT NULL,
  `fees` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctoruserid` (`doctoruserid`),
  CONSTRAINT `doctorfees_ibfk_1` FOREIGN KEY (`doctoruserid`) REFERENCES `employees` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctorfees`
--

LOCK TABLES `doctorfees` WRITE;
/*!40000 ALTER TABLE `doctorfees` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctorfees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `verificationcode` varchar(20) DEFAULT NULL,
  `type` int(1) DEFAULT NULL COMMENT 'ordinary login page type=2 admin login page type=1 (set this value according the jsp page opened). If type=3 then doctor. type=0 then patient',
  `consultinghours` varchar(20) DEFAULT NULL COMMENT 'if type=0 then patient card id',
  `qualification` varchar(20) DEFAULT NULL,
  `specialist` varchar(64) DEFAULT NULL COMMENT 'if type=2 then give whether front-office, nurses, etc. If type=3 then doctor''s specialist for child, etc. If type=0 then patient came for consulting for what',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('','','first1','','','',1,'','',1,'','',''),('1','','','','','',1,'','',1,'','',''),('123','','First','Second','','',1,'','',3,'7am - 2pm','','Child'),('1234','','','','','',1,'','',2,'','',''),('12345','12345','first','last','address','12345',1,'Indian','5626',1,'12fdg 34fsd ','afds','asdf'),('123451','','first2','','','',1,'','',1,'','',''),('2','2','2','2','2','2',1,'2','7778',0,NULL,'2','2'),('admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health`
--

DROP TABLE IF EXISTS `health`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doctoruserid` varchar(20) DEFAULT NULL,
  `symptoms` varchar(20) DEFAULT NULL,
  `diseasesname` varchar(64) DEFAULT NULL,
  `medication` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctoruserid` (`doctoruserid`),
  CONSTRAINT `health_ibfk_1` FOREIGN KEY (`doctoruserid`) REFERENCES `employees` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health`
--

LOCK TABLES `health` WRITE;
/*!40000 ALTER TABLE `health` DISABLE KEYS */;
/*!40000 ALTER TABLE `health` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `OrderID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderUserID` int(10) unsigned NOT NULL DEFAULT '0',
  `OrderAmount` float NOT NULL DEFAULT '0',
  `OrderShipName` varchar(100) NOT NULL DEFAULT '',
  `OrderShipAddress` varchar(100) NOT NULL DEFAULT '',
  `OrderShipAddress2` varchar(100) NOT NULL DEFAULT '',
  `OrderCity` varchar(50) NOT NULL DEFAULT '',
  `OrderState` varchar(50) NOT NULL DEFAULT '',
  `OrderZip` varchar(45) NOT NULL DEFAULT '',
  `OrderCountry` varchar(20) NOT NULL DEFAULT '',
  `OrderPhone` varchar(20) NOT NULL DEFAULT '',
  `OrderEmail` varchar(100) NOT NULL DEFAULT '',
  `OrderDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OrderStatus` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`OrderID`),
  KEY `FK_User` (`OrderUserID`),
  CONSTRAINT `FK_User` FOREIGN KEY (`OrderUserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `ORDER_ITEMID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` int(10) unsigned NOT NULL DEFAULT '0',
  `ProductID` int(10) unsigned NOT NULL DEFAULT '0',
  `ProductName` varchar(100) NOT NULL DEFAULT '',
  `ProductQuantity` float NOT NULL DEFAULT '0',
  `ProductPrice` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`ORDER_ITEMID`),
  KEY `FK_order` (`OrderID`),
  KEY `FK_order_product` (`ProductID`),
  CONSTRAINT `FK_order` FOREIGN KEY (`OrderID`) REFERENCES `order` (`OrderID`),
  CONSTRAINT `FK_order_product` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otherfees`
--

DROP TABLE IF EXISTS `otherfees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otherfees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminuserid` varchar(20) DEFAULT NULL,
  `equipmentname` varchar(20) DEFAULT NULL,
  `fees` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `adminuserid` (`adminuserid`),
  CONSTRAINT `otherfees_ibfk_1` FOREIGN KEY (`adminuserid`) REFERENCES `employees` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1448 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otherfees`
--

LOCK TABLES `otherfees` WRITE;
/*!40000 ALTER TABLE `otherfees` DISABLE KEYS */;
INSERT INTO `otherfees` VALUES (1447,NULL,'1',1.00);
/*!40000 ALTER TABLE `otherfees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patientuserid` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `employeeuserid` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `bloodgroup` varchar(20) DEFAULT NULL,
  `testundergone` int(1) DEFAULT NULL COMMENT 'if 1 then test taken otherwise test need to be taken',
  `ecg` int(1) DEFAULT NULL COMMENT 'if 1 test taken',
  `bloodtest` int(1) DEFAULT NULL COMMENT 'if 1 test taken',
  `xray` int(1) DEFAULT NULL COMMENT 'if 1 test taken',
  `scan` int(1) DEFAULT NULL COMMENT 'if 1 test taken',
  `address` varchar(128) DEFAULT NULL,
  `mobilenumber` varchar(20) DEFAULT NULL,
  `healthproblem` varchar(64) DEFAULT NULL,
  `doctorconsultedid` varchar(20) DEFAULT NULL,
  `dietspecified` varchar(64) DEFAULT NULL,
  `prescribedmedicines` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`patientuserid`),
  KEY `employeeuserid` (`employeeuserid`),
  KEY `doctorconsultedid` (`doctorconsultedid`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`employeeuserid`) REFERENCES `employees` (`username`),
  CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`doctorconsultedid`) REFERENCES `employees` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `ProductID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) NOT NULL DEFAULT '',
  `ProductPrice` float NOT NULL DEFAULT '0',
  `ProductWeight` float NOT NULL DEFAULT '0',
  `ProductCartDesc` varchar(250) NOT NULL DEFAULT '',
  `ProductShortDesc` varchar(1000) NOT NULL DEFAULT '',
  `ProductLongDesc` text,
  `ProductThumb` varchar(100) NOT NULL DEFAULT '',
  `ProductImage` varchar(100) NOT NULL DEFAULT '',
  `ProductCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `ProductStock` float NOT NULL DEFAULT '0',
  `ProductLive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProductID`),
  KEY `FK_Product_category` (`ProductCategoryID`),
  CONSTRAINT `FK_Product_category` FOREIGN KEY (`ProductCategoryID`) REFERENCES `category` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `roomid` varchar(20) NOT NULL DEFAULT '',
  `patientuserid` varchar(20) DEFAULT NULL,
  `roomtype` int(1) DEFAULT NULL COMMENT 'if 1 then AC, otherwise general',
  `employeeuserid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`roomid`),
  KEY `employeeuserid` (`employeeuserid`,`patientuserid`),
  KEY `patientuserid` (`patientuserid`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`employeeuserid`) REFERENCES `employees` (`username`),
  CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`patientuserid`) REFERENCES `patient` (`patientuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) NOT NULL DEFAULT '',
  `UserPassword` varchar(100) NOT NULL DEFAULT '',
  `UserFirstName` varchar(50) NOT NULL DEFAULT '',
  `UserLastName` varchar(50) NOT NULL DEFAULT '',
  `UserAddress` varchar(200) NOT NULL DEFAULT '',
  `UserAddress2` varchar(100) NOT NULL DEFAULT '',
  `UserCity` varchar(60) NOT NULL DEFAULT '',
  `UserState` varchar(45) NOT NULL DEFAULT '',
  `UserCountry` varchar(45) NOT NULL DEFAULT '',
  `UserZip` varchar(45) NOT NULL DEFAULT '',
  `UserPhone` varchar(45) NOT NULL DEFAULT '',
  `UserEmailVerified` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UserVerificationCode` varchar(45) NOT NULL DEFAULT '',
  `UserRegistrationDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'d@troy.edu','aaa','dhrumil','munshi','200B mullis street','','troy','al','usa','36081','3342689925',1,'1','2017-04-05 20:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-20 10:26:53
