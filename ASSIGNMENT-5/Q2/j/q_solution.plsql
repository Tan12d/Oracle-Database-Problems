SQL> select name, count(account_no) from CUSTOMER c inner join DEPOSITOR d on c.cust_no=d.cust_no group by name having count(account_no)>1;

NAME,COUNT(ACCOUNT_NO)
Abhijit Mishra,2
Swaroop Ray,3
