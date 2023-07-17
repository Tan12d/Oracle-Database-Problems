-- e. Find out the branch_city where “Aslesha Tiwari” has taken a loan.

select branch_city from branch where branch_code = (select branch_code from loan where cust_no = (select cust_no from customer where name='Aslesha Tiwari'));
