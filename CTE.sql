/* CTE A Common Table Expression (CTE) in SQL is a temporary result set that is defined within the execution scope of a SELECT, INSERT, UPDATE, or DELETE statement. 
CTEs can improve the readability and modularity of SQL queries by breaking down complex queries into simpler parts */

select * from employee;
select dept,avg(salary) from employee group by dept;

with avg_salary as (
select dept,avg(salary) as avgs from employee group by dept
)
select 
e.emp_id, e.fname, e.dept, e.salary, a.avgs
from
employee e
join 
avg_salary a on e.dept = a.dept
where e.salary > a.avgs;