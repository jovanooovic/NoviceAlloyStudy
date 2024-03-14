-- equiv pair start,25
no Professor.enrolled
-- div,6
all t, c : Professor | no (c . enrolled & t . teaches)
-- div,1
all p : Professor | (Professor-p) not in enrolled.(p.teaches)
-- div,1
all p:Professor | p.teaches.~teaches - p not in enrolled.(p.teaches)
-- div,2
all p: Professor | no (p.teaches.~teaches)-p & enrolled.(p.teaches)
-- div,4
all disj p1,p2 : Professor, c : Course | (p1.teaches = p1.teaches - p2.enrolled)
-- div,1
all p1: Professor, p2: Professor | p1 != p2 => no (p1.teaches & p2.enrolled)
-- div,1
all p: Professor, pe:Person | (no pe.enrolled & p.teaches) or pe in Student
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,2
all p : Professor | all c : Course | p->c in teaches implies (all s : Student | s->c in enrolled implies not s in Professor )
-- div,1
all p1,p2:Professor,c1,c2:Course | c1 in p1.teaches and c1 in p2.teaches implies (c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,3
all p,person : Person | all c : Course | c in p.enrolled and c in person.enrolled implies p.teaches&person.enrolled=none
-- div,1
all prof: Professor | all person: Person | all course: Course | course in person.enrolled and course in prof.teaches implies person not in Student
-- div,1
-- equiv pair end
-- equiv pair start,16
no (Person - Student).enrolled
-- div,1
all p1,p2:Professor,c:Course | c in p1.teaches implies c not in p2.enrolled
-- div,10
all p : Professor, c : Course | p->c in teaches implies all x : Person | x->c in enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches => not some p2:Professor | p2->c in enrolled
-- div,2
all p:Professor | some c:Course | p->c in teaches implies all r:Person | r in Professor implies r!=p and r->c not in enrolled
-- div,1
all p1,p2:Professor,c1:Course | (p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,52
no enrolled.Course & Professor
-- div,1
all p, j : Professor | some (p.teaches & j.teaches) implies no (p.teaches & j.enrolled)
-- div,1
all disj p,p2:Professor|one c:Course | p->c in teaches implies p2->c not in enrolled
-- div,1
all p:Professor, r:Professor, c:Course | p->c in teaches and r->c not in enrolled
-- div,1
all disj p0,p1 : Professor | one c : Course | c in p0.teaches => c not in p1.enrolled
-- div,2
all p : Professor | no (enrolled.(p.teaches) & (enrolled.(p.enrolled) + teaches.(p.teaches)))
-- div,1
one disj p0,p1 : Professor | one c : Course | c in p0.teaches => c not in p1.enrolled
-- div,1
all p1, p2 : Professor | some p1.teaches & p2.teaches implies p2 not in p1.teaches.~enrolled
-- div,1
all p1,p2 : Professor | some (p1.teaches & p2.teaches) implies no (p1.teaches & p2.enrolled)
-- div,3
all disj p1, p2: Professor| all c: Course | p1->c in teaches implies p2->c not in 
  enrolled
-- div,2
all c : Course, p : Professor, p2 : Professor| p->c in teaches implies p2->c not in enrolled
-- div,1
all p1 , p2 : Professor, c : Course | p1->c in enrolled && p1!=p2 implies p2->c in teaches
-- div,3
all p: Professor, pe: Person | pe in Professor&Student implies pe.enrolled not in p.teaches
-- div,1
all disj p1, p2: Professor| one c: Course | p1->c in teaches implies p2->c not in 
  enrolled
-- div,1
all p1: Professor, p2: Professor, c: Course | c in p1.teaches implies p2 not in enrolled.c
-- div,1
all p1, p2: Professor, c: Course | p1->c in enrolled and p2->c in teaches => p1 != p2
-- div,1
all p1 , p2 : Professor, c : Course | (p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches
-- div,1
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies not (c in p2.enrolled)
-- div,1
all c : Course, p1 : Professor, p : Person | p1->c in teaches and p->c in enrolled and p in Student
-- div,1
all p: Person, c,c1:Course, ps:Professor | p->c in teaches and ps->c1 in teaches implies ps->c not in enrolled
-- div,1
not some x: Professor,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1
-- div,1
all p:Professor, c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r not in Professor
-- div,1
all p:Professor, c:Course | p->c in teaches implies all pe:Person | pe->c in enrolled implies pe in Student
-- div,1
all disj p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled => p1 in Professor and p2 in Student
-- div,1
all p1, p2: Person | some c: Course | c in p1.enrolled && c in p2.enrolled => p1.teaches not in p2.enrolled
-- div,3
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches) implies c not in p1.enrolled or c not in p2.enrolled
-- div,1
all x,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1 implies x1 not in Professor
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled and p1!=p2 implies c1!=c2
-- div,3
all c1 : Course, c2 : Course, p : Professor, p2 : Professor| p->c1 in teaches and p2->c2 in enrolled implies c1 != c2
-- div,2
all p : Professor | all c: Course | p->c in teaches implies all s : Person |  p->c in enrolled implies p not in Professor
-- div,1
all p : Professor | all c : Course | p->c in teaches implies (all s : Person | s->c in enrolled implies not s in Professor )
-- div,1
all p : Professor | all person : Person | p.enrolled&person.enrolled != none implies p.teaches&person.enrolled = none
-- div,4
all p : Professor | all c : Course | p->c in teaches implies (all s : Student | s->c in enrolled implies not s in Professor )
-- div,1
all p2:Professor |all p:Person | all c1,c2:Course | p2->c1 in teaches and p->c1 in enrolled implies p in Student
-- div,1
all p1,p2: Professor, c,c2:Course | p1->c in teaches and p2->c in teaches implies (p2->c2 in teaches implies p1->c2 not in enrolled)
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | p1 != p2 and c1 in p1.teaches and c2 in p2.teaches implies p2.enrolled not in p1.teaches
-- div,1
all p1, p2: Professor| all c1, c2: Course | c1 in p1.teaches and c1 in p2.teaches implies c2 in p1.teaches and c2 not in p2.enrolled
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | p1 != p2 and c1 in p1.teaches and c2 in p2.teaches implies c1 not in p2.enrolled and c2 not in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,18
no Professor & enrolled.Course
-- div,1
all p:Professor | enrolled.(p.teaches) not in Professor
-- div,1
all p: Professor | (p.teaches.~teaches)-p not in p.teaches.enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies c.enrolled not in Professor
-- div,1
not some disj p1, p2:Professor, c:Course | p1->c in teaches and p2->c in enrolled
-- div,3
all p,p1: Person, c:Course | p->c in teaches and p1->c in teaches implies p1->c not in enrolled
-- div,1
all p : Person - Student | (all col : Person - Student - p |  no (p.teaches & col.enrolled))
-- div,1
all p1,p2 : Professor | all c : Course | c in p1.teaches and p1 !=  p2 implies c not in p2.teaches
-- div,1
all p1,p2:Person | all c1:Course | p1->c1 in teaches and p2->c1 in enrolled implies p2 in Student
-- div,1
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies 
  	(no p2 : Professor | p2!=p1 and p2->c1 in enrolled)
-- div,2
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && c1 in p1.teaches && c1 in p2.teaches && c2 in p1.teaches => c2 in p2.enrolled
-- div,1
all p : Person-Student | all person : Person | (p.enrolled&person.enrolled != none) implies (p.teaches&person.enrolled = none and p!=person)
-- div,2
all prof: Professor | all person: Person | all course: Course | course in person.enrolled and course in prof.teaches implies person in Student
-- div,2
-- equiv pair end
-- equiv pair start,64
enrolled.Course not in Student
-- div,1
no (Person-Student) & enrolled.Course
-- div,1
all t : Professor , r : Professor - t | r.enrolled not in t.teaches
-- div,1
all p : Professor | all c : p.teaches | no (enrolled & Professor->c)
-- div,1
all disj p1,p2 : Professor, c : Course | (p1.teaches = p1.teaches - p2.enrolled)
-- div,1
all t : Professor ,  c : Course | c in t.teaches implies c not in (Professor-t).enrolled
-- div,2
all p: Professor , cour: p.teaches , col: teaches.cour |  col.enrolled in cour
-- div,1
all p : Professor | all c : p.teaches | no (Person.teaches & c) & p.teaches
-- div,1
all p1,p2 : Professor | all c : Course | c in p1.teaches implies c not in p2.teaches
-- div,1
all p : Professor | all c : p.teaches | no (Person.teaches-p & c) & p.teaches
-- div,1
all c : Course, p0,p1 : Professor | c in p0.teaches and c in p1.enrolled => p0=p1
-- div,1
all disj p,p2:Professor|one c:Course | p->c in teaches implies p2->c not in enrolled
-- div,1
all disj p0,p1 : Professor | one c : Course | c in p0.teaches => c not in p1.enrolled
-- div,2
all p,p1: Professor, c:Course | p->c in teaches and p!=p1 implies p1->c not in enrolled
-- div,1
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies (c in p2.enrolled)
-- div,1
all p1,p2 : Professor | some (p1.teaches & p2.teaches) implies no (p1.teaches & p2.enrolled)
-- div,3
all p1,p2: Professor, c:Course | p1!= p2 and p1 in teaches.c implies p2 not in enrolled.c
-- div,1
all p1,p2:Professor,c:Course | p1!=p2 and c in p1.teaches implies c not in p2.enrolled
-- div,3
all disj p,p1:Professor | some p.enrolled & p1.teaches implies no p.teaches & p1.enrolled
-- div,1
all x, y : Professor, z, w : Course | x->z in teaches and y->w in enrolled and y != x implies w != z
-- div,5
all disj p1,p2 : Person, c : Course | (p2.enrolled not in p1.teaches) and (p1.enrolled not in p2.teaches)
-- div,1
all p: Person | all cor : p.teaches |all col : teaches.cor | no col.enrolled & cor
-- div,1
all p1,p2 : Professor | all c : Course | p1!=p2 and c in p1.teaches implies c not in p2.enrolled
-- div,3
all p:Professor, c:Course | p->c in teaches => not some p2:Professor | p2->c in enrolled
-- div,2
all p1,p2 : Professor | all c1:Course |
  	(p1->c1 in teaches and p1!=p2) implies 
  	p2->c1 not in enrolled
-- div,8
all p1,p2 : Professor | some c1:Course |
  	(p1->c1 in teaches and p1!=p2) implies 
  	p2->c1 not in enrolled
-- div,1
all p1:Professor, c:Course | c in p1.teaches implies all p2:Professor-p1 | c not in p2.enrolled
-- div,1
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches) implies no c & p1.enrolled & p2.enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r in Student
-- div,1
all p : Professor, c : Course | p->c in teaches implies all x : Person | x->c in enrolled implies x in Student
-- div,1
all c : Course | some p1 : Professor | some p2 : Professor | p1->c in teaches and p2->c not in enrolled
-- div,1
all t:Professor, c:Course | c in t.teaches implies (all p:Person | c in p.enrolled implies p not in Professor)
-- div,1
all p: Person, c,c1:Course, ps:Professor | p->c in teaches and ps->c1 in teaches implies ps->c not in enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies all pe:Person | pe->c in enrolled implies pe in Student
-- div,1
all p1, p2: Person | all c: Course | c in p1.enrolled && c in p2.enrolled => p1.teaches not in p2.enrolled
-- div,1
all p:Professor | some c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r not in Professor
-- div,1
all c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled && c not in p0.enrolled && c not in p1.teaches
-- div,1
one c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled && c not in p0.enrolled && c not in p1.teaches
-- div,1
all p : Professor | all c : Course | p->c in teaches implies (all s : Student | s->c in enrolled implies not s in Professor )
-- div,1
all p1,p2 : Person | all c,c2 : Course | (c in p1.teaches and c in p2.enrolled) and c!=c2 <=> (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,2
all p1,p2 : Person | all c,c2 : Course | (c in p1.teaches and c in p2.enrolled) and c!=c2 and p1!=p2 implies (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,2
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && c1 in p1.teaches && c1 in p2.teaches
  || c1 in p1.enrolled && c1 in p2.enrolled && c2 in p1.teaches => c2 in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,6
all p:Professor | no p.enrolled
-- div,1
no (Professor + (Professor & Student)).enrolled
-- div,1
all p : enrolled.Course | p not in Professor
-- div,2
all p: Person| all c: Course | p in Professor implies p->c not in enrolled
-- div,1
all p : Professor, p1 : Professor | no (p.teaches & p.enrolled) and no p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,7
Professor not in enrolled.Course
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,2
all t1,t2:Professor, c:Course | c in t1.enrolled and c in t2.enrolled => 
  		(t1->c not in teaches and t2->c not in teaches)
-- div,2
all p2:Professor |all p:Person | all c1:Course | p2->c1 in teaches and p->c1 in enrolled and p != p2 implies p not in Professor
-- div,2
-- equiv pair end
-- equiv pair start,13
enrolled.Course not in Professor
-- div,1
all c : Course | enrolled.c not in Professor
-- div,1
((Professor&Student)).enrolled not in Professor.teaches
-- div,1
all profBel: Professor.enrolled | profBel not in Professor.teaches
-- div,1
all p:Professor, c:Course | p->c in teaches implies one enrolled.c
-- div,1
all p1 , p2 : Professor, c : Course | (p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches
-- div,1
all p1,p2 : Professor | some c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies c not in p2.enrolled
-- div,1
all p:Professor, c:Course, pe:Person | p->c in teaches and pe->c in enrolled and p!=pe implies pe not in Professor
-- div,2
all p:Person | some c:Course | p in Professor and p->c in teaches implies all r:Person | r in Professor implies r->c not in enrolled
-- div,3
all p1,p2 : Person | all c,c2 : Course | (c2 not in p1.enrolled and c2 not in p2.enrolled) <=> ((c in p1.teaches and c in p2.enrolled) and c!=c2 and p1!=p2)
-- div,1
-- equiv pair end
-- equiv pair start,14
Professor not in Person.enrolled
-- div,1
Professor not in Professor.teaches.grades.Grade
-- div,1
all c : Course | teaches.c not in Professor
-- div,1
all p : enrolled.Course | p not in Professor
-- div,2
all p,a : Professor | no (p.teaches & a.enrolled)
-- div,1
all p : Professor | no (Professor & (p . teaches . ~enrolled))
-- div,1
all p : Professor | (Professor-p) not in enrolled.(p.teaches)
-- div,1
all p: Professor | p.teaches not in (Professor-Student).enrolled
-- div,1
all p1, p2: Professor, c: Course | p1->c in enrolled and p2->c in teaches => p1 != p2
-- div,1
all p1,p2 : Professor | all c : Course | p1->c in teaches implies 
	(all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p : Person-Student | all person : Person | (p.enrolled&person.enrolled != none) implies (p.teaches&person.enrolled = none and p!=person)
-- div,2
all p1, p2: Person, c1: Course | lone c2: Course | p1!=p2 &&  (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,16
no (Professor - Student).enrolled
-- div,1
all p : Professor | p.teaches.~teaches not in p.teaches.~enrolled
-- div,7
all p : Person | all c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all p1, p2: Professor, c: Course | p1 -> c in teaches implies not(p2 -> c in enrolled)
-- div,1
all p: Professor , cour: p.teaches , col: teaches.cour |  cour not in col.enrolled
-- div,1
all p: Professor, c: p.teaches | all p2: Professor - Student | c !in p2.enrolled
-- div,2
all p: Professor |all cour: p.teaches | all col: teaches.cour |  no cour & col.enrolled
-- div,1
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(no p2 : Professor | p1!=p2 and p2->c1 in enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,9
all p:Professor | p not in Student
-- div,2
no (Professor.teaches.(~enrolled) & Professor)
-- div,1
all p,a : Professor | no (p.teaches & a.teaches)
-- div,1
all p : Professor | p.teaches.~teaches  not in enrolled.(p.teaches)
-- div,2
all p:Professor, p1:Professor | no p.teaches & p1.enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies enrolled.c in Student
-- div,1
all p:Person | (p in Student implies p not in Professor) or (p in Professor implies p not in Student)
-- div,1
-- equiv pair end
-- equiv pair start,167
no Professor.teaches&Professor.enrolled
-- div,6
no Professor & Professor.teaches.~enrolled
-- div,1
no (Professor.teaches.(~enrolled) & Professor)
-- div,1
all t, c : Professor | no (c . enrolled & t . teaches)
-- div,1
all p,a : Professor | no (p.teaches & a.enrolled)
-- div,1
all x,y  : Professor | no y.enrolled & x.teaches
-- div,1
all p1, p2 : Professor | p1 not in enrolled.(p2.teaches)
-- div,2
all p, p1 : Professor | no p.teaches & p1.enrolled
-- div,1
all p:Professor | p not in teaches.(Professor.enrolled)
-- div,1
all p1,p2:Professor | p2 not in (p1.teaches).~enrolled
-- div,1
all p1,p2: Professor | no p1.teaches&p2.enrolled
-- div,3
all x : Professor | no Professor.enrolled & x.teaches
-- div,1
all p : Professor | no p.teaches&Professor.enrolled
-- div,8
all p: Professor | no Professor.enrolled & p.teaches
-- div,5
all p1: Professor| no (p1.teaches & Professor.enrolled)
-- div,3
all p:Professor | no (p.teaches.~enrolled) & Professor
-- div,4
all p : Professor | no (Professor & (p . teaches . ~enrolled))
-- div,1
all p, cp: Professor, c: p.teaches | c not in cp.enrolled
-- div,1
all t1,t2:Professor, c:t1.teaches | t2 not in enrolled.c
-- div,1
all p1, p2 : Professor, c: p1.teaches | c not in p2.enrolled
-- div,1
all profBel: Professor.enrolled | profBel not in Professor.teaches
-- div,1
all p:Professor, p1:Professor | no p.teaches & p1.enrolled
-- div,1
all p1 : Professor, p2 : Professor | no (p1.teaches & p2.enrolled)
-- div,2
all profBel: Professor.enrolled | #{profBel & Professor.teaches} = 0
-- div,2
all x,y:Professor, c:Course | c in x.teaches implies c not in y.enrolled
-- div,1
all p : Professor | all c : p.teaches | no (enrolled & Professor->c)
-- div,1
all p, cp: Professor, c: Course | c in p.teaches implies c not in cp.enrolled
-- div,1
all p,j: Professor, c: Course | p->c in teaches implies j->c not in enrolled
-- div,1
all p1,p2:Professor,c:Course | c in p1.teaches implies c not in p2.enrolled
-- div,10
all p1, p2 :Professor, c: Course | c in p2.enrolled implies c !in p1.teaches
-- div,1
all p1,p2: Professor, c:Course | p1 in teaches.c implies p2 not in enrolled.c
-- div,2
all t1,t2:Professor, c:Course | c in t1.teaches => c not in t2.enrolled
-- div,1
all p, coll: Professor, c: Course | (c in p.teaches => c not in coll.enrolled)
-- div,2
all p1, p2:Professor, c:Course | p1->c in teaches => p2->c not in enrolled
-- div,2
all p1,p2:Professor,c:Course | p1->c in enrolled implies p2->c not in teaches
-- div,3
all t1, t2:Professor, c:Course | t1->c in teaches  => t2->c not in enrolled
-- div,1
all p1 , p2 : Professor, c : Course |  p2->c in teaches implies p1->c not in enrolled
-- div,1
all p,p1: Professor, c,c1:Course | p->c in teaches implies p1->c not in enrolled
-- div,1
all p: Professor, c: p.teaches | no p2: Professor | c in p2.enrolled
-- div,1
all p1, p2: Professor, c: Course | not(p1->c in enrolled and p2->c in teaches)
-- div,1
all p1, p2: Professor, c: Course | p1 -> c in teaches implies not(p2 -> c in enrolled)
-- div,1
all p : Professor, q : Person | q in p.teaches.~enrolled implies q not in Professor
-- div,1
all p : Professor, c : Course | p in teaches.c => no (enrolled.c & Professor)
-- div,2
not some p1, p2: Professor, c: Course | p1->c in enrolled and p2->c in teaches
-- div,1
all p: Professor, c: p.teaches | all p2: Professor | c !in p2.enrolled
-- div,1
all a,b : Professor | all c : Course|  a->c in teaches implies b->c not in enrolled
-- div,1
all p1,p2: Professor | all c : Course | c in p1.teaches implies c not in p2.enrolled
-- div,7
all p,p1:Professor|all c:Course| p->c in teaches implies p1->c not in enrolled
-- div,1
all p:Professor, c:p.teaches | not some p2:Professor | p2->c in enrolled
-- div,2
all p1,p2 : Professor | all c : Course | p1->c in teaches implies p2->c not in enrolled
-- div,3
all x, y : Professor, z, w : Course | x->z in teaches and y->w in enrolled implies w != z
-- div,1
all t : Professor , r : Professor , c : Course | c in t.teaches implies c not in r.enrolled
-- div,1
not some x,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled
-- div,1
all p1,p2 : Professor | all c1:Course |
  	p1->c1 in teaches implies p2->c1 not in enrolled
-- div,1
all c : Course, p : Professor, p2 : Professor| p->c in teaches implies p2->c not in enrolled
-- div,1
all p : Professor, p1 : Professor, c : Course | p->c in teaches implies p1->c not in enrolled
-- div,1
all p1: Professor, p2: Professor, c: Course | c in p1.teaches implies c not in p2.enrolled
-- div,4
all p1: Professor, p2: Professor, c: Course | c in p1.teaches implies p2 not in enrolled.c
-- div,1
all c : Course, p1 : Professor, p2 : Professor | p1->c in teaches implies ( p2->c not in enrolled )
-- div,1
all profCourse: Professor.teaches | all profBel: Professor.enrolled | profBel not in profCourse
-- div,1
all c : Course, p : Professor | p->c in teaches implies ( no p2 : Professor | p2->c in enrolled)
-- div,1
all p1, p2: Professor | all course: Course | course in p1.teaches implies course not in p2.enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,3
all c : Course, p : Professor | p->c in teaches implies ( all p2 : Professor | p2->c not in enrolled)
-- div,1
all p1,p2:Professor | all c:Course | c in (p1 + p2).teaches implies p1 not in enrolled.(p2.teaches)
-- div,1
all p1 : Professor, c : Course | p1->c in teaches implies all p2 : Professor | p2->c not in enrolled
-- div,1
all p1,p2:Person,c:Course | p1->c in enrolled and p2->c in teaches implies (p1 + p2) not in Professor
-- div,3
all p:Professor, c:Course | p->c in teaches => not some p2:Professor | p2->c in enrolled
-- div,2
all p:Professor, c:Course | not some p2:Professor | p->c in teaches and p2->c in enrolled
-- div,1
all p : Professor | all c : Course | c in p.teaches implies (all s : Professor | c not in s.enrolled)
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled implies c1!=c2
-- div,1
all p1:Professor,p:Person,c:Course | c in p1.teaches and c in p.enrolled implies p not in Professor
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r not in enrolled.c
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,2
all pf:Professor, p:Person, c:Course | pf->c in teaches and p->c in enrolled implies p not in Professor
-- div,1
all p:Professor, c:Course, pe:Person | p->c in teaches and pe->c in enrolled implies pe not in Professor
-- div,1
all p1:Person,p2:Professor,c:Course | p1->c in enrolled and p2->c in teaches implies p1 not in Professor
-- div,1
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies 
  	(no p2 : Professor | p2->c1 in enrolled)
-- div,1
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies 
  	(all p2 : Professor | p2->c1 not in enrolled)
-- div,3
all t:Professor, c:Course | c in t.teaches implies (all p:Person | c in p.enrolled implies p not in Professor)
-- div,1
all pers:Person, p1: Professor, c:Course | c in p1.teaches and pers in enrolled.c implies (pers not in Professor)
-- div,1
all p : Professor, c : Course | p->c in teaches implies all x : Person | x->c in enrolled implies x not in Professor
-- div,4
all p:Professor, c:Course | p->c in teaches implies all r:Person | r in Professor implies r->c not in enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r not in Professor
-- div,1
all p1, p2 : Professor, c : Course | c in p1.teaches + p2.teaches implies p1 not in enrolled.c and  p2 not in enrolled.c
-- div,1
all p1:Professor, c:Course, p:Person | p1->c in teaches and p->c in enrolled implies ( p not in Professor and p != p1 )
-- div,1
all p : Professor | all c : Course | c in p.teaches implies all s : Person | c in s.enrolled implies s not in Professor
-- div,2
all p1, p2 : Professor, c : Course | (c in p1.teaches implies c not in p2.enrolled) and (c in p2.teaches implies c not in p1.enrolled)
-- div,1
all pe: Person, p: Professor, c: Course | p -> c in teaches and pe -> c in enrolled implies p != pe and pe not in Professor
-- div,1
all c1 : Course, c2 : Course, p : Professor, p2 : Professor| p->c1 in teaches and p2->c2 in enrolled implies c1 != c2
-- div,2
all p : Professor | all c: Course | p->c in teaches implies all s : Person |  s->c in enrolled implies s not in Professor
-- div,1
all p : Professor | all c : Course | p->c in teaches implies (all s : Person | s->c in enrolled implies not s in Professor )
-- div,1
all p2:Professor |all p:Person | all c1:Course | p2->c1 in teaches and p->c1 in enrolled implies p not in Professor
-- div,1
all p:Person, c:Course | p in Professor and p->c in teaches implies all r:Person | r in Professor implies r->c not in enrolled
-- div,1
all p1,p2 : Professor | all c : Course | p1->c in teaches implies 
	(all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p : Professor | all c : Course | all person : Person | c in p.teaches and c in person.enrolled implies person not in Professor
-- div,1
all p1 , p2 : Professor, c : Course | ((p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches) && ((p2->c in enrolled) implies p1->c not in teaches)
-- div,1
all prof: Professor | all person: Person | all course: Course | course in person.enrolled and course in prof.teaches implies person not in Professor
-- div,3
all p,a : Professor | all c1,c2 : Course | p->c1 in teaches and a->c1 in enrolled and a->c2 in teaches implies p->c2 not in enrolled
  	all p,a : Professor | no (p.teaches & a.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,9
all p:Professor | no (p.teaches.~enrolled)
-- div,4
all p : Professor | no p.teaches & Person.enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies no enrolled.c
-- div,1
all p : Professor | all c : p.teaches |  no Person.enrolled & c
-- div,1
all p : Professor | all person : Person | all c : Course | c in p.teaches implies c not in person.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,33
all p: Professor | no p.teaches & p.enrolled
-- div,1
all p : Professor | p not in p.teaches.~enrolled
-- div,1
all p : Professor | no p.enrolled & (p.teaches)
-- div,1
all p,a : Professor | no (p.teaches & a.enrolled & a.teaches)
-- div,1
all p1,p2: Professor| no p1.enrolled & (p1.teaches & p2.teaches)
-- div,1
all p : Professor, c : Course | some c & p.teaches implies no (c & p.enrolled)
-- div,4
all p : Professor | all c : Course | c in p.teaches implies c not in p.enrolled
-- div,2
all pf: Professor , c : Course | some c & pf.teaches implies no (c & pf.enrolled)
-- div,2
all p1,p2:Professor, c:Course| p1->c in teaches and p2->c in enrolled implies  p1 != p2
-- div,2
all p1, p2: Professor, c: Course | p1->c in enrolled and p2->c in teaches => p1 != p2
-- div,1
all p,j: Professor, c: Course | p->c in teaches and j->c in teaches implies j->c not in enrolled
-- div,2
all p1,p2: Professor, c : Course | c in p1.teaches and c in p2.teaches implies c not in p2.enrolled
-- div,1
all p1: Professor, p2: Professor, c: Course | c in p1.teaches and c in p2.teaches implies c not in p2.enrolled
-- div,1
all p1,p2: Professor, c : Course | c in p1.teaches and c in p2.teaches implies c not in (p2.enrolled + p1.enrolled)
-- div,2
all p1,p2: Professor| (no p1.enrolled & (p1.teaches & p2.teaches)) and (no p2.enrolled & (p1.teaches & p2.teaches))
-- div,1
all t1,t2:Professor, c:Course | c in t1.enrolled and c in t2.enrolled => 
  		(t1->c not in teaches and t2->c not in teaches)
-- div,2
all p : Professor | all c: Course | p->c in teaches implies all s : Person |  p->c in enrolled implies p not in Professor
-- div,1
all p1,p2: Professor, c:Course | p1->c in teaches and p2->c in teaches implies p1->c not in enrolled and p2->c not in enrolled
-- div,1
all a,b : Professor | all c : Course | a->c in teaches and b->c in teaches implies (a->c in teaches implies b->c not in enrolled)
-- div,1
all a,b : Professor | all c : Course|  a->c in teaches and b->c in teaches implies (a->c not in enrolled and b->c not in enrolled)
-- div,1
all a,b : Professor | all c : Course|  a->c in teaches and b->c in teaches implies 
  	(b->c not in enrolled and a->c not in enrolled)
-- div,1
all a,b : Professor | all c : Course |  a->c in teaches and b->c in teaches implies (a->c not in enrolled or b->c not in enrolled)
-- div,1
all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches implies c not in p1.enrolled and c not in p2.enrolled
-- div,1
all a,b : Professor | all c : Course | a->c in teaches and b->c in teaches implies (a->c not in enrolled or b->c not in enrolled and a!=b)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | p.enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | p.teaches not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
Professor.teaches.(~enrolled) not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | Professor-p not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Course | c.~teaches not in c.~enrolled
-- div,5
-- equiv pair end
-- equiv pair start,1
teaches.(~enrolled) not in Professor->Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Person, c : Course | c in p1.teaches
-- div,1
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p, coll: Professor, c: Course | c in p.teaches
-- div,1
all p : Professor, x : Person, c : Course | p->c in teaches
-- div,1
-- equiv pair end
-- equiv pair start,32
all p : Professor | p not in p.^(teaches.~teaches)
-- div,1
all p1,p2:Professor | no (p1.teaches & p2.teaches)
-- div,1
all p1,p2:Professor | p2 not in (p1.teaches).~teaches
-- div,1
all t1, t2 : Professor | t1->t2 not in teaches.~teaches
-- div,1
all p : Professor | no p.teaches&Professor.teaches
-- div,1
all p:Professor | some p.teaches implies p.teaches in Student
-- div,1
all p: Professor | no (p.teaches.~teaches)-p & p.teaches.enrolled
-- div,4
all p:Professor, c:Course | p->c in teaches implies c.enrolled not in Professor
-- div,1
all p : Professor | all c : p.teaches | no (Person.teaches & c) & p.teaches
-- div,1
all p1,p2 : Professor | all c : Course | c in p1.teaches implies c not in p2.teaches
-- div,1
all x,y:Professor, c:Course | c in x.teaches implies c not in y.enrolled and x!=y
-- div,2
all p : Professor | all c : p.teaches | no (Person.teaches-p & c) & p.teaches
-- div,1
all p:Professor, c: p.teaches | not some p2:Professor | p2->c in enrolled+teaches
-- div,1
all p, p2 : Professor, c : Course | c in p.teaches and c in p2.teaches implies c not in p2.teaches
-- div,1
all p: Professor, c: Course | c in p.teaches implies ((c.grades.Person) not in (p.teaches.grades.Person))
-- div,4
all p: Professor | all c: Course | c in p.teaches implies ((c.grades.Grade) not in (p.teaches.grades.Grade))
-- div,1
all p:Professor, c:Course | p->c in teaches implies all r:Professor | p!= r and r->c not in enrolled
-- div,1
all t:Professor, c:Course | c in t.teaches implies (all p:Person | c in p.enrolled and p not in Professor)
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in teaches implies p1!=p2 and c1!=c2
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r!=p and r->c not in enrolled
-- div,2
all p:Professor, c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled and r->c not in teaches
-- div,1
all c1 : Course, c2 : Course, p1 : Professor, p2 : Professor | p1->c1 in teaches implies (p2->c2 in enrolled and c2 != c1)
-- div,1
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(all p2 :Professor | p2!=p1 and p2->c1 not in enrolled)
-- div,1
all c1 : Course, c2 : Course, p1 : Professor | p1->c1 in teaches implies (some p2 : Professor | p2->c2 in enrolled and c2 != c1)
-- div,1
-- equiv pair end
-- equiv pair start,4
all disj x,y:Professor| x.enrolled not in y.teaches
-- div,1
all t : Professor , r : Professor - t | r.enrolled not in t.teaches
-- div,1
all t : Professor , r : Professor  |t !=r implies r.enrolled not in t.teaches
-- div,1
all t : Professor , r : Professor - t |t !=r implies r.enrolled not in t.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | enrolled.(p.teaches) != Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | c.~teaches not in Course.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,12
all c : Course, p : teaches.c | p not in enrolled.c
-- div,1
all p : Person | all c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all p,p1: Person, c:Course | p->c in teaches and p1->c in teaches implies p1->c not in enrolled
-- div,1
all p: Person | all cor : p.teaches |all col : teaches.cor | no col.enrolled & cor
-- div,1
all p1,p2 : Person | all c : Course | (c in p1.teaches and c in p2.enrolled) implies c not in p2.teaches
-- div,1
all p: Person | all cor : p.teaches |all col : teaches.cor |  enrolled.cor in Person-col
-- div,1
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches) implies no c & p1.enrolled & p2.enrolled
-- div,1
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches) implies c not in p1.enrolled and c not in p2.enrolled
-- div,1
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches) implies c not in p1.enrolled or c not in p2.enrolled
-- div,1
all p1,p2 : Person, c : Course | c in p1.teaches and c in p2.teaches implies c not in p1.enrolled and c not in p2.enrolled
-- div,1
all p1,p2 : Person | all c1,c2 : Course | (c1 in p1.teaches and c2 in p2.teaches and c1 in p2.enrolled) implies c1!=c2
-- div,1
all person1, person2 : Person| all course: Course | (course in person1.teaches and course in person2.enrolled) implies ( course not in person2.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | p not in p.^(teaches.~enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,2
all prof: Professor | prof.teaches not in Professor
-- div,1
all p: Professor | some c: Course | c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2:Professor | some (p1.teaches & p2.teaches)
-- div,3
-- equiv pair end
-- equiv pair start,3
all p1,p2: Professor | p1.enrolled not in p2.teaches
-- div,1
all t : Professor , p : Professor |p.enrolled not in t.teaches
-- div,2
-- equiv pair end
-- equiv pair start,3
all p,p2:Professor | p != p2 and p2 not in p.teaches
-- div,1
all p : Professor | p - Professor  not in p.teaches.~enrolled
-- div,1
all p1, p2 : Professor | p1 != p2 and p1->p2 in teaches.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2: Professor | p1.teaches not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | p.teaches not in (Person-p).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Person | no p.teaches & (Professor-p).enrolled
-- div,1
all disj p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled => p2 not in Professor
-- div,1
all p1,p2:Person,c:Course | p1!=p2 and c in p1.teaches and p2 in Professor implies c not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,162
all disj  x,y : Professor | no y.enrolled & x.teaches
-- div,1
all disj p,p1:Professor | no p.teaches & p1.enrolled
-- div,2
all disj p1, p2:Professor | no p1.teaches & p2.enrolled
-- div,2
all disj p1,p2:Professor | p2 not in (p1.teaches).~enrolled
-- div,2
all disj p1, p2 : Professor | p1 not in p2.teaches.~enrolled
-- div,1
all p:Professor | no (Professor-p).enrolled & p.teaches
-- div,1
all p: Professor | no p.teaches&(Professor-p).enrolled
-- div,3
all x : Professor | no (Professor-x).enrolled & x.teaches
-- div,15
all t : Professor  | no (t.teaches & (Professor-t).enrolled)
-- div,1
all t : Professor  | no (Professor-t).enrolled & t.teaches
-- div,1
all p:Professor | no (p.teaches.~enrolled) & (Professor-p)
-- div,1
all disj p1, p2 : Professor, c : p1.teaches | p2 not in enrolled.c
-- div,1
all disj prof1,prof2:Professor | no prof2.enrolled & prof1.teaches
-- div,1
all x : Professor, y : Professor-x | no y.enrolled & x.teaches
-- div,2
all t : Professor ,  c : Course | no t.teaches & (Professor-t).enrolled
-- div,1
all disj p, cp: Professor, c: Course | c in p.teaches implies c not in cp.enrolled
-- div,3
all disj p1,p2 : Professor, c : Course | c in p1.teaches => c not in p2.enrolled
-- div,3
all disj p0,p1 : Professor, c : Course | c in p0.teaches => c not in p1.enrolled
-- div,1
all c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled
-- div,7
all disj p1,p2 : Professor, c : Course | c in p1.enrolled => c not in p2.teaches
-- div,1
all disj p1,p2 : Professor, c : Course | (p1.teaches = p1.teaches - p2.enrolled)
-- div,1
all p1: Professor, p2: Professor | p1 != p2 => no (p1.teaches & p2.enrolled)
-- div,1
all disj p1, p2:Professor, c:Course | p1->c in teaches => p2->c not in enrolled
-- div,2
all t : Professor ,  c : Course | c in t.teaches implies c not in (Professor-t).enrolled
-- div,2
all x,y:Professor, c:Course | x!=y and c in x.teaches implies c not in y.enrolled
-- div,2
all x,y:Professor, c:Course | x!=y implies c in x.teaches implies c not in y.enrolled
-- div,2
not some disj p1, p2:Professor, c:Course | p1->c in teaches and p2->c in enrolled
-- div,3
all p1 : Professor, c:Course | c in p1.teaches implies c not in (Professor-p1).enrolled
-- div,1
all c : Course, p0,p1 : Professor | c in p0.teaches and c in p1.enrolled => p0=p1
-- div,1
all disj p,p2:Professor|all c:Course | p->c in teaches implies p2->c not in enrolled
-- div,2
all p,p1: Professor, c:Course | p->c in teaches and p!=p1 implies p1->c not in enrolled
-- div,1
all p1,p2: Professor, c:Course | p1!= p2 and p1 in teaches.c implies p2 not in enrolled.c
-- div,1
all p1,p2:Professor,c:Course | p1!=p2 and c in p1.teaches implies c not in p2.enrolled
-- div,3
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies c not in p2.enrolled
-- div,8
all disj p1, p2: Professor| all c: Course | p1->c in teaches implies p2->c not in 
  enrolled
-- div,2
all p1 , p2 : Professor, c : Course | (p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches
-- div,1
all p1, p2:Professor, c:Course | p1->c in teaches and p1!=p2 => p2->c not in enrolled
-- div,5
all t1, t2:Professor, c:Course | t1->c in teaches and t1!=t2 => t2->c not in enrolled
-- div,4
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies not (c in p2.enrolled)
-- div,1
not some p1,p2: Professor, c: Course | p1->c in teaches and p2->c in enrolled and p1!=p2
-- div,1
all t : Professor , r : Professor-t , c : Course | c in t.teaches implies c not in r.enrolled
-- div,1
all disj p1,p2 : Professor | no p1.teaches & p2.enrolled and no p1.enrolled & p2.teaches
-- div,1
all c : Course, disj p0,p1 : Professor | c in p0.teaches and c in p1.enrolled => p0=p1
-- div,1
all p1,p2:Professor,c:Course | c in p1.teaches and p1!=p2 implies no (c & p2.enrolled)
-- div,1
all t,t1 : Professor | all c : Course | t!=t1 and c in t.enrolled implies c not in t1.teaches
-- div,1
all x, y : Professor, z, w : Course | x->z in teaches and y->w in enrolled and y != x implies w != z
-- div,5
all p1,p2: Professor | all c : Course | c in p1.teaches and p1 != p2 implies c not in p2.enrolled
-- div,1
all c1,c2 : Course, disj p0,p1 : Professor | c1 in p0.teaches && c2 in p1.enrolled => c1!=c2
-- div,1
all p1: Professor, p2: Person | p1 != p2 && p2 in Professor => no (p1.teaches & p2.enrolled)
-- div,1
all p1,p2 : Professor | all c : Course | p1!=p2 and c in p1.teaches implies c not in p2.enrolled
-- div,3
not some x,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1
-- div,1
all t : Professor , r : Professor , c : Course | c in t.teaches implies c not in (Professor-t).enrolled
-- div,1
not some p1,p2: Professor | some c: Course | p1->c in teaches and p2->c in enrolled and p1!=p2
-- div,3
all p1,p2 : Professor | all c1:Course |
  	(p1->c1 in teaches and p2!=p1) implies 
  	(p2->c1 not in enrolled)
-- div,3
all p1,p2 : Professor | all c1:Course |
  	(p1->c1 in teaches and p1!=p2) implies 
  	p2->c1 not in enrolled
-- div,8
all p1: Professor, p2: Professor, c: Course | p1 != p2 and c in p1.teaches implies p2 not in enrolled.c
-- div,2
all p1:Professor, c:Course | c in p1.teaches implies all p2:Professor-p1 | c not in p2.enrolled
-- div,1
all p1,p2:Professor, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 != c2
-- div,6
all p:Professor, c:Course | p->c in teaches implies all r:Professor | p!= r implies r->c not in enrolled
-- div,1
all prof : Professor | all cl : Professor - prof | no c : Course | c in (prof.teaches & cl.enrolled)
-- div,1
all disj p1, p2 : Professor, c : Course | (p1 & p2) in teaches.c implies (all c : p1.teaches | p2 not in enrolled.c)
-- div,2
not some x: Professor,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1
-- div,1
all c : Course, disj p0,p1 : Person | p0 in Professor and c in p0.teaches and p1 in Professor => c not in p1.enrolled
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled and p1!=p2 implies c1!=c2
-- div,3
all pe: Person, p: Professor, c: Course | p -> c in teaches and pe -> c in enrolled and p != pe implies pe not in Professor
-- div,2
all p:Professor, c:Course, pe:Person | p->c in teaches and pe->c in enrolled and p!=pe implies pe not in Professor
-- div,2
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(no p2 : Professor | p1!=p2 and p2->c1 in enrolled)
-- div,2
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies 
  	(no p2 : Professor | p2!=p1 and p2->c1 in enrolled)
-- div,2
all disj p0,p1 : Professor, c : Course | (c in p0.teaches => c not in p1.enrolled) && (c in p1.teaches => c not in p0.enrolled)
-- div,1
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(all p2 : Professor | p1!=p2 implies p2->c1 not in enrolled)
-- div,1
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(all p2 :Professor | p2!=p1 implies p2->c1 not in enrolled)
-- div,1
not some x,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1 and x in Professor and x1 in Professor
-- div,1
all p2:Professor |all p:Person | all c1:Course | p2->c1 in teaches and p->c1 in enrolled and p != p2 implies p not in Professor
-- div,2
all p1 , p2 : Professor, c : Course | ((p1->c in enrolled && p1!=p2) implies p2->c not in teaches) && ((p2->c in enrolled && p1!=p2) implies p1->c not in teaches)
-- div,2
all c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled
    all c : Course, disj p0,p1 : Professor | c in p0.enrolled and c in p1.enrolled => c not in p0.teaches and c not in p1.teaches
-- div,1
all c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled
    all c : Course, disj p0,p1 : Professor | c in p0.enrolled and c in p1.enrolled => c not in p0.teaches and c not in p1.teaches
    all c : Course, disj p0,p1 : Professor | c in p0.teaches and c in p1.teaches => c not in p0.enrolled and c not in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | p not in p.^(teaches.grades.Grade)
-- div,1
-- equiv pair end
-- equiv pair start,6
no(teaches & (Professor <: enrolled).~teaches.teaches)
-- div,6
-- equiv pair end
-- equiv pair start,2
all p : Professor | no p.teaches.~enrolled - Professor
-- div,1
all p : Professor | no p.teaches & (Person-Professor).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor | lone Professor.enrolled & p.teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
all p:Person | p in Professor implies p not in Student
-- div,1
all p:Person | (p in Student implies p not in Professor) or (p in Professor implies p not in Student)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor | p.teaches not in (Person-p).enrolled
-- div,2
-- equiv pair end
-- equiv pair start,2
all p: Professor | p.teaches.~enrolled not in Professor
-- div,2
-- equiv pair end
-- equiv pair start,6
all p:Professor | Professor not in enrolled.(p.teaches)
-- div,4
all p : Professor | Professor not in p.teaches.~enrolled
-- div,1
all p : Professor | some q : Professor | q not in  p.teaches.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor | some c: Course | lone c.grades.Person
-- div,1
-- equiv pair end
-- equiv pair start,12
no(teaches & (Professor <: enrolled).~enrolled.enrolled)
-- div,1
all p : Professor | no enrolled.(p.teaches) & enrolled.(p.enrolled)
-- div,3
all p : Professor | no ((p . enrolled . ~enrolled) & (p . teaches . ~enrolled))
-- div,1
all p : Professor | no (p.teaches.~enrolled & p.enrolled.~enrolled)
-- div,1
all p : Professor | all person : Person | p.enrolled&person.enrolled != none implies p.teaches&person.enrolled = none
-- div,4
all p1 : Professor | all p2 : Person | all c1,c2 : Course | c1 in p1.enrolled&p2.enrolled and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
all p : Professor | all person : Person | all c : Course | c in p.enrolled and c in person.enrolled implies p.teaches&person.enrolled=none
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | no p.teaches.grades.Grade & Professor
-- div,1
all p : Person | p in Professor => no p.teaches.grades.Grade & Professor
-- div,1
-- equiv pair end
-- equiv pair start,5
all p: Professor | p.teaches not in (Professor-p).enrolled
-- div,5
-- equiv pair end
-- equiv pair start,1
all p : Professor | Professor - p not in p.teaches.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all t : Professor  | (Professor-t).enrolled not in t.teaches
-- div,2
all p: Professor | (Professor-p).enrolled not in p.teaches
-- div,1
all p: Professor | ((Professor&Student+Professor)-p).enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor, c : p.teaches | teaches.c not in enrolled.c
-- div,1
all p : Professor, c : p.teaches | c.~teaches not in c.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | (Professor&Student-p).enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | no p.teaches.grades.Grade & (Professor - p)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Professor | Professor not in Professor.teaches.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor | (Professor&Student).enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Professor | c.~teaches - p not in c.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,18
all p : Professor | no enrolled.(p.teaches) & teaches.(p.teaches)
-- div,2
all p : Professor | no teaches.(p.teaches) & enrolled.(p.teaches)
-- div,5
all t : Professor | no (enrolled.(t.teaches)) & (teaches.(t.teaches))
-- div,2
all t : Professor | no (t.teaches.~enrolled) & (teaches.(t.teaches))
-- div,1
all p : Professor | no p.teaches.~enrolled & p.teaches.~teaches
-- div,3
all t : Professor | no (t.teaches.~enrolled) & ((t.teaches).~teaches)
-- div,4
all p : Professor | all c : p.teaches | no (teaches.c) & enrolled.(p.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor , c : p.teaches| Professor not in c.grades.Grade
-- div,2
-- equiv pair end
-- equiv pair start,2
all p:Professor | enrolled.(p.teaches) not in teaches.(p.teaches)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Course | (teaches.c&Professor) not in (enrolled.c&Professor)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor | p.teaches not in (Professor-p-Student).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | p.teaches.~teaches+p not in p.teaches.~enrolled
-- div,2
-- equiv pair end
-- equiv pair start,10
all p : Professor | teaches.(p.teaches) not in enrolled.(p.teaches)
-- div,1
all p : Professor | p.teaches.~teaches  not in enrolled.(p.teaches)
-- div,2
all p : Professor | p.teaches.~teaches not in p.teaches.~enrolled
-- div,7
-- equiv pair end
-- equiv pair start,1
all p : Person | no p.teaches.grades.Grade & p.enrolled.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor | no (p.teaches.~teaches)-p & (p.enrolled.~teaches)
-- div,1
all p: Professor | no (p.teaches.~teaches)-p & (p.enrolled.~teaches)
	no teaches.(Professor.teaches) & Professor.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor | p.teaches not in ((Professor-p)&Student).enrolled
-- div,1
all p: Professor | p.teaches not in ((Professor&Student)-p).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2: Professor | p1.teaches&p2.teaches not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all p: Professor | ((Professor-p)&Student).enrolled not in p.teaches
-- div,1
all p: Professor | (Professor&Student-p).enrolled not in p.teaches
-- div,3
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Professor | p1 not in Student and p2 not in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : teaches.c | p.enrolled not in (teaches.c).teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor | no (p.teaches.~teaches)-p & (p.enrolled.~teaches)-p
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj p1,p2 : Professor, c : Course | p2.enrolled not in p1.teaches
-- div,1
all disj p1,p2 : Professor, c : Course | (p2.enrolled not in p1.teaches) and (p1.enrolled not in p2.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,4
all p:Professor | (teaches.(p.teaches) - p) not in enrolled.(p.teaches)
-- div,2
all p:Professor | p.teaches.~teaches - p not in enrolled.(p.teaches)
-- div,2
-- equiv pair end
-- equiv pair start,2
all p : Professor | no p.teaches.grades.Grade & p.enrolled.grades.Grade
-- div,1
all p : Person | p in Professor => no p.teaches.grades.Grade & p.enrolled.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,5
all t1, t2 : Professor | t1 != t2 implies t1->t2 not in teaches.~teaches
-- div,1
all p1,p2 : Professor | all c : Course | c in p1.teaches and p1 !=  p2 implies c not in p2.teaches
-- div,1
all p1, p2 : Professor, c : Course | p1 != p2 and p1 in teaches.c and p2 in teaches.c implies (p1 = p2)
-- div,1
all p1, p2: Professor | all course: Course | course in p1.teaches and course in p2.teaches implies p1=p2
-- div,1
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(no p2 : Professor | p1!=p2 and p2->c1 in teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all profCourse: Professor.teaches | Professor.enrolled not in profCourse
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj prof1,prof2:(Person-Student) | no prof2.enrolled & prof1.teaches
-- div,1
all p : Person - Student | (all col : Person - Student - p |  no (p.teaches & col.enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2:Professor,c:Course | p1->c in teaches implies p2->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, c : Course | c = p.teaches => enrolled.c not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,6
all p1, p2 : Professor, c : Course | c in p1.teaches <=> c not in p2.enrolled
-- div,3
all p2, p1 : Professor, c : Course | c in p1.teaches <=> c not in p2.enrolled
-- div,1
all p, coll: Professor, c: Course | c in p.teaches iff c not in coll.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Professor | no ((p . enrolled . ~teaches) & (p . teaches . ~enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Professor, p : Person  | p in Professor and p.enrolled not in t.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p:Professor | c in p.teaches implies teaches.c not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,9
all p: Professor | all c: p.teaches | all col: teaches.c | c not in col.enrolled
-- div,1
all p: Professor | all c: p.teaches | all col: teaches.c | no col.enrolled & c
-- div,1
all p: Professor | all cor : p.teaches |all col : teaches.cor | no col.enrolled & cor
-- div,1
all p: Professor |all cour: p.teaches | all col: teaches.cour | cour not in col.enrolled
-- div,5
all p: Professor |all cour: p.teaches | all col: teaches.cour |  no cour & col.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,6
all c : Course, p:Professor | c in p.teaches implies enrolled.c not in Professor
-- div,1
all p:Professor, c:Course | p->c in teaches implies enrolled.c not in Professor
-- div,1
all p: Professor, c:Course |c in p.teaches implies enrolled.c-p not in Professor
-- div,1
all c : Course, p:Professor | c in p.teaches implies enrolled.c-p not in Professor
-- div,3
-- equiv pair end
-- equiv pair start,1
all p: Professor, c: Course | p in teaches.c implies Professor-p not in teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,5
all p: Professor, c : Course | p in teaches.c implies Professor not in enrolled.c
-- div,1
all p:Professor,c:Course | p->c in teaches implies Professor->c not in enrolled
-- div,1
all p:Professor, c:Course | p->c in teaches implies some r:Professor | r->c not in enrolled
-- div,3
-- equiv pair end
-- equiv pair start,2
all p: Professor, c: Course | p in teaches.c implies Professor-p not in enrolled.c
-- div,1
all p1:Professor, c:Course | c in p1.teaches implies some p2:Professor-p1 | c not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1, p2: Professor, c: Course | p1 -> c in teaches and not(p2 -> c in enrolled)
-- div,1
all p:Professor, r:Professor, c:Course | p->c in teaches and r->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | no ((p . enrolled . ~teaches) & (p . teaches . ~enrolled) - p)
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Professor ,  c : Course | c in t.teaches iff c not in (Professor-t).enrolled
-- div,1
all t : Professor , r : Professor , c : Course | c in t.teaches iff c not in (Professor-t).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,11
all p: Person, c:Course, ps:Professor | p->c in teaches implies ps->c not in enrolled
-- div,1
all p1,p2:Person, c:Course | c in p1.teaches and c in p2.enrolled implies p2 not in Professor
-- div,2
all p1, p2: Person, c : Course | (p1 -> c in enrolled and p2 -> c in teaches) => (p1 not in Professor)
-- div,1
all p1, p2 : Person | all c : Course | c in p1.teaches and c in p2.enrolled implies p2 not in Professor
-- div,2
all person1, person2 : Person| all course: Course | (course in person1.teaches and course in person2.enrolled) implies (person2 not in Professor)
-- div,5
-- equiv pair end
-- equiv pair start,24
all p, p1 : Professor | some p.teaches & p1.teaches implies no p.teaches & p1.enrolled
-- div,1
all p1, p2 : Professor | some p1.teaches & p2.teaches implies p2 not in p1.teaches.~enrolled
-- div,1
all p1,p2 : Professor | some (p1.teaches & p2.teaches) implies no (p1.teaches & p2.enrolled)
-- div,3
all p1, p2 : Professor | all c:Course | (c in p1.teaches) and (c in p2.teaches) implies p1 not in enrolled.(p2.teaches)
-- div,1
all p1, p2 : Professor | all c: Course | c in p1.teaches and c in p2.teaches implies no p1.teaches & p2.enrolled
-- div,1
all p1,p2: Professor, c1,c2: Course | (p1 in teaches.c1 and p2 in teaches.c1 and p1 in teaches.c2) implies p2 not in enrolled.c2
-- div,1
all p1,p2:Professor | some (p1.teaches & p2.teaches) implies no (p1.teaches & p2.enrolled) and no (p1.enrolled & p2.teaches)
-- div,2
all p1,p2:Professor,c1,c2:Course | c1 in p1.teaches and c1 in p2.teaches implies (c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,3
all p1,p2: Professor, c,c2:Course | p1->c in teaches and p2->c in teaches implies (p2->c2 in teaches implies p1->c2 not in enrolled)
-- div,1
all c1, c2 : Course, p1, p2 : Professor | p1 -> c1 in teaches and p2 -> c1 in teaches and p2 -> c2 in enrolled implies p1 -> c2 not in teaches
-- div,1
all p1, p2 : Professor, c : Course | 
  		p1 + p2 in teaches.c => 
  			no p1.teaches & p2.enrolled && no p2.teaches & p1.enrolled
-- div,1
all p1, p2: Professor| all c1, c2: Course | c1 in p1.teaches and c1 in p2.teaches implies ( c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2 : Professor | all c : Course | p1->c + p2->c in teaches implies 
	(all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p1,p2:Professor,c1:Course | (c1 in p1.teaches and c1 in p2.teaches) implies 
       (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2:Professor,c1:Course | (c1 in p1.teaches and c1 in p2.teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p1,p2:Professor,c1:Course | (p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p1, p2: Professor| all c1: Course | c1 in p1.teaches and c1 in p2.teaches implies (all c2: Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2 : Professor | all c1:Course |
      (p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p1,p2 : Professor | all c1:Course |
    (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
    (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
	
  	all a,b : Professor | all c : Course | a->c in teaches and b->c in teaches implies (a->c in teaches implies b->c not in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,6
all p,a : Professor | some (p.teaches & a.enrolled) implies no (a.teaches & p.enrolled)
-- div,2
all p,a : Professor | all c1,c2 : Course | p->c1 in teaches and a->c1 in enrolled and a->c2 in teaches implies p->c2 not in enrolled
-- div,4
-- equiv pair end
-- equiv pair start,5
all disj p1,p2 : Professor, c : Course | c in p1.teaches => c not in Professor.enrolled
-- div,1
all disj p1,p2 : Professor, c : Course | c in Professor.teaches => c not in Professor.enrolled
-- div,1
all t : Professor , r : Professor , c : Course | c in t.teaches implies c not in (Professor-r).enrolled
-- div,1
all c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled && c not in p0.enrolled
-- div,1
all disj p1, p2 : Professor, c : Course | c in p1.teaches + p2.teaches implies p1 not in enrolled.c and  p2 not in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Professor, c : Course | c in p1.teaches => p2.enrolled not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Professor, c : Course | c in p1.teaches and p1 != p2 <=> c not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1, t2 : Professor | (t1->t2 in teaches.~teaches ) iff t2 not in enrolled.(t1.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2: Professor | p1.teaches in p2.teaches implies p1.teaches not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
some p:Professor, c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,1
some p:Professor | some c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,1
some p:Professor, c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r not in Professor
-- div,2
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled => p2 in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Person - Student | all c : Course | c in p1.teaches implies c not in p2.enrolled
-- div,1
all p1, p2: Person - Student | all course: Course | course in p1.teaches implies course not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p in Professor => no (p.teaches.grades.Grade & p.enrolled.grades.Grade) - p
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2: Professor | some p1.teaches&p2.teaches implies p2.enrolled not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,15
all p1:Professor,p:Person,c:Course | c in p1.teaches and c in p.enrolled implies p in Student
-- div,1
all pers:Person, p1: Professor, c:Course | c in p1.teaches and pers in enrolled.c implies (pers in Student)
-- div,1
all pers:Person, p1: Professor, c:Course | p1 in teaches.c and pers in enrolled.c implies (pers in Student)
-- div,1
all p:Professor, c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r in Student
-- div,1
all p : Professor, c : Course | p->c in teaches implies all x : Person | x->c in enrolled implies x in Student
-- div,1
all p:Professor, c:Course | p->c in teaches implies all pe:Person | pe->c in enrolled implies pe in Student
-- div,1
all p2:Professor |all p:Person | all c1:Course | p2->c1 in teaches and p->c1 in enrolled implies p in Student
-- div,1
all p2:Professor |all p:Person | all c1,c2:Course | p2->c1 in teaches and p->c1 in enrolled implies p in Student
-- div,1
all p : Professor | all c : Course | all person : Person | c in p.teaches and c in person.enrolled implies person in Student
-- div,2
all prof: Professor | all person: Person | all course: Course | course in person.enrolled and course in prof.teaches implies person in Student
-- div,2
all person1, person2 : Person | all course : Course | (person1 in Professor and course in person2.enrolled and course in person1.teaches) 		implies person2 in Student
-- div,3
-- equiv pair end
-- equiv pair start,1
all p: Professor, pe: Person | pe in Professor&Student-p implies pe.enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, c : Course | some p2 : Professor | p->c in teaches and p2->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj prof1,prof2:Professor | prof2 not in Student implies no prof2.enrolled & prof1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,6
all p:Professor | some c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,5
all p:Professor | some c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor, cp: Professor-Student, c: Course | c in p.teaches implies c not in cp.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | some c:Course | (p->c in teaches) iff (all r:Professor | r->c not in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2 : Person | all c : Course | c in p1.teaches and c in p2.enrolled implies p2 in Student
-- div,1
all p1,p2:Person | all c1:Course | p1->c1 in teaches and p2->c1 in enrolled implies p2 in Student
-- div,1
all person1, person2 : Person| all course: Course | (course in person1.teaches and course in person2.enrolled) implies (person2 in Student)
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2 : Professor | one c : Course | p1 != p2 and c in p1.teaches implies c not in p2.enrolled
-- div,1
all p1,p2 : Professor | one c1:Course |
  	(p1->c1 in teaches and p2!=p1) implies 
  	(p2->c1 not in enrolled)
-- div,1
all p1,p2 : Professor | one c1:Course |
  	(p1->c1 in teaches and p1!=p2) implies 
  	p2->c1 not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
all p,j: Professor, c,h: Course | p->c in teaches and j->h in teaches implies j->c not in enrolled
-- div,1
all p,t: Professor, c,j: Course | (p->c in teaches and t->j in teaches) implies t->c not in enrolled
-- div,1
all p: Professor, c,c1:Course, ps:Professor | p->c in teaches and ps->c1 in teaches implies ps->c not in enrolled and p->c not in enrolled
-- div,1
all person1, person2 : Professor | all course1, course2 : Course | (course1 in person1.teaches and course2 in person2.teaches) implies (course2 not in person1.enrolled and course1 not in person2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Professor, c : Course | c in p1.teaches or c in p2.teaches => c not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Professor , r : Professor , c : Course | c in t.teaches iff c not in (Professor-r).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2 : Professor | some c : Course | p1 != p2 and c in p1.teaches implies c not in p2.enrolled
-- div,1
all p1,p2 : Professor | some c1:Course |
  	(p1->c1 in teaches and p1!=p2) implies 
  	p2->c1 not in enrolled
-- div,1
all x,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1 implies x1 not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,6
all t1,t2:Professor, c:t1.enrolled | c in t2.enrolled => not some c2:t1.teaches | c2 in t2.enrolled
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | c1 in p1.enrolled&p2.enrolled and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,2
all t1,t2:Professor, c:Course | c in t1.enrolled and c in t2.enrolled => not some c2:t1.teaches | c2 in t2.enrolled
-- div,1
all p1,p2: Professor | all c,c2 : Course | c in p1.enrolled and c in p2.enrolled implies not(c2 in p1.teaches and c2 in p2.enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,2
all c: Course, p1, p2: Person | c in p1.enrolled && c in p2.enrolled => p1.teaches not in p2.enrolled
-- div,1
all p1, p2: Person | all c: Course | c in p1.enrolled && c in p2.enrolled => p1.teaches not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all t1,t2:Professor | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		no t1.enrolled & t2.teaches
-- div,1
all t1,t2:Professor | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some t1.enrolled & t2.teaches
-- div,1
all t1,t2:Professor | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
all t1,t2:Professor, c:t1.enrolled | t1 != t2 and c in t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
all t1,t2:Professor, c:Course | t1 != t2 and c in t1.enrolled and c in t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor, s : Student, c : Course | c in p.teaches and c in s.enrolled => s not in Professor
-- div,1
all p : Professor | all c : Course | p->c in teaches implies (all s : Student | s->c in enrolled implies not s in Professor )
-- div,1
-- equiv pair end
-- equiv pair start,3
all t1,t2:Person | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some t1.enrolled & t2.teaches
-- div,1
all t1,t2:Person | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
all t1,t2:Person, c:t1.enrolled | t1 != t2 and c in t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled and c not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Professor, c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r in Student
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2:Professor, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled implies p1 != p2 and c1 != c2
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled implies c1 != c2 and p1 != p2
-- div,1
all c1 : Course, c2 : Course, p : Professor, p2 : Professor| p->c1 in teaches and p2->c2 in enrolled implies (c1 != c2 and p != p2)
-- div,1
-- equiv pair end
-- equiv pair start,3
all p,j: Professor| some c: Course | (p->c in teaches and j->c in teaches) implies (j->c not in enrolled)
-- div,3
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person | lone c: Course | c in p1.enrolled && c in p2.enrolled => p1.teaches not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person, c:Course| some pf:Professor | pf->c in teaches and p->c in enrolled implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor | all c: Course | c in p.enrolled implies ((c.grades.Grade) not in (p.teaches.grades.Grade))
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Course, disj p0,p1 : Person | c in p0.teaches && c in p1.enrolled => p0 in Professor && p1 in Student
-- div,2
all disj p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled => p1 in Professor and p2 in Student
-- div,1
all p1,p2 : Person | all c : Course | p1!=p2 and c in p1.teaches and c in p2.enrolled implies p1 in Professor and p2 in Student
-- div,1
all c : Course, disj p0,p1 : Person | ((c in p0.teaches && c in p1.enrolled) => (p0 in Professor && p1 in Student)) && ((c in p1.teaches && c in p0.enrolled) => (p1 in Professor && p0 in Student))
-- div,1
-- equiv pair end
-- equiv pair start,7
all p: Professor | some c: Course | c in p.teaches implies ((c.grades.Grade) not in (p.teaches.grades.Grade))
-- div,1
all p: Professor | some c: Course | c in p.teaches implies ((c.grades.Person) not in (p.teaches.grades.Person))
-- div,1
all p:Professor | some c:Course | p->c in teaches implies all r:Professor | r!=p and r->c not in enrolled
-- div,3
all p:Professor | some c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled and r->c not in teaches
-- div,1
all p:Professor | some c:Course | p->c in teaches implies all r:Person | r in Professor implies r!=p and r->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, s : Student, c : Course | p!=s and c in p.teaches and c in s.enrolled => s not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Professor | all c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | some c:Course | p->c in teaches implies all r:Person | r->c in enrolled implies r in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled and c1 != c2 implies p1 != p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,x1: Person | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1 implies x1 not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Person | all c : Course | c in p1.enrolled and c in p2.enrolled implies (p1.teaches&p2.enrolled)=none
-- div,1
all p,person : Person | all c : Course | c in p.enrolled and c in person.enrolled implies p.teaches&person.enrolled=none
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c in teaches and r not in enrolled.c
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c in teaches and r->c not in enrolled
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r->c in teaches and r->c not in enrolled and p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1 : Course, c2 : Course, p : Professor, p2 : Professor| p->c1 in teaches and p2->c2 in enrolled implies c1 = c2
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Person | all c : Course | c in p1.teaches and c in p2.enrolled implies p1 in Professor and p2 in Student
-- div,1
all person1, person2 : Person| all course: Course | (course in person1.teaches and course in person2.enrolled) implies (person2 in Student and person1 in Professor)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled => p1 in Professor and p2 not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c : Course | (p1 -> c in enrolled and p2 -> c in teaches) => (p1 in Student and p1 not in Professor)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all c : Course | p->c in teaches implies (all s : Student | s->c in enrolled and not s in Professor )
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c : Course | (p1 -> c in enrolled and p2 -> c in teaches) <=> (p1 in Student and p1 not in Professor)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p2:Professor |all p:Person | all c1:Course | p2->c1 in teaches and p->c1 in enrolled and p != p2 implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled implies p2 not in Professor and c not in p2.teaches
-- div,1
all p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled implies p2 not in Professor and c not in p2.teaches and p1!=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c1,c2 : Course | p1 != p2 and c1 in p1.teaches and c2 in p2.teaches implies p2.enrolled not in c1
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj p0,p1 : Professor, c : Course | (c in p0.teaches => c not in p1.enrolled) && c in p1.teaches => c not in p0.enrolled
-- div,1
all p1 , p2 : Professor, c : Course | ((p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches) &&
  	(p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Professor | all c1,c2 : Course | p1 != p2 and c1 in p1.teaches and c2 in p2.teaches implies c1 not in p2.enrolled
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | p1 != p2 and c1 in p1.teaches and c2 in p2.teaches implies c1 not in p2.enrolled and c2 not in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2: Professor | all c1,c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1 != p2  implies c2 not in p2.enrolled
-- div,1
all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1!=p2 implies all c2 : Course | c2 not in p1.enrolled and c2 not in p2.enrolled
-- div,1
all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1!=p2 implies c not in p1.enrolled and c not in p2.enrolled 
  	all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1!=p2 implies all c2 : Course | c2 not in p1.enrolled and c2 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2: Professor, c: Course | p1->c in teaches and p2->c in enrolled implies p1!=p2 and p1 not in Student and p2 in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person, c:Course | p in Professor and p->c in teaches implies some r:Person | r in Professor implies r->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor | all c1:Course |
  	(p1->c1 in teaches) implies 
  	(no p2 : Professor | p1!=p2 and p2->c1 not in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Professor, c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
one c : Course| all disj p0,p1 : Professor | c in p0.teaches => c not in p1.enrolled && c not in p0.enrolled && c not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p0,p1 : Professor | one c : Course | c in p0.teaches => c not in p1.enrolled && c not in p0.enrolled && c not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Person - Student | all c1,c2 : Course | c1 in p1.enrolled&p2.enrolled and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all person : Person | (p!=person and p.enrolled&person.enrolled != none) implies p.teaches&person.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, s : Student, c : Course | p!=s and c in p.teaches and c in s.enrolled => s not in Professor and c not in s.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Person | some c:Course | p in Professor and p->c in teaches implies all r:Person | r in Professor implies r->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c1: Course | one c2: Course | c2 in p1.enrolled && c2 in p2.enrolled => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1, p2: Person, c1: Course | some c2: Course | c2 in p1.enrolled && c2 in p2.enrolled => c1 in p1.teaches && c1 not in p2.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Person, c,c1:Course, ps:Professor | p->c in teaches and ps->c1 in teaches implies ps->c not in enrolled and p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all c : Course | all person : Person - Professor | c in p.teaches and c in person.enrolled implies person in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1,t2: Professor, c1,c2: Course | c1!=c2 and t1 in teaches.c1 and t2 in teaches.c1 and t1 in teaches.c2 implies t2 not in enrolled.c2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person-Student | all person : Person | (p!=person and p.enrolled&person.enrolled != none) implies p.teaches&person.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,4
all t1,t2:Professor, c:Course | t1 != t2 and c in t1.enrolled and c in t2.enrolled => 
  		(t1->c not in teaches and t2->c not in teaches)
-- div,1
all p1,p2: Professor, c: Course | p1->c in enrolled and p2->c in enrolled and p1!=p2  implies (not (p1->c in teaches or p2->c in teaches) )
-- div,1
all t,t1 : Professor | all c : Course | t!=t1 and c in t.enrolled and c in t1.enrolled implies c not in t.teaches and c not in t1.teaches
-- div,1
all t1,t2:Professor, c:Course | t1 != t2 and c in t1.enrolled and c in t2.enrolled => 
  		not some c2:Course | (c in t1.enrolled and c in t2.teaches) or (c in t2.enrolled and c in t1.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | some c:Course | p->c in teaches implies all r:Professor | r->c in teaches and r->c not in enrolled and p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled implies p2 not in Professor and c not in p2.teaches and p1 in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && c1 in p1.teaches && c1 in p2.teaches => c2 in p1.teaches && c2 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student | all p : Professor | all c,c2 : Course | c in s.enrolled and c in p.teaches implies not(c2 in p.enrolled and c2 in s.enrolled)
-- div,2
all s : Student | all p : Professor | all c,c2 : Course | c in s.enrolled and c in p.enrolled implies not(c2 in p.teaches and c2 in s.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c1: Course | one c2: Course | p1!=p2 && c2 in p1.enrolled && c2 in p2.enrolled => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled and p1!=p2 implies p2 not in Professor and c not in p2.teaches and p1!=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c1: Course | some c2: Course | p1!=p2 && c2 in p1.enrolled && c2 in p2.enrolled => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2: Professor| some c: Course | p1->c in enrolled and p2->c in enrolled and p1!=p2  implies (p1->c not in teaches and p2->c not in teaches)
-- div,1
all p1,p2: Professor| some c: Course | p1->c in enrolled and p2->c in enrolled and p1!=p2  implies (not (p1->c in teaches or p2->c in teaches) )
-- div,1
-- equiv pair end
-- equiv pair start,5
all p1,p2 : Person | all c,c2 : Course | (c in p1.teaches and c in p2.enrolled) and c!=c2 implies (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,4
all p1,p2 : Person | all c,c2 : Course | c in p1.teaches and c in p2.enrolled implies (c2 not in p1.enrolled and c2 not in p2.enrolled) or c=c2
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | all p : Professor | all c,c2 : Course | c in s.enrolled and c in p.teaches implies (c2 not in p.enrolled and c2 not in s.enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,3
all p1,p2 : Person | all c,c2 : Course | (c2 not in p1.enrolled and c2 not in p2.enrolled) implies ((c in p1.teaches and c in p2.enrolled) and c!=c2)
-- div,1
all p1,p2 : Person | all c,c2 : Course | (c2 not in p1.enrolled and c2 not in p2.enrolled) implies ((c in p1.teaches and c in p2.enrolled) and c!=c2 and p1!=p2)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p: Professor | all c: Course | c in p.enrolled implies ((c.grades.Grade) not in (p.teaches.grades.Grade) and p.enrolled not in c.grades.Grade.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1!=p2 implies all c2 : Course | c2 in p1.teaches and c2 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches and (some c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c1,c2 : Course | p1 != p2 and c1!=c2 and c1 in p1.teaches and c2 in p2.teaches implies c1 not in p2.enrolled and c2 not in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 , p2 : Professor, c : Course | (p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches &&
  	(p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2 : Professor | all c,c2 : Course | (c in p1.teaches and c in p2.teaches) or (c in p1.enrolled and c in p2.enrolled) implies not(c2 in p1.teaches and c2 in p2.enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p1, p2: Professor, c1, c2: Course | p1!=p2 && ((c1 in p1.teaches && c1 in p2.teaches)
  || (c1 in p1.enrolled && c1 in p2.enrolled)) && c2 in p1.teaches => c2 in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && ((c1 in p1.teaches && c1 in p2.teaches) || (c1 in p1.enrolled && c1 in p2.enrolled)) && c2 in p1.teaches => c2 in p2.enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c,c2 : Course | (c in p1.teaches and c in p2.teaches) or (c in p1.enrolled and c in p2.enrolled) and c != c2 implies not(c2 in p1.teaches and c2 in p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c1: Course | lone c2: Course | p1!=p2 && (c2 in p1.enrolled && c2 in p2.enrolled) || (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c1: Course | some c2: Course | p1!=p2 && (c2 in p1.enrolled && c2 in p2.enrolled) || (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all t1, t2: Professor | all c1, c2: Course | c1 != c2 and c1 in t1.teaches and c1 in t2.teaches implies (c2 in t1.teaches and c2 in t2.enrolled) or (c2 in t1.enrolled and c2 in t2.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && ((c1 in p1.teaches && c1 in p2.teaches) || (c1 in p1.enrolled && c1 in p2.enrolled)) && c2 in p1.teaches => c2 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | one p : Professor | c in p.teaches
	all p : Person-Student | all person : Person | (p.enrolled&person.enrolled != none) implies (p.teaches&person.enrolled = none and p!=person)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c,c2 : Course | (c in p1.teaches and c in p2.teaches) or (c in p1.enrolled and c in p2.enrolled) and c != c2 and p1!=p2 implies not(c2 in p1.teaches and c2 in p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2:Professor,p:Project | p1 -> p in Person <: projects and p2 -> p in Person <: projects implies (no c:Course | (p1 -> c in teaches and p2 -> c in enrolled) or (p2 -> c in teaches and p1 -> c in enrolled))
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Course | all p1,p2 : Professor | c in (p1+p2).teaches implies p1 = p2
	all p : Person-Student | all person : Person | (p.enrolled&person.enrolled != none) implies (p.teaches&person.enrolled = none and p!=person)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course | all p1,p2 : Professor | c in p1.teaches and c in p2.teaches implies p1 = p2
	all p : Person-Student | all person : Person | (p.enrolled&person.enrolled != none) implies (p.teaches&person.enrolled = none and p!=person)
-- div,2
-- equiv pair end
