drop user  if  exists 'invitado'@'localhost' ;
drop user  if  exists 'f_rojas'@'localhost' ;

-- Creación de usuarios
create user if not exists 'invitado'@'localhost' identified by 'invitado' ; -- se crea usuario invitado que solo podra tener privelegios de lectura sobre las tablas de la BD proyecto_terminal
create user if not exists 'f_rojas'@'localhost' identified by 'F.rojas0380' ; -- se crea usuario 'f_rojas' que tendra privelegios de lectura, Inserción y Modificación de datos en las las tablas de la BD proyecto_terminal.


-- Creación de privilegios

-- Usuario 1
grant select on proyecto_terminal.* to 'invitado'@'localhost' ; -- permiso de lectura sobre todas las tablas de la BD proyecto_terminal
show grants for 'invitado'@'localhost' ;

-- Usuario 2
grant select , insert, update on proyecto_terminal.* to 'f_rojas'@'localhost' ;  -- permiso de lectura, inserción y Modificación de datos en todas las tablas de la BD proyecto_terminal
show grants for 'f_rojas'@'localhost' ;
