no Course.grades
-- div,1
all c : Course | Person.(c.grades) in Student
-- div,1
all u : univ | u not in Student implies no grades.Grade
-- div,1
all c: Course, p: Person | p in  c.grades.Person
-- div,1
all c : Course, p : Person | c.grades[p]=Student
-- div,1
all u : univ | u not in Student implies no u.grades.Grade
-- div,1
all p:Person | some Person <: Course.grades implies p in Student
-- div,1
all p:Person,c:Course,g:Grade | c->p->g in grades and p in Student
-- div,1
all p : Person, c: Course, g: Grade | c -> p -> g in grades <=> p in Student
-- div,1
all p : Person, c: Course, g: Grade | c -> p -> g in grades <=> p not in Professor and p in Student
-- div,1
