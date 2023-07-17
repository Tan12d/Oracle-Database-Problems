-- g. Find out the Ph_no of customers having account at branch with Branch_name equal to SALTLAKE.

select phone_no from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where branch_name='Saltlake Branch';
