#1

create database school_db;
use School;
CREATE TABLE lists (
    id INT AUTO_INCREMENT primary key ,
    st_name VARCHAR(30),
    st_age VARCHAR(40),
    st_dob DATE,
    st_marks int
);

INSERT INTO lists (st_name, st_age, st_dob, st_marks) 
VALUES
('Srinivas', 23, '2003-03-18', 89),
('Sowmya', 25, '1999-02-28', NULL), 
('Usha kiran', 29, '1994-05-04', 65);

select*
from
lists
;

update lists set st_marks =70 where id=2;

select*
from
lists;

INSERT INTO lists (st_name, st_age, st_dob, st_marks) 
values
('NarasimhaRao', 30, '1995-03-18', 95);
select *
from
lists;


# 2

create database tcs;
use tcs;

create table details (
    id integer auto_increment primary key,
    E_name varchar(50),
    E_age int,
    E_role varchar(80)
);

insert into details(E_name, E_age, E_role)
values
('Sowmya',25,'Devolper'),
('Srinivas',23,'Analyst'),
('Rishi',22,'Accountant')
;
select *
from
details
;

insert into details (E_name, E_age, E_role) 
values('Sushma', null, 'Dataentry');

select* from details
order by id asc
limit 7
;
update details set E_age=27 where id=7;
select * from details;



# 3 

create database Foods;
use Foods;
create table items(
id integer auto_increment,
i_name varchar(40),
i_type varchar(50),
i_ingredient varchar(60),
primary key(id),
i_cost int);
select * from items;
insert into items(i_name,i_type,i_ingredient,i_cost)
values
('Biryani','Rice','chicken',300),
('Pizza','italian','Cheese',400),
('Pasta','italian','Organo',350);
select * from items;
insert into items (i_name, i_type, i_ingredient, i_cost)
values ('Biryani', 'Rice', 'Mutton', 300);
insert into items (i_name, i_type, i_ingredient, i_cost)
values ('Panipuri', 'snack', null, 30);
select * from items;
update items set i_ingredient='Potato' where id=5;

select * from items;

#4

create database gcet;
use gcet;
create table friend(
id integer auto_increment,
f_name varchar(30),
location varchar(40),
batch varchar(30),
dept varchar(20),
primary key(id)
);
select * from friend;
insert into friend (f_name,location,batch,dept)
values
('Lochan','Banglore',2024,'MECH'),
('Sowmya','Hyderabad',2024,'CSE'),
('Sadha','Vizag',2024,'HR'),
('Nikitha',null,2024,'IT');
select * from friend;
update friend set location='Vijaywada' where id=4;
select * from friend



#5

create database clothes;
use clothes;
create table bills(
id integer auto_increment,
b_name varchar(30),
b_items varchar(40),
b_number varchar(10),
primary key(id)
);
select * from bills;
insert into bills (b_name, b_items, b_number)
values
('Srinivas', 4,6303460118),
('Sowmya', 12, 9398415055),
('Nani', null, 9849243567),
('Madhu', 18, 9709865435);
select * from bills;

update bills set b_items =25 where id=3;
select * from bills;


#6

create database institute;
use institute;
create table student (
id integer auto_increment,
s_name varchar(30),
s_age int,
s_course varchar(40),
s_duration varchar(50),
primary key(id));

select * from student;

insert into student(s_name,s_age,s_course,s_duration)
values
('Srinivas',22,'Data Analytics','3months'),
('Sowmya',24,'Java','6months'),
('Madhy',21,'SQL', null),
('Sushma',22,null,'4months');

select * from student;

update student set s_duration ='6months' where id =3;
update student set s_course = 'python' where id =4;

select * from student;

update student set s_name = 'Madhu' where id =3;
select * from student;

