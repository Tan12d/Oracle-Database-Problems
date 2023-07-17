SQL> select name from customer where cust_no not in (select cust_no from loan);

NAME
Abhijit Mishra
Surya Narayan
Swaroop Ray
Soumya Jha
