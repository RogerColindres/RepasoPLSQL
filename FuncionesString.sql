--Funciones String--
--consultar en la tabla dual (ascii)--
select chr(65) from dual;
select ascii('D') from dual;

--Funci�n concat--
select concat('Buenas',' tardes') from dual;

--funci�n initcap--
--Devuelve las iniciales de cada palabra en mayuscula--
select initcap('buenas tardes') from dual;

--Funci�n lower--
--Pone todas las letras en minusculas--
select lower('BUENAS') from dual;

--Funci�n Upper--
--Coloca todos los caracteres en mayuscula--
select upper('Buenas Tardes') from dual;

--funci�n lpad--
--coloca caracteres al lado izquierdo antes que la palabra
select lpad('Oracle',11,'abc') from dual;

--funci�n rpad--
--coloca caracteres al lado derecho despues que la palabra
select rpad('Oracle',11,'abc') from dual;

--funcion ltrim--
--Elimina la cantidad de caracteres especificados hacia el lado izquierdo--
select ltrim('Curso de oracle','Cur') from dual;

--funcion rtrim--
--Elimina la cantidad de caracteres especificados hacia el lado derecho--
select rtrim('Curso de oracle','cle') from dual;

--funci�n trim--
--Elimina espacios en blanco--
select trim('  Oracle    ') from dual;

--funci�n replace--
--sustitu caracteres en un cadena--
select replace('www.oracle.com','w','p') from dual;
