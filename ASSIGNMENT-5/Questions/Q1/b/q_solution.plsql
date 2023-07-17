SQL> select amount,branch_code from loan where cust_no = (select cust_no from customer where name='Yash Saraf');

AMOUNT,BRANCH_CODE
3000000,B006
