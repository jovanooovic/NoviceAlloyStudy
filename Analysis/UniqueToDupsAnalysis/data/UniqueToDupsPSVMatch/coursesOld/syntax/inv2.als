all
-- div,1
teaches.Course in Teacher
-- div,2
all c: Course, p: Person |
-- div,1
enrolled.Course in Teacher
-- div,1
teachs.Course in Professor
-- div,1
no (Person-Professor).teach
-- div,1
courses in Professor->Course
-- div,1
Courses.teaches in Professor
-- div,1
teaches in Professor -> Class
-- div,1
no teacths.Course - Professor
-- div,1
(teaches . Course) in Teacher
-- div,1
all s : Students | no s.teaches
-- div,1
all p : Professor | p in p.course
-- div,1
all p : Professor | p in p.courses
-- div,1
teches.Course = Professor - Student
-- div,1
no (Person-Teacher) & teaches.Course
-- div,1
all c : Course | teaches.c in Teacher
-- div,2
all c: Crouse | teaches.c in Professor
-- div,1
all c : Couse | teaches.c in Professor
-- div,1
all p : Professor |t:teaches p in p.teaches
-- div,1
all p : Professor, t : Teaches | p -> p in teaches
-- div,1
all p : Person | some p.teachers => p in Professor
-- div,1
all p:Person | some p.teaches implies p in Teacher
-- div,1
all p:Person-Teacher, c:Course | c not in p.teaches
-- div,1
all p:Person | some (p.teaches) implies p in Teaches
-- div,1
all p : Person | p in teaches.Course implies p in Teacher
-- div,1
all p:Person,c:Course | p in teaches.c implies p in Teacher
-- div,1
all p:Person, c:Course | c in p.teaches implies p in Teacher
-- div,1
all p : Person, c : Course | p->c in teaches => p in Teacher
-- div,1
all x:Person, c:Course | x in teaches.c implies x in Teacher
-- div,1
all p:Person, c:Course | p->c in teaches implies p in Teacher
-- div,1
all p:Person , c:Course | p->c in teaches implies p in Teacher
-- div,1
all p: Person, c: Course | p in teaches.c implies p in Teacher
-- div,1
all x: Person, y Course | y in x.teaches implies x in Professor
-- div,1
all p: Person, c: Course | p->t in teaches implies p in Professor
-- div,1
all c: Courses, p: Person | c in p.teaches implies p in Professor
-- div,1
all p: Person ,c: Course| p in not Teacher or (p -> c in teaches)
-- div,1
all i : univ | i in Professor and i!=Student implies all teaches.i
-- div,1
all p: Person ,c: Course| p not in  Teacher or (p -> c in teaches)
-- div,1
all c: Courses, p: Person | p in c.~teaches implies p in Professor
-- div,1
all p: univ | all c: Course | p->c in teaches implies p in Teacher
-- div,1
all p: Person ! all c : Course ! c in p.teaches implies p in Teacher
-- div,1
all p: Person | all c : Course ! c in p.teaches implies p in Teacher
-- div,1
all c:Course, p:Person | no (p & Professor) implies c not in p.teachs
-- div,1
all p : Person | all c : Course ! c in p.teaches implies p in Teacher
-- div,1
all p : Personc| all c: Course | c in p.teaches implies p in Professor
-- div,1
all p : Person | all c : Course ! c in p.teaches implies p in Professor
-- div,1
all p1 : Person | all c1 : Course | p1->c1 in teaches imploes p1 in Professor
-- div,2
all p,c : univ | p in Person and c in Course and p->c in teaches implies p in Teacher
-- div,1
