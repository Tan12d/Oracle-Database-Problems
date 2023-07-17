-- b. Find the Type of the accounts available in any branch with branch_city =DELHI.

select type from account a inner join branch b on a.branch_code=b.branch_code where branch_city='DELHI';
