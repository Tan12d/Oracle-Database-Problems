SQL> update Instructor set date_of_join = '12-mar-1978' where id = 10101;

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
13-jun-1999

Enter value for id: 
12121

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '13-jun-1999' where id = 12121

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
13-Feb-1944

Enter value for id: 
15151

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '13-Feb-1944' where id = 15151

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
23-nov-1956

Enter value for id: 
22222

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '23-nov-1956' where id = 22222

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
11-DEC-1988

Enter value for id: 
32343

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '11-DEC-1988' where id = 32343

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
14-Jan-2001

Enter value for id: 
33456

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '14-Jan-2001' where id = 33456

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
1-APR-1900

Enter value for id: 
45565

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '1-APR-1900' where id = 45565

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
2-JUL-1934

Enter value for id: 
58583

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '2-JUL-1934' where id = 58583

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
3-AUG-1967

Enter value for id: 
76543

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '3-AUG-1967' where id = 76543

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
19-SEP-1999

Enter value for id: 
76766

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '19-SEP-1999' where id = 76766

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
13-JAN-1982

Enter value for id: 
83821

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '13-JAN-1982' where id = 83821

1 row updated.

Commit complete.

SQL> update Instructor set date_of_join = '&doj' where id = &id;

Enter value for doj: 
11-MAR-1922

Enter value for id: 
98345

old   1: update Instructor set date_of_join = '&doj' where id = &id

new   1: update Instructor set date_of_join = '11-MAR-1922' where id = 98345

1 row updated.

Commit complete.

SQL> select * from Instructor;

ID,NAME,DEPT_NAME,SALARY,DATE_OF_JOIN
10101,Srinivasan,Comp. Sci.,65000,12-MAR-78
12121,Wu,Finance,90000,13-JUN-99
15151,Mozart,Music,40000,13-FEB-44
22222,Einstein,Physics,95000,23-NOV-56
32343,El Said,History,60000,11-DEC-88
33456,Gold,Physics,87000,14-JAN-01
45565,Katz,Comp. Sci.,75000,01-APR-00
58583,Califieri,History,62000,02-JUL-34
76543,Singh,Finance,80000,03-AUG-67
76766,Crick,Biology,72000,19-SEP-99
83821,Brandt,Comp. Sci.,92000,13-JAN-82
98345,Kim,Elec. Eng.,80000,11-MAR-22
