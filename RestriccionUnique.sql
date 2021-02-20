/*Restriccion UNIQUE*/
/*no permite datos duplicados, pero permite 
valores nulos*/

create table usuarios(
 ID_Usuario int not null primary key,
 nombre_usuario varchar(30) null,
 clave_usuario varchar(30)
 );
 
 alter table usuarios add constraint UQ_nombreusuario 
 unique (nombre_usuario);
 
 insert into usuarios values (1,'usuario1','clave1');
 insert into usuarios values (2,'usuario2','clave2'); 
 
 select * from usuarios;
 
 alter table usuarios drop constraint UQ_nombreusuario; /*eliminamos la restriccion*/