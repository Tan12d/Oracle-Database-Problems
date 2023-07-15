SQL> insert into Prereq values('&course_id', '&prereq_id');

Enter value for course_id: 
BIO-301

Enter value for prereq_id: 
BIO-101

old   1: insert into Prereq values('&course_id', '&prereq_id')

new   1: insert into Prereq values('BIO-301', 'BIO-101')

1 row created.

Commit complete.

SQL> insert into Prereq values('&course_id', '&prereq_id');

Enter value for course_id: 
BIO-399

Enter value for prereq_id: 
BIO-101

old   1: insert into Prereq values('&course_id', '&prereq_id')

new   1: insert into Prereq values('BIO-399', 'BIO-101')

1 row created.

Commit complete.

SQL> insert into Prereq values('&course_id', '&prereq_id');

Enter value for course_id: 
CS-190

Enter value for prereq_id: 
CS-101

old   1: insert into Prereq values('&course_id', '&prereq_id')

new   1: insert into Prereq values('CS-190', 'CS-101')

1 row created.

Commit complete.

SQL> insert into Prereq values('&course_id', '&prereq_id');

Enter value for course_id: 
CS-319

Enter value for prereq_id: 
CS-101

old   1: insert into Prereq values('&course_id', '&prereq_id')

new   1: insert into Prereq values('CS-319', 'CS-101')

1 row created.

Commit complete.

SQL> insert into Prereq values('&course_id', '&prereq_id');

Enter value for course_id: 
CS-347

Enter value for prereq_id: 
CS-101

old   1: insert into Prereq values('&course_id', '&prereq_id')

new   1: insert into Prereq values('CS-347', 'CS-101')

1 row created.

Commit complete.

SQL> insert into Prereq values('&course_id', '&prereq_id');

Enter value for course_id: 
EE-181

Enter value for prereq_id: 
PHY-101

old   1: insert into Prereq values('&course_id', '&prereq_id')

new   1: insert into Prereq values('EE-181', 'PHY-101')

1 row created.

Commit complete.

SQL> select * from Prereq;
