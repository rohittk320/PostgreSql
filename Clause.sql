/* clause 
Where
Distinct
Order By
Limit
Like */

select * from employee;
select * from employee where dept in ('HR','IT');
select * from employee where dept not in ('HR','IT');
select * from employee where salary between 50000 AND 60000;
select distinct dept from employee;  -- return unique values
select * from employee limit 3;
select * from employee where fname LIKE 'A%';
select * from employee where fname LIKE '%a';
select * from employee where fname LIKE '%i%';
select * from employee where fname LIKE '_a%';
select * from employee where fname LIKE '_a_i%';
select * from employee where dept LIKE '__';  -- show two character data

