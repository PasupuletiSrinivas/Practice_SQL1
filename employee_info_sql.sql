create database employee_info_sql;
use employee_info_sql;

create table employee_info(
employee_id int auto_increment primary key,
first_name varchar(50),
last_name varchar(50),
age int,
gender varchar(10),
Birth_date date)
;
select * from employee_info;

insert into employee_info (first_name,last_name,age,gender,birth_date)
values
( 'Pasupuleti', 'Sowmya', 25, 'Female', '1999-10-29'),
( 'Pasupuleti', 'Srinivas', 23, 'Male', '2001-06-12'),
( 'Pasupuleti', 'Naraasimha', 51, 'Male', '1977-12-30'),
( 'Pasupuleti', 'Usha kiran', 47, 'Female', '1980-07-01'),
( 'Jallipalli', 'Nandhini', 46, 'Female', '1977-07-30'),
( 'Ramesh', 'Rohit', 35, 'Male', '1988-12-01'),
( 'Koppula', 'Rishi', 43, 'Male', '1980-11-11'),
( 'Kukkatla', 'Madhu', 38, 'Male', '1985-07-26'),
( 'Vangara', 'Sathvik', 34, 'Male', '1989-03-25'),
( 'Joseph', 'Sushma', 40, 'Female', '1983-06-14'),
( 'Anumakonda', 'Prem kalyan', 25, 'Male', '1999-07-27');

select *
from
employee_info;