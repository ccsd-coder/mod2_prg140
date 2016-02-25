-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 04 ( Using a JOIN Query)
-- -----------
-- customer
-- orders

select o.order_num, c.customer_name, o.order_date
from customer c, orders o

where ( c.customer_num = o.customer_num )
 and (o.order_date = '2010-10-23');