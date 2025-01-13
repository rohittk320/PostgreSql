-- Exercise1
create table employee3(
emp_id int PRIMARY KEY,
fname varchar(50) NOT NULL,
lname varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
dept varchar(50),
salary DECIMAL(10,2),
Hire_date Date NOT NULL DEFAULT CURRENT_DATE
);
INSERT INTO employee3 (emp_id, fname, lname, email, dept, salary, hire_date) 
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

select * from employee3;

-- 1:  Find Total no. of employees in database?
select count(*) from employee3;

-- 2: Find no. of employees in each department.
select dept,count(dept) from employee3 group by dept;

--3: Find lowest salary paying
 select * from employee3 where salary = (select min(salary) from employee3);
 
--4: Find highest salary paying
select * from employee3 where salary = (select max(salary) from employee3);
 
--5: Find total salary paying in IT department?
 select sum(salary) from employee3 where dept='IT';

--6: Average salary paying in each department
select dept,avg(salary) from employee3 group by dept;
select fname,dept,avg(salary) from employee3 group by fname,dept;

