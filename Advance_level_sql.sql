create database cte_file;
use cte_file;

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






create table employee_info(
employee_id int  primary key,
first_name varchar(50),
last_name varchar(50),
age int,
gender varchar(10),
Birth_date date)
;
select * from employee_info;

insert into employee_info (first_name,last_name,age,gender,birth_date)
values
(1 ,'Pasupuleti', 'Sowmya', 25, 'Female', '1999-10-29'),
( 2,'Pasupuleti', 'Srinivas', 23, 'Male', '2001-06-12'),
( 3,'Pasupuleti', 'Naraasimha', 51, 'Male', '1977-12-30'),
( 4,'Pasupuleti', 'Usha kiran', 47, 'Female', '1980-07-01'),
( 5,'Jallipalli', 'Nandhini', 46, 'Female', '1977-07-30'),
( 6,'Ramesh', 'Rohit', 35, 'Male', '1988-12-01'),
( 7,'Koppula', 'Rishi', 43, 'Male', '1980-11-11'),
( 8,'Kukkatla', 'Madhu', 38, 'Male', '1985-07-26'),
( 9,'Vangara', 'Sathvik', 34, 'Male', '1989-03-25'),
( 10,'Joseph', 'Sushma', 40, 'Female', '1983-06-14'),
( 11,'Anumakonda', 'Prem kalyan', 25, 'Male', '1999-07-27');

select *
from
employee_info;

#CTE COMMON TABLE EXPRESSIONS

with CTE_example as(
select gender,avg(salary) avg_sal,min(salary) min_sal,max(salary) max_sal,count(gender) count_gender
from employee_info
join employee_salary
on employee_info.employee_id=employee_salary.employee_id
group by gender
)
select*from
CTE_example;

with CTC_EXAMPLE2 AS(
select employee_id,first_name,last_name,salary,min(salary) min_sal,max(sal) max_sal
from employee_salary
),
CTC_EXAMPLE3 AS(
select first_name,last_name,gender,Birth_date
from employee_info
)
select*from
employee_salary
join employee_info
on employee_salary.employee_id=employee_info.employee_id;



with CTE_EXAMPLE2 AS
(
select employee_id,last_name,gender,Birth_date
from employee_info
where Birth_date> '1989-03-25'
),
CTE_EXAMPLE3 AS
(
select employee_id,salary
from employee_salary
where salary> 80000 
)
select
e2.employee_id,
e2.last_name,
e2.gender,
e2.Birth_date,
e3.salary
from CTE_EXAMPLE2 e2
join CTE_EXAMPLE3 e3
       ON e2.employee_id=e3.employee_id;
       
#BY USING HAVING CLAUSE
       
with CTE_EXAMPLE5 AS(
select employee_id,first_name,last_name,age,gender
from employee_info
having gender like 'female'
),
CTE_EXAMPLE6 as(
select employee_id,salary
from employee_salary
where salary>60000
)
select
e5.employee_id,
e5.last_name,
e5.age,gender,
e6.salary
from CTE_EXAMPLE5 e5
JOIN CTE_EXAMPLE6 e6
on e5.employee_id=e6.employee_id;


with CTE_EMPINFO AS(
select employee_id,last_name,gender,age,Birth_date
from employee_info
where age>22
),
CTE_EMPSAL AS (
select employee_id,salary
from employee_salary
)
select
einfo.employee_id,
einfo.last_name,
einfo.gender,
einfo.age,
einfo.Birth_date,
esal.salary
from CTE_EMPINFO einfo
join CTE_EMPSAl esal
on einfo.employee_id=esal.employee_id
order by salary desc;


#TRIGGERS

#Table to store students

CREATE TABLE student (
    roll_no INT PRIMARY KEY,
    s_name VARCHAR(50),
    marks int
);

insert into student(roll_no,s_name,marks)
values
(101,'srinivas',95),
(102,'sowmya',96),
(103,'nandhini',90),
(104,'rishi',80),
(105,'sunny',70),
(106,'sathya',65.5),
(107,'rohit',50.5);

#Table to store average marks
CREATE TABLE student_summary (
    avg_marks DECIMAL(5,2)
);
INSERT INTO student_summary VALUES ();

#Trigger: update average marks when new student inserted

DELIMITER //

CREATE TRIGGER update_average_mark
AFTER INSERT ON students
FOR EACH ROW
BEGIN
    UPDATE student_summary
    SET average_marks = (SELECT AVG(marks) FROM students);
END;
//

DELIMITER ;

insert into student values(1,'ravi',80);
insert into student values(2,'gopi',90);
insert into student values(3,'surya',70);

select*from student;
select avg(marks)from student;




DELIMITER //

CREATE TRIGGER employee_insert
after insert on employee_salary
for each row
begin
insert into employee_info(employee_id,first_name,last_name)
values(new.employee_id,new.first_name,new.last_name);
end //

DELIMITER ;


insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(12,'Munigonda', 'Nivas', 'HOD',120000,null );

select*from employee_salary;
select*from employee_info;


DELIMITER //
create event delect_employee_
on schedule every 30 second
do
begin
delete
 from employee_indo
where age=40;
end//

DELIMITER //
select*from employee_info;
