-- c. Find out the Name and Ph_no of customers who have account balance more than 100000.

select name, phone_no from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on d.account_no=a.account_no where balance > 100000;
