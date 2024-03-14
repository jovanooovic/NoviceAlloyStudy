none=none
-- div,1
no teaches & iden
-- div,5
no iden & teaches
-- div,1
Professor =Professor
-- div,1
no teaches.Professor
-- div,1
no ^(grades.Grade).~teaches & iden
-- div,1
no ^((grades.Grade).~teaches) & iden
-- div,1
all p : Professor | p in Professor
-- div,4
all p:Person | p not in teaches.p
-- div,2
no p:Professor | p->p in teaches
-- div,1
all p:Person | p not in p.^(teaches)
-- div,1
all x: Professor |x not in x.teaches
-- div,2
all p:Person | not( p->p in teaches )
-- div,1
all p: Professor | p not in teaches.p
-- div,3
all p:Professor | p not in p.teaches
-- div,8
all t : Professor | t not in t.teaches
-- div,1
all a : Professor | a->a not in teaches
-- div,3
all x: Professor | x->x not in teaches
-- div,4
all p: Professor | p not in enrolled.p
-- div,1
all p:Professor | p->p not in teaches
-- div,7
all x : Professor | x->x not in enrolled
-- div,1
all p:Professor | p not in p.^teaches
-- div,1
all x:Professor | x not in x.^teaches
-- div,3
all p : Professor | not p->p in teaches
-- div,1
not some t:Professor | t->t in teaches
-- div,1
all x:Professor | x not in x.^(~teaches)
-- div,1
all p1,p2: Professor | p1 not in p2.teaches
-- div,1
all p:Professor | p != teaches.(p.enrolled)
-- div,1
all p : Professor | no p.teaches.grades.p
-- div,2
all t : Professor | t not in enrolled.(t.teaches)
-- div,8
all c:Course | no c.teaches & c.enrolled
-- div,1
all p:Professor | p not in teaches.p.enrolled
-- div,1
all p : Professor | p not in enrolled.(p.teaches)
-- div,1
all p : Professor | Professor not in p.^teaches
-- div,1
all p:Professor | p not in teaches.(p.enrolled)
-- div,4
all x:Professor | x not in x.^(teaches.teaches)
-- div,1
all p: Professor | no (p.teaches & teaches.p)
-- div,1
all p,j: Person | p->j in teaches implies p!=j
-- div,2
all p : Professor | no (p.teaches.grades).none
-- div,2
all p : Professor | p not in p.teaches.grades.p
-- div,1
all p:Professor | no (p.enrolled & p.teaches)
-- div,8
all x : Professor | no x.enrolled & x.teaches
-- div,2
all p: Professor | p not in p.enrolled.~teaches
-- div,2
all p : Professor | no (p.teaches & enrolled.p)
-- div,1
all p: Professor | no p.teaches&p.enrolled
-- div,50
all p : Professor | p not in p.teaches.~enrolled
-- div,12
all t : Professor | no t.teaches&t.enrolled
-- div,1
all person : Professor | person not in person.teaches
-- div,1
all p,j: Professor | p->j in teaches implies p!=j
-- div,1
all x,y:Professor| x->y in teaches implies x!=y
-- div,1
all pf : Professor | no (pf.teaches & pf.enrolled)
-- div,2
all p : Professor | p not in Grade.(p.teaches.grades)
-- div,1
all p: Professor | p not in p.teaches.grades.Person
-- div,3
all p : Professor | p.teaches & p.enrolled = none
-- div,1
all p : Professor | p not in Person.(p.teaches.grades)
-- div,1
all a : Person | a in Professor implies a->a not in teaches
-- div,3
all p : univ | p in Professor implies not p->p in teaches
-- div,1
all p1, p2 : Professor | p2 in p1.teaches implies p1 != p2
-- div,1
all p : Professor | p not in p.^(teaches.grades.Person)
-- div,1
all p : Professor, c : p.teaches | c not in p.enrolled
-- div,1
all t:Professor, c:t.teaches | c not in t.enrolled
-- div,2
all p : Professor, c : p.teaches | p not in enrolled.c
-- div,2
all prof:Professor | no prof.enrolled & prof.teaches
-- div,1
all a : Person | all b : Person | a->b not in teaches
-- div,1
all p, c: Course | p->c in teaches implies p->c not in enrolled
-- div,1
all p : Person | all pro: Professor | p not in p.teaches
-- div,1
all t:Professor, p:Person | t->p in teaches => t!=p
-- div,2
all p : Professor | all c: p.teaches | c not in p.enrolled
-- div,1
all p : Professor | all c : p.teaches | p not in enrolled.c
-- div,1
all t: Professor, c: Course | c not in (t.teaches & t.enrolled)
-- div,1
all t: Professor, c: Course | t not in (teaches.c & enrolled.c)
-- div,1
all p:Professor | some p.teaches implies p.teaches != p.enrolled
-- div,1
all p : Professor | all c : Course | no (p.teaches & enrolled.c)
-- div,2
all t:Professor, c:Course | c in t.teaches => c not in t.enrolled
-- div,2
all c : Course, p : Professor | p in teaches.c => p not in enrolled.c
-- div,1
all p: Professor, c: Course | c in p.enrolled implies c !in p.teaches
-- div,3
all p: Professor, c: Course | p in teaches.c implies p not in enrolled.c
-- div,5
all p:Professor, c:Course | c in teaches.p implies (p not in c.enrolled)
-- div,1
all p : Professor, c: Course | c in p.teaches => c not in p.enrolled
-- div,18
all t: Professor, c: Course | t in teaches.c implies t not in enrolled.c
-- div,1
all t: Professor, c: Course | c in teaches.c implies c not in enrolled.c
-- div,1
all p: Professor,c: Course | c in p.teaches implies p not in enrolled.c
-- div,3
all x:Professor, c:Course | c in x.teaches implies c not in x.enrolled
-- div,2
all p:Professor, c:Course | c in teaches.p implies (p not in enrolled.c)
-- div,1
all x: Professor, y: Course | x in enrolled.y implies x not in teaches.y
-- div,1
no p:Professor,c:Course | p -> c in teaches and p -> c in enrolled
-- div,1
all p: Professor, c: Course | p->c in teaches implies c not in p.enrolled
-- div,1
all t: Professor | all c: t.teaches | t.enrolled in Course-c
-- div,2
all p:Professor, c:Course | p->c in teaches => p->c not in enrolled
-- div,22
all c : Course, p : Professor | p->c in teaches implies p->c not in enrolled
-- div,3
all p : Professor, c : Course | p->c in enrolled implies p->c not in teaches
-- div,5
all p1: Professor, c: Course | p1 in c.enrolled implies c not in p1.teaches
-- div,1
all p1: Professor, c: Course | p1 in c.enrolled implies p1 not in c.teaches
-- div,1
all p1: Professor, c: Course | p1 in c.enrolled implies p1->c not in teaches
-- div,1
all t: Professor, c: Course | t -> c in teaches implies not(t -> c in enrolled)
-- div,1
all p1: Professor, c: Course | p1->c in enrolled implies p1->c not in teaches
-- div,2
all p1 : Professor, c : Course | p1->c in teaches implies p1->c not in enrolled
-- div,1
all p1,p2: Professor, c: Course | p1 in c.enrolled implies c not in p2.teaches
-- div,1
all p1,p2: Professor, c: Course | p1 in c.enrolled implies p2 not in c.teaches
-- div,1
all t: Professor | all c: Course | c in t.enrolled implies c not in t.teaches
-- div,1
all p: Professor | all c: Course | c in p.teaches implies c not in p.enrolled
-- div,11
all p:Professor | all c:Course | c in p.enrolled implies c not in p.teaches
-- div,1
all p : Professor | all c : Course | (c in p.teaches) implies (p not in c.enrolled)
-- div,1
all p: Professor , st: Course.grades.Grade| p not in p.teaches.grades.Person
-- div,1
all c : Course | all p : Professor | p->c in teaches implies p->c not in enrolled
-- div,1
all p:Professor|all c:Course| p->c in teaches implies p->c not in enrolled
-- div,6
all p: Professor , st: Course.grades.Person| p not in p.teaches.grades.Person
-- div,1
all p : Professor | all c : Course | p->c in teaches implies c->p not in enrolled
-- div,1
all p : Professor | all c: Course | p->c in enrolled implies not p->c in teaches
-- div,1
all p1 : Professor | all c : Course | p1->c in teaches implies p1->c not in enrolled
-- div,3
not some x: Professor | some c: Course | x->c in teaches and x->c in enrolled
-- div,1
not some t:Professor | some c:Course | t->c in enrolled and t->c in teaches
-- div,2
all p1: Professor | all c1: Course | p1->c1 in teaches implies p1->c1 not in enrolled
-- div,7
all p:Person, c:Course | p->c in teaches and p->c in enrolled implies p not in Professor
-- div,1
all p1, p2: Professor, c : Course | (p1 -> c in enrolled and p2 -> c in teaches) => (p1 != p2)
-- div,1
all p1, p2: Professor, c:Course | p1->c in teaches and p2->c in enrolled implies p1!=p2
-- div,1
all p,c : univ | p in Professor and c in Course and p->c in teaches implies not p->c in enrolled
-- div,2
all p : Professor, p1 : Person, c : Course | c in p.teaches and c in p1.enrolled implies p1!=p
-- div,1
all x : Professor, y : Course, z : Student | x->y in teaches and z->y in enrolled implies x != z
-- div,1
all prof: Professor | all course: Course | course in prof.enrolled implies course not in prof.teaches
-- div,2
all p1:Professor | all c1,c2:Course | p1->c1 in teaches and p1->c2 in enrolled implies c1!=c2
-- div,1
all t : Professor | t not in (enrolled.(t.teaches))
    
   
    all p : Professor | no p.teaches & p.enrolled
-- div,1
all person : Professor | all course : Course | course in person.teaches implies course not in person.enrolled
-- div,1
all p1:Professor, z:Student | all c:Course | p1->c in teaches and z->c in enrolled implies p1 != z
-- div,6
all p : Professor | all e : Person | all c : Course | c in e.enrolled and c in p.teaches implies p!=e
-- div,2
