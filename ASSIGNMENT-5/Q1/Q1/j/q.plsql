-- j. UPDTAE the account type to FD in ACCOUNT_TYPE table for the customer with CUST_NO equal to C0007.

update account_type set type='FD' where account_no = (select account_no from depositor where cust_no='C0007');

SELECT * from account_type;
