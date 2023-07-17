-- ASSIGNMENT-4

-- Q1

create table customer5 (cust_no varchar(5) primary key check(length(cust_no)=5 and cust_no like 'C____'), name varchar2(20) not null,phone_no number(12),city varchar2(15) not null);

desc customer5;

create table branch5 (branch_code varchar(5) primary key,branch_name varchar2(20) not null,branch_city varchar2(15) check(branch_city in ('DELHI','MUMBAI','KOLKATA','CHENNAI')));

desc branch5;

create table account5 (account_no varchar(5) primary key check(length(account_no)=5 and account_no like 'A____'),type char(2) check(type in ('SB','FD','CA')),balance number(8) check(balance<10000000),branch_code varchar2(4),constraint f1k foreign key (branch_code) references branch(branch_code));

desc account5;

create table depositor5 (cust_no varchar(5),account_no varchar(5),primary key (cust_no,account_no),constraint f1k1 foreign key (cust_no) references customer(cust_no), constraint f2k2 foreign key (account_no) references account(account_no));

desc depositor5;

create table loan5 (loan_no varchar(5) primary key check(length(loan_no)=5 and loan_no like 'L____'), cust_no varchar(5),amount number(10) check(amount>1000), branch_code varchar(5),constraint f3k3 foreign key (cust_no) references customer(cust_no),constraint f4k4 foreign key (branch_code) references branch(branch_code));

desc loan5;

create table installment5 (inst_no number(2) check(inst_no<=10),loan_no varchar(5),inst_amount number(10) not null,constraint f5k5 foreign key (loan_no) references loan(loan_no),primary key(inst_no,loan_no));

desc installment5;

-- Q2

-- a

    insert into customer5 values('C0001','Raj Anand Singh',9861258466,'DELHI');
    insert into customer5 values('C0002','Ankita Singh',9879958651,'BANGALORE');
    insert into customer5 values('C0003','Soumya Jha',9885623344,'MUMBAI');     
    insert into customer5 values('C0004','Abhijit Mishra',9455845425,'MUMBAI');
   insert into customer5 values('C0005','Yash Saraf',9665854585,'KOLKATA');
   insert into customer5 values('C0006','Swaroop Ray',9437855466,'CHENNAI');
   insert into customer5 values('C0007','Surya Narayan',9937955212,'GURGAON');
    insert into customer5 values('C0008','Pranav Praveen',9336652441,'PUNE');
   insert into customer5 values('C0009','Stuti Mishra',7870266534,'DELHI');
   insert into customer5 (cust_no,name,city) values('C0010','Aslesha Tiwari','MUMBAI');

   select * from customer5;

-- b

    insert into branch5 values('B001','Janakpuri Branch','DELHI');
    insert into branch5 values('B002','Chandnichowk Branch','DELHI');
    insert into branch5 values('B003','Juhu Branch','MUMBAI');
    insert into branch5 values('B004','Andheri Branch','MUMBAI');
    insert into branch5 values('B005','Saltlake Branch','KOLKATA');
    insert into branch5 values('B006','Srirampuram Branch','CHENNAI');

    select * from BRANCH5;

-- c

    insert into account5 values('A0001','SB',200000,'B003');
    insert into account5 values('A0002','SB',15000,'B002');
    insert into account5 values('A0003','CA',850000,'B004');
    insert into account5 values('A0004','CA',35000,'B004');
    insert into account5 values('A0005','FD',28500,'B005');
    insert into account5 values('A0006','FD',550000,'B005');
    insert into account5 values('A0007','SB',48000,'B001');
    insert into account5 values('A0008','SB',7200,'B002');
    insert into account5 values('A0009','SB',18750,'B003');
    insert into account5 values('A0010','FD',99000,'B004');

    select * from account5;

-- d

    insert into depositor5 values('C0003','A0001');
    insert into depositor5 values('C0004','A0001');
    insert into depositor5 values('C0004','A0002');
    insert into depositor5 values('C0006','A0003');
    insert into depositor5 values('C0006','A0004');
    insert into depositor5 values('C0001','A0005');
    insert into depositor5 values('C0002','A0005');
    insert into depositor5 values('C0010','A0006');
    insert into depositor5 values('C0009','A0007');
    insert into depositor5 values('C0008','A0008');
    insert into depositor5 values('C0007','A0009');
    insert into depositor5 values('C0006','A0010');

    select * from depositor5;

