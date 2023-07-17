SQL> select * from installment where loan_no = (select loan_no from loan where cust_no = (select cust_no from customer where name='Ankita Singh'));

INST_NO,LOAN_NO,INST_AMOUNT
1,L0003,50000
2,L0003,50000
