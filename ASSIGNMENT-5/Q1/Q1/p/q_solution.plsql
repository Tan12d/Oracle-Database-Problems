SQL> select * from (select cust_no, count(account_no) as cnt from depositor group by cust_no) where cnt>1;

CUST_NO,CNT
C0004,2
C0006,3
