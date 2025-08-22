create database employee_salary_sql;
use employee_salary_sql;

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


