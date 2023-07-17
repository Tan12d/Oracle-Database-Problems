SQL> create view ALL_CUSTOMERS as select d.cust_no, name, a.account_no, branch_name from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on 
  d.account_no=a.account_no inner join branch b on a.branch_code=b.branch_code union select l1.cust_no, name, loan_no, branch_name from customer c1 inner join loan l1 on 
  c1.cust_no=l1.cust_no inner join branch b1 on l1.branch_code=b1.branch_code;

View created.

SQL> select name, cust_no from ALL_CUSTOMERS where branch_name='Juhu Branch';

NAME,CUST_NO
Abhijit Mishra,C0004
Soumya Jha,C0003
Surya Narayan,C0007

SQL> select branch_name, count(distinct cust_no) as count from ALL_CUSTOMERS group by branch_name;

BRANCH_NAME,COUNT
Juhu Branch,3
Andheri Branch,3
Saltlake Branch,4
Janakpuri Branch,1
Chandnichowk Branch,2
Srirampuram Branch,2

