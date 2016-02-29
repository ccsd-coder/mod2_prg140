-- Question 4

-- step 1: identify tables
--  - orders
--  - customer

-- step 2: realize that IN is needed, so we need a subquery

-- subquery:
-- select distinct customer_num from orders where order_date = '2010-10-23';
-- numbers found = (608, 148)

select
	customer_num,
	customer_name
	
from
	customer
	
where
	customer_num in
	(
		select distinct
		customer_num
		
		from
			orders
		
		where
			order_date = '2010-10-23'
	);
	
-- Question 5
select
	customer_num,
	customer_name
	
	from
		customer
		
	where exists
	( select *
	  from orders, customer
	  where
		( orders.customer_num = customer.customer_num ) and
		( order_date = '2010-10-23' )
	);
