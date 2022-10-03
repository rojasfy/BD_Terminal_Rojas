USE proyecto_terminal;

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


-- 2.- STORED PROCEDURES PARA ELIMINAR REGISTROS DE LA TABLA BUQUE


drop procedure if exists SP_eliminar_registro_buque;
DELIMITER //
CREATE PROCEDURE SP_eliminar_registro_buque (in p_buque_IMO int, 
out estado varchar(250))
BEGIN
if(select count(IMO) from buque
where IMO=p_buque_IMO) = 0 then 
select 'IMO del buque no existe, no es posible borrar registro' into estado;
else 
delete from buque 
where IMO=p_buque_IMO;
select 'registro ubicado, se elimino satisfactoriamente' into estado;
end if;

END //
DELIMITER ;

set @p_buque_IMO = '9236250'; 
call SP_eliminar_registro_buque (@p_buque_IMO, @retorno);
select @retorno as estado;

select * from buque;

-- 3.- STORED PROCEDURES PARA INSERTAR REGISTROS EN LA TABLA BUQUE

drop procedure if exists SP_insertar_registro_buque;

DELIMITER //
CREATE PROCEDURE SP_insertar_registro_buque ( in p_ID_buque int, in p_buque_IMO int, 
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
if(select count(IMO) from buque
where IMO=p_buque_IMO) = 1 then 
select 'IMO del buque ya existe, no es posible insertar valores' into estado;
else 
insert into buque (ID_buque, IMO, nombre_buque, categoria_buque, tipo_buque, bandera, TPM, largo_total, ancho_total, ano_construccion) 
VALUES (p_ID_buque, p_buque_IMO, p_nombre_buque, p_categoria_buque, p_tipo_buque, p_bandera, p_TPM, p_largo_total, p_ancho_total, p_ano_construccion);
select 'Se agrego satisfactoriamente el nuevo registro' into estado;
end if;

END //
DELIMITER ;

set @p_ID_buque = '7'; 
set @p_buque_IMO = '9236250'; 
set @p_nombre_buque = 'POSEIDON I';  
set @p_categoria_buque = 'Crude Oil Tanker';
set @p_tipo_buque = 'VLCC';
set @p_bandera = 'Panama [PA]';
set @p_TPM = 305796;
set @p_largo_total = 332 ;
set @p_ancho_total = 58.05;
set @p_ano_construccion = '2002' ;

call SP_insertar_registro_buque (@p_ID_buque, @p_buque_IMO, @p_nombre_buque, @p_categoria_buque, @p_tipo_buque, @p_bandera, @p_TPM, @p_largo_total, @p_ancho_total, @p_ano_construccion, @retorno);
select @retorno as estado;

select * from buque;


