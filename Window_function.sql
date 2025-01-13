-- window function- A window function performs a calculation across a set of table rows that are somehow related to the current row.
select * from employee;
select fname,salary,sum(salary) over() from employee;   -- Associate With Each Column
select fname,salary,sum(salary) over(order by salary) from employee; -- Calculates a running total of order_amount for each employee, 

select fname,salary,avg(salary) over(order by salary) from employee;

select ROW_NUMBER() OVER(PARTITION by dept),dept,fname,salary from employee; -- Assigns a unique number to each row, even for ties

select fname,salary,RANK() over(order by salary desc) from employee;  -- assign a ranking to rows within a partition of a result set.Skips ranks for ties
select fname,salary,DENSE_RANK() over(order by salary desc) from employee; -- Does not skip ranks for ties

select fname,salary,LAG(salary) over() from employee;
select fname,salary,LEAD(salary) over() from employee;  -- Retrieves the salary of the next employee
select fname,salary,(salary-LEAD(salary) over(ORDER BY salary desc)) as sal_diff from employee;

