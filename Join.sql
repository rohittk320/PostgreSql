-- one to many relationship

CREATE TABLE customer (  
          cust_id SERIAL PRIMARY KEY, 
          cust_name VARCHAR(100) NOT NULL 
);
select * from customer;
INSERT INTO customer (cust_name) VALUES ('Raju'), ('Sham'), ('Paul'), ('Alex');


CREATE TABLE orders (
            ord_id SERIAL PRIMARY KEY, 
            ord_date DATE NOT NULL, 
            price NUMERIC NOT NULL,
            cust_id INTEGER NOT NULL, 
           FOREIGN KEY(cust_id) REFERENCES
		   customer(cust_id)
);

select * from orders;

INSERT INTO orders (ord_date, cust_id, price)
 VALUES 
    ('2024-01-01', 1, 250.00),  

    ('2024-01-15', 1, 300.00),  

    ('2024-02-01', 2, 150.00),

    ('2024-03-01', 3, 450.00),

    ('2024-04-04', 2, 550.00); 
	
-- cross join	
select * from customer cross join orders; 

-- inner join
select * from customer c 
inner join 
orders o on c.cust_id = o.cust_id;

select c.cust_id,c.cust_name, count(ord_id) from customer c 
inner join 
orders o on c.cust_id = o.cust_id 
group by c.cust_id,c.cust_name; 

select c.cust_id,c.cust_name, sum(price) from customer c 
inner join 
orders o on c.cust_id = o.cust_id 
group by c.cust_id,c.cust_name;

-- left join
select * from customer c 
left join 
orders o on c.cust_id = o.cust_id;

-- right join 
select * from orders o 
Right join 
customer c on c.cust_id = o.cust_id;
