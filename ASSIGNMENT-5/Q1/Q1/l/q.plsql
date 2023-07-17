-- l. Find out the name of the customers who have both an account and loan at the bank.

select name from customer where cust_no in (select cust_no from loan) and cust_no in (select cust_no from depositor);
