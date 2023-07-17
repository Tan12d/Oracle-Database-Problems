SQL> delete from account_type where account_no in (select account_no from account where balance < 20000);

3 rows deleted.

Commit complete.

SQL> SELECT * from account_type;

ACCOUNT_NO,TYPE
A0004,CA
A0005,FD
A0007,SB
A0004,CA
A0005,FD
A0004,CA
A0005,FD
A0007,SB
A0007,SB
