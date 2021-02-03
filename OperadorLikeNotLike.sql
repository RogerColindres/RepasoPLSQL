/*Operador Like and not like*/
/*Comparación de cadenas de texto*/
drop table empleado;

create table empleados(
  nombre varchar2(30),
  documento char(8) not null,
  domicilio varchar2(30),
  fechaingreso date,
  seccion varchar2(20),
  sueldo number(6,2),
  primary key(documento)
 );
  insert into empleados
  values('Juan Perez','22333444','Colon 123',to_date('08/10/1990','dd/mm/yyyy'),'Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987',to_date('18/12/1995','dd/mm/yyyy'),'Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235',to_date('15/05/2005','dd/mm/yyyy'),'Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873',to_date('12/02/1999','dd/mm/yyyy'),'Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801',to_date('22/09/2002','dd/mm/yyyy'),'Contaduria',630.70);
 insert into empleados
  values('Yolanda perez','35111222','Colon 180',to_date('08/10/1990','dd/mm/yyyy'),'Administracion',400);
 insert into empleados
  values('Rodolfo perez','35555888','Coronel Olmedo 588',to_date('28/05/1990','dd/mm/yyyy'),'Sistemas',800);
  
  
  /*Comodines para instruccion like*/
  /*'A_Z': Toda línea que comience con 'A', otro carácter y termine con 'Z'. Por ejemplo, 'ABZ' y 'A2Z' deberían satisfacer la 
  condición, mientras 'AKKZ' no debería (debido a que hay dos caracteres entre A y Z en vez de uno).*/
  /*'ABC%': Todas las líneas que comienzan con 'ABC'. Por ejemplo, 'ABCD' y 'ABCABC' ambas deberían satisfacer la condición.*/
  /*'%XYZ': Todas las líneas que terminan con 'XYZ'. Por ejemplo, 'WXYZ' y 'ZZXYZ' ambas deberían satisfacer la condición.*/
  /*'%AN%': : Todas las líneas que contienen el patrón 'AN' en cualquier lado. Por ejemplo, 'LOS ANGELES' y 'SAN FRANCISCO'
  ambos deberían satisfacer la condición.*/
  /*los guiones bajos se refieren al numero de letras que se desea buscar*/
  
  select * from empleados;
  
  select * from empleados where nombre like '%Perez%';
  
  select * from empleados where seccion like '________';
  
  select * from empleados where nombre not like '%Perez%';