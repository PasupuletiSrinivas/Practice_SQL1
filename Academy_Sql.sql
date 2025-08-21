create database academy;
use academy;

create table course(
c_id int primary key,
c_name varchar(30),
c_coursename text,
c_duration varchar(20),
c_subject varchar(60)
);


select * from course;

insert into course (c_id, c_name, c_coursename, c_duration, c_subject)
values
(1, 'Python Basics', 'Introduction to Python', '2 Months', 'Programming'),
(2, 'SQL Mastery', 'Complete SQL Guide', '1.5 Months', 'Database'),
(3,' Excel for Analytics', 'Excel Functions & Dashboards', '1 Month', 'Data Analysis'),
(4, 'Power BI', 'Data Visualization with Power BI', '2 Months', 'Visualization'),
(5, 'Statistics', 'Basic to Intermediate Statistics', '1.5 Months', 'Mathematics')
;

select * from course;