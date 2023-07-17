-- m. Find out the name of all customers who have a loan at the bank but don’t have an account at the bank.

select name from customer where cust_no in (select cust_no from loan) and cust_no not in (select cust_no from depositor);
