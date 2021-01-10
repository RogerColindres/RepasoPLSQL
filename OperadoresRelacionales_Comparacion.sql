--Operadores de comparación--
-- = (igual a)
-- <> (distinto de)
-- < (menor que)
-- < (menor que)
-- >= (mayor o igual a)
-- <= (menor o igual a)

select * from articulos where nombre = 'monitor';
select * from articulos where nombre != 'monitro';
select * from articulos where precio > 100.00;
select * from articulos where precio < 100.00;
select * from articulos where precio >= 100.00;
select * from articulos where precio <= 100.00;