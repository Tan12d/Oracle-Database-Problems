-- f. Find out the installment details of customer named “Ankita Singh”.

select * from installment where loan_no = (select loan_no from loan where cust_no = (select cust_no from customer where name='Ankita Singh'));
