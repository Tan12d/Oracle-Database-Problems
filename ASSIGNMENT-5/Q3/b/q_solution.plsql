SQL> create view BRANCH_LOCATE as select branch_name, branch_city from branch where branch_city!='KOLKATA'; 

View created.
  
SQL> select * from BRANCH_LOCATE;

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
