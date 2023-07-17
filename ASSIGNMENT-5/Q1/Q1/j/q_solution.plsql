SQL> update account_type set type='FD' where account_no = (select account_no from depositor where cust_no='C0007');

1 row updated.

Commit complete.

SQL> SELECT * from account_type;

ACCOUNT_NO,TYPE
A0002,SB
A0004,CA
A0005,FD
A0007,SB
A0004,CA
A0005,FD
A0004,CA
A0005,FD
A0007,SB
A0007,SB
A0008,SB
A0009,FD
