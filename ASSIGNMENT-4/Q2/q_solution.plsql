SQL> insert into customer5 values('C0001','Raj Anand Singh',9861258466,'DELHI');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0002','Ankita Singh',9879958651,'BANGALORE');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0003','Soumya Jha',9885623344,'MUMBAI');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0004','Abhijit Mishra',9455845425,'MUMBAI');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0005','Yash Saraf',9665854585,'KOLKATA');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0006','Swaroop Ray',9437855466,'CHENNAI');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0007','Surya Narayan',9937955212,'GURGAON');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0008','Pranav Praveen',9336652441,'PUNE');

1 row created.

Commit complete.

SQL> insert into customer5 values('C0009','Stuti Mishra',7870266534,'DELHI');

1 row created.

Commit complete.

SQL> insert into customer5 (cust_no,name,city) values('C0010','Aslesha Tiwari','MUMBAI');

1 row created.

Commit complete.

SQL> select * from customer5;

CUST_NO,NAME,PHONE_NO,CITY
C0001,Raj Anand Singh,9861258466,DELHI
C0002,Ankita Singh,9879958651,BANGALORE
C0003,Soumya Jha,9885623344,MUMBAI
C0004,Abhijit Mishra,9455845425,MUMBAI
C0005,Yash Saraf,9665854585,KOLKATA
C0006,Swaroop Ray,9437855466,CHENNAI
C0007,Surya Narayan,9937955212,GURGAON
C0008,Pranav Praveen,9336652441,PUNE
C0009,Stuti Mishra,7870266534,DELHI
C0010,Aslesha Tiwari,,MUMBAI

SQL> insert into branch5 values('B001','Janakpuri Branch','DELHI');

1 row created.

Commit complete.

SQL> insert into branch5 values('B002','Chandnichowk Branch','DELHI');

1 row created.

Commit complete.

SQL> insert into branch5 values('B003','Juhu Branch','MUMBAI');

1 row created.

Commit complete.

SQL> insert into branch5 values('B004','Andheri Branch','MUMBAI');

1 row created.

Commit complete.

SQL> insert into branch5 values('B005','Saltlake Branch','KOLKATA');

1 row created.

Commit complete.

SQL> insert into branch5 values('B006','Srirampuram Branch','CHENNAI');

1 row created.

Commit complete.

SQL> select * from branch5;

BRANCH_CODE,BRANCH_NAME,BRANCH_CITY
B001,Janakpuri Branch,DELHI
B002,Chandnichowk Branch,DELHI
B003,Juhu Branch,MUMBAI
B004,Andheri Branch,MUMBAI
B005,Saltlake Branch,KOLKATA
B006,Srirampuram Branch,CHENNAI

SQL> insert into account5 values('A0001','SB',200000,'B003');

1 row created.

Commit complete.

SQL> insert into account5 values('A0002','SB',15000,'B002');

1 row created.

Commit complete.

SQL> insert into account5 values('A0003','CA',850000,'B004');

1 row created.

Commit complete.

SQL> insert into account5 values('A0004','CA',35000,'B004');

1 row created.

Commit complete.

SQL> insert into account5 values('A0005','FD',28500,'B005');

1 row created.

Commit complete.

SQL> insert into account5 values('A0006','FD',550000,'B005');

1 row created.

Commit complete.

SQL> insert into account5 values('A0007','SB',48000,'B001');

1 row created.

Commit complete.

SQL> insert into account5 values('A0008','SB',7200,'B002');

1 row created.

Commit complete.

SQL> insert into account5 values('A0009','SB',18750,'B003');

1 row created.

Commit complete.

SQL> insert into account5 values('A0010','FD',99000,'B004');

1 row created.

Commit complete.

SQL> select * from account5;

ACCOUNT_NO,TYPE,BALANCE,BRANCH_CODE
A0001,SB,200000,B003
A0002,SB,15000,B002
A0003,CA,850000,B004
A0004,CA,35000,B004
A0005,FD,28500,B005
A0006,FD,550000,B005
A0007,SB,48000,B001
A0008,SB,7200,B002
A0009,SB,18750,B003
A0010,FD,99000,B004

SQL> insert into depositor5 values('C0003','A0001');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0004','A0001');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0004','A0002');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0006','A0003');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0006','A0004');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0001','A0005');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0002','A0005');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0010','A0006');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0009','A0007');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0008','A0008');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0007','A0009');

1 row created.

Commit complete.

SQL> insert into depositor5 values('C0006','A0010');

1 row created.

Commit complete.

SQL> select * from depositor5;

CUST_NO,ACCOUNT_NO
C0003,A0001
C0004,A0001
C0004,A0002
C0006,A0003
C0006,A0004
C0001,A0005
C0002,A0005
C0010,A0006
C0009,A0007
C0008,A0008
C0007,A0009
C0006,A0010

SQL> insert into loan5 values('L0001','C0005',3000000,'B006');

1 row created.

Commit complete.

SQL> insert into loan5 values('L0002','C0001',50000,'B005');

1 row created.

Commit complete.

SQL> insert into loan5 values('L0003','C0002',8000000,'B004');

1 row created.

Commit complete.

SQL> insert into loan5 values('L0004','C0010',100000,'B004');

1 row created.

Commit complete.

SQL> insert into loan5 values('L0005','C0009',9500000,'B005');

1 row created.

Commit complete.

SQL> insert into loan5 values('L0006','C0008',25000,'B006');

1 row created.

Commit complete.

SQL> select * from loan5;

LOAN_NO,CUST_NO,AMOUNT,BRANCH_CODE
L0001,C0005,3000000,B006
L0002,C0001,50000,B005
L0003,C0002,8000000,B004
L0004,C0010,100000,B004
L0005,C0009,9500000,B005
L0006,C0008,25000,B006

SQL> insert into installment5 values(1,'L0005',500000);

1 row created.

Commit complete.

SQL> insert into installment5 values(1,'L0002',10000);

1 row created.

Commit complete.

SQL> insert into installment5 values(1,'L0003',50000);

1 row created.

Commit complete.

SQL> insert into installment5 values(1,'L0004',20000);

1 row created.

Commit complete.

SQL> insert into installment5 values(2,'L0005',500000);

1 row created.

Commit complete.

SQL> insert into installment5 values(1,'L0006',3000);

1 row created.

Commit complete.

SQL> insert into installment5 values(2,'L0002',10000);

1 row created.

Commit complete.

SQL> insert into installment5 values(3,'L0002',10000);

1 row created.

Commit complete.

SQL> insert into installment5 values(2,'L0003',50000);

1 row created.

Commit complete.

SQL> insert into installment5 values(2,'L0004',20000);

1 row created.

Commit complete.

SQL> select * from installment5;

INST_NO,LOAN_NO,INST_AMOUNT
1,L0005,500000
1,L0002,10000
1,L0003,50000
1,L0004,20000
2,L0005,500000
1,L0006,3000
2,L0002,10000
3,L0002,10000
2,L0003,50000
2,L0004,20000
