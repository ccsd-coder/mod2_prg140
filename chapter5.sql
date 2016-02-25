-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 03
-- -----------
select o.order_num, o.order_date, ol.part_num,
 ol.num_ordered, ol.quoted_price from orders o,
 order_line ol where ( ol.order_num = o.order_num );