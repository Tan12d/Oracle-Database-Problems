-- d. Find out the account_no and Balance of customer with cust_no = “C0010”.

select account_no,balance from account where account_no = (select account_no from depositor where cust_no='C0010');
