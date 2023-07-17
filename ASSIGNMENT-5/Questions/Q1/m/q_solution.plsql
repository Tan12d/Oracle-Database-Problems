SQL> select name from customer where cust_no in (select cust_no from loan) and cust_no not in (select cust_no from depositor);

NAME
Yash Saraf
