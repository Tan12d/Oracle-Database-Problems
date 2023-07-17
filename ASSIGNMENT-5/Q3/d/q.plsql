-- d. Create a view ALL_CUSTOMERS consisting of branches and their customers.

create view ALL_CUSTOMERS as
select d.cust_no, name, a.account_no, branch_name
from customer c 
inner join depositor d 
on c.cust_no=d.cust_no
inner join account a 
on d.account_no=a.account_no
inner join branch b 
on a.branch_code=b.branch_code
union
select l1.cust_no, name, loan_no, branch_name
from customer c1
inner join loan l1 
on c1.cust_no=l1.cust_no
inner join branch b1
on l1.branch_code=b1.branch_code;

-- i. Find all customers WHO HAVE AN ACCOUNT OR LOAN IN JUHU BRANCH.

select name, cust_no from ALL_CUSTOMERS where branch_name='Juhu Branch';

-- ii. Display the number of customers of each branch.

select branch_name, count(distinct cust_no) as count from ALL_CUSTOMERS group by branch_name;
