CREATE DATABASE  IF NOT EXISTS `eagle_business_platform` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eagle_business_platform`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: eagle_business_platform
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customer_ratings`
--

DROP TABLE IF EXISTS `customer_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_ratings` (
  `CUSTOMER_ID` int DEFAULT NULL,
  `RATING` int DEFAULT NULL,
  `EMPLOYEE_ID` text,
  KEY `CUSTOMER_ID_idx` (`CUSTOMER_ID`),
  CONSTRAINT `CUSTOMER_ID` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customers` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_ratings`
--

LOCK TABLES `customer_ratings` WRITE;
/*!40000 ALTER TABLE `customer_ratings` DISABLE KEYS */;
INSERT INTO `customer_ratings` VALUES (6610,2,'299-11-2302'),(60997,3,'114-43-2444'),(64265,1,'717-19-7762'),(80397,6,'724-48-4835'),(93991,3,'821-79-5475'),(112042,6,'114-43-2444'),(115234,4,'299-11-2302'),(130404,4,'724-48-4835'),(131297,7,'717-19-7762'),(149071,8,'299-11-2302'),(149242,3,'724-48-4835'),(169706,4,'717-19-7762'),(172848,2,'724-48-4835'),(174281,3,'717-19-7762'),(176137,5,'724-48-4835'),(182487,2,'724-48-4835'),(191414,9,'821-79-5475'),(206727,9,'299-11-2302'),(224889,9,'114-43-2444'),(243261,0,'299-11-2302'),(296986,2,'724-48-4835'),(299918,5,'299-11-2302'),(307236,8,'114-43-2444'),(335088,8,'299-11-2302'),(336720,0,'724-48-4835'),(337667,0,'724-48-4835'),(340618,2,'299-11-2302'),(353559,6,'114-43-2444'),(369867,1,'724-48-4835'),(370264,2,'114-43-2444'),(405463,6,'821-79-5475'),(420943,1,'114-43-2444'),(441804,8,'299-11-2302'),(474616,4,'717-19-7762'),(475218,9,'821-79-5475'),(487345,2,'724-48-4835'),(511538,4,'717-19-7762'),(522536,6,'114-43-2444'),(525723,0,'299-11-2302'),(529807,3,'821-79-5475'),(536200,4,'114-43-2444'),(539146,8,'821-79-5475'),(539176,1,'299-11-2302'),(546160,5,'114-43-2444'),(555530,6,'724-48-4835'),(595768,3,'299-11-2302'),(600102,3,'717-19-7762'),(616867,3,'821-79-5475'),(631461,4,'821-79-5475'),(638147,2,'717-19-7762'),(655147,0,'717-19-7762'),(656245,7,'821-79-5475'),(664011,6,'821-79-5475'),(666228,7,'821-79-5475'),(667669,5,'717-19-7762'),(687291,5,'724-48-4835'),(699730,4,'724-48-4835'),(711354,5,'724-48-4835'),(727602,1,'717-19-7762'),(728671,4,'821-79-5475'),(729499,2,'821-79-5475'),(752338,8,'724-48-4835'),(767530,6,'821-79-5475'),(789610,5,'724-48-4835'),(792015,8,'114-43-2444'),(796265,2,'299-11-2302'),(859975,5,'299-11-2302'),(863908,0,'717-19-7762'),(874825,0,'114-43-2444'),(892498,6,'717-19-7762'),(905923,7,'821-79-5475'),(924687,6,'724-48-4835'),(930211,8,'114-43-2444'),(935599,7,'717-19-7762'),(939837,5,'821-79-5475'),(948363,7,'821-79-5475'),(951726,3,'724-48-4835'),(952558,0,'724-48-4835'),(955578,1,'717-19-7762'),(958979,1,'821-79-5475'),(959870,5,'114-43-2444'),(965124,8,'724-48-4835'),(991545,6,'724-48-4835'),(992098,5,'724-48-4835');
/*!40000 ALTER TABLE `customer_ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CUSTOMER_ID` int NOT NULL,
  `CUSTOMER_NAME` text,
  `EMAIL` text,
  `PHONE_NUMBER` text,
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (6610,'Holbarrow','rgoodlife20@hostgator.com','868-131-4883'),(60997,'Ghio','mbrandel1n@ed.gov','389-453-1225'),(64265,'Whitmarsh','kmeller7@latimes.com','713-980-1942'),(80397,'Ackland','ktembridgeu@free.fr','238-912-0376'),(93991,'Allsupp','asangwin1a@jigsy.com','963-357-9719'),(112042,'Tinman','jbruyett1r@infoseek.co.jp','115-227-8622'),(115234,'Peachman','hstileman27@salon.com','569-314-0338'),(130404,'Gong','gfrancesw@pinterest.com','953-198-5042'),(131297,'Dudin','btullisa@opensource.org','750-119-5963'),(149071,'Goodinson','pclowser1z@weather.com','420-190-9369'),(149242,'Thursfield','randreoney@google.com.hk','441-787-3348'),(169706,'Jeavon','caldgate8@independent.co.uk','792-723-1244'),(172848,'Ovill','prosenthaln@joomla.org','657-555-4395'),(174281,'Hugett','bantunes9@a8.net','686-555-7925'),(176137,'Skip','mcapelowo@virginia.edu','249-548-1068'),(182487,'Organ','brojahn10@bbb.org','772-219-1125'),(191414,'Snaden','awardhough1h@shinystat.com','934-189-3261'),(206727,'Pammenter','cinstrell21@yahoo.com','135-315-3455'),(224889,'Debrick','edemchen1k@hexun.com','312-950-2358'),(243261,'Divisek','wkrammer23@furl.net','857-884-6620'),(296986,'Gosnall','fcarlinoi@chicagotribune.com','169-608-1716'),(299918,'Abramzon','edrewet29@multiply.com','864-140-5148'),(307236,'O\'Scandall','cmardell1s@dion.ne.jp','449-156-5623'),(335088,'Stilgo','wbusson1y@va.gov','345-681-5000'),(336720,'Phelipeau','kmckanex@sciencedirect.com','618-788-7193'),(337667,'Hazeman','odawneyz@skype.com','300-892-3955'),(340618,'Battell','ffairpool22@va.gov','356-378-6453'),(353559,'Tremeer','jpurkess1t@youtu.be','598-105-9157'),(369867,'Wistance','wlukacsr@drupal.org','982-609-5112'),(370264,'Baroux','jroscam1v@google.cn','802-921-7959'),(405463,'Maymond','klemonnier14@rediff.com','144-721-0547'),(420943,'Charsley','emaclise1u@123-reg.co.uk','165-578-5512'),(441804,'','tneaves2b@gnu.org','854-956-9211'),(474616,'Flann','lhaynee@ted.com','632-751-7246'),(475218,'Slack','tneasam1b@jigsy.com','185-722-4716'),(487345,'Larraway','amaccig@google.es','356-896-7330'),(511538,'De Marchi','pvasse3@illinois.edu','210-259-1042'),(522536,'Mohan','wcasine1x@rambler.ru','580-879-2721'),(525723,'McCluney','bcolnet25@weather.com','243-502-3409'),(529807,'Butterworth','rclinnick1f@shop-pro.jp','836-780-2756'),(536200,'Carne','rdyball1o@bigcartel.com','750-726-2954'),(539146,'Hurdiss','lstange15@berkeley.edu','732-702-2278'),(539176,'Chinnick','echesnay28@ucoz.com','944-835-4108'),(546160,'Doding','dramsbottom1m@mashable.com','835-145-9713'),(555530,'O\'Sherin','mbuglerp@unicef.org','649-536-4942'),(595768,'Robeiro','icardenas26@google.co.jp','715-186-4738'),(600102,'Pinnocke','arottery0@si.edu','829-407-5026'),(616867,'Wank','fgaudon18@unblog.fr','631-104-8720'),(631461,'Hubeaux','ttomaszynski12@dell.com','487-868-4439'),(638147,'Lowings','kcassimerb@noaa.gov','321-508-5500'),(655147,'Rosevear','lruff6@hao123.com','364-388-0463'),(656245,'Wharin','afreebury1e@qq.com','953-792-6856'),(664011,'Kenton','epeel16@accuweather.com','866-828-5051'),(666228,'Bulward','chuddlestone1c@digg.com','417-288-6467'),(667669,'Lucia','nloblec@pagesperso-orange.fr','122-395-1234'),(687291,'Charlewood','aturfsj@vk.com','211-438-9742'),(699730,'Roskelly','jduffieldt@irs.gov','781-709-2405'),(711354,'Drew-Clifton','mrossoh@mozilla.org','510-902-6252'),(727602,'Roddick','etippin4@twitpic.com','453-170-9756'),(728671,'Muirhead','jida1i@multiply.com','323-498-7022'),(729499,'Lashford','pbarday1g@cloudflare.com','348-293-7749'),(752338,'Demange','mpanterl@e-recht24.de','333-163-7777'),(767530,'Pook','jpigot17@mac.com','387-239-4401'),(789610,'Elcott','wrawsenf@wisc.edu','264-705-2942'),(792015,'Cumes','lstedman1l@meetup.com','776-326-4284'),(796265,'Pashenkov','ebaumler24@creativecommons.org','326-885-2901'),(859975,'Cowins','pmcdugal2a@vkontakte.ru','254-521-1288'),(863908,'Deinhardt','apiccard1@cpanel.net','696-986-7135'),(874825,'MacAulay','fhuskisson1w@flickr.com','724-170-6622'),(892498,'Kemmey','nbrien2@pbs.org','969-481-4506'),(905923,'Spellward','tattril13@adobe.com','239-224-8604'),(924687,'Duke','nduckerv@indiegogo.com','426-771-9998'),(930211,'Dorrian','dcook1p@joomla.org','204-690-0544'),(935599,'Hassent','jdelloydd@cam.ac.uk','998-635-4051'),(939837,'Trittam','mmillott19@auda.org.au','178-866-5271'),(948363,'Bande','ncline1j@qq.com','535-283-2812'),(951726,'Ambrosoni','llebbonk@hostgator.com','472-464-1807'),(952558,'Rylatt','acallabys@psu.edu','596-244-0870'),(955578,'Salliss','kcrowcroft5@booking.com','561-198-1575'),(958979,'Muselli','hotson1d@devhub.com','511-328-8868'),(959870,'Atkirk','lcrosgrove1q@simplemachines.org','551-591-0242'),(965124,'Weben','johanniganq@odnoklassniki.ru','236-322-2324'),(991545,'Tripony','vchantree11@bing.com','675-394-6198'),(992098,'Stivani','amussettim@prweb.com','405-586-2212');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `PARTS_ID` varchar(20) NOT NULL,
  `PART_NAME` text,
  `DEPARTMENT` text,
  `SALE_PRICE` double DEFAULT NULL,
  PRIMARY KEY (`PARTS_ID`),
  UNIQUE KEY `PARTS_ID_UNIQUE` (`PARTS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES ('1059649462','tire','DRIVETRAIN',365.32),('1072984806','alternator','ELECTRICAL',1322.74),('1094475','dash cam','INTERIOR',253.42),('1243707445','windshield','GLASS',1675.95),('1245459104','spark plug wires','ELECTRICAL',476.64),('1589954661','roof rack','BODY',2064.94),('174019009','battery','ELECTRICAL',931.13),('1773430009','driveshaft','DRIVETRAIN',839.14),('2009063031','ignition coil','ELECTRICAL',146.77),('2316166857','grille','BODY',2762.91),('2477928716','bumper','BODY',653.92),('2519415517','fuel pump','FUEL',2932.66),('3044776899','fuel gauge','FUEL',1264.36),('3145146750','airbag','SAFETY',224.81),('3814043405','fender','BODY',3050.11),('3888475473','glass','GLASS',2961.88),('3967031780','voltage regulator','ELECTRICAL',2315.78),('4036786970','fog light','LIGHTING',2551.9),('4142246550','hinge','BODY',1358.62),('4336538395','door','BODY',1257.91),('4602296440','engine','DRIVETRAIN',3066.28),('4792155789','fuel tank','FUEL',41.21),('4809651347','radio','INTERIOR',530.23),('5417636096','spark plug','ELECTRICAL',2438.41),('5840789895','spoiler','BODY',2150.26),('6691215656','wheel','DRIVETRAIN',162.46),('7064969653','on-star system','SAFETY',2938.37),('7138112467','distributor','ELECTRICAL',2952.98),('7376740171','hood','BODY',1371.47),('7708694779','anti-roll bar','SAFETY',2134.45),('7820090766','transmission','FUEL',3173.34),('8004494544','rear seat','INTERIOR',2438.39),('8323421021','starter','DRIVETRAIN',2600.5),('8433846132','water pump','DRIVETRAIN',323.29),('888750897','battery cover','ELECTRICAL',500.13),('8942581307','pillar','BODY',370.62),('9675303735','rear window','GLASS',1667.55);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts_supplier`
--

DROP TABLE IF EXISTS `parts_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts_supplier` (
  `PARTS_SUPPLIER` text,
  `MAKE` text,
  `MODEL` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts_supplier`
--

LOCK TABLES `parts_supplier` WRITE;
/*!40000 ALTER TABLE `parts_supplier` DISABLE KEYS */;
INSERT INTO `parts_supplier` VALUES ('Nienow Inc','Toyota','Supra'),('Skiles-Schroeder','Toyota','MR2'),('King-Mueller','Toyota','Avalon'),('Reilly LLC','Toyota','Land Cruiser'),('Dickens, Aufderhar and Jacobi','Toyota','Corolla'),('Leannon and Sons','Lexus','ES'),('Hane, Schumm and Bradtke','Toyota','Paseo'),('Sporer, Ferry and Stroman','Lexus','GS'),('Murray, West and Batz','Toyota','Camry'),('Torp-Muller','Lexus','LS'),('Conroy LLC','Toyota','RAV4'),('Hand Group','Toyota','Highlander'),('Bosco, Labadie and Hettinger','Toyota','Corolla'),('Abshire LLC','Toyota','Camry'),('Koelpin Inc','Lexus','LX'),('Beahan-Daugherty','Toyota','Yaris'),('Emard, Durgan and Reichert','Toyota','Solara'),('Hayes and Sons','Lexus','HS'),('Moen LLC','Toyota','T100 Xtra'),('Hermann, Nader and Schowalter','Toyota','Tacoma Xtra'),('Huels, Welch and Powlowski','Toyota','Prius'),('Bayer-Morar','Toyota','Sienna'),('Johnston Inc','Lexus','SC'),('Wolf-O\'Connell','Lexus','IS'),('Hackett, D\'Amore and Schmidt','Lexus','GS'),('Huels, McClure and Oberbrunner','Lexus','ES'),('Grimes, Bruen and Jacobson','Lexus','LS'),('Mayert LLC','Toyota','Camry Hybrid'),('Aufderhar-Schaden','Lexus','LS'),('Hintz Group','Toyota','Land Cruiser'),('Torphy-Howell','Toyota','Corolla'),('Hermann-Hintz','Toyota','T100 Xtra'),('Feil LLC','Toyota','Tacoma Xtra'),('Lind-Watsica','Toyota','Highlander'),('Bogan-Pollich','Lexus','LX'),('Mohr LLC','Toyota','RAV4'),('Bartoletti LLC','Toyota','Sienna'),('Waelchi-Swaniawski','Toyota','Sienna'),('Lowe Inc','Toyota','MR2'),('Pouros LLC','Toyota','Land Cruiser'),('Olson Group','Toyota','Corolla'),('Treutel-Walker','Toyota','Sienna'),('Nienow Inc','Toyota','Corolla'),('Bernier and Sons','Toyota','4Runner'),('Legros-Kutch','Toyota','Solara'),('Cruickshank, Shanahan and Ortiz','Toyota','Sequoia'),('Paucek-O\'Conner','Lexus','IS'),('Heller Inc','Toyota','Sienna'),('Sauer-Lubowitz','Toyota','Xtra'),('Bins-Watsica','Toyota','Tacoma'),('Boyle, Crist and VonRueden','Lexus','IS F'),('Ferry, Lynch and Little','Lexus','ES'),('Senger Group','Toyota','Tercel'),('Hansen-Kuhic','Toyota','Solara'),('Harris, Olson and Douglas','Toyota','Highlander'),('Cole-Schinner','Toyota','4Runner'),('Treutel and Sons','Toyota','T100'),('Herzog Group','Toyota','Avalon'),('Orn-Jacobs','Toyota','Solara'),('Witting Group','Toyota','4Runner'),('Bernhard, Schaefer and Reichert','Toyota','Tacoma'),('Rath, Lind and Bode','Toyota','Matrix'),('King-Medhurst','Lexus','GS'),('Cremin LLC','Lexus','LX'),('Moen-Schaefer','Lexus','RX Hybrid'),('Koss Group','Toyota','Tundra'),('Schultz, Marquardt and Turner','Toyota','Venza'),('Wolff, Hirthe and O\'Conner','Toyota','Land Cruiser'),('Tillman, Kunze and Wintheiser','Toyota','Avalon'),('Haley-Jast','Toyota','Celica'),('Raynor, Simonis and Williamson','Toyota','Sienna'),('Bins and Sons','Toyota','Land Cruiser'),('Baumbach Group','Lexus','GS'),('Koss, Rau and Kerluke','Toyota','FJ Cruiser'),('Thiel, Fahey and Cummerata','Toyota','Camry Hybrid'),('Mertz-Effertz','Lexus','LX'),('Hagenes-Beahan','Toyota','Corolla'),('Beahan-Daugherty','Lexus','IS'),('Kling, Christiansen and Rowe','Toyota','4Runner'),('Altenwerth, Mueller and Ziemann','Toyota','Corolla'),('Lebsack Group','Lexus','RX Hybrid'),('Boyle-Mitchell','Lexus','ES'),('Jones-Zemlak','Toyota','Tacoma Xtra'),('Abshire-Cormier','','');
/*!40000 ALTER TABLE `parts_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant_info`
--

DROP TABLE IF EXISTS `plant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plant_info` (
  `LOCATION_CODE` char(3) NOT NULL,
  `MAKE` text,
  PRIMARY KEY (`LOCATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant_info`
--

LOCK TABLES `plant_info` WRITE;
/*!40000 ALTER TABLE `plant_info` DISABLE KEYS */;
INSERT INTO `plant_info` VALUES ('DAL','Lexus'),('DEN','Toyota'),('SEA','Lexus'),('SFO','Lexus');
/*!40000 ALTER TABLE `plant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repair_instructions`
--

DROP TABLE IF EXISTS `repair_instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repair_instructions` (
  `PROCESS_ID` varchar(20) NOT NULL,
  `PARTS_ID` varchar(20) DEFAULT NULL,
  `PART_NAME` text,
  `PROCESS_DESCRIPTION` text,
  PRIMARY KEY (`PROCESS_ID`),
  KEY `PARTS_ID_idx` (`PARTS_ID`),
  CONSTRAINT `PARTS_ID` FOREIGN KEY (`PARTS_ID`) REFERENCES `parts` (`PARTS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repair_instructions`
--

LOCK TABLES `repair_instructions` WRITE;
/*!40000 ALTER TABLE `repair_instructions` DISABLE KEYS */;
INSERT INTO `repair_instructions` VALUES ('0069-0173','3967031780','voltage regulator','Pros rep atrial def-opn'),('0115-1316','4142246550','hinge','CV cath plcmt w guidance'),('0172-2407','5417636096','spark plug','Renal repair NEC'),('0179-0089','4602296440','engine','GI scan & isotope funct'),('0338-0411','1589954661','roof rack','Cde for calculus remov'),('0378-2150','4809651347','radio','Cervical lymphangiogram'),('0440-7135','2519415517','fuel pump','Dx proc fetus/amnion NEC'),('0456-1550','174019009','battery','GI scan & isotope funct'),('11559-006','4036786970','fog light','Oth cardiac mon output'),('17630-2012','7708694779','anti-roll bar','Mix venous bld gas meas'),('33261-083','1094475','dash cam','Surg induct labor NEC'),('35356-166','3044776899','fuel gauge','Trabecul carneae cord op'),('36987-1595','2316166857','grille','Lid reconst w muc graft'),('37205-318','4336538395','door','Part excis pituitary NOS'),('42248-129','8433846132','water pump','Tympanic injection'),('43269-806','6691215656','wheel','Gastroenterostomy NEC'),('49288-0016','7064969653','on-star system','Abltn renal les/tiss NEC'),('49527-989','9675303735','rear window','Pituitary gland incision'),('50730-3201','2009063031','ignition coil','Bladder exstrophy repair'),('52125-129','4792155789','fuel tank','Urterost/urete cth irrig'),('52125-661','3145146750','airbag','Dressing of wound NEC'),('52389-162','2477928716','bumper','Transplant spermat cord'),('52686-260','1059649462','tire','Refus drs/drslmb pst/pst'),('53150-871','8004494544','rear seat','Brnc thrmplsty,ablt mscl'),('55154-1177','3888475473','glass','Endo polpectomy lrge int'),('55154-4962','8323421021','starter','Open periph nerve biopsy'),('55154-6965','1072984806','alternator','Spinal cord adhesiolysis'),('57664-503','888750897','battery cover','Jt structur division NOS'),('58668-2201','7820090766','transmission','Heart repair revision'),('59779-833','5840789895','spoiler','Achillotenotomy'),('60429-122','1243707445','windshield','Dental x-ray NEC'),('60512-8029','1773430009','driveshaft','Cls reduc-sep epiphy NOS'),('63187-093','7376740171','hood','Uterine art emb w coils'),('63739-449','3814043405','fender','Fus/refus 4-8 vertebrae'),('64942-1188','7138112467','distributor','Remove corneal implant'),('65923-009','8942581307','pillar','Repair gb laceration'),('68462-127','1245459104','spark plug wires','Destruct larynx les NEC');
/*!40000 ALTER TABLE `repair_instructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `CUSTOMER_NAME` text,
  `CUSTOMER_ID` varchar(6) NOT NULL,
  `MAKE` text,
  `MODEL` text,
  `MSRP` double DEFAULT NULL,
  `TRANSACTION_ID` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `TRANSACTION_ID_idx` (`TRANSACTION_ID`),
  CONSTRAINT `TRANSACTION_ID` FOREIGN KEY (`TRANSACTION_ID`) REFERENCES `sales_report` (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('Tinman','112042','Lexus','LX',44550.11,'4d0'),('Peachman','115234','Toyota','Corolla',175787.49,'4a6'),('Gong','130404','Toyota','Tacoma Xtra',32361.48,'58f'),('Dudin','131297','Toyota','RAV4',24022.95,'4a1'),('Goodinson','149071','Toyota','Land Cruiser',131519.74,'21d'),('Thursfield','149242','Lexus','LX',123622.1,'242'),('Jeavon','169706','Toyota','Camry',164641.99,'bd5'),('Ovill','172848','Lexus','IS',107910.45,'c12'),('Hugett','174281','Lexus','LS',51056.25,'i75'),('Skip','176137','Lexus','GS',179622.41,'26m'),('Organ','182487','Toyota','Sienna',162237.86,'129'),('Snaden','191414','Toyota','Solara',193966.86,'baf'),('Pammenter','206727','Toyota','FJ Cruiser',92935.61,'195'),('Debrick','224889','Toyota','T100',69158.57,'13'),('Divisek','243261','Lexus','LX',145805.04,'787'),('Gosnall','296986','Toyota','T100 Xtra',118023.7,'4db'),('Abramzon','299918','Lexus','ES',196797.28,'3a0'),('O\'Scandall','307236','Lexus','RX Hybrid',156550.16,'8f5'),('Stilgo','335088','Toyota','Sienna',41244.49,'c5d'),('Phelipeau','336720','Toyota','Highlander',149411.31,'183'),('Hazeman','337667','Toyota','RAV4',144890.01,'379'),('Battell','340618','Toyota','Camry Hybrid',103810.68,'af7'),('Tremeer','353559','Toyota','Tundra',103932.61,'497'),('Wistance','369867','Toyota','Camry Hybrid',157605.97,'32e'),('Baroux','370264','Toyota','Land Cruiser',153134.75,'e84'),('Maymond','405463','Toyota','Corolla',185184.38,'edc'),('Charsley','420943','Toyota','Venza',177365.35,'673'),('Flann','474616','Lexus','LX',185828.01,'79a'),('Slack','475218','Toyota','Sienna',152756.82,'56e'),('Larraway','487345','Toyota','Solara',119952.22,'f4f'),('De Marchi','511538','Toyota','Land Cruiser',98031.9,'03e'),('Mohan','522536','Toyota','Celica',111904.48,'90d'),('McCluney','525723','Lexus','IS',108632.28,'ba2'),('Butterworth','529807','Lexus','ES',20048.63,'54f'),('Carne','536200','Toyota','Tacoma',88052.98,'7c2'),('Hurdiss','539146','Toyota','Sienna',162329.09,'ed4'),('Chinnick','539176','Lexus','RX Hybrid',62540.66,'16e'),('Doding','546160','Toyota','Solara',190638.75,'ace'),('O\'Sherin','555530','Lexus','ES',170972.54,'bec'),('Robeiro','595768','Toyota','4Runner',89472.14,'b6b'),('Pinnocke','600102','Toyota','Supra',94640.06,'a68'),('Ghio','60997','Toyota','4Runner',91380.62,'928'),('Wank','616867','Toyota','Solara',100659.75,'dce'),('Hubeaux','631461','Toyota','MR2',69333,'916'),('Lowings','638147','Toyota','Highlander',92723.6,'abc'),('Whitmarsh','64265','Lexus','GS',30470.41,'ddf'),('Rosevear','655147','Toyota','Paseo',79279.85,'9ff'),('Wharin','656245','Lexus','IS F',40296.47,'c98'),('Holbarrow','6610','Lexus','GS',36359.78,'55a'),('Kenton','664011','Toyota','Corolla',76756.37,'d69'),('Bulward','666228','Toyota','Xtra',82110.41,'e79'),('Lucia','667669','Toyota','Corolla',100786.73,'p48'),('Charlewood','687291','Toyota','Tacoma Xtra',189447.52,'f7c'),('Roskelly','699730','Toyota','Land Cruiser',108294.94,'f69'),('Drew-Clifton','711354','Lexus','HS',161154.47,'7dc'),('Roddick','727602','Toyota','Corolla',115559.39,'f8a'),('Muirhead','728671','Toyota','Highlander',71941.31,'8fb'),('Lashford','729499','Toyota','Tercel',165956.71,'e48'),('Demange','752338','Toyota','Sienna',67034.49,'ddb'),('Pook','767530','Toyota','4Runner',58792.48,'f7b'),('Elcott','789610','Toyota','Yaris',109361.61,'0eb'),('Cumes','792015','Toyota','Avalon',86637.83,'507'),('Pashenkov','796265','Toyota','Corolla',31599.34,'993'),('Ackland','80397','Toyota','Corolla',33415.87,'335'),('Cowins','859975','Toyota','Tacoma Xtra',120263.61,'d45'),('Deinhardt','863908','Toyota','MR2',30409.32,'77d'),('MacAulay','874825','Toyota','Avalon',60850.64,'990'),('Kemmey','892498','Toyota','Avalon',174799.38,'b00'),('Spellward','905923','Toyota','Land Cruiser',67863.92,'788'),('Duke','924687','Toyota','T100 Xtra',108373.64,'f40'),('Dorrian','930211','Toyota','Matrix',60765.77,'102'),('Hassent','935599','Toyota','Camry',166813.98,'01f'),('Trittam','939837','Toyota','Sequoia',152017.17,'bb1'),('Allsupp','93991','Lexus','IS',137213.01,'7ad'),('Bande','948363','Toyota','4Runner',53165.41,'a0f'),('Ambrosoni','951726','Toyota','Prius',173862.75,'d6a'),('Rylatt','952558','Lexus','LS',124398.84,'c30'),('Salliss','955578','Lexus','ES',169209,'4a3'),('Muselli','958979','Toyota','Tacoma',88441.99,'76c'),('Atkirk','959870','Lexus','GS',148714.75,'f91'),('Weben','965124','Lexus','LS',158215.3,'71f'),('Tripony','991545','Toyota','Sienna',157901.07,'ae2'),('Stivani','992098','Lexus','SC',41595.83,'ce5');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_report`
--

DROP TABLE IF EXISTS `sales_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_report` (
  `TRANSACTION_ID` varchar(3) NOT NULL,
  `EMPLOYEE_ID` text,
  `MSRP` double DEFAULT NULL,
  `PROFIT_MARGIN` double DEFAULT NULL,
  `VIN` text,
  PRIMARY KEY (`TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_report`
--

LOCK TABLES `sales_report` WRITE;
/*!40000 ALTER TABLE `sales_report` DISABLE KEYS */;
INSERT INTO `sales_report` VALUES ('01f','349-40-9551',166813.98,3541.17,'VNKKTUD33FA322640'),('03e','196-01-5957',98031.9,1014.83,'3VWML7AJ4BM483823'),('0eb','724-48-4835',109361.61,7688.89,'2C4RDGBG7DR500831'),('102','208-72-6217',60765.77,2195.01,'1FTMF1EW0AF562866'),('129','161-55-0441',162237.86,6330.05,'3C3CFFCR5ET350960'),('13','114-43-2444',69158.57,6859.48,'3VW1K7AJ2DM421832'),('16e','402-02-3839',62540.66,6294.9,'1N6AD0CW6EN356369'),('183','678-55-0737',149411.31,7266.05,'KNDMG4C7XE6612675'),('195','196-24-7911',92935.61,621.19,'WAUBF48H78K522565'),('21d','468-98-1572',131519.74,7481.44,'1LNHL9DK9DG892512'),('242','434-68-7289',123622.1,9466.75,'1C3ADEBZ3DV152644'),('26m','126-23-7656',179622.41,9940.76,'5UXZV4C58CL296751'),('32e','763-61-3274',157605.97,8038.19,'5UXFB53504L514197'),('335','809-70-6619',33415.87,3877.73,'1B3CB5HA4AD835905'),('379','384-83-8627',144890.01,3129.2,'JHMZF1C68ES010555'),('3a0','605-76-7216',196797.28,1752.44,'SCBZK25EX2C494163'),('497','817-22-0998',103932.61,8691.16,'2G4WS55J041031502'),('4a1','762-09-9871',24022.95,4360.67,'WAUMFAFL5AN368764'),('4a3','113-73-2191',169209,1551.14,'WAURD68D71A237017'),('4a6','518-93-2180',175787.49,561.37,'SCBDC4BLXAC877539'),('4d0','117-35-0559',44550.11,8406.01,'WBALL5C51FP947103'),('4db','271-74-0571',118023.7,9656.86,'YV1902FH0D1894320'),('507','840-63-9246',86637.83,3503.45,'WAUMFAFL9DN238829'),('54f','784-22-8474',20048.63,4333.91,'1N6AD0CW4EN792685'),('55a','122-37-2433',36359.78,6777.45,'3GYT4LEF0DG576098'),('56e','395-63-4731',152756.82,9398.72,'WAUDH78E06A020199'),('58f','210-37-4791',32361.48,2975.21,'JH4KC1F31EC123432'),('673','260-30-1697',177365.35,7400.65,'2HNYB1H60DH101322'),('71f','135-63-9537',158215.3,8704.04,'2FMDK4AC3AB298399'),('76c','681-43-6611',88441.99,916.06,'1GYFC26239R587125'),('77d','717-19-7762',30409.32,6501.04,'WAULD54BX4N046564'),('787','525-67-2605',145805.04,7173.92,'1C3BC7EGXBN372762'),('788','130-49-8561',67863.92,3081.9,'1G6D25ED2B0722208'),('79a','407-13-4979',185828.01,4902.4,'5UXFE4C52AL930510'),('7ad','469-32-8212',137213.01,3211.95,'WAUMFAFR5EA744672'),('7c2','564-50-5412',88052.98,9157.25,'WBA3K5C5XEF142630'),('7dc','896-45-4785',161154.47,5793.48,'1G4GC5G32EF046562'),('8f5','300-69-6782',156550.16,8249.61,'WAUKF98E68A480866'),('8fb','434-66-0320',71941.31,393.47,'5N1AN0NU4BC695548'),('90d','526-40-7481',111904.48,3358.92,'WBAPH53589A357877'),('916','821-79-5475',69333,1111.83,'SCBLF34F22C694576'),('928','745-35-5551',91380.62,6676.2,'19XFB4F22FE328444'),('990','891-12-0422',60850.64,7156.17,'JTDKDTB39D1717552'),('993','567-50-8797',31599.34,2342.26,'1FTFW1E88AK170767'),('9ff','487-62-1435',79279.85,2279.07,'5NPDH4AE3EH820935'),('a0f','466-48-1553',53165.41,4487.55,'1GYFC56219R758018'),('a68','769-91-2633',94640.06,5521.86,'JH4CL96808C874458'),('abc','469-99-0995',92723.6,3460.95,'1G6DM8E31D0363553'),('ace','149-03-0451',190638.75,6551.5,'WAURD68D92A748908'),('ae2','410-73-3639',157901.07,2446.05,'WAUD2AFD9DN878091'),('af7','477-65-0715',103810.68,6078.91,'JN1CV6EK8AM593552'),('b00','582-03-1176',174799.38,6445.79,'1G6AR5SX2E0577690'),('b6b','755-89-5394',89472.14,4089.24,'3MZBM1L76EM188875'),('ba2','236-33-6407',108632.28,9728.99,'19VDE1F31FE204518'),('baf','424-21-9716',193966.86,9258.48,'5GADT13S252275183'),('bb1','391-20-9821',152017.17,9719.98,'1FMJK1G56EE220672'),('bd5','137-59-5456',164641.99,4644.1,'3GTU1YEJXDG080780'),('bec','743-48-4189',170972.54,4923.28,'2C3CDXBGXCH852171'),('c12','388-86-1788',107910.45,5795.66,'1G6DD67V880149569'),('c30','502-27-7450',124398.84,9163.61,'4A31K5DF6BE271691'),('c5d','299-11-2302',41244.49,5172.27,'JTDKTUD38ED598818'),('c98','768-46-7810',40296.47,1214.74,'WA1DGBFE0FD258896'),('ce5','724-40-2107',41595.83,4800.17,'SALFR2BG9DH865698'),('d45','708-07-2158',120263.61,8106.32,'JH4KB2F57AC594473'),('d69','296-69-6462',76756.37,111.33,'1GYEC63N95R072884'),('d6a','606-91-3250',173862.75,868.56,'WBALL5C51EP504898'),('dce','711-16-5956',100659.75,3608.57,'KNAFK4A69F5862771'),('ddb','273-84-6700',67034.49,9225.16,'1GKS1AE05ER533876'),('ddf','200-83-3975',30470.41,8168.81,'2G4GT5GV8C9516357'),('e48','476-78-2060',165956.71,8489.12,'JTDKDTB33E1007306'),('e79','127-28-2192',82110.41,3603.53,'JTDKDTB33D1426075'),('e84','403-57-0116',153134.75,6578.88,'3D7LT2ET1AG601133'),('ed4','343-18-0857',162329.09,9480.66,'WDDLJ7DB4CA465304'),('edc','827-19-3566',185184.38,586.18,'1FMCU4K37BK177130'),('f40','881-84-0221',108373.64,5352.39,'1FTWX3A50AE717677'),('f4f','546-48-3813',119952.22,5381.72,'2HNYD2H84DH012483'),('f69','604-49-0494',108294.94,6837.51,'JA4AS2AW8BU091568'),('f7b','210-64-1342',58792.48,2948,'5UXFB33512L181249'),('f7c','270-43-8265',189447.52,171.5,'5TFCW5F14DX005580'),('f8a','178-68-0092',115559.39,7670.9,'5UXFE83519L529789'),('f91','838-51-5323',148714.75,6916.68,'1G4GJ5E37CF868781'),('i75','284-34-4250',51056.25,6500.02,'JM1CR2W31A0387319'),('p48','491-82-5357',100786.73,7098.01,'SCBGU3ZA4EC748680');
/*!40000 ALTER TABLE `sales_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technician`
--

DROP TABLE IF EXISTS `technician`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technician` (
  `EMPLOYEE_ID` text,
  `EMPLOYEE_NAME` text,
  `DEPARTMENT` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician`
--

LOCK TABLES `technician` WRITE;
/*!40000 ALTER TABLE `technician` DISABLE KEYS */;
INSERT INTO `technician` VALUES ('530-995-6780','Heditch','BODY'),('110-995-7186','Tankus','ELECTRICAL'),('645-557-3775','Mourge','LIGHTING'),('619-421-9830','Poschel','GLASS'),('637-581-4912','Kolodziejski','ELECTRICAL'),('585-296-2847','Tysack','DRIVETRAIN'),('138-125-5598','Whichelow','LIGHTING'),('413-378-6069','Leedes','DRIVETRAIN'),('746-330-3137','Fines','DRIVETRAIN'),('709-313-1198','Dettmar','BODY'),('813-672-7442','Dudin','BODY'),('483-217-2147','Gerrish','INTERIOR'),('406-471-0705','Prettyjohn','ELECTRICAL'),('319-220-2943','Nudde','INTERIOR'),('313-423-1680','Learoyd','FUEL'),('183-346-0351','Holyard','DRIVETRAIN'),('156-976-0175','O\'Drought','ELECTRICAL'),('937-397-0988','Wilmington','BODY'),('355-962-6053','Luker','DRIVETRAIN'),('427-509-4496','Dannel','GLASS'),('129-872-7094','Linde','DRIVETRAIN'),('411-724-9844','Stayte','SAFETY'),('664-368-9196','Jouanot','ELECTRICAL'),('904-346-9418','Ayliff','INTERIOR'),('764-488-3753','Poxon','ELECTRICAL');
/*!40000 ALTER TABLE `technician` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08  0:30:36
