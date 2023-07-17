-- i. Find out the Types of account and the account Balance of customer with Name=’SWAROOP RAY’

select type,balance from account a inner join depositor d on a.account_no=d.account_no inner join customer c on d.cust_no=c.cust_no where name='Swaroop Ray';
