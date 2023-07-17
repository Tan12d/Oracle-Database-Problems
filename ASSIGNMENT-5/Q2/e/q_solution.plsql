SQL> select name from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on d.account_no=a.account_no where type!='SB';

NAME
Swaroop Ray
Swaroop Ray
Raj Anand Singh
Ankita Singh
Aslesha Tiwari
Swaroop Ray
