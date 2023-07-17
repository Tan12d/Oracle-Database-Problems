-- j. Display the name and the number of accounts of the customers, who have more than one account.

select name, count(account_no) from CUSTOMER c inner join DEPOSITOR d on c.cust_no=d.cust_no group by name having count(account_no)>1;
