-- In SQL, a view is a virtual table created by a query that retrieves data from one or more main tables.
create view fee_info as
select s.name as student_name, c.name, enrollment_date ,c.fee 
from students s 
join enrollment e on s.s_id = e.s_id 
join 
courses c on c.c_id = e.c_id;

select * from fee_info;  
drop view fee_info;