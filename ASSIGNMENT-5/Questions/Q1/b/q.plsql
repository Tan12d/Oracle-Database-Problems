-- b. Find out the loan_amount and branch code of customer named “Yash Saraf”.

select amount,branch_code from loan where cust_no = (select cust_no from customer where name='Yash Saraf');
