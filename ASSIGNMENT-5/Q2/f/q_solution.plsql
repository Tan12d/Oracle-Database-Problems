SQL> select distinct name from customer c inner join loan l on c.cust_no=l.cust_no inner join installment i on l.loan_no=i.loan_no where inst_amount=50000;

NAME
Ankita Singh
