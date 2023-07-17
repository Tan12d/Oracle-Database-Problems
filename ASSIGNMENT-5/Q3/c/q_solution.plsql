SQL>create view LOAN_M as select name, loan_no, amount from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where 
  branch_city='MUMBAI';

View craeted.

SQL> select * from loan_m;

NAME,LOAN_NO,AMOUNT
Ankita Singh,L0003,8000000
Aslesha Tiwari,L0004,100000

SQL> select name, amount from LOAN_M where amount between 50000 and 500000;

NAME,AMOUNT
Aslesha Tiwari,100000

SQL> select name, amount from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where amount 
  between 50000 and 500000 and branch_city='MUMBAI';

NAME,AMOUNT
Aslesha Tiwari,100000
