-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: fashionhub
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Women Formal'),(2,'Women Casual'),(3,'Men Formal'),(4,'Men Casual'),(5,'Accessories');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int NOT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,4,'Women\'s Grommet Cutout Cropped Hoodie Top','Grommet eyelet cutout front high low hoodie for women',29.99,50,'https://ucarecdn.com/d588d187-585b-4be1-b1cf-6c0af9c19295/image1.jpg'),(2,4,'Women\'s Shirt Gown','Casual shirt gown for women',49.99,30,'https://ucarecdn.com/19550ed8-d5c0-4314-b5e7-2500a814e393/image2.jpg'),(3,2,'Women\\s Square Neck Cropped Top','Square neck cropped top for women',19.99,40,'https://ucarecdn.com/116f795d-2435-4aed-9636-151085cdbdb0/image3.jpg'),(4,1,'Women\'s Coperate Gown','Coperate black gown for women',59.99,20,'https://ucarecdn.com/997ce651-98ad-490d-8f0a-212f1b88835b/image4.jpg'),(5,2,'Women\'s Cropped Top','Classic different types of women cropped top',17.99,60,'https://ucarecdn.com/e832c63a-26d7-4bea-b211-c5d5635baed7/image5.jpg'),(6,4,'Men\'s Crochet Beanie Hat','Crochet black beanie hat for both men and women',10.99,25,'https://ucarecdn.com/1dd8105e-5077-432d-a647-238598d2fbbd/image6.jpg'),(7,3,'Men\'s Baggy Jean Trouser','Baggy jean trouser for men',54.99,35,'https://ucarecdn.com/654c4e07-f700-4089-9284-45ecac998bc4/image7.jpg'),(8,3,'Men\'s Baggy Jean Trouser','Baggy jean trouser for men',49.99,15,'https://ucarecdn.com/a679d759-df6c-4c82-84fc-411f4c3fdfcd/image8.jpg'),(9,2,'Unisex\'s Bricks Short Sleeves Sweater','Comfy bricks pattern short sleeves sweater',59.99,45,'https://ucarecdn.com/b45c3a17-34ed-4446-95e5-edc4a65dd2ad/image9.jpg'),(10,2,'Women\'s Boot Cut Jeans','Casual boot cut jeans for women',29.99,30,'https://ucarecdn.com/80155b64-00db-4b30-b4ef-2ed0d973f9ad/image10.jpg'),(11,4,'Women\'s Waistcoat Gown','Coffee brown waistcoat gown for women',39.99,25,'https://ucarecdn.com/3d6dd783-eb68-4b8a-bda1-c615e28dda85/image11.jpg'),(12,2,'Women\'s Crochet Cropped Cardigan',' Crochet granny square cropped cardigan for women',74.99,35,'https://ucarecdn.com/4e6edc38-0dab-4755-9754-dcf8493b5ddd/image12.jpg'),(13,2,'Women\'s Cropped Top And Palazzo Pants','Two-piece dress for women',49.99,40,'https://ucarecdn.com/dfd3b718-2300-456a-9da4-c8efb4011a99/image13.jpg'),(14,2,'Women\'s Coperate Pant Trousers','Different styles of cooperate pant trousers for women',29.99,30,'https://ucarecdn.com/a59c6d79-1baf-412f-bf78-c7d7a7e31712/image14.jpg'),(15,2,'Women\'s Drawstrings Top','Elegant lilac drawstrings top for women',19.99,20,'https://ucarecdn.com/33973747-3d64-4523-862d-6a0b75514ea3/image15.jpg'),(16,4,'Women\'s Crochet Summer Gown','Stylish crochet summer gown for women',44.99,40,'https://ucarecdn.com/3c1981a6-2b4d-4f6c-9db0-4795bcb60b34/image16.jpg'),(17,4,'Women\'s Ribbed Slit Gown','Ribbed slit gown for women',34.99,50,'https://ucarecdn.com/edf2e316-8f79-4878-a178-3b2649edbe1c/image17.jpg'),(18,2,'Women\'s Cardigan And Gown','Cozy caridgan and gown for women',199.99,25,'https://ucarecdn.com/7c986b51-95eb-4270-b18c-d4cb09cde0ae/image18.jpg'),(19,2,'Women\'s Suade Gown And Cropped Sweater','Cozy suade gown and classic gown for women',139.99,60,'https://ucarecdn.com/2f3a4f1f-ccae-4935-99e5-55ec33a4b83f/image19.jpg'),(20,2,'Women\'s Sweatshirts','Summer sweatshirts for women',24.99,30,'https://ucarecdn.com/f75b654e-f284-49dc-b98f-49e2fd04afdc/image20.jpg'),(21,3,'Men\'s Crochet Sweater','Multi coloured crochet sweater for men',69.99,100,'https://ucarecdn.com/ef6e71c6-3d83-468c-8585-73b0a8abaf0b/image21.jpg'),(22,4,'Women\'s White Maxi Dress','Bailey white maxi dress for women',34.99,80,'https://ucarecdn.com/69e6088e-624d-43a1-a92e-cce8de11b96f/image22.jpg'),(23,3,'Men\'s Crochet Sweater','Unique crochet sweater for men',59.99,50,'https://ucarecdn.com/4829106e-a8f0-407e-b5ed-bf2813767f05/image23.jpg'),(24,1,'Women\'s Square Neck Cropped Top','Nude square neck cropped top for women',14.99,30,'https://ucarecdn.com/c3ee804b-c098-446e-b936-7d8b52970144/image24.jpg'),(25,1,'Men\'s Cargo Trousers','Stylish men cargo trousers for men',29.99,15,'https://ucarecdn.com/c1fa9850-c2ff-49ae-a432-6195fddabf12/image25.jpg'),(26,2,'Unisex\'s Yin-yang Crochet Sweater','Elegant Yin-yang crochet sweater',74.99,20,'https://ucarecdn.com/f0856e74-65cf-409d-860c-c0680e8299c0/image26.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-06 14:24:09
