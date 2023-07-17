-- c. Find out the name of the customer who has not taken any loan.

select name from customer where cust_no not in (select cust_no from loan);
