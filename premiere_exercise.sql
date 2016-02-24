-- Question 08
select order_num, order_date,
 part_num, description, class
 from orders, part 
 order by class asc, order_num asc;