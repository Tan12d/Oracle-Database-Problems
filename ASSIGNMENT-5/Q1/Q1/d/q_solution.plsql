SQL> select account_no,balance from account where account_no = (select account_no from depositor where cust_no='C0010');

ACCOUNT_NO,BALANCE
A0006,550000
