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
  `ID_buque_IMO` int NOT NULL,
  `IMO` int NOT NULL,
  `nombre_buque` varchar(100) NOT NULL,
  `categoria_buque` varchar(150) NOT NULL,
  `tipo_buque` varchar(45) NOT NULL,
  `bandera` varchar(100) NOT NULL,
  `TPM` decimal(10,2) NOT NULL,
  `largo_total` decimal(6,2) NOT NULL,
  `ancho_total` decimal(6,2) NOT NULL,
  `ano_construccion` int NOT NULL,
  PRIMARY KEY (`ID_buque_IMO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buque`
--

LOCK TABLES `buque` WRITE;
/*!40000 ALTER TABLE `buque` DISABLE KEYS */;
INSERT INTO `buque` VALUES (1,9013749,'OLYMPIC LOYALTYC II','Crude Oil Tanker','VLCC','Comoros [KM]',303184.00,331.92,57.99,1993),(2,9157777,'EUROPRIDE','Oil Products Tanker','Aframax','Comoros [KM]',99997.00,243.00,42.00,1998),(3,9158147,'CAP JEAN','Crude Oil Tanker','Suezmax','Palau [PW]',146643.00,274.00,47.80,1998),(4,9176034,'EAGLE AUGUSTA','Crude Oil Tanker','Aframax',' St Kitts Nevis [KN]',105345.00,243.55,42.00,1999),(5,9182318,'C.DREAM','Crude Oil Tanker','VLCC','Thailand [TH]',298570.00,332.95,60.00,2000),(6,9187772,'NEW PAROS','Crude Oil Tanker','Aframax','Panama [PA]',107181.00,246.80,42.00,1998),(7,9236250,'poseidon i','Crude Oil Tanker','VLCC','Panama [PA]',305796.00,332.00,58.05,2002),(8,9247883,'MORNING GLORY','Oil Products Tanker','Aframax','Palau [PW]',99990.00,244.41,41.10,2002),(9,9255672,'ISABELLA','Crude Oil Tanker','Aframax','Malta [MT]',105330.00,244.00,42.03,2004),(10,9255672,'RIDGEBURY SALLY B','Crude Oil Tanker','Aframax','Panama [PA]',105672.00,239.00,42.00,2003),(11,9258002,'KAZAN','Crude Oil Tanker','Aframax','Liberia [LR]',115727.00,250.00,44.04,2003),(12,9281009,'EVEREST SPIRIT','Crude Oil Tanker','Aframax','Bahamas [BS]',115047.00,249.90,44.03,2004),(13,9290309,'seagrace','Crude Oil Tanker','Aframax','Malta [MT]',105941.00,243.96,42.00,2004),(14,9337183,'COSJADE LAKE','Crude Oil Tanker','VLCC','Hong Kong [HK]',298216.00,329.99,60.04,2009),(15,9380740,'CAP THEODORA','Crude Oil Tanker','Suezmax','Greece [GR]',158819.00,274.20,48.00,2008),(16,9380740,'XIN TONG YAN','Oil Products Tanker','VLCC','Hong Kong [HK]',297183.00,330.00,60.00,2009),(17,9422196,'EAGLE KINA','Crude Oil Tanker','Aframax','Singapore [SG]',107481.00,244.00,42.03,2011),(18,9422457,'SCF BAIKAL','Crude Oil Tanker','Suezmax','Liberia [LR]',158097.00,274.34,48.05,2010),(19,9552496,'TEREPAIMA','Crude Oil Tanker','Aframax','Venezuela [VE]',104736.00,229.00,42.04,2011),(20,9709075,'ANTIGONE','Crude Oil Tanker','VLCC','Greece [GR]',299421.00,333.09,60.04,2015);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_producto`
--

LOCK TABLES `categoria_producto` WRITE;
/*!40000 ALTER TABLE `categoria_producto` DISABLE KEYS */;
INSERT INTO `categoria_producto` VALUES (1,'Crudo Mediano',' Hidrocarburo de gravedad API 16° '),(2,'Crudo Mejorado',' Hidrocarburo mejorado por procesos de destilacion al vacio de crudos pesados '),(3,'Crudo Mixto',' Mezcla de hidroaburo pesado de gravedad API 10° con un diluente de 50°API para obtner un crudo de 16-17°API ');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,' RELIANCE INDUSTRIES (MIDDLE EAST) DMCC','Dubai Zip Code: 119450','971 4 2944272','company@ril.com'),(2,'CHINA NATIONAL UNITED OIL CORPORATION','27 Chengfang Street Xicheng District, 100033 China','86 1066227002','chinaoil.cnpc.com.cn'),(3,'MARATHON PETROLEUM SUPPLY LLC','539 South Main Street\nFindlay, OH 45840','1 4194222121','web.queries@computershare.com'),(4,'PETROMAR A.V.V.','L.G. SMITH BLVD. 62, SUITE 301, Oranjestad,  Aruba  ','2975938070 ','company@petromar.com'),(5,'TNK TRADING INTERNATIONAL S.A.','Place du Lac 2 Genève, GENÈVE, 1204 Switzerland','41 223428234','company@tradingint.com'),(6,'PDVSA PETROLEO, S.A.','Avenida. Libertador con calle El Empalme\nLa Campiña, Caracas - Venezuela.','58 2127083570','company@pdvsa.com'),(7,'VALERO MARKETING AND SUPPLY COMPANY','Pedregal No. 24, Colonia Molino del Rey, Miguel Hidalgo, Ciudad de México','52 5586646000','ventasvaleromexico@valero.com'),(8,'CHEVRON PRODUCTS COMPANY','6001 Bollinger Canyon Road, San Ramon, California, 94583, California','1-925-8421000','info@chevron.com'),(9,'ROSNEFT TRADING SA.','26/1 Sofiyskaya Embankment, Moscow, 117997','7-499-5178899','ir@rosneft.ru'),(10,'ATLANTIC TRADING & MARKETING INC','5847 San Felipe St # 2100, Houston, TX 77057, Estados Unidos','17132432200','presse@totalenergies.com'),(11,'REPSOL TRADING,S.A','Calle Mendez Alvaro, 44, Madrid, 28045 , Madrid','917538100','carlos.perezdecea@repsol.com'),(12,'DELTA LIMITED LIABILITY COMPANY','25, Grekivska str., c. Kharkiv, 61000, Ukraine','577197788','\"info@rada.com.ua'),(13,'CUBAMETALES','Calle 10 No. 512 e/ 5ta y 31, Playa, La Habana, Cuba','5372144341','procubainfo@mincex.gob.cu');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_embarque`
--

DROP TABLE IF EXISTS `detalle_embarque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_embarque` (
  `ID_detalle_embarque` int NOT NULL AUTO_INCREMENT,
  `ID_embarque` int NOT NULL,
  `parcela_numero` int NOT NULL,
  `ID_producto` int NOT NULL,
  `volumen_inicio_carga_bls` decimal(12,2) NOT NULL,
  `volumen_fin_carga_bls` decimal(12,2) NOT NULL,
  `ID_empresa_proveedor` int NOT NULL,
  `ID_puerto_carga` int NOT NULL,
  PRIMARY KEY (`ID_detalle_embarque`),
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
INSERT INTO `detalle_embarque` VALUES (1,1,1,1,1100.00,1031468.00,1,1),(2,1,2,4,20.00,872850.00,5,1),(4,3,1,2,0.00,549169.00,3,4),(5,4,1,3,0.00,298414.00,2,3),(7,6,1,4,0.00,495839.00,5,5),(8,7,1,3,0.00,497890.00,2,3),(9,8,1,5,0.00,632323.00,4,3),(10,9,1,2,50.00,500574.00,3,4),(11,9,2,3,15.00,475610.00,2,4),(13,11,1,2,0.00,1000099.00,3,4),(16,14,1,3,30.00,943771.00,2,4),(17,15,1,2,0.00,515474.00,3,3),(20,18,1,4,10.00,595006.00,5,5),(21,19,1,5,0.00,541831.00,4,3),(22,20,1,3,0.00,510512.00,2,3);
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
  `volumen_total_cargado_prod_bls` decimal(12,2) NOT NULL,
  `precio_venta_prod_dolar_bl` decimal(6,2) NOT NULL,
  `descuento_venta_prod_porc` decimal(4,2) NOT NULL,
  `costo_total_prod_dolar` decimal(15,2) NOT NULL,
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
INSERT INTO `detalle_factura` VALUES (1,1,1,1,1,1030368.00,41.20,0.10,38206045.44),(2,1,4,5,1,872830.00,32.30,0.15,23963547.65),(4,3,2,3,4,549169.00,54.60,0.12,26386472.11),(5,4,3,2,3,298414.00,60.70,0.11,16121219.52),(7,6,4,5,5,495839.00,32.30,0.15,13613259.75),(8,7,3,2,3,497890.00,60.70,0.11,26897511.47),(9,8,5,4,3,632323.00,35.50,0.20,17957973.20),(10,9,2,3,4,500524.00,54.60,0.12,24049177.15),(11,9,3,2,4,475595.00,60.70,0.11,25693068.69),(13,11,2,3,4,1000099.00,54.60,0.12,48052756.75),(16,14,3,2,4,943741.00,60.70,0.11,50983720.04),(17,15,2,3,3,515474.00,54.60,0.12,24767494.75),(20,18,4,5,5,594996.00,32.30,0.15,16335615.18),(21,19,5,4,3,541831.00,35.50,0.20,15388000.40),(22,20,3,2,3,510512.00,60.70,0.11,27579389.78);
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
  `volumen_nominal_prod_bls` decimal(12,2) NOT NULL,
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
INSERT INTO `detalle_nominacion` VALUES (1,1,1,1000000.00),(2,1,4,900000.00),(4,3,2,550000.00),(5,4,3,300000.00),(7,6,4,500000.00),(8,7,3,500000.00),(9,8,5,600000.00),(10,9,2,500000.00),(11,9,3,500000.00),(13,11,2,1000000.00),(16,14,3,1000000.00),(17,15,2,550000.00),(20,18,4,600000.00),(21,19,5,600000.00),(22,20,3,500000.00);
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
  `ID_buque_IMO` int NOT NULL,
  `ID_Cliente` int NOT NULL,
  `fechayhora_atraque_buque` datetime NOT NULL,
  `fechayhora_conexión` datetime NOT NULL,
  `fechayhora_inicio_carga` datetime NOT NULL,
  `fechayhora_fin_carga` datetime NOT NULL,
  `fechayhora_desconexion` datetime NOT NULL,
  `fechayhora_desatraque_buque` datetime NOT NULL,
  PRIMARY KEY (`ID_embarque`),
  KEY `FK_embarque_buque_ID_idx` (`ID_buque_IMO`),
  KEY `FK_embarque_clientes_ID_idx` (`ID_Cliente`),
  CONSTRAINT `FK_embarque_buque_ID` FOREIGN KEY (`ID_buque_IMO`) REFERENCES `buque` (`ID_buque_IMO`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_embarque_clientes_ID` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `embarque`
--

LOCK TABLES `embarque` WRITE;
/*!40000 ALTER TABLE `embarque` DISABLE KEYS */;
INSERT INTO `embarque` VALUES (1,'7320','2021/10/05-07',1,1,'2021-10-07 22:24:00','2021-10-07 23:18:00','2021-10-08 01:18:00','2021-10-11 07:24:00','2021-10-11 10:36:00','2021-10-11 20:48:00'),(3,'1546','2021/10/27-29',17,3,'2021-10-31 19:18:00','2021-10-31 20:36:00','2021-11-01 03:00:00','2021-11-02 09:30:00','2021-11-02 14:30:00','2021-11-02 18:18:00'),(4,'7340','2021/11/25-27',2,4,'2021-11-03 12:42:00','2021-11-03 16:12:00','2021-11-04 06:00:00','2021-11-04 23:54:00','2021-11-05 00:42:00','2021-11-05 17:18:00'),(6,'1354','2021/11/26-28',6,6,'2021-11-10 19:06:00','2021-11-10 22:15:00','2021-11-13 16:18:00','2021-11-14 19:12:00','2021-11-14 20:35:00','2021-11-14 21:54:00'),(7,'7350','2021/11/11-13',19,4,'2021-11-14 08:15:00','2021-11-15 17:20:00','2021-11-16 20:45:00','2021-11-17 16:30:00','2021-11-17 17:10:00','2021-11-18 01:55:00'),(8,'7352','2021/11/10-12',11,7,'2021-11-18 02:00:00','2021-11-18 02:20:00','2021-11-18 14:12:00','2021-11-19 22:54:00','2021-11-19 23:30:00','2021-11-20 09:05:00'),(9,'1551','2021/11/12-14',18,8,'2021-11-17 01:24:00','2021-11-17 03:30:00','2021-11-17 15:30:00','2021-11-19 12:18:00','2021-11-19 15:00:00','2021-11-19 16:00:00'),(11,'1555','2021/11/26-28',15,7,'2021-11-28 18:48:00','2021-11-28 22:00:00','2021-11-29 22:06:00','2021-12-02 04:48:00','2021-12-02 11:00:00','2021-12-02 15:06:00'),(14,'1558','2021/12/08-10',3,7,'2021-12-09 12:18:00','2021-12-09 15:18:00','2021-12-10 03:00:00','2021-12-11 19:18:00','2021-12-12 10:36:00','2021-12-12 17:30:00'),(15,'7374','2021/12/07-09',12,8,'2021-12-14 10:42:00','2021-12-14 11:24:00','2021-12-15 08:24:00','2021-12-16 20:24:00','2021-12-16 21:54:00','2021-12-17 15:56:00'),(18,'1363','2021/12/05-07',6,6,'2021-12-19 14:54:00','2021-12-20 12:24:00','2021-12-20 12:42:00','2021-12-22 00:24:00','2021-12-22 10:00:00','2021-12-22 13:36:00'),(19,'7377','2021/12/16-18',4,7,'2021-12-19 18:30:00','2021-12-19 18:54:00','2021-12-20 21:24:00','2021-12-21 23:48:00','2021-12-22 00:48:00','2021-12-22 08:18:00'),(20,'7379','2021/12/16-18',8,4,'2021-12-22 12:48:00','2021-12-22 13:24:00','2021-12-23 09:00:00','2021-12-24 12:36:00','2021-12-24 15:00:00','2021-12-24 19:55:00');
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
  `volumen_total_cargado_bls` decimal(15,2) NOT NULL,
  `venta_total_dolar` decimal(20,2) NOT NULL,
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
INSERT INTO `factura` VALUES (1,'PDV-001','2021-10-11',1,1,'RELIANCE TERMINAL SIKKA, PORT, INDIA',1903198.00,62169593.09),(3,'PC-ZTA-001','2021-11-02',3,3,'LOOP, LA',549169.00,26386472.11),(4,'PP-SHB-001','2021-11-05',4,4,'AMUAY , PORT, VENEZUELA',298414.00,16121219.52),(6,'PSF-DCO-002','2021-11-14',6,6,'STATIA,TERMINAL,NETHERLANDS ANTILLAS',495839.00,13613259.75),(7,'PP-SHB-002','2021-11-18',7,4,'AMUAY , PORT, VENEZUELA',497890.00,26897511.47),(8,'PM-MOR-001','2021-11-20',8,7,'GOOD HOPE, PORT, LOUISIANA, USA',632323.00,17957973.20),(9,'PDV-002','2021-11-19',9,8,'PASCAGOULA, MS,USA',976119.00,49742245.84),(11,'PC-ZTA-002','2021-12-02',11,7,'PORT ARTHUR, TX',1000099.00,48052756.75),(14,'PP-SHB-003','2021-12-12',14,7,'PORT ARTHUR, TX  U.S.A.',943741.00,50983720.04),(15,'PC-ZTA-003','2021-12-17',15,8,'PASCAGOULA,PORT,MISSISSIPPI,USA',515474.00,24767494.75),(18,'PSF-DCO-005','2021-12-22',18,6,'STATIA,TERMINAL,NETHERLANDS ANTI',594996.00,16335615.18),(19,'PM-MOR-002','2021-12-22',19,7,'GOOD HOPE, PORT, LOUISIANA, USA',541831.00,15388000.40),(20,'PP-SHB-004','2021-12-24',20,4,'AMUAY, PORT, VENEZUELA',510512.00,27579389.78);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria_terminal_b`
--

DROP TABLE IF EXISTS `log_auditoria_terminal_b`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria_terminal_b` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_BUQUE` varchar(100) DEFAULT NULL,
  `ID_BUQUE_IMO` int NOT NULL,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_ACCION` date DEFAULT NULL,
  `HORA_ACCION` time DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria_terminal_b`
--

LOCK TABLES `log_auditoria_terminal_b` WRITE;
/*!40000 ALTER TABLE `log_auditoria_terminal_b` DISABLE KEYS */;
INSERT INTO `log_auditoria_terminal_b` VALUES (1,'POSEIDON I',9236250,'INSERT','CLIENTE','root@localhost','2022-08-21','21:31:24'),(6,'FOLEGANDROS I',21,'INSERT','CLIENTE','root@localhost','2022-08-31','18:50:55'),(7,'HRA',22,'INSERT','CLIENTE','root@localhost','2022-08-31','18:50:55'),(8,'PELAGOS ONE',23,'INSERT','CLIENTE','root@localhost','2022-08-31','18:50:55'),(9,'TATAKI',24,'INSERT','CLIENTE','root@localhost','2022-08-31','18:50:55'),(18,'FOLEGANDROS I',21,'INSERT','CLIENTE','root@localhost','2022-08-31','18:57:04'),(19,'HRA',22,'INSERT','CLIENTE','root@localhost','2022-08-31','18:57:04'),(20,'PELAGOS ONE',23,'INSERT','CLIENTE','root@localhost','2022-08-31','18:57:04'),(21,'TATAKI',24,'INSERT','CLIENTE','root@localhost','2022-08-31','18:57:04'),(22,'FOLEGANDROS I',21,'INSERT','CLIENTE','root@localhost','2022-08-31','18:59:31'),(23,'HRA',22,'INSERT','CLIENTE','root@localhost','2022-08-31','18:59:31'),(24,'PELAGOS ONE',23,'INSERT','CLIENTE','root@localhost','2022-08-31','18:59:31'),(25,'TATAKI',24,'INSERT','CLIENTE','root@localhost','2022-08-31','18:59:31'),(30,'FOLEGANDROS I',21,'INSERT','CLIENTE','root@localhost','2022-08-31','19:14:12'),(31,'HRA',22,'INSERT','CLIENTE','root@localhost','2022-08-31','19:14:12'),(32,'PELAGOS ONE',23,'INSERT','CLIENTE','root@localhost','2022-08-31','19:14:12'),(33,'TATAKI',24,'INSERT','CLIENTE','root@localhost','2022-08-31','19:14:12');
/*!40000 ALTER TABLE `log_auditoria_terminal_b` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria_terminal_b_2`
--

DROP TABLE IF EXISTS `log_auditoria_terminal_b_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria_terminal_b_2` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_BUQUE_ANTERIOR` varchar(100) DEFAULT NULL,
  `NOMBRE_BUQUE_ACTUAL` varchar(100) DEFAULT NULL,
  `ID_BUQUE_IMO` int NOT NULL,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_ACCION` date DEFAULT NULL,
  `HORA_ACCION` time DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria_terminal_b_2`
--

LOCK TABLES `log_auditoria_terminal_b_2` WRITE;
/*!40000 ALTER TABLE `log_auditoria_terminal_b_2` DISABLE KEYS */;
INSERT INTO `log_auditoria_terminal_b_2` VALUES (1,'SEAGRACE','seagrace',9290309,'UPDATE','CLIENTE','root@localhost','2022-08-21','21:31:24'),(2,'POSEIDON I','poseidon i',9236250,'UPDATE','CLIENTE','root@localhost','2022-08-21','21:31:24'),(3,'OLYMPIC LOYALTYC II','OLYMPIC LOYALTYC II',1,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(4,'EUROPRIDE','EUROPRIDE',2,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(5,'CAP JEAN','CAP JEAN',3,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(6,'EAGLE AUGUSTA','EAGLE AUGUSTA',4,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(7,'C.DREAM','C.DREAM',5,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(8,'NEW PAROS','NEW PAROS',6,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(9,'poseidon i','poseidon i',7,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(10,'MORNING GLORY','MORNING GLORY',8,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(11,'ISABELLA','ISABELLA',9,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(12,'RIDGEBURY SALLY B','RIDGEBURY SALLY B',10,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(13,'KAZAN','KAZAN',11,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(14,'EVEREST SPIRIT','EVEREST SPIRIT',12,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(15,'seagrace','seagrace',13,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(16,'COSJADE LAKE','COSJADE LAKE',14,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(17,'CAP THEODORA','CAP THEODORA',15,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(18,'XIN TONG YAN','XIN TONG YAN',16,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(19,'EAGLE KINA','EAGLE KINA',17,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(20,'SCF BAIKAL','SCF BAIKAL',18,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(21,'TEREPAIMA','TEREPAIMA',19,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07'),(22,'ANTIGONE','ANTIGONE',20,'UPDATE','CLIENTE','root@localhost','2022-08-31','18:46:07');
/*!40000 ALTER TABLE `log_auditoria_terminal_b_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria_terminal_c`
--

DROP TABLE IF EXISTS `log_auditoria_terminal_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria_terminal_c` (
  `ID_LOG` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_CLIENTE` varchar(200) DEFAULT NULL,
  `ID_CLIENTE` int NOT NULL,
  `NOMBRE_DE_ACCION` varchar(10) DEFAULT NULL,
  `NOMBRE_TABLA` varchar(50) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `FECHA_ACCION` date DEFAULT NULL,
  `HORA_ACCION` time DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria_terminal_c`
--

LOCK TABLES `log_auditoria_terminal_c` WRITE;
/*!40000 ALTER TABLE `log_auditoria_terminal_c` DISABLE KEYS */;
INSERT INTO `log_auditoria_terminal_c` VALUES (1,'ATLANTIC TRADING & MARKETING INC',10,'INSERT','CLIENTE','root@localhost','2022-08-21','21:31:23'),(2,'REPSOL TRADING,S.A',11,'INSERT','CLIENTE','root@localhost','2022-08-21','21:31:23'),(3,'DELTA LIMITED LIABILITY COMPANY',12,'INSERT','CLIENTE','root@localhost','2022-08-21','21:31:23'),(4,'CUBAMETALES',13,'INSERT','CLIENTE','root@localhost','2022-08-21','21:31:23'),(5,'CHINA NATIONAL UNITED OIL CORPORATION',2,'INSERT','CLIENTE','root@localhost','2022-08-31','18:01:42'),(6,'TNK TRADING INTERNATIONAL S.A.',5,'INSERT','CLIENTE','root@localhost','2022-08-31','18:01:42'),(7,'ROSNEFT TRADING SA.',9,'INSERT','CLIENTE','root@localhost','2022-08-31','18:01:42'),(8,'DELTA LIMITED LIABILITY COMPANY',12,'INSERT','CLIENTE','root@localhost','2022-08-31','18:01:42'),(9,'CHINA NATIONAL UNITED OIL CORPORATION',2,'INSERT','CLIENTE','root@localhost','2022-08-31','18:12:26'),(10,'TNK TRADING INTERNATIONAL S.A.',5,'INSERT','CLIENTE','root@localhost','2022-08-31','18:12:26'),(11,'ROSNEFT TRADING SA.',9,'INSERT','CLIENTE','root@localhost','2022-08-31','18:12:26'),(12,'DELTA LIMITED LIABILITY COMPANY',12,'INSERT','CLIENTE','root@localhost','2022-08-31','18:12:26');
/*!40000 ALTER TABLE `log_auditoria_terminal_c` ENABLE KEYS */;
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
  `ID_buque_IMO` int NOT NULL,
  `ID_puerto_carga` int NOT NULL,
  PRIMARY KEY (`ID_nominacion`),
  KEY `FK_nominacion_embarque_ID_idx` (`ID_embarque`),
  KEY `FK_nominacion_cliente_ID_idx` (`ID_cliente`),
  KEY `FK_nominacion_buque_ID_idx` (`ID_buque_IMO`),
  KEY `FK_nominacion_puertos_ID_idx` (`ID_puerto_carga`),
  CONSTRAINT `FK_nominacion_buque_ID` FOREIGN KEY (`ID_buque_IMO`) REFERENCES `buque` (`ID_buque_IMO`) ON DELETE CASCADE ON UPDATE CASCADE,
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
INSERT INTO `nominacion` VALUES (1,'PDV7320','2021-09-10','2021/10/05-07','RELIANCE TERMINAL SIKKA, PORT, INDIA',1,1,1,1),(3,'PC1546','2021-09-28','2021/10/27-29','LOOP, LA',3,3,17,4),(4,'PP7340','2021-09-25','2021/11/25-27','AMUAY , PORT, VENEZUELA',4,4,2,3),(7,'PP7350','2021-10-15','2021/11/11-13','AMUAY , PORT, VENEZUELA',7,4,19,3),(8,'PM7352','2021-10-13','2021/11/10-12','GOOD HOPE, PORT, LOUISIANA, USA',8,7,11,3),(9,'PC1551','2021-10-14','2021/11/12-14','PASCAGOULA, MS,USA',9,8,18,4),(11,'PC1555','2021-10-25','2021/11/26-28','PORT ARTHUR, TX',11,7,15,4),(14,'PP1558','2021-11-05','2021/12/08-10','PORT ARTHUR, TX  U.S.A.',14,7,3,4),(15,'PC7374','2021-11-08','2021/12/07-09','PASCAGOULA,PORT,MISSISSIPPI,USA',15,8,12,3),(18,'PSF1363','2021-11-09','2021/12/05-07','STATIA,TERMINAL,NETHERLANDS ANTI',18,6,6,5),(19,'PM7377','2021-11-18','2021/12/16-18','GOOD HOPE, PORT, LOUISIANA, USA',19,7,4,3),(20,'PP7379','2021-11-16','2021/12/16-18','AMUAY, PORT, VENEZUELA',20,4,8,3);
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
  `volumen_inventario_actual_bls` decimal(12,2) NOT NULL,
  `precio_producto_dolar_bl` decimal(6,2) NOT NULL,
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

--
-- Temporary view structure for view `vista_cargamentos_cliente_china`
--

DROP TABLE IF EXISTS `vista_cargamentos_cliente_china`;
/*!50001 DROP VIEW IF EXISTS `vista_cargamentos_cliente_china`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_cargamentos_cliente_china` AS SELECT 
 1 AS `numero_embarque`,
 1 AS `nombre_buque`,
 1 AS `parcela_numero`,
 1 AS `nombre_producto`,
 1 AS `volumen_inicio_carga_bls`,
 1 AS `volumen_fin_carga_bls`,
 1 AS `volumen_total_cargado_bls`,
 1 AS `nombre_cliente`,
 1 AS `nombre_empresa_proveedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_cargamentos_crudos_merey_dco`
--

DROP TABLE IF EXISTS `vista_cargamentos_crudos_merey_dco`;
/*!50001 DROP VIEW IF EXISTS `vista_cargamentos_crudos_merey_dco`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_cargamentos_crudos_merey_dco` AS SELECT 
 1 AS `numero_embarque`,
 1 AS `nombre_buque`,
 1 AS `parcela_numero`,
 1 AS `nombre_producto`,
 1 AS `volumen_inicio_carga_bls`,
 1 AS `volumen_fin_carga_bls`,
 1 AS `volumen_total_cargado_bls`,
 1 AS `nombre_cliente`,
 1 AS `nombre_empresa_proveedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_productos_mayor_inventario`
--

DROP TABLE IF EXISTS `vista_productos_mayor_inventario`;
/*!50001 DROP VIEW IF EXISTS `vista_productos_mayor_inventario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_productos_mayor_inventario` AS SELECT 
 1 AS `nombre_producto`,
 1 AS `nombre_categoria_producto`,
 1 AS `nombre_empresa_proveedor`,
 1 AS `descripcion_categoria_producto`,
 1 AS `volumen_inventario_actual_bls`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_productos_mayor_precio`
--

DROP TABLE IF EXISTS `vista_productos_mayor_precio`;
/*!50001 DROP VIEW IF EXISTS `vista_productos_mayor_precio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_productos_mayor_precio` AS SELECT 
 1 AS `nombre_producto`,
 1 AS `nombre_categoria_producto`,
 1 AS `nombre_empresa_proveedor`,
 1 AS `descripcion_categoria_producto`,
 1 AS `volumen_inventario_actual_bls`,
 1 AS `max(p.precio_producto_dolar_bl)`,
 1 AS `precio_venta_prod_dolar_bl`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_volumenes_mayores_cargamentos`
--

DROP TABLE IF EXISTS `vista_volumenes_mayores_cargamentos`;
/*!50001 DROP VIEW IF EXISTS `vista_volumenes_mayores_cargamentos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_volumenes_mayores_cargamentos` AS SELECT 
 1 AS `numero_embarque`,
 1 AS `nombre_buque`,
 1 AS `parcela_numero`,
 1 AS `nombre_producto`,
 1 AS `volumen_inicio_carga_bls`,
 1 AS `volumen_fin_carga_bls`,
 1 AS `volumen_total_cargado_bls`,
 1 AS `nombre_cliente`,
 1 AS `nombre_empresa_proveedor`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_cargamentos_cliente_china`
--

/*!50001 DROP VIEW IF EXISTS `vista_cargamentos_cliente_china`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_cargamentos_cliente_china` AS select `e`.`numero_embarque` AS `numero_embarque`,`b`.`nombre_buque` AS `nombre_buque`,`d_e`.`parcela_numero` AS `parcela_numero`,`p`.`nombre_producto` AS `nombre_producto`,`d_e`.`volumen_inicio_carga_bls` AS `volumen_inicio_carga_bls`,`d_e`.`volumen_fin_carga_bls` AS `volumen_fin_carga_bls`,`f`.`volumen_total_cargado_bls` AS `volumen_total_cargado_bls`,`c`.`nombre_cliente` AS `nombre_cliente`,`pv`.`nombre_empresa_proveedor` AS `nombre_empresa_proveedor` from ((((((`detalle_embarque` `d_e` join `embarque` `e` on((`d_e`.`ID_embarque` = `e`.`ID_embarque`))) join `factura` `f` on((`f`.`ID_embarque` = `e`.`ID_embarque`))) join `producto` `p` on((`p`.`ID_producto` = `d_e`.`ID_producto`))) join `buque` `b` on((`b`.`ID_buque_IMO` = `e`.`ID_buque_IMO`))) join `cliente` `c` on((`c`.`ID_cliente` = `f`.`ID_cliente`))) join `proveedor` `pv` on((`pv`.`ID_empresa_proveedor` = `p`.`ID_empresa_proveedor`))) where (`c`.`nombre_cliente` like 'china%') order by `d_e`.`ID_detalle_embarque` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_cargamentos_crudos_merey_dco`
--

/*!50001 DROP VIEW IF EXISTS `vista_cargamentos_crudos_merey_dco`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_cargamentos_crudos_merey_dco` AS select `e`.`numero_embarque` AS `numero_embarque`,`b`.`nombre_buque` AS `nombre_buque`,`d_e`.`parcela_numero` AS `parcela_numero`,`p`.`nombre_producto` AS `nombre_producto`,`d_e`.`volumen_inicio_carga_bls` AS `volumen_inicio_carga_bls`,`d_e`.`volumen_fin_carga_bls` AS `volumen_fin_carga_bls`,`f`.`volumen_total_cargado_bls` AS `volumen_total_cargado_bls`,`c`.`nombre_cliente` AS `nombre_cliente`,`pv`.`nombre_empresa_proveedor` AS `nombre_empresa_proveedor` from ((((((`detalle_embarque` `d_e` join `embarque` `e` on((`d_e`.`ID_embarque` = `e`.`ID_embarque`))) join `factura` `f` on((`f`.`ID_embarque` = `e`.`ID_embarque`))) join `producto` `p` on((`p`.`ID_producto` = `d_e`.`ID_producto`))) join `buque` `b` on((`b`.`ID_buque_IMO` = `e`.`ID_buque_IMO`))) join `cliente` `c` on((`c`.`ID_cliente` = `f`.`ID_cliente`))) join `proveedor` `pv` on((`pv`.`ID_empresa_proveedor` = `p`.`ID_empresa_proveedor`))) where ((`p`.`nombre_producto` like 'mer%') or (`p`.`nombre_producto` like 'd%')) order by `d_e`.`ID_detalle_embarque` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_productos_mayor_inventario`
--

/*!50001 DROP VIEW IF EXISTS `vista_productos_mayor_inventario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_productos_mayor_inventario` AS select `p`.`nombre_producto` AS `nombre_producto`,`cp`.`nombre_categoria_producto` AS `nombre_categoria_producto`,`pv`.`nombre_empresa_proveedor` AS `nombre_empresa_proveedor`,`cp`.`descripcion_categoria_producto` AS `descripcion_categoria_producto`,`p`.`volumen_inventario_actual_bls` AS `volumen_inventario_actual_bls` from ((`producto` `p` join `proveedor` `pv` on((`p`.`ID_empresa_proveedor` = `pv`.`ID_empresa_proveedor`))) join `categoria_producto` `cp` on((`p`.`ID_categoria_producto` = `cp`.`ID_categoria_producto`))) where (`p`.`volumen_inventario_actual_bls` >= 4000000) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_productos_mayor_precio`
--

/*!50001 DROP VIEW IF EXISTS `vista_productos_mayor_precio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_productos_mayor_precio` AS select `p`.`nombre_producto` AS `nombre_producto`,`cp`.`nombre_categoria_producto` AS `nombre_categoria_producto`,`pv`.`nombre_empresa_proveedor` AS `nombre_empresa_proveedor`,`cp`.`descripcion_categoria_producto` AS `descripcion_categoria_producto`,`p`.`volumen_inventario_actual_bls` AS `volumen_inventario_actual_bls`,max(`p`.`precio_producto_dolar_bl`) AS `max(p.precio_producto_dolar_bl)`,`d_f`.`precio_venta_prod_dolar_bl` AS `precio_venta_prod_dolar_bl` from (((`producto` `p` join `proveedor` `pv` on((`p`.`ID_empresa_proveedor` = `pv`.`ID_empresa_proveedor`))) join `categoria_producto` `cp` on((`p`.`ID_categoria_producto` = `cp`.`ID_categoria_producto`))) join `detalle_factura` `d_f` on((`d_f`.`ID_producto` = `p`.`ID_producto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_volumenes_mayores_cargamentos`
--

/*!50001 DROP VIEW IF EXISTS `vista_volumenes_mayores_cargamentos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_volumenes_mayores_cargamentos` AS select `e`.`numero_embarque` AS `numero_embarque`,`b`.`nombre_buque` AS `nombre_buque`,`d_e`.`parcela_numero` AS `parcela_numero`,`p`.`nombre_producto` AS `nombre_producto`,`d_e`.`volumen_inicio_carga_bls` AS `volumen_inicio_carga_bls`,`d_e`.`volumen_fin_carga_bls` AS `volumen_fin_carga_bls`,`f`.`volumen_total_cargado_bls` AS `volumen_total_cargado_bls`,`c`.`nombre_cliente` AS `nombre_cliente`,`pv`.`nombre_empresa_proveedor` AS `nombre_empresa_proveedor` from ((((((`detalle_embarque` `d_e` join `embarque` `e` on((`d_e`.`ID_embarque` = `e`.`ID_embarque`))) join `factura` `f` on((`f`.`ID_embarque` = `e`.`ID_embarque`))) join `producto` `p` on((`p`.`ID_producto` = `d_e`.`ID_producto`))) join `buque` `b` on((`b`.`ID_buque_IMO` = `e`.`ID_buque_IMO`))) join `cliente` `c` on((`c`.`ID_cliente` = `f`.`ID_cliente`))) join `proveedor` `pv` on((`pv`.`ID_empresa_proveedor` = `p`.`ID_empresa_proveedor`))) where (`f`.`volumen_total_cargado_bls` >= 1700000) order by `d_e`.`ID_detalle_embarque` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-31 19:24:39


-- CREACIÓN DE FUNCIONES

-- Funcion 1

drop function if exists FN_CANTIDAD_EMBARQUES ;

delimiter //
create function FN_CANTIDAD_EMBARQUES(letra_producto varchar(10)) 
returns INT
DETERMINISTIC
begin
 declare cant_embarques int;
 SELECT 
        count(nombre_producto)
        into cant_embarques
    FROM producto p join detalle_embarque d_e on p.ID_producto = d_e.ID_producto
    WHERE
        nombre_producto LIKE concat('%',letra_producto,'%');
 return cant_embarques;
end//
delimiter ;

select FN_CANTIDAD_EMBARQUES ('d') as cantidad_embarques;

select nombre_producto, FN_CANTIDAD_EMBARQUES (left(nombre_producto,2)) as cantidad_embarques from producto p join detalle_embarque d_e on p.ID_producto = d_e.ID_producto
group by nombre_producto;


-- Funcion 2

drop function if exists FN_TOTAL_VOLUMEN_EMBARQUES;

delimiter //
create function FN_TOTAL_VOLUMEN_EMBARQUES (letra_producto varchar(10)) 
returns decimal (12,2)
DETERMINISTIC
begin
 declare vol_embarques decimal (12,2);
 SELECT 
        sum(volumen_total_cargado_prod_bls)
        into vol_embarques
    FROM producto p join detalle_factura d_f on p.ID_producto = d_f.ID_producto
    WHERE
        nombre_producto LIKE concat('%',letra_producto,'%');
 return vol_embarques;
end//
delimiter ;


select FN_TOTAL_VOLUMEN_EMBARQUES ('z') as volumen_embarques_bls;

select nombre_producto, FN_TOTAL_VOLUMEN_EMBARQUES (left(nombre_producto,2)) as volumen_embarques_bls from producto p join detalle_factura d_f on p.ID_producto = d_f.ID_producto
group by nombre_producto;

-- Funcion 3

drop function if exists FN_TOTAL_VENTA_PRODUCTOS;

delimiter //
create function FN_TOTAL_VENTA_PRODUCTOS (letra_producto varchar(10)) 
returns decimal (12,2)
DETERMINISTIC
begin
 declare venta_productos decimal (12,2);
 SELECT 
        sum((volumen_total_cargado_prod_bls*precio_venta_prod_dolar_bl)-((volumen_total_cargado_prod_bls*precio_venta_prod_dolar_bl)*descuento_venta_prod_porc))
        into venta_productos
    FROM producto p join detalle_factura d_f on p.ID_producto = d_f.ID_producto
    WHERE
        nombre_producto LIKE concat('%',letra_producto,'%');
 return venta_productos;
end//
delimiter ;

select FN_TOTAL_VENTA_PRODUCTOS ('z') as venta_producto_dolar;

select nombre_producto, FN_TOTAL_VENTA_PRODUCTOS (left(nombre_producto,2)) as venta_producto_dolar from producto p join detalle_factura d_f on p.ID_producto = d_f.ID_producto
group by nombre_producto;


-- CREACIÓN DE STORED PROCEDURES

-- 1.- STORED PROCEDURES PARA ORDENAR REGISTROS DE LAS TABLAS DE LA BD TERMINAL 

drop procedure if exists SP_orden_tabla_terminal;
DELIMITER //
CREATE PROCEDURE SP_orden_tabla_terminal (in p_name_table varchar(100), 
in p_campo_order varchar(80), 
in p_asc_desc varchar(5))
BEGIN
set @order_b = concat('select * from', ' ', p_name_table, ' ', 'order by', ' ', p_campo_order, ' ',p_asc_desc);
PREPARE runSQL_buque FROM @order_b;
EXECUTE runSQL_buque;
DEALLOCATE PREPARE runSQL_buque;
END //
DELIMITER ;
set @p_name_table = 'producto';
set @p_campo_order = 'precio_producto_dolar_bl';
set @p_asc_desc = 'desc';

call SP_orden_tabla_terminal (@p_name_table, @p_campo_order, @p_asc_desc);


-- 2.- STORED PROCEDURES PARA INSERTAR REGISTROS EN LA TABLA BUQUE

drop procedure if exists SP_insertar_registro_buque;

DELIMITER //
CREATE PROCEDURE SP_insertar_registro_buque (in p_ID_buque_IMO int, 
in p_nombre_buque varchar(100), 
in p_categoria_buque varchar(150),
in p_tipo_buque varchar(45), 
in p_bandera varchar(100),
in p_TPM decimal(10,2), 
in p_largo_total decimal(6,2),
in p_ancho_total decimal(6,2),
in p_ano_construccion int,
out estado varchar(250))
BEGIN
if(select count(ID_buque_IMO) from buque
where ID_buque_IMO=p_ID_buque_IMO) = 1 then 
select 'IMO del buque ya existe, no es posible insertar valores' into estado;
else 
insert into buque (ID_buque_IMO, nombre_buque, categoria_buque, tipo_buque, bandera, TPM, largo_total, ancho_total, ano_construccion) 
VALUES (p_ID_buque_IMO, p_nombre_buque, p_categoria_buque, p_tipo_buque, p_bandera, p_TPM, p_largo_total, p_ancho_total, p_ano_construccion);
select 'buque no existe, se agrego satisfactoriamente el nuevo registro' into estado;
end if;

END //
DELIMITER ;

set @p_ID_buque_IMO = '9236250'; 
set @p_nombre_buque = 'POSEIDON I';  
set @p_categoria_buque = 'Crude Oil Tanker';
set @p_tipo_buque = 'VLCC';
set @p_bandera = 'Panama [PA]';
set @p_TPM = 305796;
set @p_largo_total = 332 ;
set @p_ancho_total = 58.05;
set @p_ano_construccion = '2002' ;

call SP_insertar_registro_buque (@p_ID_buque_IMO, @p_nombre_buque, @p_categoria_buque, @p_tipo_buque, @p_bandera, @p_TPM, @p_largo_total, @p_ancho_total, @p_ano_construccion, @retorno);
select @retorno as estado;

select * from buque
order by nombre_buque;


-- 3.- CREACIÓN DE STORED PROCEDURES PARA ELIMINAR REGISTROS DE LA TABLA BUQUE


drop procedure if exists SP_eliminar_registro_buque;
DELIMITER //
CREATE PROCEDURE SP_eliminar_registro_buque (in p_ID_buque_IMO int, 
out estado varchar(250))
BEGIN
if(select count(ID_buque_IMO) from buque
where ID_buque_IMO=p_ID_buque_IMO) = 0 then 
select 'IMO del buque no existe, no es posible borrar registro' into estado;
else 
delete from buque 
where ID_buque_IMO=p_ID_buque_IMO;
select 'registro ubicado, se elimino satisfactoriamente' into estado;
end if;

END //
DELIMITER ;

set @p_ID_buque_IMO = '9236250'; 
call SP_eliminar_registro_buque (@p_ID_buque_IMO, @retorno);
select @retorno as estado;

select * from buque
order by nombre_buque;


-- 1.- CREACIÓN DE TRIGGER

Drop table if  exists LOG_AUDITORIA_TERMINAL_C;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_TERMINAL_C
(
ID_LOG INT AUTO_INCREMENT ,
NOMBRE_CLIENTE varchar(200),
ID_CLIENTE INT NOT NULL,
NOMBRE_DE_ACCION VARCHAR(10) ,
NOMBRE_TABLA VARCHAR(50) ,
USUARIO VARCHAR(100) ,
FECHA_ACCION DATE ,
HORA_ACCION TIME , 
PRIMARY KEY (ID_LOG)
)
;

drop table if  exists LOG_AUDITORIA_TERMINAL_B;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_TERMINAL_B
(
ID_LOG INT AUTO_INCREMENT ,
NOMBRE_BUQUE varchar(100),
ID_BUQUE_IMO INT NOT NULL,
NOMBRE_DE_ACCION VARCHAR(10) ,
NOMBRE_TABLA VARCHAR(50) ,
USUARIO VARCHAR(100) ,
FECHA_ACCION DATE ,
HORA_ACCION TIME , 
PRIMARY KEY (ID_LOG)
)
;

drop table if  exists LOG_AUDITORIA_TERMINAL_B_2;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_TERMINAL_B_2
(
ID_LOG INT AUTO_INCREMENT ,
NOMBRE_BUQUE_ANTERIOR varchar(100), 
NOMBRE_BUQUE_ACTUAL varchar(100),
ID_BUQUE_IMO INT NOT NULL,
NOMBRE_DE_ACCION VARCHAR(10) ,
NOMBRE_TABLA VARCHAR(50) ,
USUARIO VARCHAR(100) ,
FECHA_ACCION DATE ,
HORA_ACCION TIME , 
PRIMARY KEY (ID_LOG)
)
;

-- DROP TRIGGER TRG_LOG_CLIENTE ;
DELIMITER //
CREATE TRIGGER TRG_LOG_CLIENTE AFTER INSERT ON TERMINAL.CLIENTE
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDITORIA_TERMINAL_C (NOMBRE_CLIENTE, ID_CLIENTE, NOMBRE_DE_ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION, HORA_ACCION)
VALUES ( NEW.nombre_cliente  ,NEW.ID_cliente, 'INSERT' , 'CLIENTE' ,CURRENT_USER() , NOW(), CURRENT_TIME());

END//
DELIMITER ;

INSERT INTO cliente (`ID_cliente`,`nombre_cliente`, `direccion_cliente`,`telefono_cliente`, `correo_cliente`) VALUES (10, 'ATLANTIC TRADING & MARKETING INC', '5847 San Felipe St # 2100, Houston, TX 77057, Estados Unidos', '17132432200','presse@totalenergies.com');
INSERT INTO cliente (`ID_cliente`,`nombre_cliente`, `direccion_cliente`,`telefono_cliente`, `correo_cliente`) VALUES (11, 'REPSOL TRADING,S.A', 'Calle Mendez Alvaro, 44, Madrid, 28045 , Madrid', '917538100','carlos.perezdecea@repsol.com');
INSERT INTO cliente (`ID_cliente`,`nombre_cliente`, `direccion_cliente`,`telefono_cliente`, `correo_cliente`) VALUES (12, 'DELTA LIMITED LIABILITY COMPANY', '25, Grekivska str., c. Kharkiv, 61000, Ukraine', '577197788','info@rada.com.ua');
INSERT INTO cliente (`ID_cliente`,`nombre_cliente`, `direccion_cliente`,`telefono_cliente`, `correo_cliente`) VALUES (13, 'CUBAMETALES', 'Calle 10 No. 512 e/ 5ta y 31, Playa, La Habana, Cuba', '5372144341', 'procubainfo@mincex.gob.cu');

SELECT * FROM CLIENTE;
SELECT * FROM LOG_AUDITORIA_TERMINAL_C;


-- DROP TRIGGER TRG_LOG_BUQUE ;
DELIMITER //
CREATE TRIGGER TRG_LOG_BUQUE AFTER INSERT ON TERMINAL.BUQUE
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDITORIA_TERMINAL_B (NOMBRE_BUQUE, ID_BUQUE_IMO, NOMBRE_DE_ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION, HORA_ACCION)
VALUES ( NEW.nombre_buque  ,NEW.ID_buque_IMO, 'INSERT' , 'CLIENTE' ,CURRENT_USER() , NOW(), CURRENT_TIME());

END//
DELIMITER ;

INSERT INTO buque (`ID_buque_IMO`,`nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES (9236250, 'POSEIDON I', 'Crude Oil Tanker', 'VLCC', 'Panama [PA]', '305796.00', '332.00', '58.05', '2002');

SELECT * FROM BUQUE;
SELECT * FROM LOG_AUDITORIA_TERMINAL_B;


-- DROP TRIGGER TRG_LOG_BUQUE_II ;
DELIMITER //
CREATE TRIGGER TRG_LOG_BUQUE_II BEFORE UPDATE ON TERMINAL.BUQUE
FOR EACH ROW 
BEGIN

INSERT INTO LOG_AUDITORIA_TERMINAL_B_2 (NOMBRE_BUQUE_ANTERIOR,NOMBRE_BUQUE_ACTUAL, ID_BUQUE_IMO, NOMBRE_DE_ACCION , NOMBRE_TABLA , USUARIO,FECHA_ACCION, HORA_ACCION)
VALUES ( OLD.nombre_buque , NEW.nombre_buque  ,NEW.ID_buque_IMO, 'UPDATE' , 'CLIENTE' ,CURRENT_USER() , NOW(), CURRENT_TIME());

END//
DELIMITER ;

UPDATE terminal.buque SET nombre_buque = 'seagrace'  WHERE ID_buque_IMO = 9290309 ; 
UPDATE terminal.buque SET nombre_buque = 'poseidon i'   WHERE ID_buque_IMO = 9236250 ; 

SELECT * FROM BUQUE;
SELECT * FROM LOG_AUDITORIA_TERMINAL_B_2;
