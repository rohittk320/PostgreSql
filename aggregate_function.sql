-- aggregate function  
-- An aggregate function is a function that performs a calculation on a set of values, and returns a single value.
-- Aggregate functions are often used with the GROUP BY clause of the SELECT statement. 
create table employee1(
emp_id int PRIMARY KEY,
fname varchar(50) NOT NULL,
lname varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
dept varchar(50),
salary DECIMAL(10,2),
Hire_date DATE NOT NULL DEFAULT CURRENT_DATE
);

INSERT INTO employee1 (emp_id, fname, lname, email, dept, salary, hire_date) 

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

select * from employee1;
select count(emp_id) from employee1;
select sum(salary) from employee1;
select avg(salary) from employee1;
select min(salary) from employee1;
select max(salary) from employee1;
