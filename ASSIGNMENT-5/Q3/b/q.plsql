-- b. Create a View BRANCH_LOCATE having columns Branch Name and Branch City having branch city not in KOLKATA.

create view BRANCH_LOCATE as select branch_name, branch_city from branch where branch_city!='KOLKATA'; 

select * from BRANCH_LOCATE;
