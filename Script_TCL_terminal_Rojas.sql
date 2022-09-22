USE terminal;
SELECT @@AUTOCOMMIT;
SET AUTOCOMMIT = 0;
SELECT @@SQL_SAFE_UPDATES;
SET SQL_SAFE_UPDATES = 0;

-- TRANSACTION 1: Eliminacion de registros de la tabla cliente de la BD Terminal

SELECT * FROM terminal.cliente;

START TRANSACTION;
DELETE FROM `terminal`.`cliente` WHERE (`ID_cliente` = '2');
DELETE FROM `terminal`.`cliente` WHERE (`ID_cliente` = '5');
DELETE FROM `terminal`.`cliente` WHERE (`ID_cliente` = '9');
DELETE FROM `terminal`.`cliente` WHERE (`ID_cliente` = '12');
-- ROLLBACK;
COMMIT;

SELECT * FROM terminal.cliente;

-- Se deja comentanda la inserción de los registros borrados para que sean posteriromente agregados

-- INSERT INTO `terminal`.`cliente` (`ID_cliente`, `nombre_cliente`, `direccion_cliente`, `telefono_cliente`, `correo_cliente`) VALUES ('2', 'CHINA NATIONAL UNITED OIL CORPORATION', '27 Chengfang Street Xicheng District, 100033 China', '86 1066227002', 'chinaoil.cnpc.com.cn');
-- INSERT INTO `terminal`.`cliente` (`ID_cliente`, `nombre_cliente`, `direccion_cliente`, `telefono_cliente`, `correo_cliente`) VALUES ('5', 'TNK TRADING INTERNATIONAL S.A.', 'Place du Lac 2 Genève, GENÈVE, 1204 Switzerland', '41 223428234', 'company@tradingint.com');
-- INSERT INTO `terminal`.`cliente` (`ID_cliente`, `nombre_cliente`, `direccion_cliente`, `telefono_cliente`, `correo_cliente`) VALUES ('9', 'ROSNEFT TRADING SA.', '26/1 Sofiyskaya Embankment, Moscow, 117997', '7-499-5178899', 'ir@rosneft.ru');
-- INSERT INTO `terminal`.`cliente` (`ID_cliente`, `nombre_cliente`, `direccion_cliente`, `telefono_cliente`, `correo_cliente`) VALUES ('12', 'DELTA LIMITED LIABILITY COMPANY', '25, Grekivska str., c. Kharkiv, 61000, Ukraine', '577197788', '\"info@rada.com.ua');



-- TRANSACTION 2: Inserción de registros en la tabla buque de la BD Terminal usando savepoint 

SELECT * FROM terminal.buque;
START TRANSACTION;
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('21', '9262168', 'FOLEGANDROS I', 'Crude Oil Tanker', 'VLCC', 'Panama [PA]', '299984', '333', '60', '2004');
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('22', '9480837', 'HRA', 'Crude Oil Tanker', 'VLCC', 'Liberia [LR]', '320105', '333.05', '60', '2011');
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('23', '9299898', 'PELAGOS ONE', 'Crude Oil Tanker', 'Aframax', 'Indonesia [ID]', '111775', '250', '44.07', '2005');
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('24', '9410210', 'TATAKI', 'Oil Products Tanker', 'Suezmax', 'Liberia [LR]', '162187', '276.2', '50', '2010');
SAVEPOINT sp1;
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('25', '9240512', 'MARAN CARINA', 'Crude Oil Tanker', 'VLCC', 'Panama [PA]', '306315', '332', '58', '2003');
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('26', '9312145', 'SOUNION', 'Crude Oil Tanker', 'Suezmax', 'Greece [GR]', '163759', '274', '50.06', '2006');
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('27', '9389019', 'MARAN CAPRICORN', 'Crude Oil Tanker', 'VLCC', 'Greece [GR]', '320513', '333', '60', '2008');
INSERT INTO `terminal`.`buque` (`ID_buque_IMO`, `IMO`, `nombre_buque`, `categoria_buque`, `tipo_buque`, `bandera`, `TPM`, `largo_total`, `ancho_total`, `ano_construccion`) VALUES ('28', '9429027', 'DELTA TOLMI', 'Crude Oil Tanker', 'Suezmax', 'Liberia [LR]', '157488', '274', '48', '2010');
SAVEPOINT sp2;
-- ROLLBACK TO sp1;
-- release SAVEPOINT sp1; 