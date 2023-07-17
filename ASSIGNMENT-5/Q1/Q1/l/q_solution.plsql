SQL> select name from customer where cust_no in (select cust_no from loan) and cust_no in (select cust_no from depositor);

NAME
Raj Anand Singh
Ankita Singh
Pranav Praveen
Stuti Mishra
Aslesha Tiwari
