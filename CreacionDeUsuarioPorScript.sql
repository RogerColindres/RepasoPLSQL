--creacion de usuario--
create user miusuario identified by holamundo --user name and password 
default tablespace system --Definimos el espacio de tabla del usuario
temporary tablespace temp --memoria temporal para el usuario
quota unlimited on system; --El usuario puede utilizar todo el espacio disponible en el tablespace 

--Privilegios para el usuario--
--Conectarse a la base de datos
grant create session to miusuario;
--crear tablas en la base de datos
grant create table to miusuario;
--crear vistas en la base de adtos
grant create view to miusuario;
--crear y modificar procedimientos en la base de datos
grant create procedure to miusuario;
--crear secuencias dentro de la base de datos 
grant create sequence to miusuario;
--Privilegios para administrar tablas
grant all on nombretabla to miusuario; --siempre que existan tablas en la base de datos.

--revocar privilegios de tabla 
revoke all on nombretabla from miusuario;

--eliminar usuario de una base de datos
drop user miusuario cascade;