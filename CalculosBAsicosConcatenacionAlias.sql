--Calculos basicos en consultas y alias usando AS y seguido del Alias--
--**	exponenciaci�n
--+,-	identidad, negaci�n
--*,/	multiplicaci�n, divisi�n
--+, -, ||	suma, resta, concatenaci�n
--%     modulo

select titulo, precio, cantidad, (precio*cantidad) as Total from libros;

select Titulo, precio, (precio -(Precio * 0.10)) Descuento from Libros;  

update libros set precio = precio -(precio*0.10);

select * from libros;

--concatenacion de datos--

select (titulo ||','||autor) as TituloAutor from libros;


