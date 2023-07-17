SQL> create view BRANCH_LOCATE as select branch_name, branch_city from branch where branch_city!='KOLKATA'; 

View created.
  
SQL> select * from BRANCH_LOCATE;

BRANCH_NAME,BRANCH_CITY
Janakpuri Branch,DELHI
Chandnichowk Branch,DELHI
Juhu Branch,MUMBAI
Andheri Branch,MUMBAI
Srirampuram Branch,CHENNAI
