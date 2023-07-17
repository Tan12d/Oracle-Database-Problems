SQL> select INST_NO, INST_AMOUNT from installment i inner join loan l on i.LOAN_NO=l.LOAN_NO inner join customer c on l.CUST_NO=c.CUST_NO where name='Raj Anand Singh';

INST_NO,INST_AMOUNT
1,10000
2,10000
3,10000
