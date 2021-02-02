/*Funciones Matematicas*/
--Función abs--
--Devuelve el valor absoluto de un numero--
select abs(-50) from dual;

--Función ceil--
--se usa para redondear un número hacia arriba hasta el próximo número entero--
select ceil(2.3) from dual;

--Función floor--
--redondea un número hacia abajo hasta el próximo número entero--
select floor(2.3) from dual;

--Función MOD--
--La función MOD devuelve un resultado numérico que es el resto de dos parámetros numéricos. 
--El primer parámetro se divide en el segundo parámetro.
select mod(10,3) from dual;

--Función Power--
--La función POWER es una función exponencial que eleva una expresión 
--numérica a la potencia de una segunda expresión numérica. 
select power(2,3) from dual;

--Función round--
--La función ROUND redondea los números hasta el valor entero o decimal más cercano.--
--La función ROUND puede incluir, opcionalmente, un segundo argumento: 
--un valor entero que indique la cantidad de lugares decimales para el redondeo, sea cual sea la dirección. 
--: si no se proporciona el segundo argumento, la función redondea al número entero más cercano; 
--si se especifica el segundo argumento n, la función redondea al número más cercano con n lugares decimales de precisión.
select round(123.456,1) from dual;

--Función sign--
--La función SIGN devuelve el signo (positivo o negativo) de un número. 
--El resultado de la función SIGN es 1, -1 o 0, lo que indica el signo del argumento.
select sign(-50) from dual;

--Función trunc--
--Trunca N hasta la posición M a la derecha del punto decimal. Por defecto M es 0. 
--Si M es negativo trunca hacia la izquierda del punto decimal (pone ceros). Por supuesto, M debe ser entero.
select trunc(123.123,2) from dual;

--Función sqrt--
--Raiz cuadrada--
select sqrt(9) from dual;
