-- h. Create a table named ACCOUNT_TYPE from ACCOUNT table with two columns named as ACCOUNT_NO and TYPE without taking any records from ACCOUNT table. 

create table ACCOUNT_TYPE AS SELECT account_no,type from account where 1=0;

desc account_type;
