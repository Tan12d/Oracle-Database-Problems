SQL> select Sub_code, title, credits, department from course where department in ('Physics', 'Music', 'Finance', 'Biology');

SUB_CODE,TITLE,CREDITS,DEPARTMENT
BIO-101,Intro. to Biology,4,Biology
BIO-301,Genetics,4,Biology
BIO-399,Computational Biology,3,Biology
FIN-201,Investment Banking,3,Finance
MU-199,Music Video Production,3,Music
PHY-101,Physical Principles,4,Physics
