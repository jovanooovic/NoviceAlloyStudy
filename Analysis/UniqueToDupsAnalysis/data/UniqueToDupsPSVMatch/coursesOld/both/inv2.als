no Student.teaches
-- div,4
Professor in teaches.Course
-- div,1
enrolled.Course in Professor
-- div,1
no (Person-Student).teaches
-- div,3
no enrolled.Course-Professor
-- div,1
no ((Person - Professor).enrolled)
-- div,1
all s:Student | no s.teaches
-- div,5
no Person-Student & teaches.Course
-- div,1
no (Person-Student) & teaches.Course
-- div,2
Course.~teaches = Student - Professor
-- div,1
all p : Professor | p -> p in teaches
-- div,1
all p : Professor | p.teaches = none
-- div,1
all c : Course | teaches.c in Student
-- div,1
all p : enrolled.Course | p in Professor
-- div,1
all i : univ | i in Professor implies some teaches.i
-- div,1
all x:Course, y:Professor | y->x not in enrolled
-- div,1
all p : Person | (some p.enrolled implies p in Professor)
-- div,1
all p : Professor | all c : Course | p->c in teaches
-- div,1
all x:Course, y:Person-Professor | y->x not in enrolled
-- div,1
all p: Person ,c: Course| p not in Student and (p -> c in teaches)
-- div,1
all p : Person, c : Course | c in p.enrolled implies p in Professor
-- div,1
all i : univ | i in Professor and i!=Student implies some teaches.i
-- div,4
all p: Person ,c: Course| p not in Professor or (p -> c in teaches)
-- div,2
all p : Person, c : Course | p->c in enrolled implies p in Professor
-- div,1
all p : Person | all c : Course | c in p.teaches => p in Student
-- div,1
all c:Course | some p:Person | p->c in teaches implies p in Professor
-- div,1
not some p:Person | some c:Course | p not in Student and p->c in teaches
-- div,1
all p1 : Person | all c1 : Course | p1->c1 in enrolled implies p1 in Professor
-- div,1
all x : Course, y : Person - Professor | y->x not in enrolled
  	no (Person - Professor) & enrolled.Course
-- div,1
