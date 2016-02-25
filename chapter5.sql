-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 05 ( Using IN)
-- -----------
-- customer
-- orders

 
 select order_num from orders where customer_num IN
 ( select customer_num from orders where ( order_date = '2010-10-23' ) );