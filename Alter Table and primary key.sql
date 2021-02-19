/*Alter table/ Primary key*/
select * from articulos;
alter table articulos add constraint IDArticulo_pk 
primary key (ID_Articulo);

select * from user_cons_columns where constraint_name = 'IDARTICULO_PK'; /*informacion en la tabla*/

select * from all_objects where object_name = 'IDARTICULO_PK'; /*indormacion general*/

alter table articulos drop constraint IDArticulo_pk; /*Eliminacion de la llave primaria*/