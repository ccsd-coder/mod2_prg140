
 
 -- Question 09
 select rep_num, last_name, first_name 
 from rep
 where rep_num in 
 ( select rep_num from customer where credit_limit = 10000 );