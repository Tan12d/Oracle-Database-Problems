SQL> select * from loan where not exists (select * from installment where installment.loan_no=loan.loan_no);

LOAN_NO,CUST_NO,AMOUNT,BRANCH_CODE
L0001,C0005,3000000,B006
