-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 09
-- -----------

-- 1) Identify tables
--    * rep
--    * customer

-- 2) Find sub query first

-- 3) Use the sub quey within the outer most query
select
	rep_num,
	last_name,
	first_name
	
from
	rep
	
where rep_num in 
	(
		select rep_num
		from customer
		where credit_limit = 10000
	);


