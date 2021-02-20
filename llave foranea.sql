/*Llave foranea*/
drop table clientes;
drop table provincias;

create table provincias (
    codigo number(2) not null primary key,
    nombre varchar(20)
);

create table clientes (
    codigo number(5),
    nombre varchar2(30),
    domicilio varchar2(30),
    ciudad varchar2(20),
    codigoprovincia number(2)
);

alter table clientes add constraint fk_codigoprovincias
foreign key (codigoprovincia) references provincias (codigo);

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values(100,'Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values(101,'Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values(102,'Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes values(103,'Luisa Lopez','Juarez 555','La Plata',6);
 
 /*llave foranea autoreferenciada*/
 create table clientes (
    codigo number(5)not null primary key,
    nombre varchar2(30),
    domicilio varchar2(30),
    ciudad varchar2(20),
    referenciadopor number(5)
);

insert into clientes values (50,'Juan Perez','Sucre 123','Cordoba',null);
 insert into clientes values(90,'Marta Juarez','Colon 345','Carlos Paz',null);
 insert into clientes values(110,'Fabian Torres','San Martin 987','Cordoba',50);
 insert into clientes values(125,'Susana Garcia','Colon 122','Carlos Paz',90);
 insert into clientes values(140,'Ana Herrero','Colon 890','Carlos Paz',9);
 
 select * from clientes;
 
 alter table clientes add constraint fk_referencia
 foreign key (referenciadopor) references clientes (codigo);
 
/*registros violan la regla de llave foreana refrenciada a la misma tabla*/

/*corregimos el registro que causa problemas*/
update clientes set referenciadopor = 90 where referenciadopor = 9;