SQL> select branch_name,branch_city from branch b inner join loan l on b.branch_code=l.branch_code inner join customer c on l.cust_no=c.cust_no where name='Abhijit Mishra';

no rows selected
