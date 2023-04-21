--data insertion functions
create function add_car(_car_serial VARCHAR, _car_make VARCHAR, _car_model VARCHAR, _car_year INTEGER)
returns void
as $MAIN$
begin 
		insert into car(car_serial, car_make, car_model, car_year)
		values (_car_serial, _car_make, _car_model, _car_year);
end;
$MAIN$
language plpgsql;

select add_car('3','Toyota', 'Corolla', 2009);
select add_car('4', 'Ford', 'F150', 2020);
select add_car('5', 'Honda', 'Civic', 2016);
select * from car;

drop function if exists add_car 

--manual data insertion example
insert into car(car_serial, car_make, car_model, car_year) values ('12', 'Porsche', 'Panamera', 2022);
insert into car(car_serial, car_make, car_model, car_year) values ('11', 'Buggati', 'Veyron', 2022);