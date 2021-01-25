--Funciones String--
--consultar en la tabla dual (ascii)--
select chr(65) from dual;
select ascii('D') from dual;

--Función concat--
select concat('Buenas',' tardes') from dual;

--función initcap--
--Devuelve las iniciales de cada palabra en mayuscula--
select initcap('buenas tardes') from dual;

--Función lower--
--Pone todas las letras en minusculas--
select lower('BUENAS') from dual;

--Función Upper--
--Coloca todos los caracteres en mayuscula--
select upper('Buenas Tardes') from dual;

--función lpad--
--coloca caracteres al lado izquierdo antes que la palabra
select lpad('Oracle',11,'abc') from dual;

--función rpad--
--coloca caracteres al lado derecho despues que la palabra
select rpad('Oracle',11,'abc') from dual;

--funcion ltrim--
--Elimina la cantidad de caracteres especificados hacia el lado izquierdo--
select ltrim('Curso de oracle','Cur') from dual;

--funcion rtrim--
--Elimina la cantidad de caracteres especificados hacia el lado derecho--
select rtrim('Curso de oracle','cle') from dual;

--función trim--
--Elimina espacios en blanco--
select trim('  Oracle    ') from dual;

--función replace--
--sustitu caracteres en un cadena--
select replace('www.oracle.com','w','p') from dual;
