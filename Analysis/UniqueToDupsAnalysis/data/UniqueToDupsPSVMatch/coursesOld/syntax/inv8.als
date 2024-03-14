all p : Person
-- div,1
no teach & iden
-- div,1
all p : Professor
-- div,1
no Teacher.enrolled
-- div,1
not teaches & follow
-- div,1
no Professor.teach &
-- div,1
no Professor*.teaches
-- div,1
no t.teaches - t.enrolled
-- div,1
all p:Professor | p not in p.^
-- div,1
all p:Person | p in not teaches.p
-- div,2
all p:Person | p in not p.teaches
-- div,1
all p:Person | i not in teaches.p
-- div,2
all p:Person | p in not enrolled.p
-- div,1
all x: Professor | not in x.teaches
-- div,1
all x: Professor: x not in x.teaches
-- div,1
no Teacher.teaches - Teacher.enrolled
-- div,1
one p : Professor | p.teaches = all - p
-- div,1
all p : Professor | p.teaches = all - p
-- div,1
all t: Teacher | not (t -> t in teaches)
-- div,1
one p : Professor | p.teaches = some - p
-- div,1
all p: Professr | no p.teaches&p.enrolled
-- div,1
all p,j: Professor | p->j in implies p!=j
-- div,1
all p:Professor | no (p.teaches&p.courses)
-- div,1
all p:Person | p.teaches in not p.enrolled
-- div,1
all p:Person | p.teaches in not enrolled.p
-- div,1
all p:person | no (p.teaches & p.enrolled)
-- div,1
all c:Course | enrolled.p not in teaches.p
-- div,1
all p : Professor | p.teach not in p.enrolled
-- div,1
all t : Teacher | no (t.teaches & t.enrolled)
-- div,1
all p:Person | p in not (Person <: teaches).p
-- div,1
all p:Professor | not (p.teaches & p.enrolled
-- div,1
all p : professor | no p.teaches & p.enrolled
-- div,1
all p:Professor | p != professor.(p.enrolled)
-- div,1
all p,j: Professor | p->j in implies and p!=j
-- div,1
all p : Professor | p.teachs not in p.enrolled
-- div,2
all p:Professor | p not (p.teaches & p.enrolled
-- div,1
all p : Professor | p not in p.^(teaches.grades
-- div,1
all p : Professor | p.teatchs not in p.enrolled
-- div,1
all p : Professor | p not in p.^(teaches.Grades)
-- div,1
all t : Teacher | t not in (enrolled.(t.teaches))
-- div,1
all t: Teacher : t not in (t.teaches & t.enrolled)
-- div,1
Professor not in (Course-p.teaches).(grades.Grade)
-- div,1
z
	
	all p : Professor | no p.teaches & p.enrolled
-- div,2
all c: Course | teaches.c implies not in enrolled.c
-- div,1
all t: Teacher, s: Student | not (t -> s in teaches)
-- div,1
all p:Person | p.teaches implies ^Person <: enrolled).p
-- div,1
all p : Professor | p not in p.^(teaches.grades.Grades)
-- div,1
all t: Teacher, s: Student | t -> s in teaches and t != s
-- div,1
all cours: Courses | cours not in cours.~teaches.enrolled
-- div,1
all t:Professor | some c:t.teaches => c not in t.projects
-- div,1
all t: Teacher | all c: t.teaches | t.enrolled in Course-c
-- div,1
all x:Professor | x not in x.^({x:Professor | some x.teach})
-- div,1
all p : Professor | not in (Course-p.teaches).(grades.Grade)
-- div,1
all t: professor, c: Course | t not in (teaches.c & enrolled.c)
-- div,1
all p : Professor | all c : Course | no (p.teachs & enrolled.c)
-- div,1
all t: Teacher, c: Course | t not in (teaches.c & t.enrolled.c)
-- div,1
all p,, c: Course | p->c in teaches implies p->c not in enrolled
-- div,1
all t : teacher | t not in t.^(teaches.projects.~(Person<:projects))
-- div,1
all p:Person, c: Course | p in teaches.c implies p not in enrollec.c
-- div,1
all p: Professor, c: Course | c in p.enrolled imples c !in p.teaches
-- div,1
all t: Teacher, c: Course | c in teaches.c implies c not in enrolled.c
-- div,1
all p: professor, c: Course | c in p.teaches implies c not in p.enrolled
-- div,1
all c : Course, p : Professor | p->c in teachhes and p->c not in enrolled
-- div,1
all t: Teacher, c: Course | t -> c in teaches and not(t -> c in enrolled)
-- div,1
none x: Professsor | some c: Course | x->c in teaches and x->c in enrolled
-- div,1
all p1 : Professor | c : Course | p1->c in teaches implies p1 not in enrolled
-- div,1
all p1: Professor, c: Course | p1->c1 in enrolled implies p1->c not in teaches
-- div,1
all p : Professor | p.teaches not in p.enrolled and p.enrolled not in p.teachs
-- div,1
not some x: Professsor | some c: Course | x->c in teaches and x->c in enrolled
-- div,1
all p: Professor | all c1 : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all p1 : Professor | c : Course | p1->c in teaches implies p1->c not in enrolled
-- div,1
all c : Course | all p : Professor | p->c in teaches implies t->c not in enrolled
-- div,1
all p : Professor | all c : Courses | (c in p.teaches) implies (p not in c.enrolled)
-- div,1
all p1 : Teacher | all c1 : Course | p1->c1 in teaches implies p1->c1 not in enrolled
-- div,1
all p1 : Professor | some c : Course | p1 -> c in teaches implies p1 -c> not in enrolled
-- div,1
all p1 : Professor | all c1:Courses |
  	p1->c1 in teaches implies p1->c1 not in enrolled
-- div,1
all p1, p2: Professor, c : Course | (p1 ->x in enrolled and p2 -> in teaches) => (p1 != p2)
-- div,1
all p1, p2: Professor, c : Course | (p1 ->x in enrolled and p2 -> c in teaches) => (p1 != p2)
-- div,1
all p : Professor | all e : Person | all c : Course | c1 in e.enrolled and c1 in p.teaches implies p!=e
-- div,1
all p : Professor | all e : Person | all c : Courses | c1 in e.enrolled and c1 in p.teaches implies p!=e
-- div,1
all c : Course, p : Professor, g : Grade | p->c in teaches and p->c not in enrolled and c->p->g not in grade
-- div,1
all person : Professor | all course : Course | course in person.teaches implies course not in person.enrolled
-- div,2
