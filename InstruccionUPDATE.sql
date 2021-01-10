--Actualizar registros por medio de la instruccion UPDATE--
select * from articulos;

update articulos set nombre = 'impresora' where codigo = 8;

update articulos set nombre = 'impresora', precio = 500.00 where codigo =2;