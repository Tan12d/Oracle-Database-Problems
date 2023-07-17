-- e. Find out the Name of the customers who do not have account of Type=SB.

select name from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on d.account_no=a.account_no where type!='SB';
