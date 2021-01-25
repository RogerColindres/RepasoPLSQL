--DEFAULT--
--Valores por defecto--
--Valores por defecto cuando se consulta una tabla, el valor aparece en el campo que se le configure dicha regal (default)--
--Nos permite colocar valores por defecto--

Drop table libros;

create table Libros (
    Titulo varchar2(40) not null,
    Autor varchar2(30) default 'Desconocido',
    Editorial varchar2(40) not null,
    Precio number(5,2),
    Cantidad number(3) default 0
);

select * from libros;

insert into Libros values ('El Quijotes','Roger Colindres','La casa del libro',650.00,10);
insert into libros values ('Guerra y paz',default,'mensajero Ruso',500.00,5);
insert into libros values ('Cien años de soledad','Gabriel Marquez','Sudamericana',480.00,default);
