SQL>create table ACCOUNT_TYPE AS SELECT account_no,type from account where 1=0;

Table created.
  
SQL>desc account_type;

Name	Null?	Type
ACCOUNT_NO		VARCHAR2(5)
TYPE		CHAR(2)
