create view billing_price as
select 	c.cust_name,
	o.ord_date,
	p.p_name,
	p.price,
	oi.quantity,(oi.quantity*p.price) AS total_price 
	from customer c join orders o on c.cust_id = o.cust_id 
    join 
    order_items oi on oi.ord_id = o.ord_id
    join 
    products p on p.p_id = oi.p_id;

select * from billing_price;

select p_name, sum(round(price)) from billing_price group by p_name;

select COALESCE(p_name,'Total'),sum(round(price)) from billing_price group by ROLLUP(p_name) order by sum(round(price));  -- total sum

select p_name,sum(round(price)) from billing_price group by p_name having sum(round(price)) >=800;

