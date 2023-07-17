-- g. Find out the branch name and branch city, in which “Abhijit Mishra” has an account.

select branch_name,branch_city from branch where branch_code in (select branch_code from account where account_no in (select account_no from depositor where cust_no in (select cust_no from customer where name='Abhijit Mishra')));
