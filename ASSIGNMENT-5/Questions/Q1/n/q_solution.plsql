SQL> select name, cust_no from customer group by name, cust_no having cust_no in (select cust_no from depositor group by cust_no having count(cust_no)>1);

NAME,CUST_NO
Abhijit Mishra,C0004
Swaroop Ray,C0006
