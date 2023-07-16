-- h. Update the records with a salary hike of 3% for Comp.Sci. Dept instructors having salary less than 70000.

 update Faculty_Info set salary =(((3/100)* salary)+salary) where department ='Comp. Sci.' and salary < 70000;
