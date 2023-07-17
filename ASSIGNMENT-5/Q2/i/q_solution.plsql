SQL> select type,balance from account a inner join depositor d on a.account_no=d.account_no inner join customer c on d.cust_no=c.cust_no where name='Swaroop Ray';

TYPE,BALANCE
CA,850000
CA,35000
FD,99000
