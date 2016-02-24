-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 01
-- -----------
select o.order_num, o.order_date,
	c.customer_num, c.customer_name
	from customer c, orders o
	where ( c.customer_num = o.customer_num );