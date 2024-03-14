-- equiv pair start,14
some teaches.Course
-- div,14
-- equiv pair end
-- equiv pair start,2
some Course.~teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
teaches.Course != none
-- div,1
-- equiv pair end
-- equiv pair start,9
some (Professor.teaches)
-- div,2
some Professor & teaches.Course
-- div,4
some teaches.Course & Professor
-- div,2
some Professor.teaches & Course
-- div,1
-- equiv pair end
-- equiv pair start,1
enrolled.Course in Student
-- div,1
-- equiv pair end
-- equiv pair start,4
teaches = Professor->Course
-- div,4
-- equiv pair end
-- equiv pair start,2
teaches.Course in Professor
-- div,2
-- equiv pair end
-- equiv pair start,1
Course.~teaches in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
Course.projects in Professor
-- div,1
-- equiv pair end
-- equiv pair start,3
teaches in Professor->Course
-- div,3
-- equiv pair end
-- equiv pair start,1
some (Person-Student).teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
all c:Course | lone teaches.c
-- div,4
-- equiv pair end
-- equiv pair start,1
all c: Course | no c.~teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | one enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | Professor in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Professor| lone t.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | some enrolled.c
-- div,2
-- equiv pair end
-- equiv pair start,2
all  t:Professor| some t.teaches
-- div,2
-- equiv pair end
-- equiv pair start,3
Professor in Course.grades.Grade
-- div,2
Professor in Course.^(grades.Grade)
-- div,1
-- equiv pair end
-- equiv pair start,1
Professor in Course.grades.Person
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | some p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
teaches in Person set -> some Course
-- div,1
-- equiv pair end
-- equiv pair start,1
some Person-Student & teaches.Course
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Course | Professor in teaches.c
-- div,2
all  c:Course, t:Professor | t->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
teaches in Professor set -> some Course
-- div,1
-- equiv pair end
-- equiv pair start,7
all c:Course,p:Person | p->c in teaches
-- div,6
all c:Course|all p:Person|p->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | Professor.teaches in c
-- div,1
all x:Course | some Professor & teaches.Course
-- div,1
-- equiv pair end
-- equiv pair start,6
all p:Professor,c:Course| c in p.teaches
-- div,4
all c : Course | all p : Professor | c in p.teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
no (Person - Professor) & teaches.Course
-- div,2
-- equiv pair end
-- equiv pair start,3
all c:Course, p:Person |  c in p.teaches
-- div,3
-- equiv pair end
-- equiv pair start,2
some (Person - Student) & teaches.Course
-- div,2
-- equiv pair end
-- equiv pair start,1
some p : Professor | p in teaches.Course
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | Professor->c in teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Person |  c in p.^teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Person |  c in p.*teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course| c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all c:Course | Professor in c.grades.Grade
-- div,5
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Professor | some p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor, c:Course | lone p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course| some p.~teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Professor |  p.teaches in c
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course, p: Professor | p->c in teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
one c:Course | all p:Person | p->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | Person.teaches -> c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | Professor in c.^(grades.Grade)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Professor | lone teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
one c:Course | some p:Person | p->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | lone p: Person | c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, c : Course | some (p.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, c : Course  | no p.teaches - c
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Course | (Person-Student) in c.grades.Grade
-- div,3
-- equiv pair end
-- equiv pair start,1
all c: Course | lone p: Person | p ->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | lone p: Professor | c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | lone p: Professor | p in teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course | Professor-Student in c.grades.Grade
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Course | Professor.teaches in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,1
one c : Course | all p : Professor | c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Professor | all c : Course | c in p.teaches
-- div,1
all p: Professor | no c: Course | p->c !in teaches
-- div,1
all c:Course | all p: Professor | p->c in teaches
-- div,1
all c1 : Course | all p1 : Professor | p1->c1 in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Professor | p in c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Course | some p:Professor | p in c.grades.Grade
-- div,3
-- equiv pair end
-- equiv pair start,3
all c : Course | lone p : Professor | p->c in teaches
-- div,3
-- equiv pair end
-- equiv pair start,1
all t : Professor | some c : Course| t -> c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Person | some teaches.Course->Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all c : Course | Professor in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some prof: Person-Student | Course.projects in prof.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, c : Course | some (p.teaches & teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person ,c:Course| no(p & Student) implies c in p.teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Course | some enrolled.c implies teaches.c in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Person |  p.teaches in c implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person , c : Course | c in Course implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all  c:Course, p:Person | p->c in teaches implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all course: Course | all prof: Professor | course in prof.teaches
-- div,1
all course: Course | all professor: Professor | course in professor.teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person, c : Course | p in c.~teaches implies p in Professor
-- div,3
-- equiv pair end
-- equiv pair start,1
all c:Course| one p: Person | p->c in teaches implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course| one p: Person | p in Professor implies p->c in teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
all c:Course | some p:Person | p->c in teaches implies p in Professor
-- div,2
-- equiv pair end
-- equiv pair start,1
all course: Course | all person: Professor | course in person.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course | p -> c in teaches implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | some p:Person | p in c.grades.Grade implies p=Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course| one p: Person | p->c in teaches implies p not in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course | p in c.grades.Grade implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person, c : Course |  (no p & Student) implies not c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | some p:Person | no (p & Student) implies c not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all c : Course | p in Professor and  Professor in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course | one p: Professor | p->c in teaches implies p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, p:Professor | lone (p.teaches & c) implies c not in Student.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Project | all c: Course | p in c.projects
	all c: Course | #c.projects = 1
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : univ | x in Course implies some y : univ | y in Professor and y->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all c1,c2 : Course | c1 in p.enrolled and c2 in p.teaches implies c2 in c1
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all c1,c2 : Course | c1 in p.enrolled and c2 in p.teaches implies c1 in c2
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course| one p: Person | p->c in teaches implies p in Professor and p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course| one p: Person | p->c in teaches implies p not in Student and p->c not in enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all x : univ | x in Course implies some y : univ | y in Professor and not y in Student and y->x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course| one p: Person | (p in Professor and p not in Student and p->c not in enrolled) implies p->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all c:Course| one p: Person | p->c in teaches implies (p in Professor and p not in Student and p->c not in enrolled)
-- div,3
-- equiv pair end
