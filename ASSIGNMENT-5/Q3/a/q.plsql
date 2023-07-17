-- a. Create a view CUSTOMER_ACC_DETAILS consisting of Customer_No, Name with Account number and Balance. 

-- i. Check the structure of the view.

create view CUSTOMER_ACC_DETAILS AS
select c.cust_no, name, a.account_no, balance
from customer c inner join depositor d
on c.cust_no=d.cust_no inner join account a 
on d.account_no=a.account_no;

describe CUSTOMER_ACC_DETAILS;

-- ii. Access the data from the view.

select * from CUSTOMER_ACC_DETAILS;

-- iii. Delete the information of the customer having CUST_NO C0004 from the view.

delete from CUSTOMER_ACC_DETAILS
where cust_no='C0004';

select * from CUSTOMER_ACC_DETAILS;

-- Check whether the deletion has done any changes in the base tables.

select * from depositor; --base table

-- iv. Insert the information of the customer having CUST_NO C0004 to the view again.

insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0001',200000)
*
ERROR at line 324:
ORA-01779: cannot modify a column which maps to a non key-preserved table

insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0002',15000)
*
ERROR at line 325:
ORA-01779: cannot modify a column which maps to a non key-preserved table

-- v. Update the view CUSTOMER_ACC_DETAILS to include customer’s phone no.

create or replace view CUSTOMER_ACC_DETAILS as
select c.cust_no, name, phone_no, a.account_no, balance
from customer c inner join depositor d
on c.cust_no=d.cust_no inner join account a 
on d.account_no=a.account_no;

select * from CUSTOMER_ACC_DETAILS;

-- vi) Delete the view with its structure.

drop view CUSTOMER_ACC_DETAILS;
