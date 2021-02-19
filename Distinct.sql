/*Clausula Distinc*/
select * from clientes;

select distinct provincia from clientes;

select distinct ciudad from clientes where provincia = 'Cordoba';