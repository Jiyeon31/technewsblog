-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: tech_note_blog_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(255) NOT NULL,
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Nunc rhoncus dui vel sem.',1,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(2,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',8,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(3,'Aliquam erat volutpat. In congue.',10,3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(4,'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',18,3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(5,'In hac habitasse platea dictumst.',5,7,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(6,'Vivamus vestibulum sagittis sapien.',20,1,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(7,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.',7,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(8,'Sed vel enim sit amet nunc viverra dapibus.',4,7,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(9,'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.',12,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(10,'Morbi a ipsum.',20,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(11,'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',14,3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(12,'Donec ut mauris eget massa tempor convallis.',4,5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(13,'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.',9,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(14,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',14,5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(15,'Quisque porta volutpat erat.',2,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(16,'Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',2,8,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(17,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.',20,2,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(18,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.',11,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(19,'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.',13,5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(20,'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.',16,9,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(21,'Curabitur convallis.',4,6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(22,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',10,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(23,'Morbi non quam nec dui luctus rutrum.',8,3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(24,'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.',10,8,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(25,'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.',15,1,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(26,'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.',3,5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(27,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',15,1,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(28,'Nam tristique tortor eu pede.',16,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(29,'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.',18,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(30,'Proin eu mi. Nulla ac enim.',10,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(31,'Sed ante. Vivamus tortor.',5,7,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(32,'Aliquam quis turpis eget elit sodales scelerisque.',1,10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(33,'Donec quis orci eget orci vehicula condimentum.',19,3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(34,'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',3,5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(35,'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.',14,10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(36,'Maecenas ut massa quis augue luctus tincidunt.',8,10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(37,'Cras in purus eu magna vulputate luctus.',11,10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(38,'Etiam vel augue. Vestibulum rutrum rutrum neque.',5,8,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(39,'Proin at turpis a pede posuere nonummy.',19,8,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(40,'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.',19,9,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(41,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',4,5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(42,'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.',11,2,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(43,'Vestibulum ac est lacinia nisi venenatis tristique.',6,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(44,'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.',6,9,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(45,'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.',9,7,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(46,'Integer ac leo. Pellentesque ultrices mattis odio.',19,4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(47,'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',1,10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(48,'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.',19,2,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(49,'Proin risus. Praesent lectus.',1,10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(50,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.',12,10,'2022-04-21 12:22:11','2022-04-21 12:22:11');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `post_url` varchar(255) NOT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Donec posuere metus vitae ipsum.','https://getbootstrap.com/docs/5.1/layout/columns/',10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(2,'Morbi non quam nec dui luctus rutrum.','https://www.nasa.gov/multimedia/nasatv/index.html#public',8,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(3,'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.','https://www.javascript.com/',1,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(4,'Nunc purus.','https://www.geeksforgeeks.org/node-js-split-function/',4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(5,'Pellentesque eget nunc.','https://github.com/',7,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.','https://coding-boot-camp.github.io/full-stack/mysql/mysql-installation-guide',4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(7,'In hac habitasse platea dictumst.','https://devcenter.heroku.com/articles/git',1,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(8,'Morbi non quam nec dui luctus rutrum.','https://www.google.com/',1,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(9,'Duis ac nibh.','https://www.mit.edu/',9,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(10,'Curabitur at ipsum ac tellus semper interdum.','https://www.columbia.edu/',5,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(11,'In hac habitasse platea dictumst.','https://www.nytimes.com/',3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(12,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','https://www.w3schools.com/',10,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(13,'Donec dapibus.','https://instagram.com/',8,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(14,'Nulla tellus.','https://www.mysql.com/',3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(15,'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.','https://expressjs.com/',3,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(16,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.','https://nodejs.org/en/',7,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(17,'In hac habitasse platea dictumst.','https://en.wikipedia.org/wiki/Main_Page',6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(18,'Etiam justo.','https://www.salesforce.com/',4,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(19,'Nulla ut erat id mauris vulputate elementum.','https://www.couchbase.com/',6,'2022-04-21 12:22:11','2022-04-21 12:22:11'),(20,'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.','https://www.npmjs.com/package/mysql2',7,'2022-04-21 12:22:11','2022-04-21 12:22:11');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('7pNsBlazck-4nVA91PK1Dk-njkvArKbZ','2022-04-21 12:32:07','{\"cookie\":{\"originalMaxAge\":52143,\"expires\":\"2022-04-21T12:32:07.342Z\",\"httpOnly\":true,\"path\":\"/\"}}','2022-04-21 12:31:15','2022-04-21 12:31:15'),('H3yiMvsd3jFN4R4S0HtIKNW5uYVyrpzH','2022-04-21 12:23:14','{\"cookie\":{\"originalMaxAge\":55880,\"expires\":\"2022-04-21T12:23:14.252Z\",\"httpOnly\":true,\"path\":\"/\"}}','2022-04-21 12:22:18','2022-04-21 12:22:18');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'iboddam2','cstoneman2@last.fm','$2b$10$chzECjkSJt.CDVJDDoJSlOB3rUOGDq0eP9DT3bewuGwx7iJOJ.Nmm'),(2,'dstanmer3','ihellier3@goo.ne.jp','$2b$10$6NDb8wMQcSgBKXob4tn6E.g7YK53XUzs26dek6.90cZmvTPVm6evC'),(3,'alesmonde0','nwestnedge0@cbc.ca','$2b$10$VbmpNeDDaItv29zuxE3Wm.el79llK7hJ6obTr2fjGiyHR261IpHZa'),(4,'jwilloughway1','rmebes1@sogou.com','$2b$10$VrJfJ86v39kaRncE3oQhiO.2Zqw99ik9TVR46MVYVu69D6I2FjXEK'),(5,'djiri4','gmidgley4@weather.com','$2b$10$6PFgzV3F/UFAkf0wAEOdT.oAbT6JGOHT2t1ex08EaKEsw43DjARAa'),(6,'msprague5','larnout5@imdb.com','$2b$10$SyfoswgJMV7ZZ79m/RleremwOecIDvr8HweaVUu.C0lek86Wrq.Oi'),(7,'mpergens6','hnapleton6@feedburner.com','$2b$10$Rbr.uzMKjHeZfnUG0d6zUeHTBKA47dBgge9/R2IsGEuVpbqr07qn.'),(8,'tpenniell7','kperigo7@china.com.cn','$2b$10$4TdqISdy8.zocbBGqb7JwOVTAudAYwtUYweoqvS2XO6DMZ7kyJVry'),(9,'msabbins8','lmongain8@google.ru','$2b$10$SE2v/TZFHo.zf24gmBHg/OvkrW0pTDe8nNbNRpZwbz2dy8Xnj809G'),(10,'jmacarthur9','bsteen9@epa.gov','$2b$10$7GjULcsUWg3NYASGWJGWXeC29GGa9xRC6JwDveKT0a9s20MzxXHzG');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vote_post_id_user_id_unique` (`user_id`,`post_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (2,1,8),(26,1,15),(20,1,16),(39,1,17),(37,2,13),(32,2,18),(47,3,4),(6,3,16),(11,3,17),(9,3,18),(7,4,7),(22,4,10),(31,4,15),(44,5,2),(42,5,6),(14,5,11),(24,5,16),(15,6,1),(28,6,3),(19,6,4),(18,6,7),(13,6,10),(43,6,12),(29,6,13),(45,6,14),(17,6,15),(25,6,17),(30,7,1),(27,7,13),(35,8,1),(3,8,12),(46,8,18),(4,8,19),(5,9,3),(33,9,10),(10,9,16),(16,9,18),(1,9,19),(38,9,20),(12,10,2),(41,10,3),(23,10,5),(8,10,7),(36,10,8),(40,10,9),(34,10,15),(21,10,18);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21  8:52:40
