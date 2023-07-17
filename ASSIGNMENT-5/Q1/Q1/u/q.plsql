-- u.  Display the details of the branch in which some loans are taken. (Use exist clause)

select * from branch where exists (select * from loan where branch.branch_code=loan.branch_code);
