
create table employee2(
emp_id int PRIMARY KEY,
fname varchar(50) NOT NULL,
lname varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
dept varchar(50),
salary DECIMAL(10,2),
Hire_date Date NOT NULL DEFAULT CURRENT_DATE
);
INSERT INTO employee2 (emp_id, fname, lname, email, dept, salary, hire_date) 
      values
(1, 'Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),

(2, 'Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),

(3, 'Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),

(4, 'Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00, '2018-07-30'),

(5, 'Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),

(6, 'Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2020-09-25'),

(7, 'Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),

(8, 'Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),

(9, 'Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00, '2018-12-03'),

(10, 'Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-04-19');

select * from employee2;
select *,concat(fname,' ',lname) as fullname from employee2;
select emp_id,concat(fname,' ',lname) as fullname,dept from employee2;
select concat_WS(':',fname,lname,dept) as fullname from employee2;
select fname,substr(fname,2,1) from employee2;
select fname,substr(fname,2,4) from employee2;
select fname,replace(fname,'a','b') from employee2;
select fname,replace(dept,'IT','TECH') from employee2;
select fname,length(fname) from employee2;
select * from employee where length(fname) > 5;
select fname,UPPER(fname) from employee2;
select fname,LOWER(fname) from employee2;
select fname,LEFT(fname,2) from employee2;
select fname,RIGHT(fname,2) from employee2;
select TRIM('  PASSWORD  ');
select fname,length(TRIM(fname)) from employee2;
SELECT POSITION('HI' in 'ROHIT');
SELECT POSITION('a' IN fname) from employee2;

-- Q1
select concat_WS(':',fname,lname,dept,salary) from employee2 where emp_id=1;
select concat_WS(':',concat_WS(' ',fname,lname),dept,salary) from employee2 where emp_id=1;
-- Q2
select concat_WS(':',fname,UPPER(dept)) from employee2 where emp_id=1;
-- Q3
select concat(LEFT(dept,1), emp_id) , fname from employee2;

-- Q4 : Find Different type of departments in table?
select distinct dept from employee2;
select count(distinct dept) from employee2;
