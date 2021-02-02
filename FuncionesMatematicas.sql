/*Funciones Matematicas*/
--Funci�n abs--
--Devuelve el valor absoluto de un numero--
select abs(-50) from dual;

--Funci�n ceil--
--se usa para redondear un n�mero hacia arriba hasta el pr�ximo n�mero entero--
select ceil(2.3) from dual;

--Funci�n floor--
--redondea un n�mero hacia abajo hasta el pr�ximo n�mero entero--
select floor(2.3) from dual;

--Funci�n MOD--
--La funci�n MOD devuelve un resultado num�rico que es el resto de dos par�metros num�ricos. 
--El primer par�metro se divide en el segundo par�metro.
select mod(10,3) from dual;

--Funci�n Power--
--La funci�n POWER es una funci�n exponencial que eleva una expresi�n 
--num�rica a la potencia de una segunda expresi�n num�rica. 
select power(2,3) from dual;

--Funci�n round--
--La funci�n ROUND redondea los n�meros hasta el valor entero o decimal m�s cercano.--
--La funci�n ROUND puede incluir, opcionalmente, un segundo argumento: 
--un valor entero que indique la cantidad de lugares decimales para el redondeo, sea cual sea la direcci�n. 
--: si no se proporciona el segundo argumento, la funci�n redondea al n�mero entero m�s cercano; 
--si se especifica el segundo argumento n, la funci�n redondea al n�mero m�s cercano con n lugares decimales de precisi�n.
select round(123.456,1) from dual;

--Funci�n sign--
--La funci�n SIGN devuelve el signo (positivo o negativo) de un n�mero. 
--El resultado de la funci�n SIGN es 1, -1 o 0, lo que indica el signo del argumento.
select sign(-50) from dual;

--Funci�n trunc--
--Trunca N hasta la posici�n M a la derecha del punto decimal. Por defecto M es 0. 
--Si M es negativo trunca hacia la izquierda del punto decimal (pone ceros). Por supuesto, M debe ser entero.
select trunc(123.123,2) from dual;

--Funci�n sqrt--
--Raiz cuadrada--
select sqrt(9) from dual;
