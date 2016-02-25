-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 07
-- -----------
select
	o.order_num,   -- From o OR ol
	o.order_date,  -- From o
	p.part_num,    -- From p
	p.description, -- From p
	p.class        -- From p

from
	orders o,
	order_line ol,
	part p
	
	-- Remember:
	-- +   2 tables --> 1 JOIN
	-- +   3 tables --> 2 JOINS
	-- + (n) tables --> (n-1) JOINS
where ( o.order_num = ol.order_num )
and   ( ol.part_num = p.part_num );

