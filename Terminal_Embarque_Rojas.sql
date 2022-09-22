-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: terminal
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `buque`
--

DROP TABLE IF EXISTS `buque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buque` (
  `ID_buque(IMO)` int NOT NULL,
  `nombre_buque` varchar(100) NOT NULL,
  `categoria_buque` varchar(150) NOT NULL,
  `tipo_buque` varchar(45) NOT NULL,
  `bandera` varchar(100) NOT NULL,
  `TPM` decimal(10,2) NOT NULL,
  `largo_total` decimal(6,2) NOT NULL,
  `ancho_total` decimal(6,2) NOT NULL,
  `ano_construccion` int NOT NULL,
  PRIMARY KEY (`ID_buque(IMO)`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buque`
--

LOCK TABLES `buque` WRITE;
/*!40000 ALTER TABLE `buque` DISABLE KEYS */;
INSERT INTO `buque` VALUES (9013749,'OLYMPIC LOYALTYC II','Crude Oil Tanker','VLCC','Comoros [KM]',303184.00,331.92,57.99,1993),(9157777,'EUROPRIDE','Oil Products Tanker','Aframax','Comoros [KM]',99997.00,243.00,42.00,1998),(9158147,'CAP JEAN','Crude Oil Tanker','Suezmax','Palau [PW]',146643.00,274.00,47.80,1998),(9176034,'EAGLE AUGUSTA','Crude Oil Tanker','Aframax',' St Kitts Nevis [KN]',105345.00,243.55,42.00,1999),(9182318,'C.DREAM','Crude Oil Tanker','VLCC','Thailand [TH]',298570.00,332.95,60.00,2000),(9187772,'NEW PAROS','Crude Oil Tanker','Aframax','Panama [PA]',107181.00,246.80,42.00,1998),(9247883,'MORNING GLORY','Oil Products Tanker','Aframax','Palau [PW]',99990.00,244.41,41.10,2002),(9255672,'ISABELLA','Crude Oil Tanker','Aframax','Malta [MT]',105330.00,244.00,42.03,2004),(9257010,'RIDGEBURY SALLY B','Crude Oil Tanker','Aframax','Panama [PA]',105672.00,239.00,42.00,2003),(9258002,'KAZAN','Crude Oil Tanker','Aframax','Liberia [LR]',115727.00,250.00,44.04,2003),(9281009,'EVEREST SPIRIT','Crude Oil Tanker','Aframax','Bahamas [BS]',115047.00,249.90,44.03,2004),(9290309,'SEAGRACE','Crude Oil Tanker','Aframax','Malta [MT]',105941.00,243.96,42.00,2004),(9337183,'COSJADE LAKE','Crude Oil Tanker','VLCC','Hong Kong [HK]',298216.00,329.99,60.04,2009),(9380740,'CAP THEODORA','Crude Oil Tanker','Suezmax','Greece [GR]',158819.00,274.20,48.00,2008),(9389758,'XIN TONG YAN','Oil Products Tanker','VLCC','Hong Kong [HK]',297183.00,330.00,60.00,2009),(9422196,'EAGLE KINA','Crude Oil Tanker','Aframax','Singapore [SG]',107481.00,244.00,42.03,2011),(9422457,'SCF BAIKAL','Crude Oil Tanker','Suezmax','Liberia [LR]',158097.00,274.34,48.05,2010),(9552496,'TEREPAIMA','Crude Oil Tanker','Aframax','Venezuela [VE]',104736.00,229.00,42.04,2011),(9709075,'ANTIGONE','Crude Oil Tanker','VLCC','Greece [GR]',299421.00,333.09,60.04,2015);
/*!40000 ALTER TABLE `buque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_producto`
--

DROP TABLE IF EXISTS `categoria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_producto` (
  `ID_categoria_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria_producto` varchar(100) NOT NULL,
  `descripcion_categoria_producto` varchar(250) NOT NULL,
  PRIMARY KEY (`ID_categoria_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(200) NOT NULL,
  `direccion_cliente` varchar(300) DEFAULT NULL,
  `telefono_cliente` varchar(45) NOT NULL,
  `correo_cliente` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,' RELIANCE INDUSTRIES (MIDDLE EAST) DMCC','Dubai Zip Code: 119450','971 4 2944272','company@ril.com'),(2,'CHINA NATIONAL UNITED OIL CORPORATION','27 Chengfang Street Xicheng District, 100033 China','86 1066227002','chinaoil.cnpc.com.cn'),(3,'MARATHON PETROLEUM SUPPLY LLC','539 South Main Street\nFindlay, OH 45840','1 4194222121','web.queries@computershare.com'),(4,'PETROMAR A.V.V.','L.G. SMITH BLVD. 62, SUITE 301, Oranjestad,  Aruba  ','2975938070 ','company@petromar.com'),(5,'TNK TRADING INTERNATIONAL S.A.','Place du Lac 2 Genève, GENÈVE, 1204 Switzerland ','41 223428234','company@tradingint.com'),(6,'PDVSA PETROLEO, S.A.','Avenida. Libertador con calle El Empalme\nLa Campiña, Caracas - Venezuela.','58 2127083570','company@pdvsa.com'),(7,'VALERO MARKETING AND SUPPLY COMPANY','Pedregal No. 24, Colonia Molino del Rey, Miguel Hidalgo, Ciudad de México','52 5586646000','ventasvaleromexico@valero.com'),(8,'CHEVRON PRODUCTS COMPANY','6001 Bollinger Canyon Road, San Ramon, California, 94583, California','1-925-8421000','info@chevron.com'),(9,'ROSNEFT TRADING SA.','26/1 Sofiyskaya Embankment, Moscow, 117997','7-499-5178899','ir@rosneft.ru');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_embarque`
--

DROP TABLE IF EXISTS `detalle_embarque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_embarque` (
  `ID_detalle embarque` int NOT NULL AUTO_INCREMENT,
  `ID_embarque` int NOT NULL,
  `parcela_numero` int NOT NULL,
  `ID_producto` int NOT NULL,
  `volumen_inicio_carga` decimal(12,2) NOT NULL,
  `volumen_fin_carga` decimal(12,2) NOT NULL,
  `ID_empresa_proveedor` int NOT NULL,
  `ID_puerto_carga` int NOT NULL,
  PRIMARY KEY (`ID_detalle embarque`),
  KEY `FK_detalle_embarque_embarque_ID_idx` (`ID_embarque`),
  KEY `FK_detalle_embarque_producto_ID_idx` (`ID_producto`),
  KEY `FK_detalle_embarque_puertos_ID_idx` (`ID_puerto_carga`),
  KEY `FK_detalle_embarque_proveedor_ID_idx` (`ID_empresa_proveedor`),
  CONSTRAINT `FK_detalle_embarque_embarque_ID` FOREIGN KEY (`ID_embarque`) REFERENCES `embarque` (`ID_embarque`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_embarque_producto_ID` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_embarque_proveedor_ID` FOREIGN KEY (`ID_empresa_proveedor`) REFERENCES `proveedor` (`ID_empresa_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_embarque_puertos_ID` FOREIGN KEY (`ID_puerto_carga`) REFERENCES `puertos` (`ID_puerto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_embarque`
--

LOCK TABLES `detalle_embarque` WRITE;
/*!40000 ALTER TABLE `detalle_embarque` DISABLE KEYS */;
INSERT INTO `detalle_embarque` VALUES (1,1,1,1,1100.00,1031468.00,1,1),(2,1,2,4,20.00,872850.00,5,1),(3,2,1,1,0.00,1788166.00,1,2),(4,3,1,2,0.00,549169.00,3,4),(5,4,1,3,0.00,298414.00,2,3),(6,5,1,4,0.00,449285.00,5,5),(7,6,1,4,0.00,495839.00,5,5),(8,7,1,3,0.00,497890.00,2,3),(9,8,1,5,0.00,632323.00,4,3),(10,9,1,2,50.00,500574.00,3,4),(11,9,2,3,15.00,475610.00,2,4),(12,10,1,1,0.00,1791436.00,1,2),(13,11,1,2,0.00,1000099.00,3,4),(14,12,1,1,0.00,1797971.00,1,1),(15,13,1,4,100.00,461249.00,5,5),(16,14,1,3,30.00,943771.00,2,4),(17,15,1,2,0.00,515474.00,3,3),(18,16,1,4,0.00,468362.00,5,3),(19,17,1,1,45.00,1784276.00,1,2),(20,18,1,4,10.00,595006.00,5,5),(21,19,1,5,0.00,541831.00,4,3),(22,20,1,3,0.00,510512.00,2,3);
/*!40000 ALTER TABLE `detalle_embarque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `ID_detalle_factura` int NOT NULL AUTO_INCREMENT,
  `ID_factura` int NOT NULL,
  `ID_producto` int NOT NULL,
  `ID_empresa_proveedor` int NOT NULL,
  `ID_puerto_carga` int NOT NULL,
  `volumen_total_cargado_prod(bls)` decimal(12,2) NOT NULL,
  `precio_venta_prod($/bll)` decimal(6,2) NOT NULL,
  `descuento_venta_prod(%)` decimal(4,2) NOT NULL,
  `costo_total_prod($)` decimal(15,2) NOT NULL,
  PRIMARY KEY (`ID_detalle_factura`),
  KEY `FK_detalle_fact_facturas_ID_idx` (`ID_factura`),
  KEY `FK_detalle_factura_producto_ID_idx` (`ID_producto`),
  KEY `FK_detalle_factura_puertos_ID_idx` (`ID_puerto_carga`),
  KEY `FK_detalle_factura_proveedor_ID_idx` (`ID_empresa_proveedor`),
  CONSTRAINT `FK_detalle_fact_facturas_ID` FOREIGN KEY (`ID_factura`) REFERENCES `factura` (`ID_factura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_factura_producto_ID` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_factura_proveedor_ID` FOREIGN KEY (`ID_empresa_proveedor`) REFERENCES `proveedor` (`ID_empresa_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_factura_puertos_ID` FOREIGN KEY (`ID_puerto_carga`) REFERENCES `puertos` (`ID_puerto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
INSERT INTO `detalle_factura` VALUES (1,1,1,1,1,1030368.00,41.20,0.10,38206045.44),(2,1,4,5,1,872830.00,32.30,0.15,23963547.65),(3,2,1,1,2,1788166.00,41.20,0.10,66305195.28),(4,3,2,3,4,549169.00,54.60,0.12,26386472.11),(5,4,3,2,3,298414.00,60.70,0.11,16121219.52),(6,5,4,5,5,449285.00,32.30,0.15,12335119.68),(7,6,4,5,5,495839.00,32.30,0.15,13613259.75),(8,7,3,2,3,497890.00,60.70,0.11,26897511.47),(9,8,5,4,3,632323.00,35.50,0.20,17957973.20),(10,9,2,3,4,500524.00,54.60,0.12,24049177.15),(11,9,3,2,4,475595.00,60.70,0.11,25693068.69),(12,10,1,1,2,1791436.00,41.20,0.10,66426446.88),(13,11,2,3,4,1000099.00,54.60,0.12,48052756.75),(14,12,1,1,1,1797971.00,41.20,0.10,66668764.68),(15,13,4,5,5,461149.00,32.30,0.15,12660845.80),(16,14,3,2,4,943741.00,60.70,0.11,50983720.04),(17,15,2,3,3,515474.00,54.60,0.12,24767494.75),(18,16,4,5,3,468362.00,32.30,0.15,12858878.71),(19,17,1,1,2,1784231.00,41.20,0.10,66159285.48),(20,18,4,5,5,594996.00,32.30,0.15,16335615.18),(21,19,5,4,3,541831.00,35.50,0.20,15388000.40),(22,20,3,2,3,510512.00,60.70,0.11,27579389.78);
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_nominacion`
--

DROP TABLE IF EXISTS `detalle_nominacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_nominacion` (
  `ID_detalle_nominacion` int NOT NULL AUTO_INCREMENT,
  `ID_nominacion` int NOT NULL,
  `ID_producto` int NOT NULL,
  `volumen_nominal_prod(bls)` decimal(12,2) NOT NULL,
  PRIMARY KEY (`ID_detalle_nominacion`),
  KEY `FK_detalle_nominacion_nominacion_ID_idx` (`ID_nominacion`),
  KEY `FK_detalle_nominacion_producto_ID_idx` (`ID_producto`),
  CONSTRAINT `FK_detalle_nominacion_nominacion_ID` FOREIGN KEY (`ID_nominacion`) REFERENCES `nominacion` (`ID_nominacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalle_nominacion_producto_ID` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_nominacion`
--

LOCK TABLES `detalle_nominacion` WRITE;
/*!40000 ALTER TABLE `detalle_nominacion` DISABLE KEYS */;
INSERT INTO `detalle_nominacion` VALUES (1,1,1,1000000.00),(2,1,4,900000.00),(3,2,1,1900000.00),(4,3,2,550000.00),(5,4,3,300000.00),(6,5,4,500000.00),(7,6,4,500000.00),(8,7,3,500000.00),(9,8,5,600000.00),(10,9,2,500000.00),(11,9,3,500000.00),(12,10,1,1800000.00),(13,11,2,1000000.00),(14,12,1,1800000.00),(15,13,4,500000.00),(16,14,3,1000000.00),(17,15,2,550000.00),(18,16,4,500000.00),(19,17,1,1800000.00),(20,18,4,600000.00),(21,19,5,600000.00),(22,20,3,500000.00);
/*!40000 ALTER TABLE `detalle_nominacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `embarque`
--

DROP TABLE IF EXISTS `embarque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `embarque` (
  `ID_embarque` int NOT NULL AUTO_INCREMENT,
  `numero_embarque` varchar(45) NOT NULL,
  `Fecha_Ventana_carga` varchar(100) NOT NULL,
  `ID_Buque(IMO)` int NOT NULL,
  `ID_Cliente` int NOT NULL,
  `fechayhora_atraque_buque` datetime NOT NULL,
  `fechayhora_conexión` datetime NOT NULL,
  `fechayhora_inicio_carga` datetime NOT NULL,
  `fechayhora_fin_carga` datetime NOT NULL,
  `fechayhora_desconexion` datetime NOT NULL,
  `fechayhora_desatraque_buque` datetime NOT NULL,
  PRIMARY KEY (`ID_embarque`),
  KEY `FK_embarque_buque_ID_idx` (`ID_Buque(IMO)`),
  KEY `FK_embarque_clientes_ID_idx` (`ID_Cliente`),
  CONSTRAINT `FK_embarque_buque_ID` FOREIGN KEY (`ID_Buque(IMO)`) REFERENCES `buque` (`ID_buque(IMO)`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_embarque_clientes_ID` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embarque`
--

LOCK TABLES `embarque` WRITE;
/*!40000 ALTER TABLE `embarque` DISABLE KEYS */;
INSERT INTO `embarque` VALUES (1,'7320','2021/10/05-07',9013749,1,'2021-10-07 22:24:00','2021-10-07 23:18:00','2021-10-08 01:18:00','2021-10-11 07:24:00','2021-10-11 10:36:00','2021-10-11 20:48:00'),(2,'7333','2021/10/19-21',9709075,2,'2021-10-24 09:24:00','2021-10-24 09:42:00','2021-10-24 13:42:00','2021-10-27 19:42:00','2021-10-27 21:24:00','2021-11-28 19:30:00'),(3,'1546','2021/10/27-29',9422196,3,'2021-10-31 19:18:00','2021-10-31 20:36:00','2021-11-01 03:00:00','2021-11-02 09:30:00','2021-11-02 14:30:00','2021-11-02 18:18:00'),(4,'7340','2021/11/25-27',9157777,4,'2021-11-03 12:42:00','2021-11-03 16:12:00','2021-11-04 06:00:00','2021-11-04 23:54:00','2021-11-05 00:42:00','2021-11-05 17:18:00'),(5,'1349','2021/11/29-31',9255672,5,'2021-11-04 15:48:00','2021-11-04 17:42:00','2021-11-04 18:24:00','2021-11-06 00:42:00','2021-11-06 14:30:00','2021-11-06 15:06:00'),(6,'1354','2021/11/26-28',9187772,6,'2021-11-10 19:06:00','2021-11-10 22:15:00','2021-11-13 16:18:00','2021-11-14 19:12:00','2021-11-14 20:35:00','2021-11-14 21:54:00'),(7,'7350','2021/11/11-13',9552496,4,'2021-11-14 08:15:00','2021-11-15 17:20:00','2021-11-16 20:45:00','2021-11-17 16:30:00','2021-11-17 17:10:00','2021-11-18 01:55:00'),(8,'7352','2021/11/10-12',9258002,7,'2021-11-18 02:00:00','2021-11-18 02:20:00','2021-11-18 14:12:00','2021-11-19 22:54:00','2021-11-19 23:30:00','2021-11-20 09:05:00'),(9,'1551','2021/11/12-14',9422457,8,'2021-11-17 01:24:00','2021-11-17 03:30:00','2021-11-17 15:30:00','2021-11-19 12:18:00','2021-11-19 15:00:00','2021-11-19 16:00:00'),(10,'7351','2021/11/13-15',9182318,2,'2021-11-16 23:54:00','2021-11-17 00:12:00','2021-11-17 03:54:00','2021-11-20 07:48:00','2021-11-20 13:00:00','2021-11-20 19:00:00'),(11,'1555','2021/11/26-28',9380740,7,'2021-11-28 18:48:00','2021-11-28 22:00:00','2021-11-29 22:06:00','2021-12-02 04:48:00','2021-12-02 11:00:00','2021-12-02 15:06:00'),(12,'7364','2021/11/20-22',9337183,2,'2021-11-30 19:30:00','2021-11-30 20:52:00','2021-11-30 23:50:00','2021-12-04 08:48:00','2021-12-04 11:48:00','2021-12-04 17:36:00'),(13,'1359','2021/11/26-28',9257010,9,'2021-12-03 14:00:00','2021-12-03 16:18:00','2021-12-03 17:00:00','2021-12-04 12:18:00','2021-12-04 17:42:00','2021-12-04 21:30:00'),(14,'1558','2021/12/08-10',9158147,7,'2021-12-09 12:18:00','2021-12-09 15:18:00','2021-12-10 03:00:00','2021-12-11 19:18:00','2021-12-12 10:36:00','2021-12-12 17:30:00'),(15,'7374','2021/12/07-09',9281009,8,'2021-12-14 10:42:00','2021-12-14 11:24:00','2021-12-15 08:24:00','2021-12-16 20:24:00','2021-12-16 21:54:00','2021-12-17 15:56:00'),(16,'7376','2021/12/14-16',9290309,9,'2021-12-17 15:48:00','2021-12-17 16:12:00','2021-12-18 05:42:00','2021-12-19 01:24:00','2021-12-19 04:00:00','2021-12-19 11:00:00'),(17,'7373','2021/12/09-11',9389758,2,'2021-12-13 17:42:00','2021-12-13 18:12:00','2021-12-14 05:42:00','2021-12-21 19:36:00','2021-12-21 21:00:00','2021-12-22 10:25:00'),(18,'1363','2021/12/05-07',9187772,6,'2021-12-19 14:54:00','2021-12-20 12:24:00','2021-12-20 12:42:00','2021-12-22 00:24:00','2021-12-22 10:00:00','2021-12-22 13:36:00'),(19,'7377','2021/12/16-18',9176034,7,'2021-12-19 18:30:00','2021-12-19 18:54:00','2021-12-20 21:24:00','2021-12-21 23:48:00','2021-12-22 00:48:00','2021-12-22 08:18:00'),(20,'7379','2021/12/16-18',9247883,4,'2021-12-22 12:48:00','2021-12-22 13:24:00','2021-12-23 09:00:00','2021-12-24 12:36:00','2021-12-24 15:00:00','2021-12-24 19:55:00');
/*!40000 ALTER TABLE `embarque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `ID_factura` int NOT NULL AUTO_INCREMENT,
  `codigo_factura` varchar(50) NOT NULL,
  `fecha_registro_factura` date NOT NULL,
  `ID_embarque` int NOT NULL,
  `ID_cliente` int NOT NULL,
  `puerto_destino_descarga` varchar(200) NOT NULL,
  `volumen_total_cargado(bls)` decimal(15,2) NOT NULL,
  `venta_total($)` decimal(20,2) NOT NULL,
  PRIMARY KEY (`ID_factura`),
  KEY `FK_factura_cliente_ID_idx` (`ID_cliente`),
  KEY `FK_factura_embarque_ID_idx` (`ID_embarque`),
  CONSTRAINT `FK_factura_cliente_ID` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_factura_embarque_ID` FOREIGN KEY (`ID_embarque`) REFERENCES `embarque` (`ID_embarque`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'PDV-001','2021-10-11',1,1,'RELIANCE TERMINAL SIKKA, PORT, INDIA',1903198.00,62169593.09),(2,'PDV-MER-001','2021-11-28',2,2,'ZHANJIANG.PORT,CHINA',1788166.00,66305195.28),(3,'PC-ZTA-001','2021-11-02',3,3,'LOOP, LA',549169.00,26386472.11),(4,'PP-SHB-001','2021-11-05',4,4,'AMUAY , PORT, VENEZUELA',298414.00,16121219.52),(5,'PSF-DCO-001','2021-11-06',5,5,'PASCAGOULA,PORT,MISSISSIPPI,USA',449285.00,12335119.68),(6,'PSF-DCO-002','2021-11-14',6,6,'STATIA,TERMINAL,NETHERLANDS ANTILLAS',495839.00,13613259.75),(7,'PP-SHB-002','2021-11-18',7,4,'AMUAY , PORT, VENEZUELA',497890.00,26897511.47),(8,'PM-MOR-001','2021-11-20',8,7,'GOOD HOPE, PORT, LOUISIANA, USA',632323.00,17957973.20),(9,'PDV-002','2021-11-19',9,8,'PASCAGOULA, MS,USA',976119.00,49742245.84),(10,'PDV-MER-002','2021-11-20',10,2,'ESSAR SPM, VADINAR',1791436.00,66426446.88),(11,'PC-ZTA-002','2021-12-02',11,7,'PORT ARTHUR, TX',1000099.00,48052756.75),(12,'PDV-MER-003','2021-12-04',12,2,'ZHANJIANG, PORT, CHINA',1797971.00,66668764.68),(13,'PSF-DCO-003','2021-12-04',13,9,'PASCAGOULA,PORT,MISSISSIPPI,USA',461149.00,12660845.80),(14,'PP-SHB-003','2021-12-12',14,7,'PORT ARTHUR, TX  U.S.A.',943741.00,50983720.04),(15,'PC-ZTA-003','2021-12-17',15,8,'PASCAGOULA,PORT,MISSISSIPPI,USA',515474.00,24767494.75),(16,'PSF-DCO-004','2021-12-19',16,9,'CARTAGENA, PORT, SPAIN',468362.00,12858878.71),(17,'PDV-MER-004','2021-12-22',17,2,'ZHANJIANG.PORT,CHINA',1784231.00,66159285.48),(18,'PSF-DCO-005','2021-12-22',18,6,'STATIA,TERMINAL,NETHERLANDS ANTI',594996.00,16335615.18),(19,'PM-MOR-002','2021-12-22',19,7,'GOOD HOPE, PORT, LOUISIANA, USA',541831.00,15388000.40),(20,'PP-SHB-004','2021-12-24',20,4,'AMUAY, PORT, VENEZUELA',510512.00,27579389.78);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nominacion`
--

DROP TABLE IF EXISTS `nominacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nominacion` (
  `ID_nominacion` int NOT NULL AUTO_INCREMENT,
  `numero_nominacion` varchar(50) NOT NULL,
  `fecha_registro_nominacion` date NOT NULL,
  `fecha_ventana_carga_nominal` varchar(100) NOT NULL,
  `puerto_destino_final` varchar(200) NOT NULL,
  `ID_embarque` int NOT NULL,
  `ID_cliente` int NOT NULL,
  `ID_buque(IMO)` int NOT NULL,
  `ID_puerto_carga` int NOT NULL,
  PRIMARY KEY (`ID_nominacion`),
  KEY `FK_nominacion_embarque_ID_idx` (`ID_embarque`),
  KEY `FK_nominacion_cliente_ID_idx` (`ID_cliente`),
  KEY `FK_nominacion_buque_ID_idx` (`ID_buque(IMO)`),
  KEY `FK_nominacion_puertos_ID_idx` (`ID_puerto_carga`),
  CONSTRAINT `FK_nominacion_buque_ID` FOREIGN KEY (`ID_buque(IMO)`) REFERENCES `buque` (`ID_buque(IMO)`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_nominacion_cliente_ID` FOREIGN KEY (`ID_cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_nominacion_embarque_ID` FOREIGN KEY (`ID_embarque`) REFERENCES `embarque` (`ID_embarque`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_nominacion_puertos_ID` FOREIGN KEY (`ID_puerto_carga`) REFERENCES `puertos` (`ID_puerto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nominacion`
--

LOCK TABLES `nominacion` WRITE;
/*!40000 ALTER TABLE `nominacion` DISABLE KEYS */;
INSERT INTO `nominacion` VALUES (1,'PDV7320','2021-09-10','2021/10/05-07','RELIANCE TERMINAL SIKKA, PORT, INDIA',1,1,9013749,1),(2,'PDV7333','2021-09-25','2021/10/19-21','ZHANJIANG.PORT,CHINA',2,2,9709075,2),(3,'PC1546','2021-09-28','2021/10/27-29','LOOP, LA',3,3,9422196,4),(4,'PP7340','2021-09-25','2021/11/25-27','AMUAY , PORT, VENEZUELA',4,4,9157777,3),(5,'PSF1349','2021-09-30','2021/11/29-31','PASCAGOULA,PORT,MISSISSIPPI,USA',5,5,9255672,5),(7,'PP7350','2021-10-15','2021/11/11-13','AMUAY , PORT, VENEZUELA',7,4,9552496,3),(8,'PM7352','2021-10-13','2021/11/10-12','GOOD HOPE, PORT, LOUISIANA, USA',8,7,9258002,3),(9,'PC1551','2021-10-14','2021/11/12-14','PASCAGOULA, MS,USA',9,8,9422457,4),(10,'PDV7351','2021-10-16','2021/11/13-15','ESSAR SPM, VADINAR',10,2,9182318,2),(11,'PC1555','2021-10-25','2021/11/26-28','PORT ARTHUR, TX',11,7,9380740,4),(12,'PDV7364','2021-10-23','2021/11/20-22','ZHANJIANG, PORT, CHINA',12,2,9337183,1),(13,'PSF1359','2021-10-27','2021/11/26-28','PASCAGOULA,PORT,MISSISSIPPI,USA',13,9,9257010,5),(14,'PP1558','2021-11-05','2021/12/08-10','PORT ARTHUR, TX  U.S.A.',14,7,9158147,4),(15,'PC7374','2021-11-08','2021/12/07-09','PASCAGOULA,PORT,MISSISSIPPI,USA',15,8,9281009,3),(16,'PSF7376','2021-11-15','2021/12/14-16','CARTAGENA, PORT, SPAIN',16,9,9290309,3),(17,'PDV7373','2021-11-13','2021/12/09-11','ZHANJIANG.PORT,CHINA',17,2,9389758,2),(18,'PSF1363','2021-11-09','2021/12/05-07','STATIA,TERMINAL,NETHERLANDS ANTI',18,6,9187772,5),(19,'PM7377','2021-11-18','2021/12/16-18','GOOD HOPE, PORT, LOUISIANA, USA',19,7,9176034,3),(20,'PP7379','2021-11-16','2021/12/16-18','AMUAY, PORT, VENEZUELA',20,4,9247883,3);
/*!40000 ALTER TABLE `nominacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(60) NOT NULL,
  `volumen_inventario_actual(bbl)` decimal(12,2) NOT NULL,
  `precio_producto($/bbl)` decimal(6,2) NOT NULL,
  `ID_categoria_producto` int NOT NULL,
  `ID_empresa_proveedor` int NOT NULL,
  PRIMARY KEY (`ID_producto`),
  KEY `FK_producto_categoria_producto_ID_idx` (`ID_categoria_producto`),
  KEY `FK_producto_proveedor_ID_idx` (`ID_empresa_proveedor`),
  CONSTRAINT `FK_producto_categoria_producto_ID` FOREIGN KEY (`ID_categoria_producto`) REFERENCES `categoria_producto` (`ID_categoria_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_producto_proveedor_ID` FOREIGN KEY (`ID_empresa_proveedor`) REFERENCES `proveedor` (`ID_empresa_proveedor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'MEREY 16',8000000.00,41.20,1,1),(2,'ZUATA 300',4000000.00,54.60,2,3),(3,'SHB',4000000.00,60.70,2,2),(4,'DCO',3000000.00,32.30,3,5),(5,'MORICHAL 16',2000000.00,35.50,2,4);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `ID_empresa_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa_proveedor` varchar(60) NOT NULL,
  `direccion_proveedor` varchar(250) DEFAULT NULL,
  `telefono_proveedor` varchar(50) NOT NULL,
  `correo_proveedor` varchar(200) NOT NULL,
  PRIMARY KEY (`ID_empresa_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'PDVSA PETROLEO, S.A.','Avenida. Libertador con calle El Empalme La Campiña, Caracas - Venezuela','582127083570','company@pdvsa.com'),(2,'PETROPIAR','Calle Cali, Edificio Pawa, Urb. Las Mercedes, Caracas, Distrito Capital','582812622480','company@petropiar.pdvsa.com'),(3,'PETROCEDEÑO','Av. Solano con calle Negrin Edificio Centro Empresarial, Sabana Grande Pent House, Caracas, Apartado 62041','582127062000','company@petrocedeno.pdvsa.com'),(4,'PETROMONAGAS','Avda. Nueva Esparta Con Calle Cerro Sur Barcelona; Anzoategui','582812627080','company@petromonagas.pdvsa.com'),(5,'PETROSANFELIX','Avda. lagunas, Barcelona; Anzoategui','582813307545','company@petrosanfelix.pdvsa.com');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puertos`
--

DROP TABLE IF EXISTS `puertos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puertos` (
  `ID_puerto` int NOT NULL AUTO_INCREMENT,
  `ubicacion_puerto` varchar(100) NOT NULL,
  `nombre_instalación` varchar(60) NOT NULL,
  `puesto` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_puerto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puertos`
--

LOCK TABLES `puertos` WRITE;
/*!40000 ALTER TABLE `puertos` DISABLE KEYS */;
INSERT INTO `puertos` VALUES (1,'Terminal  ORIENTE','Plataforma','ESTE'),(2,'Terminal  ORIENTE','Plataforma','OESTE'),(3,'Terminal  ORIENTE','Plataforma','SUR '),(4,'Terminal  ORIENTE','Monoboya','SPM GFM'),(5,'Terminal  ORIENTE','Monoboya','SPM JAA');
/*!40000 ALTER TABLE `puertos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-08 20:07:04
