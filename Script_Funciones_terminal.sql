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

