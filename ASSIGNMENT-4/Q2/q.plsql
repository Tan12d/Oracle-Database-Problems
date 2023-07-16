-- Q2. Insert the records to the tables as specified:

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

select * from branch5;

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
