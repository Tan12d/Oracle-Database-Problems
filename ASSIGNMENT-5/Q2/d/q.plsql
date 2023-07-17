-- d. Find out Installment_no and Installment amount of customer with Name= Raj Anand Singh.

select INST_NO, INST_AMOUNT from installment i inner join loan l on i.LOAN_NO=l.LOAN_NO inner join customer c on l.CUST_NO=c.CUST_NO where name='Raj Anand Singh';
