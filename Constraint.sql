
create table employee(
emp_id INT serial PRIMARY KEY,
fname varchar(50) NOT NULL,
lname varchar(50) NOT NULL,
email varchar(100) NOT NULL UNIQUE,
dept varchar(50),
salary DECIMAL(10,2) DEFAULT 30000.00,
Hire_date Date NOT NULL DEFAULT Current_Date, -- CURRENT DATE
AGE INT NOT NULL,
CONSTRAINT CHK_AGES check(age>18)
);

select * from Employee;

INSERT INTO employee ( fname, lname, email, dept, salary,age) 
      VALUES
( 'Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00,19),

( 'Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00,20),

( 'Suman', 'Patel', 'suman.patel@example.com', 'Finance', 60000.00,25),

( 'Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00,30),

( 'Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00,35),

( 'Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00,36),

( 'Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00,37),

( 'Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00,40),

( 'Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00,40);


/*
Constraints can be specified when the table is created with the CREATE TABLE statement, or after the table is created with the ALTER TABLE statement.
Constraints are used to limit the type of data that can go into a table. This ensures the accuracy 
and reliability of the data in the table. If there is any violation between the constraint and the data action, the action is aborted.

NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly */
