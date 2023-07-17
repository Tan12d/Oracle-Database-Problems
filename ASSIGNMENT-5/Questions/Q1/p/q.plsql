-- p. Display the customer number and the number of accounts, which has more than one account without using having clause. (Use sub query in the form clause)

select * from (select cust_no, count(account_no) as cnt from depositor group by cust_no) where cnt>1;
