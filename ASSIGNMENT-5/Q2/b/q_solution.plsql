SQL> select type from account a inner join branch b on a.branch_code=b.branch_code where branch_city='DELHI';

TYPE
SB
SB
SB