-- e

    insert into loan5 values('L0001','C0005',3000000,'B006');
    insert into loan5 values('L0002','C0001',50000,'B005');
    insert into loan5 values('L0003','C0002',8000000,'B004');
    insert into loan5 values('L0004','C0010',100000,'B004');
    insert into loan5 values('L0005','C0009',9500000,'B005');
    insert into loan5 values('L0006','C0008',25000,'B006');

    select * from loan5;

-- f

    insert into installment5 values(1,'L0005',500000);
    insert into installment5 values(1,'L0002',10000);
    insert into installment5 values(1,'L0003',50000);
    insert into installment5 values(1,'L0004',20000);
    insert into installment5 values(2,'L0005',500000);
    insert into installment5 values(1,'L0006',3000);
    insert into installment5 values(2,'L0002',10000);
    insert into installment5 values(3,'L0002',10000);
    insert into installment5 values(2,'L0003',50000);
    insert into installment5 values(2,'L0004',20000);

    select * from installment5;


-- ASSIGNMENT-5

-- Q1

-- a)

select name,phone_no,cust_no from customer where cust_no = (select cust_no from depositor where account_no='A0004');

-- b)

select amount,branch_code from loan where cust_no = (select cust_no from customer where name='Yash Saraf');

-- c)

select name from customer where cust_no not in (select cust_no from loan);

-- d)

select account_no,balance from account where account_no = (select account_no from depositor where cust_no='C0010');

-- e)

select branch_city from branch where branch_code = (select branch_code from loan where cust_no = (select cust_no from customer where name='Aslesha Tiwari'));

-- f)

select * from installment where loan_no = (select loan_no from loan where cust_no = (select cust_no from customer where name='Ankita Singh'));

-- g)

select branch_name,branch_city from branch where branch_code in (select branch_code from account where account_no in (select account_no from depositor where cust_no in (select cust_no from customer where name='Abhijit Mishra')));

-- h)

create table ACCOUNT_TYPE AS SELECT account_no,type from account where 1=0;
    
desc account_type;

-- i)

insert into account_type select account_no, type from account where balance<50000;

select * from account_type;

-- j)

update account_type set type='FD' where account_no = (select account_no from depositor where cust_no='C0007');

SELECT * from account_type;

-- k)

delete from account_type where account_no in (select account_no from account where balance < 20000);

SELECT * from account_type;

-- l)

select name from customer where cust_no in (select cust_no from loan) and cust_no in (select cust_no from depositor);

-- m)

select name from customer where cust_no in (select cust_no from loan) and cust_no not in (select cust_no from depositor);

-- n)

select name, cust_no from customer group by name, cust_no having cust_no in (select cust_no from depositor group by cust_no having count(cust_no)>1);

-- o)

select * from account where type = (select type from account where account_no='A0001') and branch_code = (select branch_code from account where account_no='A0001') and account_no != 'A0001';

-- p)

select * from (select cust_no, count(account_no) as cnt from depositor group by cust_no) where cnt>1;

-- q)

select name, ( select count(account_no) from depositor where cust_no= customer.cust_no) as cnt from customer where (select count(account_no) from depositor where cust_no=customer.cust_no)>1;

-- r)

select * from (select branch_code,avg(balance) as avg from account group by branch_code) where avg>60000;

-- s)

select account_no from account where balance > some(select balance from account where type='FD') and type!='FD';

-- t)

select account_no from account where balance > all(select balance from account where type='FD');

-- u)

select * from branch where exists (select * from loan where branch.branch_code=loan.branch_code);

-- v)

select * from loan where not exists (select * from installment where installment.loan_no=loan.loan_no);

-- w)

create table account9 as select * from account;

select * from account9;

select 
account_no, type, 
case 
when balance > 80000 then balance * 1.06
else balance * 1.05
end balance,
branch_code
from account9;


-- Q2)

-- a)

select loan_no from loan l inner join branch b on l.branch_code=b.branch_code where branch_city='MUMBAI';

