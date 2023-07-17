SQL> select name, ( select count(account_no) from depositor where cust_no= customer.cust_no) as cnt from customer where (select count(account_no) from depositor where cust_no=customer.cust_no)>1;

NAME,CNT
Abhijit Mishra,2
Swaroop Ray,3
