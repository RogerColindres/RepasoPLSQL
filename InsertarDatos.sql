--Eliminamos la tabla de la clase 5
Drop table usuario;

--Creamos la tabla empleado clase 6
create table Empleado (
ID_Empleado int not null,
Nombre varchar2(20),
Direccion varchar2(50),
ID_Docuemnto varchar2(10),
Sueldo number(6,2),
Fecha_nacimiento date
)

select * from empleado;

--insertar datos por medio de script--
describe empleado;
insert into empleado values(003,'Pedro','La vega','2121210404',4000.00,to_date('21/04/1991','dd/mm/yyyy'));