-- b)

select type from account a inner join branch b on a.branch_code=b.branch_code where branch_city='DELHI';

-- c)

select name, phone_no from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on d.account_no=a.account_no where balance > 100000;

-- d)

select INST_NO, INST_AMOUNT from installment i inner join loan l on i.LOAN_NO=l.LOAN_NO inner join customer c on l.CUST_NO=c.CUST_NO where name='Raj Anand Singh';

-- e)

select name from customer c inner join depositor d on c.cust_no=d.cust_no inner join account a on d.account_no=a.account_no where type!='SB';

-- f)

select distinct name from customer c inner join loan l on c.cust_no=l.cust_no inner join installment i on l.loan_no=i.loan_no where inst_amount=50000;

-- g)

select phone_no from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where branch_name='Saltlake Branch';

-- h)

select branch_name,branch_city from branch b inner join loan l on b.branch_code=l.branch_code inner join customer c on l.cust_no=c.cust_no where name='Abhijit Mishra';

-- i)

select type,balance from account a inner join depositor d on a.account_no=d.account_no inner join customer c on d.cust_no=c.cust_no where name='Swaroop Ray';

-- j)

select name, count(account_no) from CUSTOMER c inner join DEPOSITOR d on c.cust_no=d.cust_no group by name having count(account_no)>1;

-- k)

WITH max_balance AS (
  SELECT MAX(balance) AS max_balance
  FROM account
)
SELECT account_no, balance
FROM account
WHERE balance = (SELECT max_balance FROM max_balance);

-- l)

with average as (
    select avg(balance) as average
    from account
    group by branch_code
)
select branch_code, sum(balance) as balance
from account
group by branch_code
having sum(balance) > all(select average from average);


-- Q3)

-- a)

-- i)
create view CUSTOMER_ACC_DETAILS AS
select c.cust_no, name, a.account_no, balance
from customer c inner join depositor d
on c.cust_no=d.cust_no inner join account a 
on d.account_no=a.account_no;

describe CUSTOMER_ACC_DETAILS;

-- ii)
select * from CUSTOMER_ACC_DETAILS;

-- iii)

delete from CUSTOMER_ACC_DETAILS
where cust_no='C0004';

select * from CUSTOMER_ACC_DETAILS;

select * from depositor; --base table

-- iv)

insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0001',200000);
insert into CUSTOMER_ACC_DETAILS values('C0004','Abhijit Mishra','A0002',15000);
    
-- v)

create or replace view CUSTOMER_ACC_DETAILS as
select c.cust_no, name, phone_no, a.account_no, balance
from customer c inner join depositor d
on c.cust_no=d.cust_no inner join account a 
on d.account_no=a.account_no;

select * from CUSTOMER_ACC_DETAILS;

-- vi)

drop view CUSTOMER_ACC_DETAILS;

-- b)

create view BRANCH_LOCATE as select branch_name, branch_city from branch where branch_city!='KOLKATA'; 

select * from BRANCH_LOCATE;

-- c)

create view LOAN_M as select name, loan_no, amount from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where branch_city='MUMBAI';

select * from loan_m;

-- i)

select name, amount from LOAN_M where amount between 50000 and 500000;

select name, amount from customer c inner join loan l on c.cust_no=l.cust_no inner join branch b on l.branch_code=b.branch_code where amount between 50000 and 500000 and branch_city='MUMBAI';

-- d)

create view ALL_CUSTOMERS as
select d.cust_no, name, a.account_no, branch_name
from customer c 
inner join depositor d 
on c.cust_no=d.cust_no
inner join account a 
on d.account_no=a.account_no
inner join branch b 
on a.branch_code=b.branch_code
union
select l1.cust_no, name, loan_no, branch_name
from customer c1
inner join loan l1 
on c1.cust_no=l1.cust_no
inner join branch b1
on l1.branch_code=b1.branch_code;

select * from ALL_CUSTOMERS;

-- i)

select name, cust_no from ALL_CUSTOMERS where branch_name='Juhu Branch';

-- ii)

select branch_name, count(distinct cust_no) as count
from ALL_CUSTOMERS
group by branch_name;