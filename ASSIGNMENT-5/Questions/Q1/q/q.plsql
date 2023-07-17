-- q.  Display the name of the customers and their number of accounts, who have more than one account. (Use scalar subquey)

select name, ( select count(account_no) from depositor where cust_no= customer.cust_no) as cnt from customer where (select count(account_no) from depositor where cust_no=customer.cust_no)>1;
