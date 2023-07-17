-- Q1. Write the expression for the following set of queries in SQL, based on the set of schemas of Assignment (4), using concept of sub query.
    -- a) Find out the name, phone_no and cust_no of customer having Account_no “A0004”.

select name,phone_no,cust_no from customer where cust_no = (select cust_no from depositor where account_no='A0004');
