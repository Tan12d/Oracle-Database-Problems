-- c. Create a view LOAN_M with column customer name, loan no. and loan amount representing the details of all customers having loan in any branch of MUMBAI.

create view LOAN_M as select name, loan_no, amount from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where 
  branch_city='MUMBAI';

select * from loan_m;

-- i. Display the name of the customers taking loan amount between 50000 to 500000 in any branch of MUMBAI. (Write the query using the view LOAN_M and without using the view)

select name, amount from LOAN_M where amount between 50000 and 500000;

SQL> select name, amount from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where amount between 50000 and 500000 and branch_city='MUMBAI';
