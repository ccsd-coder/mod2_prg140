
-- Question 16
-- -----------

select part_num, description, on_hand from part
where ( 
on_hand 
>= ( select avg( on_hand ) from part )
);




