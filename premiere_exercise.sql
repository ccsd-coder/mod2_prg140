-- Question 13
-- -----------
-- This means that the main ordering is performed on the 
-- wharehouse attribute, and THEN at the part_num level.
select * from part order by warehouse asc, part_num asc;

