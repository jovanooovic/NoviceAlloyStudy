no grades
-- div,1
no Course.grades
-- div,1
all c:Course | c.grades[Person] in Student
-- div,1
all g : Grade, p : Person - Student | no p->g
-- div,1
all g:Grade | g in Student.enrolled.grades.Person
-- div,1
all p:Person - Student , c:Course | no p->grades
-- div,1
all p : Person | some Course.grades->p implies p in Student
-- div,1
{p : Person, g : Grade | some grades.g}.Grade in Student
-- div,1
Course.{c : Course, p : Person | some c.grades} in Student
-- div,5
all p:Person, c:Course | c.grades[p] in Grade implies p in Student
-- div,4
all c:Course, p:Person, g:Grade | c->p->g in grades implies p in Student and p in enrolled.c
-- div,1
all p : Person, g : Grade | p->g in {p : Person, g : Grade | some grades.g} implies p in Student
-- div,1
