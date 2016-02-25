-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 06
--------------

select customer_num, customer_name
from customer 
where customer_num not in
(select customer_num from orders where order_date = '2010-10-23');
