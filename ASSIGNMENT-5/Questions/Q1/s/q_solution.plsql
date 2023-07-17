SQL> select account_no from account where balance > some(select balance from account where type='FD');

ACCOUNT_NO
A0003
A0006
A0001
A0010
A0007
A0004
