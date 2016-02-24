-- rendition

-- the good wife
-- C:\Users\Esposito\Documents\GitHub\ccsd-prog\2016\MOD02\PRG140\Ch05\mod2_prg140

-- Q01
-- select part_num, description, price from part;

-- Q02
-- select * from orders;

-- Q03
-- select c.customer_name, c.credit_limit from customer c
-- where ( c.credit_limit >= 10000 );

-- Q04
-- select order_num from orders
-- where ( order_date = '2010-10-23' ) && ( customer_num = '608' );

-- Q05
-- select customer_num, customer_name from customer
-- where ( rep_num = 35 ) || ( rep_num = 65 );

-- Q06
-- select part_num, description from part
-- where not ( class = 'AP' );

-- Q07
-- select part_num, description, on_hand from part
-- where ( on_hand between 10 and 25 ) ;
-- 
-- select part_num, description, on_hand from part
-- where ( on_hand >= 10 ) && ( on_hand <= 25 );

-- Q08
