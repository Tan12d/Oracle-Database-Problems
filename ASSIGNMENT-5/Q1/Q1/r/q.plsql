-- r. Display the branch codes and average account balance of those branches where the average account balance is greater than 60000. (Use sub query in the form clause)

select * from (select branch_code,avg(balance) as avg from account group by branch_code) where avg>60000;
