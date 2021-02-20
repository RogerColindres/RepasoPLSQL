/*Realciones entre tablas (joins)*/
drop table clientes;
drop table provincias;

create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(2)
 );

 create table provincias(
  codigo number(2),
  nombre varchar2(20)
 );
 
  insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');
 insert into provincias values(null,'La Pampa');

 insert into clientes values (1,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (2,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (3,'Garcia Juan','Rivadavia 333','Villa Maria',null);
 insert into clientes values (4,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (5,'Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values (6,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (7,'Torres Fabiola','Alem 777','Ibera',3);
 insert into clientes values (8,'Garcia Paco','Avellaneda 888','Rawson',5);
 
 select * from clientes;
 select * from provincias;
 
 /*Join*/
 
 select c.nombre, domicilio, ciudad, p.nombre from clientes c
 inner join provincias p on c.codigoprovincia = p.codigo
 order by p.nombre;
 
 /*Left Join*/
 
  --borrar tablas existentes
drop table clientes;
drop table provincias;

create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(3)
 );

 create table provincias(
  codigo number(3),
  nombre varchar2(20)
 );
 
 alter table clientes
  add constraints UQ_clientes_codigo
  unique (codigo);

 alter table provincias
  add constraints UQ_provincias_codigo
  unique (codigo);
  
insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');
 insert into provincias values(4,'Santa Cruz');
 insert into provincias values(null,'Salta');
 insert into provincias values(null,'Jujuy');

 insert into clientes values (100,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (200,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (300,'Garcia Juan','Rivadavia 333','Villa Maria',null);
 insert into clientes values (400,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (500,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (600,'Torres Fabiola','Alem 777','La Plata',5);
 insert into clientes values (700,'Garcia Luis','Sucre 475','Santa Rosa',null);
 
 select * from provincias;
 select * from clientes;
 
 /*ejecucion del left join*/
 
 select c.nombre, c.domicilio, c.ciudad, p.nombre as provincia
 from provincias p left join clientes c
 on p.codigo = c.codigoprovincia;
 
  select c.nombre, c.domicilio, c.ciudad, p.nombre as provincia
 from clientes c left join  provincias p
 on p.codigo = c.codigoprovincia;
 
 /*right join*/
drop table clientes;
drop table provincias;

 create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(2),
  primary key(codigo)
 );

 create table provincias(
  codigo number(2),
  nombre varchar2(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');

 insert into clientes values (101,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (102,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (103,'Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values (104,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (105,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (106,'Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values (107,'Garcia Luis','Sucre 475','Santa Rosa',5);

select * from clientes;
select * from provincias;

/*Ejecucion del right join*/
select c.nombre NombreCliente, c.domicilio, c.ciudad ,p.nombre Provincia
from provincias p right join clientes c
on c.codigoprovincia = p.codigo;

select c.nombre NombreCliente, c.domicilio, c.ciudad ,p.nombre Provincia
from clientes c right join provincias p
on c.codigoprovincia = p.codigo;

/*Full Join*/
drop table deportes;
 drop table inscriptos;
 
  create table deportes(
  codigo number(2),
  nombre varchar2(30),
  profesor varchar2(30)
 );

 create table inscriptos(
  documento char(8),
  codigodeporte number(2),
  matricula char(1) --'s'=paga; 'n'=impaga
 );
 
 alter table deportes
  add constraint PK_deportes
  primary key(codigo);

 alter table inscriptos
  add constraint PK_inscriptos
  primary key(documento,codigodeporte);
  
insert into deportes values(1,'tenis','Marcelo Roca');
 insert into deportes values(2,'natacion','Marta Torres');
 insert into deportes values(3,'basquet','Luis Garcia');
 insert into deportes values(4,'futbol','Marcelo Roca');
 
 insert into inscriptos values('ins-0001',3,'s');
 insert into inscriptos values('ins-0002',3,'s');
 insert into inscriptos values('ins-0003',3,'n');
 insert into inscriptos values('ins-0004',2,'s');
 insert into inscriptos values('ins-0005',2,'s');
 insert into inscriptos values('ins-0006',4,'n'); 
 insert into inscriptos values('ins-0007',5,'n');
 
 select * from deportes;
 select * from inscriptos;
 
 /*ejecucion full join*/
 select i.documento, i.matricula, de.nombre Deporte, de.profesor
 from inscriptos i full join deportes de 
 on i.codigodeporte = de.codigo
 
/*Joins mas de dos tablas*/
drop table socios;
drop table deportes;
drop table inscriptos;

 create table socios(
  documento char(8) not null, 
  nombre varchar2(30),
  domicilio varchar2(30),
  primary key(documento)
 );

 create table deportes(
  codigo number(2),
  nombre varchar2(20),
  profesor varchar2(15),
  primary key(codigo)
 );

 create table inscriptos(
  documento char(8) not null, 
  codigodeporte number(2) not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );
 
  insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

insert into deportes values(1,'basquet','Juan Juarez');
 insert into deportes values(2,'futbol','Pedro Perez');
 insert into deportes values(3,'natacion','Marina Morales');
 insert into deportes values(4,'tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2016','s');
 insert into inscriptos values ('23333333',3,'2016','s');
 insert into inscriptos values ('24444444',3,'2016','n');
 insert into inscriptos values ('22222222',3,'2015','s');
 insert into inscriptos values ('22222222',3,'2017','n');
 insert into inscriptos values ('24444444',1,'2016','s');
 insert into inscriptos values ('24444444',2,'2016','s');
 insert into inscriptos values ('26666666',0,'2016','s');
 
 select * from socios;
 select * from deportes;
 select * from inscriptos;
 
select s.nombre Socio, d.nombre Deporte, i.anio año
from deportes d inner join inscriptos i
on d.codigo = i.codigodeporte inner join socios s 
on i.documento = s.documento;
 
 