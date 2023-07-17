-- v. Display the details of the loan for which no instalments are paid. (Use not exist clause)

select * from loan where not exists (select * from installment where installment.loan_no=loan.loan_no);
