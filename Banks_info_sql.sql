create database bank_info;
use bank_info;
create table banks (
bank_id int,   
bank_name varchar(100),          
bank_branch varchar(50),          
bank_city varchar(50),    
established_year int)
;

insert into banks(bank_id,bank_name,bank_branch,bank_city,established_year)
values
(1, 'State Bank of India', 'Main Branch', 'Mumbai', 1955),
(2, 'HDFC Bank', 'Andheri Branch', 'Mumbai', 1994),
(3, 'ICICI Bank', 'Banjara Hills', 'Hyderabad', 1994),
(4, 'Axis Bank', 'MG Road', 'Bengaluru', 1993),
(5, 'Punjab National Bank', 'Connaught Place', 'Delhi', 1894),
(6, 'Bank of Baroda', 'Alkapuri', 'Vadodara', 1908),
(7, 'Canara Bank', 'Jayanagar', 'Bengaluru', 1906),
(8, 'Union Bank of India', 'Charminar', 'Hyderabad', 1919),
(9, 'Indian Bank', 'T. Nagar', 'Chennai', 1907),
(10, 'Kotak Mahindra Bank', 'Jubilee Hills', 'Hyderabad', 2003),
(11, 'Yes Bank', 'Gachibowli', 'Hyderabad', 2004),
(12, 'IDFC First Bank', 'Powai', 'Mumbai', 2015),
(13, 'Federal Bank', 'Marine Drive', 'Kochi', 1931),
(14, 'IndusInd Bank', 'Camp', 'Pune', 1994),
(15, 'Central Bank of India', 'Fort Branch', 'Mumbai', 1911),
(16,'Kotak Mahendra Bank ltd','Mumbai','Maharashtra',2003);

select*from banks;