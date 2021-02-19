/*Secuencias*/
/*Se utiliza para hacer autoincrementables asociados a una llave 
de tipo numerica*/
/*Consta de 
Nombre, Valor Maximo, Valor minimo y ciclo*/

select secuencialibros.nextval from dual;/*inicializamos la secuencia, obligatorio*/

drop table libros;

create table Libros (
    ID_Libro int not null Primary key,
    Titulo varchar(40) not null,
    Autor Varchar(40),
    Precio Number(5,2)
);

select * from libros;

insert into libros values (secuencialibros.currval,'El quijote','Miguel de cervantes',500.00);
insert into libros values (secuencialibros.nextval,'Cien años de soledad','Gabriel M. Marquez',500.00);

truncate table libros; /*eliminamos los registros*/
drop SEQUENCE secuencialibros; /*eliminamos la secuencias*/

create sequence Secuencialibros
start with 1
increment by 1
maxvalue 9999
minvalue 1
cycle;

/*Pasos*/
--creamos la secuencia
--inicializamos la secuencia
--podemos usarla 