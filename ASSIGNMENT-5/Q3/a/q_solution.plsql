
SQL> create view CUSTOMER_ACC_DETAILS AS select c.cust_no, name, a.account_no, balance from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on 
  d.account_no=a.account_no;

View created.

SQL> describe CUSTOMER_ACC_DETAILS;
Name	Null?	Type
CUST_NO	NOT NULL	VARCHAR2(5)
NAME	NOT NULL	VARCHAR2(20)
ACCOUNT_NO	NOT NULL	VARCHAR2(5)
BALANCE		NUMBER(8)

SQL> select * from CUSTOMER_ACC_DETAILS;

SQL> delete from CUSTOMER_ACC_DETAILS where cust_no='C0004';

2 rows deleted.

Commit complete.

SQL> select * from CUSTOMER_ACC_DETAILS;

CUST_NO,NAME,ACCOUNT_NO,BALANCE
C0003,Soumya Jha,A0001,200000
C0006,Swaroop Ray,A0003,850000
C0006,Swaroop Ray,A0004,35000
C0001,Raj Anand Singh,A0005,28500
C0002,Ankita Singh,A0005,28500
C0010,Aslesha Tiwari,A0006,550000
C0009,Stuti Mishra,A0007,48000
C0008,Pranav Praveen,A0008,7200
C0007,Surya Narayan,A0009,18750
C0006,Swaroop Ray,A0010,99000

SQL> select * from depositor;

CUST_NO,ACCOUNT_NO
C0001,A0005
C0002,A0005
C0003,A0001
C0006,A0003
C0006,A0004
C0006,A0010
C0007,A0009
C0008,A0008
C0009,A0007
C0010,A0006

SQL> insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0001',200000);

insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0001',200000)
*
ERROR at line 324:
ORA-01779: cannot modify a column which maps to a non key-preserved table
SQL> insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0002',15000);

insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0002',15000)
*
ERROR at line 325:
ORA-01779: cannot modify a column which maps to a non key-preserved table

SQL> create or replace view CUSTOMER_ACC_DETAILS as select c.cust_no, name, phone_no, a.account_no, balance from customer c inner join depositor d on c.cust_no=d.cust_no 
  inner join account a on d.account_no=a.account_no;

View created.

SQL> select * from CUSTOMER_ACC_DETAILS;

CUST_NO,NAME,PHONE_NO,ACCOUNT_NO,BALANCE
C0003,Soumya Jha,9885623344,A0001,200000
C0006,Swaroop Ray,9437855466,A0003,850000
C0006,Swaroop Ray,9437855466,A0004,35000
C0001,Raj Anand Singh,9861258466,A0005,28500
C0002,Ankita Singh,9879958651,A0005,28500
C0010,Aslesha Tiwari,,A0006,550000
C0009,Stuti Mishra,7870266534,A0007,48000
C0008,Pranav Praveen,9336652441,A0008,7200
C0007,Surya Narayan,9937955212,A0009,18750
C0006,Swaroop Ray,9437855466,A0010,99000

SQL> drop view CUSTOMER_ACC_DETAILS;

View dropped.

