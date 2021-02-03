/*Funciones para manipular datos de tipo Date (fecha y hora)*/
--ADD_MONTHS a�ade el n�mero especificado de meses a una fecha o valor de marca temporal o expresi�n.
--Si es positivo suma a la fecha, si es negativo resta a la fecha, a nivel de meses.
select add_months(to_date('10/10/2020','dd/mm/yyyy/'),5) from dual;

select add_months(to_date('10/10/2020','dd/mm/yyyy/'),-5) from dual;

--Funci�n last_date--
--Devuelve el ultimo d�a de la fecha enviada por parametro--
select LAST_DAY(to_date('09/02/2020','dd/mm/yyyy')) as ultimoDia from dual;

--Funci�n months_between--
--MONTHS_BETWEEN determina la cantidad de meses que hay entre dos fechas.
--Si la primera fecha es posterior a la segunda, el resultado es positivo; 
--de lo contrario, el resultado es negativo.
--Si alguno de los argumentos es nulo, el resultado es NULL.
select abs(months_between(to_date('09/02/2020','dd/mm/yyyy'),to_date('09/02/2021','dd/mm/yyyy')))as meses from dual;

--Funci�n next_day--
--devuelve la fecha de la primera instancia del d�a especificado que es posterior a la fecha proporcionada.
select next_day(to_date('21/04/2020','dd/mm/yyyy'),'Monday') PrimerDia from dual;

--Funci�n Current_date--
--devuelve una fecha en la zona horaria de la sesi�n actual.
select current_date from dual;

--Funci�n Sysdate--
--Nos devuelve la fecha del sistema
select SYSDATE from dual;

--Funci�n current_timestamp--
--Nos devuelve la fecha y hora correpondiente a la configuracion regional.
select current_timestamp from dual; 

--Funci�n Systimestamp--
--Nos devuelve la hora y fecha configurada en el sistema.
select systimestamp from dual;

--Funci�n to_char--
--Convierte el tipo de fecha a cadena
select to_char(to_date('21/04/1991','dd/mm/yyyy')) from dual;