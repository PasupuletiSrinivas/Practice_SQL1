CREATE DATABASE beginner;
USE beginner;

CREATE TABLE employee_salary1 (

employee_id INT NOT NULL,
first_name VARCHAR(58) NOT NULL,
last_name VARCHAR(50) NOT NULL,
occupation VARCHAR(50),
salary INT,
dept_id INT,
primary key (employee_id))
;

INSERT INTO employee_salary1 (employee_id, first_name, last_name, occupation, salary, dept_id)

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

select*from employee_salary1;


#WHERE CLAUSE
select* from employee_salary1 where salary >50000;
select *from employee_salary1 where employee_id=2;

#LOGICAL OPERATORS
#AND
#OR
#NOT

#AND
select*from employee_salary1 where salary>25000 and dept_id =2;
select*from employee_salary1 where salary>=45000 and dept_id =2;

#OR
select *from employee_salary1 where salary>75000 or last_name='sowmya';
select*from employee_salary1 where salary >200000 or first_name='pasupuleti' and dept_id=1;

#NOT
select*from employee_salary1 where occupation='business analyst' or not dept_id=2;

#LIKE OPERATOR

# --% AND ____

#USING (%)
select * from employee_salary1 where last_name LIKE '%sh%';
select * from employee_salary1 where last_name LIKE '%sha%';
select * from employee_salary1 where dept_id LIKE 2;

#USING (__)
select * from employee_salary1 where last_name LIKE 'us________';
select * from employee_salary1 where first_name LIKE '_________i';

#USING (--)
select * from employee_salary1 where first_name LIKE 'p-------%';

#GROUP BY 
select employee_id
 from employee_salary1
 group by employee_id;

select employee_id,first_name,last_name
 from employee_salary1
 group by employee_id;

#USING AGGRIGATE FUNCTIONS WITH GROUP BY
 select employee_id,first_name,last_name,avg(salary)
 from employee_salary1
 group by employee_id;

select employee_id,first_name,last_name,avg(salary),max(salary) 'HIGHEST SALARY',min(salary)'ENTRY LEVEL SAL'
 from employee_salary1
 group by employee_id;
 
#ORDER BY
select *from employee_salary1
order by first_name;

select *from employee_salary1
order by last_name asc;

select *from employee_salary1
order by last_name desc;


#HAVING VS WHERE
#HAVING
select occupation,last_name,avg(salary)
from employee_salary1
group by occupation,last_name
having avg(salary)>30000;

select last_name,salary,min(salary),max(salary)
from employee_salary1
group by last_name,salary
having salary<200000
order by min(salary) asc 
;


#WHERE
select last_name,occupation,salary
from employee_salary1
where occupation like '%ata%'
group by last_name,occupation,salary
having avg(salary) >30000;


#LIMIT AND ALIASING

#LIMIT
select *from employee_salary1
order by salary desc
limit 3;

select *from employee_salary1
order by salary desc
limit 1,2;