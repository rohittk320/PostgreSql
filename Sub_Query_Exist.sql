
select * from employee  where salary > (select avg(salary) from employee);
select emp_id,fname,dept,salary from employee group by emp_id,fname,dept,salary having salary > (select avg(salary) from employee);

select ROW_NUMBER() OVER(PARTITION by dept),* from employee  where salary > (select avg(salary) from employee);

select * from customer;
select * from orders;

select * from customer where cust_id 
in 
(select cust_id from orders);

-- The EXISTS operator is used to test for the existence of any record in a subquery.  The EXISTS operator returns TRUE if the subquery returns one or more records.
select * from customer where
EXISTS 
(select cust_id from orders);

select * from products;
select * from order_items;

select p.p_name,p.price from products p where EXISTS (select p_id from order_items oi where p.p_id = oi.p_id and oi.quantity < 2);

select p_name,price from products 
where price in
(select max(price) from products);

select p_name,price from products where exists
(select max(price) from products);

select * from customer where cust_id = any (select cust_id from orders); 
select * from customer where cust_id = all (select cust_id from orders); 
select * from orders where cust_id = any (select cust_id from customer); 

