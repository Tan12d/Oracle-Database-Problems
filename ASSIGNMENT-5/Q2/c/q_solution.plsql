SQL> select name, phone_no from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on d.account_no=a.account_no where balance > 100000;

NAME,PHONE_NO
Soumya Jha,9885623344
Abhijit Mishra,9455845425
Swaroop Ray,9437855466
Aslesha Tiwari,
