-- n. Find out the name of the customers having more than one account.

select name, cust_no from customer group by name, cust_no having cust_no in (select cust_no from depositor group by cust_no having count(cust_no)>1);
