
-- return olny distinct value from both table
select fname from employee
union 
select fname from person;

-- return all records from both tables
select fname from employee
union all
select fname from person;