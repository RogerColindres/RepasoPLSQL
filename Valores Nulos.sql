--Valores no nulos-
create table Libros (
Titulo varchar2(30) not null,
Autor varchar2(20) not null,
Editorial varchar(15),
Precio number(5,2)
)

Insert into libros values ('Hola Mundo js','Roger Colindres','',120.10);
insert into Libros (Titulo,Autor,Editorial,Precio) values ('JS para todos','Roger Colindres','R10 para todos',130.50);

Select * from libros