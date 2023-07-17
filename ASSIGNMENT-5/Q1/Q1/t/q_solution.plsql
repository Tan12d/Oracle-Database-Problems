SQL> select account_no from account where balance > all(select balance from account where type='FD');

ACCOUNT_NO
A0003
