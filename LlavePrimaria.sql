--Llave primaria o primary key--
--configuración de una llame primaria por script 
create table usuario (
    Nombre varchar2(20) not null,
    Clave varchar2(10) not null,
    primary key (Nombre)
    );

Insert into usuario values ('Jose','1');
Insert into usuario values ('Manuel','2');

select * from usuario;

insert into usuario values ('Manuel','3'); --lanza error porq la llave primaria es unica
