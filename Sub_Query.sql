select * from employee;

 SELECT 
        e.emp_id,  e.fname, e.salary
    FROM 
        employee e
    WHERE 
        e.dept = 'HR'
        AND e.salary = (
            SELECT MAX(emp.salary)
            FROM employee emp
            WHERE emp.dept = 'HR'
        );
		
		 