/*Función Count*/
drop table medicamentos;

 create table medicamentos(
  codigo number(5),
  nombre varchar2(20),
  laboratorio varchar2(20),
  precio number(6,2),
  cantidad number(3),
  fechavencimiento date not null,
  numerolote number(6) default null,
  primary key(codigo)
 );
 

 insert into medicamentos
  values(120,'Sertal','Roche',5.2,1,to_date('01/02/2015','dd/mm/yyyy'),123456);
 insert into medicamentos 
  values(220,'Buscapina','Roche',4.10,3,to_date('01/02/2016','dd/mm/yyyy'),null);
 insert into medicamentos 
  values(228,'Amoxidal 500','Bayer',15.60,100,to_date('01/05/2017','dd/mm/yyyy'),232566);
 insert into medicamentos
  values(324,'Paracetamol 500','Bago',1.90,20,to_date('01/02/2018','dd/mm/yyyy'),null);
 insert into medicamentos 
  values(587,'Bayaspirina',null,2.10,null,to_date('01/12/2019','dd/mm/yyyy'),556999); 
 insert into medicamentos 
  values(789,'Amoxidal jarabe','Bayer',null,null,to_date('15/12/2019','dd/mm/yyyy'),null); 
  
  select * from medicamentos;
  
  select count(*) Registros from medicamentos;
  
  select count(laboratorio) as Cantidad from medicamentos;
  
  select count(Precio) as con_precio, count(cantidad) as con_cantidad from medicamentos;