--Eliminar registros de una tabla--
create table agenda(
  apellido varchar2(30),
  nombre varchar2(20),
  domicilio varchar2(30),
  telefono varchar2(11)
 );

 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Alvarez','Alberto','Colon 123','4234567');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values 
   ('Salas','Susana','Gral. Paz 1234','4123456');
   
select * from agenda;

--Usando instruccion DELETE para elminiar registros de una tabla--
delete from agenda;