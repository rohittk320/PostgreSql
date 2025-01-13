create table employee4(
emp_id int PRIMARY KEY,
fname varchar(50) NOT NULL,
lname varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
dept varchar(50),
salary DECIMAL(10,2),
Hire_date Date NOT NULL DEFAULT CURRENT_DATE
);
INSERT INTO employee4 (emp_id, fname, lname, email, dept, salary, hire_date) 
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

select * from employee4;

select emp_id,fname,salary,
case
when salary >= 55000 then 'high salary'
when salary >= 50000 then 'mid'
else 'low salary' end as salary_catagery from employee4;

-- Q1
select emp_id,fname,salary,
case
when salary > 0 then round(salary *.10) 
end as bonus from employee4;

-- Q2
select salary,count(salary) from employee4 group by salary;

-- Q3
select
case
when salary >= 55000 then 'high'
when salary between 50000 and 55000 then 'mid'
else 'low' end as sal_cat, count(salary) from employee4 group by sal_cat;
