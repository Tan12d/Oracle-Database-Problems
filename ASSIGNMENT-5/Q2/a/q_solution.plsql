SQL> select loan_no from loan l inner join branch b on l.branch_code=b.branch_code where branch_city='MUMBAI';

LOAN_NO
L0003
L0004
