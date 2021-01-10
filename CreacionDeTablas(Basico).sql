--TABLAS--
--creación de tablas
create table Usuario (
IDUsuario int, 
Nombre char(10),
Fecha_nacimineto date,
Telefono char(8),
Salario number(6,2)
);

select * from usuario;
--muestar una descripción de la tabla creada
describe usuario;

