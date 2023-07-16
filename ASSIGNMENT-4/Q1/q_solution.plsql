SQL> create table customer5 (cust_no varchar(5) primary key check(length(cust_no)=5 and cust_no like 'C____'), name varchar2(20) not null,phone_no number(12),city varchar2(15) not null);

Table created.

SQL> desc customer5;
Name	Null?	Type
CUST_NO	NOT NULL	VARCHAR2(5)
NAME	NOT NULL	VARCHAR2(20)
PHONE_NO		NUMBER(12)
CITY	NOT NULL	VARCHAR2(15)

SQL> create table branch5 (branch_code varchar(5) primary key,branch_name varchar2(20) not null,branch_city varchar2(15) check(branch_city in ('DELHI','MUMBAI','KOLKATA','CHENNAI')));

Table created.

SQL> desc branch5;
Name	Null?	Type
BRANCH_CODE	NOT NULL	VARCHAR2(5)
BRANCH_NAME	NOT NULL	VARCHAR2(20)
BRANCH_CITY		VARCHAR2(15)

SQL> create table account5 (account_no varchar(5) primary key check(length(account_no)=5 and account_no like 'A____'),type char(2) check(type in ('SB','FD','CA')),balance number(8) check(balance<10000000),branch_code varchar2(4),constraint f1k foreign key (branch_code) references branch(branch_code));

Table created.

SQL> desc account5;
Name	Null?	Type
ACCOUNT_NO	NOT NULL	VARCHAR2(5)
TYPE		CHAR(2)
BALANCE		NUMBER(8)
BRANCH_CODE		VARCHAR2(4)

SQL> create table depositor5 (cust_no varchar(5),account_no varchar(5),primary key (cust_no,account_no),constraint f1k1 foreign key (cust_no) references customer(cust_no), constraint f2k2 foreign key (account_no) references account(account_no));

Table created.

SQL> desc depositor5;
Name	Null?	Type
CUST_NO	NOT NULL	VARCHAR2(5)
ACCOUNT_NO	NOT NULL	VARCHAR2(5)

SQL> create table loan5 (loan_no varchar(5) primary key check(length(loan_no)=5 and loan_no like 'L____'), cust_no varchar(5),amount number(10) check(amount>1000), branch_code varchar(5),constraint f3k3 foreign key (cust_no) references customer(cust_no),constraint f4k4 foreign key (branch_code) references branch(branch_code));

Table created.

SQL> desc loan5;
Name	Null?	Type
LOAN_NO	NOT NULL	VARCHAR2(5)
CUST_NO		VARCHAR2(5)
AMOUNT		NUMBER(10)
BRANCH_CODE		VARCHAR2(5)

SQL> create table installment5 (inst_no number(2) check(inst_no<=10),loan_no varchar(5),inst_amount number(10) not null,constraint f5k5 foreign key (loan_no) references loan(loan_no),primary key(inst_no,loan_no));

Table created.

SQL> desc installment5;
Name	Null?	Type
INST_NO	NOT NULL	NUMBER(2)
LOAN_NO	NOT NULL	VARCHAR2(5)
INST_AMOUNT	NOT NULL	NUMBER(10)
