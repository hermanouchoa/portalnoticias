-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: portal_noticias
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticias` (
  `id_noticia` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(500) DEFAULT NULL,
  `noticia` longtext,
  `dt_noticia` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resumo` varchar(100) DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `dt_criacao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Noticia Um','Uma noticia','2024-02-27 11:42:58',NULL,NULL,'2024-02-28 07:20:31'),(2,'Noticia da Hora','Agora é 11:42','2024-02-27 11:42:58',NULL,NULL,'2024-02-28 07:20:31'),(3,'aaaa','bbbb','2024-02-27 13:13:16','ddfff','fddddd','2024-02-28 07:20:31'),(4,'noticias as 13:327','são 13:27\r\n','2024-02-27 13:28:28','adas adas','aaaaa','2024-02-28 07:20:31'),(5,'noticia bomba','bummmmm','2024-02-27 13:32:34','sfsfd','dfdddd','2024-02-28 07:20:31'),(6,'últimas noticias','a noticia mais nova\r\n','2024-02-27 19:23:11','rrrr','auuu','2024-02-28 07:20:31'),(7,'notcia com novos campos','kljçdkljas','2024-02-28 00:00:00','resumo','autor','2024-02-28 07:24:33'),(8,'jkfhgasdljkfha','kljhsadkjla','2024-02-27 00:00:00','jdahsjkk jlkj çlkjçlkjlkj','kkkkkk','2024-02-28 12:52:41'),(9,'ljçkjçkj','çkljkjk','2024-02-08 00:00:00','jkljçkjçk jkj çkj','gfjgf j','2024-02-29 08:04:42'),(10,' djasjd açlkdjaçlkjdas','ukf yhçlfkjsl~kf açl0dkha ~çldkhas','2024-03-01 00:00:00','lkjjadçklajsd ','alkdh aklçdjasçkçjh','2024-03-01 07:17:12');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'portal_noticias'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06  7:07:34
