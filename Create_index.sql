--CREATE INDEX - Used to create and retrieve data from the database very quickly without having to search every row in a database.

select * from employee;

select * from employee where dept = 'HR';
create index emp_dept on employee(dept,salary);
select * from employee where dept = 'HR';
select * from employee where salary > 50000;

DROP INDEX IF EXISTS emp_dept;
