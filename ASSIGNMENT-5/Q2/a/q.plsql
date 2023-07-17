-- a. Find out the Loan_nos where the loans are taken from any branch with branch_city = 'MUMBAI'.

select loan_no from loan l inner join branch b on l.branch_code=b.branch_code where branch_city='MUMBAI';
