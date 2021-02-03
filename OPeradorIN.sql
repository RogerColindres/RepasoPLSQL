/* OPerador IN*/
select * from medicamentos;

select * from medicamentos where laboratorio in ('Bayer','Bago');

select * from medicamentos where laboratorio not in ('Bayer','Bago');

select * from medicamentos where cantidad in (10,200);

select * from medicamentos where extract(year from fechavencimiento) in (2019,2020);

select * from medicamentos where extract(month from fechavencimiento) in (12,10);