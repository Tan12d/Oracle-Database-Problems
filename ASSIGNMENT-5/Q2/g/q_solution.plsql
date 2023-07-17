SQL> select phone_no from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where branch_name='Saltlake Branch';

PHONE_NO
9861258466
7870266534
