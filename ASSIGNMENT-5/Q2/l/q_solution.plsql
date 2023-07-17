SQL> with average as (select avg(balance) as average from account group by branch_code) select branch_code, sum(balance) as balance from account group by branch_code having 
  sum(balance) > all(select average from average);

BRANCH_CODE,BALANCE
B004,984000
B005,578500
