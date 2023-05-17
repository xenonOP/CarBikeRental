CREATE DATABASE  IF NOT EXISTS `carbikerental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carbikerental`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carbikerental
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminEmail` varchar(250) NOT NULL,
  `adminPass` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`adminEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `bookingid` int NOT NULL AUTO_INCREMENT,
  `vehid` int DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  `DinBtw` int DEFAULT NULL,
  `Rate` varchar(45) DEFAULT NULL,
  `vehiclename` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `offerprice` varchar(45) DEFAULT NULL,
  `tax` varchar(45) DEFAULT NULL,
  `Total` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookingid`),
  KEY `vehicleid_idx` (`vehid`),
  CONSTRAINT `vehicleid` FOREIGN KEY (`vehid`) REFERENCES `vehicles` (`Vehicleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Catid` int NOT NULL AUTO_INCREMENT,
  `CatName` varchar(45) DEFAULT NULL,
  `CatPhoto` varchar(45) DEFAULT NULL,
  `SuperCat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Catid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Convertible','myuploads/Convertible.jpg','CAR'),(2,'Wagon','myuploads/wagon.jpg','CAR'),(4,'Crossover','myuploads/Crossover.jpg','CAR'),(5,'Coupe','myuploads/coupe.jpg','CAR'),(6,'Suv','myuploads/suv.jpg','CAR'),(8,'Sedan','myuploads/sedan.jpg','CAR'),(11,'HatchBack','myuploads/1683283525439.jpg','CAR'),(13,'SportsBike','myuploads/1683285797233.jpg','BIKE'),(14,'Cruiser','myuploads/1683288066493.jpg','BIKE'),(15,'Scrambler','myuploads/1683288241456.jpg','BIKE'),(18,'Moped','myuploads/1683288627400.jpg','BIKE'),(19,'Maxi Scooter','myuploads/1683288850297.jpg','BIKE');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `orderdetailid` int NOT NULL AUTO_INCREMENT,
  `orderid` int DEFAULT NULL,
  `vehid` int DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `dins` varchar(45) DEFAULT NULL,
  `Startdate` varchar(45) DEFAULT NULL,
  `EndDate` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderdetailid`),
  KEY `orderid_idx` (`orderid`),
  KEY `vehid_idx` (`vehid`),
  KEY `user_idx` (`user`),
  CONSTRAINT `orderid` FOREIGN KEY (`orderid`) REFERENCES `ordertable` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vehid` FOREIGN KEY (`vehid`) REFERENCES `vehicles` (`Vehicleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,2,5,'78000','81900','3','2023-05-09','2023-05-12','kanishrajput123@gmail.com'),(2,4,5,'104000','109200','4','2023-05-13','2023-05-17','kanishrajput123@gmail.com'),(3,5,5,'52000','54600','2','2023-05-18','2023-05-20','abc@gmail.com'),(4,6,5,'26000','27300','1','2023-05-21','2023-05-22','abc@gmail.com'),(5,7,13,'55200','57960','8','2023-05-12','2023-05-20','cumoc@mailinator.com'),(6,7,6,'48000','50400','2','2023-05-11','2023-05-13','cumoc@mailinator.com');
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertable` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `CompanyName` varchar(45) DEFAULT NULL,
  `Adhaarcard` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `ordernote` varchar(4500) DEFAULT NULL,
  `totalrate` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `user` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (2,'Kanish Rajput','kanishrajput123@gmail.com','6284593018','Student','565656599522','Punjab','Amritsar','batala road, Amritsar','143001','helppsfsjf','81900','ONLINE','kanishrajput123@gmail.com'),(3,'Kanish Rajput','kanishrajput123@gmail.com','6284593018','Student','565656599522','Punjab','Amritsar','batala road, Amritsar','143001','helppsfsjf','0','ONLINE','kanishrajput123@gmail.com'),(4,'Kanish Rajput','kanishrajput123@gmail.com','6284593018','Student','788878787878','Punjab','Amritsar','batala road, Amritsar','143001','jhhjjk','109200','ONLINE','kanishrajput123@gmail.com'),(5,'Kanish Rajput','kanishrajput123@gmail.com','6284593018','Student','545454655656','Punjab','Amritsar','batala road, Amritsar','143001','dkvjdifjidjfdok','54600','ONLINE','abc@gmail.com'),(6,'Kanish Rajput','kanishrajput123@gmail.com','6284593018','Student','898656598989','Punjab','Amritsar','batala road, Amritsar','143001','kjjdsjopsodsfskkskpsf','27300','ONLINE','abc@gmail.com'),(7,'Helen Contreras Avram Bradshaw','xowip@mailinator.com','8054545455','Holder Davenport Plc','898989898989','Voluptatem Culpa m','Repudiandae officia ','Eligendi magni sunt ','26712','Dolore adipisci dolo','108360','ONLINE','cumoc@mailinator.com');
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Userid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kanish Rajput','123','abc@gmail.com','6284593018'),(2,'Kanish Rajput','123','fud@gmail.com','6284593018'),(3,'Kanish Rajput','123','kanish4293@gmail.com','6284593018'),(4,'Cara Gardner','Pa$$w0rd!','cumoc@mailinator.com','9847515412');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `Vehicleid` int NOT NULL AUTO_INCREMENT,
  `VehicleName` varchar(100) DEFAULT NULL,
  `VehiclePhoto` varchar(100) DEFAULT NULL,
  `Descrp` varchar(4500) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `OfferPrice` varchar(45) DEFAULT NULL,
  `Transmission` varchar(45) DEFAULT NULL,
  `Drive` varchar(45) DEFAULT NULL,
  `Categories` varchar(45) DEFAULT NULL,
  `supercat` varchar(45) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `mileage` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `Engine` varchar(45) DEFAULT NULL,
  `TyreType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vehicleid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (5,'Bentley Continental','myuploads/1683044362118.jpg','Bentley Continental is a 4 seater Super Luxury available in a price range of Rs. 3.29 - 3.91 Cr*. It is available in 4 variants, 2 engine options that are BS6 compliant and a single Automatic transmission. Other key specifications of the Continental include a kerb weight of 2495kg, ground clearance of 142mm and boot space of 358 Liters. The Continental is available in 5 colours. Over 26 User reviews basis Mileage, Performance, Price and overall experience of users for Bentley Continental.','26000','23000','Auto','AWD','Convertible','CAR','2022','9-12 kmpl','Bentley',NULL,NULL),(6,'Lamborghini Huracan EVO','myuploads/1683044762000.jpg','Latest Update: Lamborghini has launched the Huracan Sterrato in India. The off-road capable version of the Huracan gets an improved ground clearance, new 19-inch alloy wheels and tyres with run-flat technology.\r\n\r\nPrice: Prices for the Huracan range from Rs 3.21 crore to Rs 4.99 crore (ex-showroom Delhi).\r\n\r\nEngine and Performance: It gets a 5.2-litre V10 engine with an output of 610PS and 600Nm. The Sterrato version uses the same engine and produces a lower torque of 560Nm and is paired with a seven-speed DCT sending power to all wheels. The Sterrato gets a top speed of 260kmph with a 0-100kmph run time of 3.4 seconds. It also gets a rear mechanical-locking differential with its all-wheel drivetrain.\r\n\r\nFeatures: Lamborghini has boasted the Huracan with features like a touchscreen infotainment display, digital instrument cluster, 19-inch alloy wheels, paddle shifters and leather upholstery.','24000','20000','Auto','AWD','Convertible','CAR','2020','4-6 kmpl','Lamborghini',NULL,NULL),(7,'Ferrari 812','myuploads/1683045003351.jpg','Ferrari 812 is a 2 seater Coupe available in a price range of Rs. 5.75 Cr*. It is available in 1 variants, a 6496 cc, BS6 and a single Automatic transmission. Other key specifications of the 812 include a kerb weight of 1600 and boot space of 210 Liters. The 812 is available in 26 colours. Over 19 User reviews basis Mileage, Performance, Price and overall experience of users for Ferrari 812.','30000','25000','Auto','AWD','Convertible','CAR','2021','3-6 kmpl','Ferrari',NULL,NULL),(8,'Honda City','myuploads/1683046969606.jpg','Honda City is a 5 seater Sedan available in a price range of Rs. 11.49 - 15.97 Lakh*. It is available in 7 variants, a 1498 cc, / and 2 transmission options: Manual & Automatic. Other key specifications of the City include a kerb weight of 1107-1153 and boot space of 506 Liters. The City is available in 6 colours. Over 39 User reviews basis Mileage, Performance, Price and overall experience of users for Honda City.','6000','4500','Manual','AWD','Sedan','CAR','2017','9-10kmpl','Honda',NULL,NULL),(9,'Skoda Slavia','myuploads/1683047210827.jpg','Skoda Slavia is a 5 seater Sedan available in a price range of Rs. 11.39 - 18.68 Lakh*. It is available in 14 variants, 2 engine options that are BS6 compliant and 2 transmission options: Manual & Automatic. Other key specifications of the Slavia include a kerb weight of 1278kg, ground clearance of 179mm and boot space of 521 Liters. The Slavia is available in 7 colours. Over 408 User reviews basis Mileage, Performance, Price and overall experience of users for Skoda Slavia.','5600','5000','Semi-auto','RWD','Sedan','CAR','2016','10-12kmpl','Skoda',NULL,NULL),(10,'Toyota Camry','myuploads/1683047424552.jpg','Toyota Camry is a 5 seater Sedan available in a price range of Rs. 45.25 Lakh*. It is available in 1 variants, a 2487 cc, BS6 and a single Automatic transmission. Other key specifications of the Camry include a kerb weight of 1665mm and boot space of Liters. The Camry is available in 7 colours. Over 47 User reviews basis Mileage, Performance, Price and overall experience of users for Toyota Camry.Toyota Camry is a 5 seater Sedan available in a price range of Rs. 45.25 Lakh*. It is available in 1 variants, a 2487 cc, BS6 and a single Automatic transmission. Other key specifications of the Camry include a kerb weight of 1665mm and boot space of Liters. The Camry is available in 7 colours. Over 47 User reviews basis Mileage, Performance, Price and overall experience of users for Toyota Camry.','9610','5600','Manual','RWD','Sedan','CAR','2019','9-11kmpl','Toyota',NULL,NULL),(11,'Porsche Panamera','myuploads/1683047583948.jpg','Porsche Panamera is a 5 seater Super Luxury available in a price range of Rs. 1.58 - 2.71 Cr*. It is available in 5 variants, 4 engine options that are BS6 compliant and a single Automatic transmission. Other key specifications of the Panamera include a kerb weight of 2310Kg and boot space of 405 Liters. The Panamera is available in 17 colours. Over 10 User reviews basis Mileage, Performance, Price and overall experience of users for Porsche Panamera.Porsche Panamera is a 5 seater Super Luxury available in a price range of Rs. 1.58 - 2.71 Cr*. It is available in 5 variants, 4 engine options that are BS6 compliant and a single Automatic transmission. Other key specifications of the Panamera include a kerb weight of 2310Kg and boot space of 405 Liters. The Panamera is available in 17 colours. Over 10 User reviews basis Mileage, Performance, Price and overall experience of users for Porsche Panamera.','16000','12000','Auto','RWD','Wagon','CAR','2019','8-9 kmpl','Porsche',NULL,NULL),(12,'Porsche Taycan','myuploads/1683047671469.jpg','Porsche Taycan is a 5 seater Wagon available in a price range of Rs. 1.53 - 2.34 Cr*. It is available in 7 variants, a -, / and a single Automatic transmission. Other key specifications of the Taycan include a kerb weight of 2245Kg and boot space of 446lts Liters. The Taycan is available in 18 colours. Over 57 User reviews basis Mileage, Performance, Price and overall experience of users for Porsche Taycan.Porsche Taycan is a 5 seater Wagon available in a price range of Rs. 1.53 - 2.34 Cr*. It is available in 7 variants, a -, / and a single Automatic transmission. Other key specifications of the Taycan include a kerb weight of 2245Kg and boot space of 446lts Liters. The Taycan is available in 18 colours. Over 57 User reviews basis Mileage, Performance, Price and overall experience of users for Porsche Taycan.','12300','10100','Auto','AWD','Wagon','CAR','2017','6-9 kmpl','Porsche',NULL,NULL),(13,'Harley-Davidson Heritage Classic','myuploads/1683291270813.jpg','Harley-Davidson Heritage Classic is a cruiser bike available at a starting price of Rs. 26,59,000 in India. It is available in only 1 variant and 4 colours. The Harley-Davidson Heritage Classic is powered by 1868cc BS6 engine which develops a power of 94 bhp and a torque of 155 Nm. With both front and rear disc brakes, Harley-Davidson Heritage Classic comes up with anti-locking braking system. This Heritage Classic bike weighs 330 kg and has a fuel tank capacity of 18.9 liters.\r\n','6900','4600',NULL,NULL,'SportsBike','BIKE','2021','18.2-19kmpl','HarleyDavidson','1,868 cc','Tubeless'),(14,'Royal Enfield Classic 350','myuploads/1683291485609.jpg','Royal Enfield Classic 350 is a cruiser bike available at a starting price of Rs. 1,93,080 in India. It is available in 6 variants and 15 colours with top variant price starting from Rs. 2,24,755. The Royal Enfield Classic 350 is powered by 349cc BS6 engine which develops a power of 20.2 bhp and a torque of 27 Nm. With both front and rear disc brakes, Royal Enfield Classic 350 comes up with anti-locking braking system. This Classic 350 bike weighs 195 kg and has a fuel tank capacity of 13 liters.','3500','2000',NULL,NULL,'Cruiser','BIKE','2020','30-35kmpl','Royal Enfield','349 cc','SpokeWheels'),(15,'TVS XL100 Heavy Duty','myuploads/1683291676226.jpg','TVS XL100 Heavy Duty is a moped bike available at a starting price of Rs. 47,889 in India. It is available in 4 variants and 9 colours with top variant price starting from Rs. 57,835. The TVS XL100 Heavy Duty is powered by 99.7cc BS6 engine which develops a power of 4.3 bhp and a torque of 6.5 Nm. With both front and rear drum brakes, TVS XL100 Heavy Duty comes up with combined braking system of both wheels. This XL100 Heavy Duty bike weighs 88 kg and has a fuel tank capacity of 4 liters.','1000','700',NULL,NULL,'Moped','BIKE','2022','55-65kmpl','TVS','99.7 cc','Tubeless'),(16,'Yamaha Aerox 155','myuploads/1683359722281.jpg','Yamaha Aerox 155 is a bike available at a starting price of Rs. 1,43,577 in India. It is available in 1 variant. It is powered by a 155 cc BS6 Phase 2 engine and has a user reported mileage of 40 kmpl. It comes with both front and rear disc brakes.Yamaha Aerox 155 is a bike available at a starting price of Rs. 1,43,577 in India. It is available in 1 variant. It is powered by a 155 cc BS6 Phase 2 engine and has a user reported mileage of 40 kmpl. It comes with both front and rear disc brakes.','1700','1000',NULL,NULL,'Maxi Scooter','BIKE','2019','45kmpl','Yamaha','155 cc','Tubeless'),(17,'Aprilia SXR 160','myuploads/1683359928701.jpg','Aprilia SXR 160 is a scooter available at a starting price of Rs. 1,45,397 in India. It is available in 1 variant and 4 colours. It is powered by a 160.03 cc BS6 engine and has a user reported mileage of 35 kmpl. It comes with both front and rear disc brakes.Aprilia SXR 160 is a scooter available at a starting price of Rs. 1,45,397 in India. It is available in 1 variant and 4 colours. It is powered by a 160.03 cc BS6 engine and has a user reported mileage of 35 kmpl. It comes with both front and rear disc brakes.','1890','1200',NULL,NULL,'Maxi Scooter','BIKE','2020','35kmpl','Aprilia','160.03 cc','Tubeless');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `wishid` int NOT NULL AUTO_INCREMENT,
  `vehid` int DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`wishid`),
  KEY `vid_idx` (`vehid`),
  CONSTRAINT `vid` FOREIGN KEY (`vehid`) REFERENCES `vehicles` (`Vehicleid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,5,'kanish'),(2,7,'Kanish Rajput'),(3,6,'Kanish Rajput'),(4,5,'Kanish Rajput'),(5,9,'Kanish Rajput'),(6,5,'fud@gmail.com'),(7,13,'fud@gmail.com'),(8,9,'cumoc@mailinator.com'),(9,6,'abc@gmail.com'),(10,14,'abc@gmail.com'),(11,13,'abc@gmail.com');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-13  3:18:34
