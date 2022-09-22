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

-- Dump completed on 2022-08-24 17:08:46
