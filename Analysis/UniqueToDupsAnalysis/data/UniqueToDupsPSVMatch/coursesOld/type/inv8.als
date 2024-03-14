iden
-- div,1
not teaches & iden
-- div,1
Professor.teaches
-- div,1
no Professor.teaches + iden
-- div,1
no teaches.~enrolled in iden
-- div,1
Professor.teaches not in iden
-- div,1
no ^(grades.Grade) = teaches & iden
-- div,1
all p:Person | p implies not teaches.p
-- div,1
all p:Person | p not in p.^(teaches.p)
-- div,1
all p : Professor | no p->p in teaches
-- div,2
all p:Person | p in (Person <: teaches)
-- div,1
all p:Person | p not in p.^(teaches.~p)
-- div,1
all x: Professor | x.teaches not in iden
-- div,1
no p: Person | p in ^p.teaches.~enrolled
-- div,1
all x:Professor | x not in x.^(~teaches.x)
-- div,1
all p:Person | p not (Person <: teaches).p
-- div,1
all x:Professor | x not in x.^(~x.teaches)
-- div,1
all p:Person | p not in p.^(teaches.Course)
-- div,1
all p : Person| none p.teaches & p.enrolled
-- div,1
none Professor.enrolled & Professor.teaches
-- div,1
all p: Professor | p not in p.teaches.grades
-- div,1
all x:Professor | x not in x.^(grades.grades)
-- div,1
all p : Professor | p not in p.teaches.grades
-- div,3
all x:Professor | x not in x.^({some teaches})
-- div,1
all p:Professor | not (p.teaches & p.enrolled)
-- div,1
all p : Professor | p not in (p.teaches.grades)
-- div,1
all p : Professor | Professor not in teaches.*p
-- div,1
all p : Professor | p not in p.^(teaches.Grade)
-- div,1
all p : Professor | Professor not in teaches.^p
-- div,1
all p : Professor | p not in p.^(teaches.grades)
-- div,2
all p : Person | p.teaches implies not p.enrolled
-- div,1
all p:Person, c: Course | p not in p.^(teaches.c)
-- div,1
all x:Professor | x not in x.^(teaches.~projects)
-- div,1
all p1,p2: Professor | p1 not in p2.teaches.Course
-- div,1
all p : Person | p.teaches implies (not p.enrolled)
-- div,1
all p : Professor | p not in p.teaches.grades.~Grade
-- div,1
all p : Professor | p not in Person.p.teaches.grades
-- div,1
all p:Person, c:Course | p in (Person <: teaches.c).p
-- div,1
all p:Person, c:Course | p in (Person.p <: teaches).c
-- div,1
all p1, p2: Professor | p1->p2 teaches implies p1!=p2
-- div,1
all p : Professor | no (p.teaches).~(p.teaches) & iden
-- div,1
all p : Professor | p not it ^(p.teaches.grades.Grade)
-- div,1
all p : Professor | p not in ^(p.teaches.grades.Grade)
-- div,1
all c:Course | (teaches.c not in enrolled.c)&Professor
-- div,1
all p:Person | p.teaches implies (Person <: enrolled).p
-- div,1
all p:Person | p.teaches implies ~(Person <: enrolled).p
-- div,2
all x:Professor | x not in x.^(teaches.~projects.Course)
-- div,1
all p:Person | p.teaches implies ^(Person <: enrolled).p
-- div,1
all p : Professor | (p.teaches).~(p.teaches) not in iden
-- div,6
all x:Professor | x not in x.^({x:Professor | ~teaches})
-- div,1
all p : Professor | no ((p.teaches).~(p.teaches) & iden)
-- div,5
all p:Person, c:Course | p implies (Person <: teaches).c
-- div,1
all p:Professor,c:Course | no p.enrolled.c & p.teaches.c
-- div,1
all p : Person | p.teaches implies (p-Professor.enrolled)
-- div,1
all p:Professor | (p.enrolled not in p.teaches)&Professor
-- div,1
all p : Professor , c: Course | not p.teaches & p.enrolled
-- div,1
all p:Person, c:Course | p in (Person <: teaches).c.grades
-- div,1
all x:Professor | x not in x.^({x:Professor | some teaches})
-- div,1
all x:Professor, c:Course | c in x.teaches != c in x.enrolled
-- div,1
all p: Professor, c: Course | teaches.p implies not enrolled.c
-- div,1
all p1: Professor, c: Course | p1->c in enrolled implies p1->c
-- div,1
all x:Professor | x not in x.^({x:Professor | some x.teaches})
-- div,2
all p:Professor,c:Course | p.enrolled.c implies no p.teaches.c
-- div,1
all p : Professor | all c : Course | none (p.teaches & enrolled.c)
-- div,1
all p:Professor,c:Course | c in p.teaches implies no c in p.enrolled
-- div,1
all t:Professor | some c:Course | c in t.teaches => c not in t.projects
-- div,1
all p : Professor, c : Course | p->c in enrolled implies no p.teaches.c
-- div,1
all c : Course, p : Professor | p->c in teaches and p->c not in c.enrolled
-- div,1
all p : Professor, c : Course | p->c in enrolled implies no p->c in teaches
-- div,1
all p : Professor , c : Course | p->c in enrolled implies no p->c in teaches
-- div,3
all p : Professor, c : Course | p->c in enrolled implies no p.teaches.Course
-- div,1
all p : Professor , c : Course | c in p->teaches implies c not in p->enrolled
-- div,1
all p1 : Professor | all c : Course | p1->c in teaches implies p1 not in enrolled
-- div,1
all p1,p2: Professor, c: Course | p1 in c.enrolled implies p2 not in p2.teaches.c
-- div,1
all p1 : Professor | some c : Course | p1 -> c in teaches implies p1 not in enrolled
-- div,2
all p : Professor | all c: Course | c in p.teaches implies c not in p.enrolled
}

fun colleagues[p : Professor] : set Professor{
  	(Professor-p).(p.teaches)
-- div,8
