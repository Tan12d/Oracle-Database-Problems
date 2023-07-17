SQL> select name,phone_no,cust_no from customer where cust_no = (select cust_no from depositor where account_no='A0004');

NAME,PHONE_NO,CUST_NO
Swaroop Ray,9437855466,C0006
