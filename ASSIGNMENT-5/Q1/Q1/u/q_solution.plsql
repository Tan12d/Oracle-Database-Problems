SQL> select * from branch where exists (select * from loan where branch.branch_code=loan.branch_code);

BRANCH_CODE,BRANCH_NAME,BRANCH_CITY
B006,Srirampuram Branch,CHENNAI
B005,Saltlake Branch,KOLKATA
B004,Andheri Branch,MUMBAI
