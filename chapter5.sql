-- Solving Chapter 5 - Premiere Problem
-- ------------------------------------

-- Question 10
-- -----------
-- Distinct is discussed at page 117.
-- To better understand its use, try the
-- following query without distinct, and
-- observe the duplicates.
select distinct
	R.rep_num,
	R.last_name,
	R.first_name
	
from
	rep			 R,
	customer	 C
	
where
	( R.rep_num = C.rep_num )
		and
	( C.credit_limit = 10000 );

-- -----------------------------------------------------
-- Question 11
select
	C.customer_num,
	customer_name
	
from
	customer	 C,
	orders		 O,
	order_line	 OL,
	part		 P
	
where
	( C.customer_num = O.customer_num ) and
	( O.order_num    = OL.order_num )   and
	( OL.part_num    = P.part_num )     and 
	( P.description  = 'Gas Range' );

-- -----------------------------------------------------
-- Question 12
select
	F.part_num,
	F.description,
	S.part_num,
	S.description,
	F.class
	
from
	part F,
	part S
	
where 
	( F.class = S.class ) and
	( F.part_num < S.part_num )

order by class, F.part_num, S.part_num;


-- -----------------------------------------------------
-- Question 13
select
	O.order_num,
	O.order_date
	
from
	customer	 C,
	orders		 O
	
where
	( C.customer_num = O.customer_num ) and
	( C.customer_name = 'Johnson''s Department Store' );

-- -----------------------------------------------------
-- Question 14
select
	O.order_num,
	O.order_date
	
from
	orders		 O,
	order_line	 OL,
	part		 P
	
where
	( O.order_num   = OL.order_num ) and
	( OL.part_num   = P.part_num   ) and 
	( P.description = 'Iron' );

-- -----------------------------------------------------
-- Question 15
select
	O.order_num,
	O.order_date
	
from
	customer	 C,
	orders		 O
	
where ( C.customer_num  = O.customer_num ) and
	  ( C.customer_name = 'Johnson''s Department Store' ) union
	  ( select
			O.order_num,
			O.order_date
			
		from
			orders		 O,
			order_line	 OL,
			part		 P
			
		where ( O.order_num   = OL.order_num ) and
			  ( OL.part_num   = P.part_num   ) and
			  ( P.description = 'Gas Range' )
	  );

-- -----------------------------------------------------
-- Question 16
select 	O.order_num,
		O.order_date
from
		customer	 C,
		orders		 O
		
where 
	( C.customer_num = O.customer_num ) and
	( C.customer_name = 'Johnson''s Department Store' ) and
	order_num in
	(
		select
			order_num
			
		from
			order_line	 OL,
			part		 P
			
		where
			( OL.part_num = P.part_num ) and
			( P.description = 'Gas Range' )
	)
	;

-- -----------------------------------------------------
-- Question 17
select
	O.order_num,
	O.order_date
	
from
	customer	 C,
	orders		 O
where
	( C.customer_num = O.customer_num ) and
	( C.customer_name = 'Johnson''s Department Store' ) and
	order_num not in
	(
		select
			OL.order_num
		
		from
			order_line	 OL,
			part		 P
			
		where
			( OL.part_num   = P.part_num ) and
			( P.description = 'Gas Range' )
	);

-- -----------------------------------------------------
-- Question 18
-- -----------
-- all is discussed 157
-- IS true only if the sub quey is true
select
	P.part_num,
	P.description,
	P.price,
	P.class
	
from
	part	 P
	
where
	P.price > all
	
	(
		select
			price
			
		from
			part
			
		where
			( class = 'AP' )
	);

-- -----------------------------------------------------
-- Question 19
select
	part_num,
	description,
	price,
	class
	
from
	part
where
	price > any
	(
		select
			price
			
		from
			part
			
		where
			( class = 'AP' ) 
	);

-- -----------------------------------------------------
-- Question 20

select
	part.part_num,
	description,
	on_hand,
	num_ordered
	
from
	part
	
left join
	order_line
	
on
	( part.part_num = order_line.part_num )
	
order by part.part_num;

