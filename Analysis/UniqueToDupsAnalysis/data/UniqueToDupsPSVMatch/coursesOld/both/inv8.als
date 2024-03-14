lone (^teaches)
-- div,1
teaches not in iden
-- div,1
no Professor.teaches
-- div,1
no teaches - enrolled
-- div,1
no Professor.enrolled
-- div,1
no Professor.*teaches
-- div,1
no Professor.^teaches
-- div,1
teaches.~teaches not in iden
-- div,1
Professor not in Course.(grades.Grade)
-- div,1
no ^(grades.Grade).teaches & iden
-- div,1
no (Professor.teaches & Person.enrolled)
-- div,1
Professor.teaches not in Professor.enrolled
-- div,1
no Professor.enrolled & Professor.teaches
-- div,2
no Professor.teaches - Professor.enrolled
-- div,1
no Professor.teaches&Professor.enrolled
-- div,8
all c : Course | enrolled.c in Student
-- div,1
all p: Person | p.teaches != p.enrolled
-- div,1
all c:Course | enrolled.c not in teaches.c
-- div,1
all p : Person | p.enrolled not in p.teaches
-- div,3
all c:Course | teaches.c not in enrolled.c
-- div,2
all p:Person| p.teaches not in p.enrolled
-- div,4
all x:Professor | x.teaches != x.enrolled
-- div,1
all p : Professor | p.teaches != p.enrolled
-- div,1
all p:Person| not p.teaches  in p.enrolled
-- div,1
all p : Professor | no p.(p.teaches.grades)
-- div,2
all p : Professor | p not in teaches.(p.teaches)
-- div,1
all p : Professor | Professor not in p.*teaches
-- div,1
all p:Professor | p.enrolled not in p.teaches
-- div,6
all t : Professor | t.teaches not in t.enrolled
-- div,1
all p:Professor | enrolled.p not in teaches.p
-- div,1
all p:Professor | p.teaches not in p.enrolled
-- div,10
all p:Person, c:Course | p in (Person <: teaches).c
-- div,3
one p: Professor | no (p.teaches & teaches.p)
-- div,1
all p : Professor | no (p.teaches.grades).Grade
-- div,1
all t : Professor | no t.teaches-t.enrolled
-- div,1
all x:Professor, c:Course | x not in teaches.c
-- div,1
all p : Professor | p in p.teaches.grades.Grade
-- div,1
all p,j: Professor | p->j in teaches and p!=j
-- div,1
all p : Professor, c : Course | c not in p.enrolled
-- div,1
all x:Professor | x not in x.^(teaches.~enrolled)
-- div,1
all p : Professor | p not in p.teaches.(grades.Grade)
-- div,2
all p : Professor, c : Course | p not in enrolled.c
-- div,1
all p: Professor| p not in p.teaches.grades.Grade
-- div,11
all x:Professor, c:Course | x not in ^teaches.c
-- div,1
all p : Professor | p not in p.teaches.*(grades.Grade)
-- div,1
all p:Person|p->p not in teaches implies p in Professor
-- div,1
all p : Professor | p not in p.teaches.^(grades.Grade)
-- div,1
all p : Professor | p not in p.^(teaches.grades.Grade)
-- div,1
all p : Professor | p not in Grade.~(p.teaches.grades)
-- div,1
all c:Course | (teaches.c&Professor) not in enrolled.c
-- div,2
all p:Person, c:Course | p.teaches not in p.enrolled
-- div,2
all p:Person, c:Course |p.enrolled not in p.teaches
-- div,2
all p : Professor | all c : Course | c not in p.enrolled
-- div,1
all p: Professor , c : p.teaches| p not in c.grades.Grade
-- div,3
all p : Professor | p not in p.^(teaches.projects.~(Person<:projects))
-- div,1
all p : Professor | p not in (Course-p.teaches).(grades.Grade)
-- div,1
all p : Professor | p.enrolled not in (p.teaches).(grades.Grade)
-- div,1
all t : Professor | t not in t.^(teaches.projects.~(Person<:projects))
-- div,1
all p: Professor | all c1,c2 : Course | c1 in p.teaches
-- div,1
all c : Course, p : Person | p->c in teaches and p not in Student
-- div,2
all p: Professor | p in teaches.Course implies p not in enrolled.Course
-- div,2
all p:Professor | some p.enrolled implies p.enrolled != p.enrolled
-- div,1
all c:Course | (teaches.c&Professor) not in enrolled.c&Professor
-- div,2
all x:Professor, c:Course | c in x.teaches implies c in x.enrolled
-- div,1
all p: Professor , c : p.teaches , st: c.grades.Grade| p not in st
-- div,1
all x:Professor, c:Course | c in x.teaches iff c in x.enrolled
-- div,1
all p : Professor , c: Course | c not in p.teaches and c not in p.enrolled
-- div,1
all p : Professor , c : Course | p->c in enrolled implies p->c in teaches
-- div,1
all x:Professor, c:Course | x in teaches.c iff x not in enrolled.c
-- div,1
all x:Professor, c:Course | c in x.teaches iff c not in x.enrolled
-- div,2
all x:Professor, c:Course | x in teaches.c iff c not in x.enrolled
-- div,1
all x:Professor, c:Course | x in teaches.x iff x not in enrolled.c
-- div,1
all c : Course, p : Professor | p->c in teaches && p->c not in enrolled
-- div,8
all t: Professor, c: Course | t -> c in teaches and not(t -> c in enrolled)
-- div,1
all p : Professor | p.teaches not in p.enrolled and p.enrolled not in p.teaches
-- div,1
all p:Professor, c:Course | p->c in teaches implies p not in c.grades.Grade
-- div,1
all c: Course | some p: Person | c in p.teaches => c not in p.enrolled
-- div,1
all c: Course | some p: Person | c in p.enrolled => c not in p.teaches
-- div,1
all p: Professor , st: Course.grades.Grade| p not in p.teaches.grades.Grade
-- div,1
no p:Professor| all c:Course | p->c in teaches and p->c in enrolled
-- div,1
all t:Professor | some c:Course | c in t.teaches => c not in t.enrolled
-- div,1
all p: Professor| some c : Course | p in teaches.c implies p not in enrolled.c
-- div,1
all p:Professor|all c:Course| p->c in teaches and c->p not in enrolled
-- div,1
all p:Professor|all c:Course| p->c in teaches and p->c not in enrolled
-- div,2
all p1 : Professor | some c : Course | p1 -> c in teaches implies p1 -> c not in enrolled
-- div,1
all c: Course | some p1, p2: Professor | p1!=p2 && c in p1.teaches && c in p2.teaches
-- div,1
all p : Person | p.enrolled not in p.teaches
  	all p : Person | p.teaches not in p.enrolled
-- div,1
all p1 , p2 : Professor | all c : Course | (p1->c in teaches and p2->c in teaches) implies p1=p2
-- div,1
all p1,p2 : Professor | some c : Course | p1 -> c in teaches and p2->c in teaches implies p1=p2
-- div,1
all c : Course, p : Professor, g : Grade | p->c in teaches and p->c not in enrolled and c->p->g not in grades
-- div,1
