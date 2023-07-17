SQL> insert into account_type select account_no, type from account where balance<50000;

6 rows created.

Commit complete.

SQL> select * from account_type;

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
A0009,SB
