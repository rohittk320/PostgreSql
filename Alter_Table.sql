CREATE TABLE person ( 
  id INT,
  name VARCHAR(100),
  city VARCHAR(100)
); 
 INSERT INTO person(id, name, city) VALUES (101, 'Rohit', 'Delhi');
 INSERT INTO person(id, name, city) VALUES (102, 'Rahul', 'Mumbai');
 INSERT INTO person(id, name, city) VALUES (103, 'akash', 'Bhopal');
 
 select * from person;
 
 ALTER table person 
 add column salary int default 0;
 
 ALTER table person 
 DROP column age;

 ALTER table person 
 RENAME column salary to age;
 
ALTER table person 
 RENAME column name to fname;
 
ALTER table person 
RENAME to person1;

ALTER table person1 
RENAME to person;   -- rename table name

ALTER TABLE person
ALTER COLUMN fname TYPE VARCHAR(200);

ALTER TABLE person
ALTER COLUMN fname set not null;

ALTER TABLE person
ALTER COLUMN fname drop not null;

ALTER TABLE person
ALTER COLUMN id SERIAL SET PRIMARY KEY;

ALTER TABLE person
ADD COLUMN mob varchar(20);

ALTER TABLE person
drop COLUMN mob;

select * from person;

ALTER TABLE person
ADD Constraint mob_no_less_than_10 check (length(mob) >= 10);

insert into person(mob) values(12345);
insert into person(mob) values(9753182001);