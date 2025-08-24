create database movie_directors;
use movie_directors;

create table movies_info(
Movie_id int primary key,
Title varchar(50),
Director_id int,
Release_year int
); 

insert into movies_info(Movie_id,Title,Director_id,Release_year)
values
(1,'Bahubali -: The Bginning',101,2015),
(2,'Eega',101,2012),
(3,'Ala vaikuntapuramlo',102,2020);

select*from movies_info;


create table director_info(
Movie_id int,
director_id int,
director_name varchar(50)
);

insert into director_info(Movie_id,director_id,director_name)
values
(1,101,'S.S.Rajamouli'),
(2,102,'Trivikram Srinivas');

select*from director_info;



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

CREATE TABLE employee_salary (

employee_id INT NOT NULL,
first_name VARCHAR(58) NOT NULL,
last_name VARCHAR(50) NOT NULL,
occupation VARCHAR(50),
salary INT,
dept_id INT,
primary key (employee_id))
;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)

VALUES
( 1,'Pasupuleti', 'Sowmya', 'Office Manager',200000,1 ),
( 2,'Pasupuleti', 'Srinivas', 'Data Analyst',50000,2),
( 3,'Pasupuleti', 'Naraasimha', 'Business Analyst',60000,2),
( 4,'Pasupuleti', 'Usha kiran', 'Data entry',45000,2),
( 5,'Jallipalli', 'Nandhini', 'Pharmaco;ogist',40000,3),
( 6,'Ramesh', 'Rohit', 'Drug inspector',55000,3),
( 7,'Koppula', 'Rishi', 'Accountant',30000,4),
( 8,'Kukkatla', 'Madhu', 'CAD designer',25000,5),
( 9,'Vangara', 'Sathvik', 'Telicommunication',20000,6),
( 10,'Joseph', 'Sushma', 'Excel user', 15000,7),
( 11,'Anumakonda', 'Prem kalyan', 'Banl Employee',35000,8);

select*from employee_salary;






#JOINS
#INNER JOIN

select*from movies_info
inner join director_info
on movies_info.Director_id=director_info.director_id;

select movies_info.Title,director_info.director_name
from movies_info
inner join director_info
on movies_info.director_id=director_info.director_id;


select movies_info.Title,Release_year,director_info.director_name
from movies_info
inner join director_info
on movies_info.director_id=director_info.director_id;


#OUTER JOIN
#Right outer join
#Left outer join

select*from movies_info
right outer join director_info
on movies_info.Director_id=director_info.director_id;


select*from movies_info
left outer join director_info
on movies_info.Director_id=director_info.director_id;

#UNION
select director_id from movies_info
union
select director_name from director_info
;
;



#EXAMPLE 

select first_name,last_name,'old nam' as label
from employee_info
where age>40 and gender like 'Male'
UNION
select first_name,last_name,  'old lady' as label
from employee_info
where age>40 and gender like 'Female'
UNION
select first_name,last_name, 'High paid employee' as label
from employee_salary
where salary>70000
order by first_name,last_name desc
;



#SELECT FUNCTIONS
#1) CONCAT
#2)LENGTH
#3)UPPER
#4)LOWER
#5)LEFT
#6)RIGHT
#7)SUBSTRING
#8)TRIM
#9)REPLACE

#2)LENGTH

select first_name,last_name,length(last_name)as name_length 
from employee_salary where salary>100000;

select first_name,last_name,salary,avg(salary)as avg_sal,length(salary)
from employee_salary
where salary<100000
group by first_name,last_name,salary;

#1) CONCAT

select first_name,last_name,
concat (first_name,'  ',last_name) as full_name
from employee_salary;

#UPPER
select first_name,last_name,
upper(first_name,last_name) as NAME_WITH_UPPERCASE_
FROM employee_salary
where salary>100000;

select first_name,last_name,
lower(first_name,last_name) as NAME_WITH_UPPERCASE_
FROM employee_salary;

#5)LEFT
SELECT last_name,
left(last_name,3)
from employee_salary
where salary>30000;

#RIGHT
SELECT last_name,
RIGHT(last_name,3)
from employee_salary
where salary>30000;

#7)SUBSTRING
SELECT last_name,
substring(last_name,1,3) as 'small_name',
birth_date,
substring(birth_date,6,2) as 'birth month'
from employee_info
order by age desc;

#TRIM
SELECT first_name,
trim(     first_name      ) as trimmed_name
from employee_info;

#REPLACE
SELECT first_name,replace(first_name,'i','y')
from employee_salary;


#CASE STATEMENTS
create database student_marks;
use student_marks;

create table students(
R_no int  auto_increment primary key,
f_name varchar(50),
l_name varchar(50),
Marks int
);

insert into students(f_name,l_name,Marks)
values
('Srinivas','Pasupuleti', 90),
('Rishi','Varms', 70),
('Rohit','Ramesh',60),
('Sathya','Sathvik',50),
('Madhu','Kukutla', 35),
('Ravi','Teja',25);
 

select*from students;

select f_name,l_name,marks,
CASE
WHEN marks>=90 THEN 'A+'
WHEN marks>=70 THEN 'B+'
WHEN marks>50 THEN 'B'
WHEN marks>=35 THEN 'C'
ELSE 'FAIL'
END AS GRADE
FROM students
limit 6




s
create database movie_directors;
use movie_directors;

CREATE TABLE employee_salary (

employee_id INT NOT NULL,
first_name VARCHAR(58) NOT NULL,
last_name VARCHAR(50) NOT NULL,
occupation VARCHAR(50),
salary INT,
dept_id INT,
primary key (employee_id))
;

INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)

VALUES
( 1,'Pasupuleti', 'Sowmya', 'Office Manager',200000,1 ),
( 2,'Pasupuleti', 'Srinivas', 'Data Analyst',50000,2),
( 3,'Pasupuleti', 'Naraasimha', 'Business Analyst',60000,2),
( 4,'Pasupuleti', 'Usha kiran', 'Data entry',45000,2),
( 5,'Jallipalli', 'Nandhini', 'Pharmaco;ogist',40000,3),
( 6,'Ramesh', 'Rohit', 'Drug inspector',55000,3),
( 7,'Koppula', 'Rishi', 'Accountant',30000,4),
( 8,'Kukkatla', 'Madhu', 'CAD designer',25000,5),
( 9,'Vangara', 'Sathvik', 'Telicommunication',20000,6),
( 10,'Joseph', 'Sushma', 'Excel user', 15000,7),
( 11,'Anumakonda', 'Prem kalyan', 'Banl Employee',35000,8);

select*from employee_salary;





select first_name,last_name,salary,
CASE
WHEN salary>150000 then 'High paying employee'
else 'Basic employee salary '
end AS SALARY_MODE
from employee_salary;


select first_name,last_name,salary,
CASE
WHEN salary<50000 then salary+(salary*0.05)
else 'SORRY NO SALARY HIKE'
end as SALARY_BONUs
FROM employee_salary
order by salary asc;


#SUB QUERIES
SELECT *from employee_salary
where employee_id in
                   (select employee_id from employee_info
                               where first_name ='pasupuleti');

select first_name,last_name,salary as sal,
                                   (select avg(sal)
								   from employee_salary)
from employee_salary;                            



#WINDOW FUNCTIONS

select employee_id,salary,
sum(salary)over(order by employee_id rows between 1
preceding and 1 following) as moving_sum
from employee_salary;


select employee_id,last_name,age,
sum(age) over(order by employee_id rows between 1
preceding and 1 following) as sum_age
from employee_info;

select employee_info.first_name,employee_info.last_name,gender,salary,
sum(salary)over(partition by gender 
order by employee_info.employee_id)as Rolling_total
from employee_info
join
employee_salary
on employee_info.employee_id=employee_salary.employee_id;



select employee_info.employee_id,employee_info.first_name,employee_info.last_name,gender,salary,
row_number()over(partition by gender order by salary desc)as row_num,
rank()over(partition by gender order by salary desc) as rank_num
from employee_info
join employee_salary
on employee_info.employee_id=employee_salary.employee_id;


create table movies_info(
Movie_id int primary key,
Title varchar(50),
Director_id int,
Release_year int
); 

create table director_info(
Movie_id int,
director_id int,
director_name varchar(50)
);






select movies_info.movie_id,movies_info.Title,Director_name,
row_number()over(partition by Release_year order by movie_id desc)as row_sequence,
rank()over(partition by Release_year order by movie_id desc )as rank_sequence
from movies_info
join director_info
on movies_info.Movie_id=director_info.movie_id;
