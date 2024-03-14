all p1 : Person
-- div,1
all p : Professor |
-- div,4
all t : Professor |
-- div,2
some p1.teaches && p2.teaches
-- div,1
p : Professor | p in Professor
-- div,2
no (Person-Students) & enrolled.Course
-- div,1
no teaches.~enrolled & teaches.~teaches)
-- div,1
all p : Professor | no (p.teach & Professor)
-- div,1
all t2 : Professor | t1->t2 not in teaches.~teaches
-- div,1
disj t1, t2 : Person | t1->t2 not in teaches.~teaches
-- div,1
all t1,t2:Teacher, c:t1.teaches | t2 not in enrolled.c
-- div,1
disj a, b : Professor | t1->t2 not in teaches.~teaches
-- div,1
disj t1, t2 : Professor | t1->t2 not in teaches.~teaches
-- div,6
all p, cp: Professor, c: p.teaches | c not in p2.enrolled
-- div,1
all p : Professor | p->x in teaches implies x is not Professor
-- div,1
all p : Professor | no p.teaches&p.enrolled
-- div,1
all t : Teacher | no (t.teaches.~enrolled & t.teaches.~teaches)
-- div,1
all p1 : Professor, p2 : Professor | no (p.teaches & p2.enrolled)
-- div,1
all p : Professor | no enrolled.(p.teaches) & enrolled.(p.courses)
-- div,1
all c : Course, p : teaches.c | p not in teaches.c
-- div,1
all a,b : Professor | a->c in teaches implies b->c not in enrolled
-- div,1
all p: Proofessor | p.teaches not in ((Professor&Student)-p).enrolled
-- div,1
all p : Professor | no (enrolled.(p.teaches) & (enrolled.(p.enrolled))
-- div,1
all t : Professor | no ((t.teaches).~enrolled) & (t.teaches).~teaches))
-- div,1
p1->c1 in teaches implies 
  	(none p2 : Professor | p2->c1 in enrolled)
-- div,1
all p: Professor, pe:People | no pe.enrolled & p.teaches or pe in Student
-- div,1
all p : Professor |  all co : Professor - p | no (p.teaches & c.enrolled))
-- div,1
all disj p1,p2 Person, c : Course | c in p1.teaches => c not in p2.enrolled
-- div,1
all p: Professor, c: p.teaches | no (c.~teaches - p) & (p.teaches.~enrolled
-- div,1
p1->c1 in teaches implies 
  	(all p2 : Professor | p2->c1 not in enrolled)
-- div,1
all p : Professor |  all co : Professor - p | no (p.teaches & col.enrolled))
-- div,1
all p1,p2 : Professor, c : Course | c & p1.teaches and c & p2.teaches implies
-- div,1
all t1, t2 : Professor | t1->t2 in teaches.~teaches iff enrolled.(t1.reaches)
-- div,1
all p: Professor | some c: Course | c in p.teaches implies ((c.grades.Person)
-- div,1
all p: Professor | cour: p.enrolled | col: teaches.cour | no col.enrolled.cour
-- div,1
all p1, p2: Professor, c1, c2: Course | p1c1 in p1.teaches && c1 in p2.teaches
-- div,1
all p1,p2: Professor, c:Course | p1 in teachs.c implies (p2 not in enrolled.c)
-- div,1
all p : Professor, c : Course | some (c & p.teaches implies no (c & p.enrolled)
-- div,1
all p: Professor |  cor : p.teaches | col : teaches.cor | no col.enrolled & cor
-- div,1
all p,p1: Professor, c,c1:Course | p->c in teaches implies ps->c not in enrolled
-- div,1
all pf: Professor , c : Course | some (c & p.teaches) implies no (c & p.enrolled)
-- div,1
all p: Professor | cour: p.enrolled | col: teaches.cour | no col.enrolled in cour
-- div,6
all p1,p2 : Person | all c1 : Course | (p1!=p2 and (p1,p2)->c1 in teaches) implies
-- div,1
all disj xp, cp: Professor, c: Course | c in p.teaches implies c not in cp.enrolled
-- div,1
all p1,p2 : Professor | all c : Course | c in p1.teaches and c in p2.enrolled implies
-- div,2
all p : Professor, c : Course | p->c in teaches implies all x Person | x->c in enrolled
-- div,2
all p1, p2: Person | one p1.enrolled in p2.enrolled => all p1.teaches not in p2.enrolled
-- div,1
all t1, t2 : Professor | (t1->t2 in teaches.~teaches iff) t2 not in enrolled.(t1.teaches)
-- div,1
all t1, t2: Professor | all c1, c2: Course | c in t1.teaches and c in t2.enrolled implies
-- div,1
all p1, p2 : Professor, c : Course | c in p1.teaches and c1 != c2 <=> c not in p2.enrolled
-- div,1
all c1,c2 : Course, disj p0,p1 : Professor | c in p0.teaches && c in p1.enrolled => c1!=c2
-- div,1
all p1, p2 : Professor | some p1.teaches & p2.teaches implies p2 not in p1.teaches.-enrolled
-- div,1
not some x,x1 in Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1
-- div,1
all p1:Professor, c:Course | c in p.teaches implies all p2:Professor-p1 | c not in p.enrolled
-- div,1
all p : Professor, p1 : Professor, c : Course | p1->c in teaches implies p2->c not in enrolled
-- div,1
all pers:Person, p1: Professor, c:Course |c in p.teaches implies enrolled.c-p not in Professor
-- div,1
some p:Professor some c:Course | p->c in teaches implies all r:Professor | r->c not in enrolled
-- div,1
all p1, p2: person | all course: Course | course in p1.teaches implies course not in p2.enrolled
-- div,1
one p1:Profeesor | all p2: Professor, c: Course | p1 -> c in teaches and not(p2 -> c in enrolled)
-- div,1
all p1,p2:Professor | all c:Course | c in (p1 + p2).teaches implies p1 not in enrolles.(p2.teaches)
-- div,1
all p1:Professor,p:Person,c:Course | c in p1.teaches and c in p.enrolled implies p not in Peofessor
-- div,1
all p : Professor | all c : Course | p->c in teaches implies (all s : Student | s->c in enrolled and
-- div,1
all p:Professor | c:Course | p->c in teaches implies all r:Professor | r!=p and r->c not in enrolled
-- div,2
all t:Professor, c:Course | c in t.teaches implies (all p:Person | c in p.enrolled p not in Professor)
-- div,1
all p : Professor | all person : Person | all c : Course | c in p.teaches implies c not in p2.enrolled
-- div,1
all p1,p2 : Person | all c : Course | (c in p1.teaches and c in p2.enrolled) implies c no in p2.teaches
-- div,1
all p1, p2 : Person | all c : Course | c in p1.teaches and c in p2.enrolled imlpies p2 not in Professor
-- div,1
all p1,p2 : Professor | all c : Course | c in p1.teaches implies c not in p2.teaches
-- div,1
all p: Professor, c: Course | c in p.teaches implies ((c.grades.person) not in (p.teaches.grades.person))
-- div,1
all t:Teacher, c:Course | c in t.teaches implies (all p:Person | c in p.enrolled implies p not in Teacher)
-- div,1
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies (none p2 : Professor | p2->c1 in enrolled)
-- div,1
all p1: Professor, p2: Professor, c: Course | c in p.teaches and c in p2.teaches implies c not in p2.enrolled
-- div,1
all p1 : Professor | all c1 : Course |
  	p1->c1 in teaches implies (none p2 : Professor | p2->c1 in enrolled)
-- div,1
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies 
  	(non p2 : Professor | p2->c1 in enrolled)
-- div,1
all p1, p2 : Professor | c:Course | c in p1.teaches and c in p2.teaches implies p1 not in enrolled.(p2.teaches)
-- div,2
all p2:Professor |all p:Person | all c1,c2:Course | p1->c1 in teaches and p->c1 in enrolled implies p in Student
-- div,1
all p1 : Professor | all c1:Course |
  	p1->c1 in teaches implies 
  	(none p2 : Professor | p2->c1 in enrolled)
-- div,2
all p1,p2: Professor| (no p1.enrolled & (p1.teaches & p2.teaches)) and (no p2.enrolled & (p1.teaches & p2.teaches)
-- div,1
all p1, p2 : Professor | c:Course | (c in p1.teaches) and (c in p2.teaches) implies p1 not in enrolled.(p2.teaches)
-- div,1
all p:Professor, c:Course, pe:Person | p->c in teaches and pe->c in enrolled and p1!=p2 implies pe not in Professor
-- div,1
all p1,p2 in Person | all c1,c2 in Course | c1 in p1.teaches and c2 in p2.teaches and c1 in p2.enrolles implies c1!=c2
-- div,1
all p1,p2 in Person | (all c1,c2 in Course | c1 in p1.teaches and c2 in p2.teaches and c1 in p2.enrolled) implies c1!=c2
-- div,1
all p1,p2 in Person | all c1,c2 in Course | (c1 in p1.teaches and c2 in p2.teaches and c1 in p2.enrolled) implies c1!=c2
-- div,1
all c1 : Course, p1,p2 in teaches.c1 | p1!=p2 implies all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled
-- div,1
all c1 : Course, p1, p2 in teaches.c1 | p1!=p2 implies all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | c1 in p1.enrolled&p2.enrolled and c2 in p.teaches implies c2 not in p2.enrolled
-- div,1
all p : Professor | all c : Course | p->c in teaches implies (all s : student | s->c in enrolled implies not s in Professor )
-- div,1
all c1 : Course, c2 : Course, p1 : Professor | p1->c1 in teaches implies (set p2 : Professor | p2->c2 in enrolled and c2 != c1)
-- div,2
all p : Professor, s : Student, c : Course | c in p.teaches and c in s.enrolled => s not in Professor
-- div,2
all p1,p2 : Professor | all c1,c2 : Course | c1 in p1.enrolled&p2.enrolled and c2 in p.teaches implies c2 not in person.enrolled
-- div,2
all p : Professor | all c : Course | all person : Person | c in p1.teaches and c in person.enrolled implies person not in Professor
-- div,1
all p1, p2: Professor| all c1: Course | c1 in p1.teaches and c1 in p2.teaches implies ( c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1, p2 : Professor, c1, c2 : Course | (c1 in p1.teaches and c1 in p2.teaches) implies (c2 in p1teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2 : Professor | all c : Course | p1->c,p2->c in teaches implies 
	(all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p1,p2: Professor| some c: Course | p1->c in enrolled and p2->c in enrolled and p1!=p2  implies (p1->c not in teaches and p2->c not in teaches) )
-- div,1
all c1 : Course, c2 : Course, p1 : Professor, p2 : Professor | p1->c1 in teaches implies (p2->c2 in enrolled and c2 != c1)
-- div,1
all p: Professor, c: Course | c in p.teaches implies ((c.grades.person) not in (p.teaches.grades.person))
  
  
  
  c.grades.person not in p.teaches
-- div,1
all p1 : Student | p2 : Professor | all c,c2 : Course | c in p1.enrolled and c in p2.teaches implies (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,2
all p1 , p2 : Professor, c : Course | ((p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches) && p2->c in enrolled) implies p1->c not in teaches
-- div,1
all s : Student | all p : Professor | all c,c2 : Course | c in p1.enrolled and c in p2.teaches implies (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,1
all p: Professor | all c: Course | c in p.enrolled implies ((c.grades.Grade) not in (p.teaches.grades.Grade) and p.enrolled not in c.grade.Grade.teaches)
-- div,1
all p1, p2 : Professor, c : Course |  and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies p2 not in c2.enrolled )
-- div,1
all p1, p2 : Professor, c1, c2 : Course | (c1 in p1.teaches and c1 in p2.teaches) implies (c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches (some c2 : Course | c2 in p1.teaches implies 2 not in p2.enrolled
-- div,1
all person1, person2 : Person | all course : Course | (person1 in Professor and course in person2.enrolled and course in person1.teaches) person2 in Student
-- div,1
all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches (some c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all person1, person2 : Person | all course : Course | (person1 in Professor and course in person2.enrolled and course in person1.teaches) 		person2 in Student
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
  (p1->c2 in teaches implies p2->c not in enrolled)
-- div,1
all p1 , p2 : Professor, c : Course | (p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches
  	(p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches
-- div,1
all p1 , p2 : Professor, c : Course |(p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches 
   | p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches
-- div,1
all person1, person2 : Person| all course: Course | (course in person1.teaches and course in person2.enrolled) implies (person2 not in Professor)
-- div,1
all p1, p2 : Professor, c1, c2 : Course | p1 != p2 and c1 in p1.teaches and c1 in p2.teaches and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
all p1, p2 : Professor, c1, c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1 != p2 and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
all p1, p2 : Professor, c1, c2 : Course | p1 != p2 and c1 in p1.teaches and c1 in p2.teaches implies c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
all p1 , p2 : Professor, c : Course | 
    ((p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches) 
  	(p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches)
-- div,1
all p1,p2 : Professor | all c1:Course | (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
    (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled))
-- div,1
all t1,t2:Person, | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
all t1,t2:Professor | t1 != t2 and c in some t1.enrolled & t2.enrolled => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,1
all p1,p2 : Professor | all c1:Course |
      (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled))
-- div,2
all t1, t2: Professor | all c1, c2: Course | c1 != c2 and c1 in t1.teaches and c1 in t2.teaches implies (c2 in t1.teaches and c2 in t2.enrolled) or (c2 in t1.enrolled and c2 in t2.teaches
-- div,1
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && ((c1 in p1.teaches && c1 in p2.teaches) || (c1 in p1.enrolled && c1 in p2.enrolled)) && c2 in p1.teaches => c2 not in in p2.enrolled
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | colleagues(p1,p2) implies c2 not in p2.enrolled
}

pred colleagues[p1, p2 : Professor]{
	p1!=p2 and c1 in p1.teaches&p2.teaches and c2 in p1.teaches
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | colleagues[p1,p2] implies c2 not in p2.enrolled
}

pred colleagues[p1, p2 : Professor]{
	p1!=p2 and c1 in p1.teaches&p2.teaches and c2 in p1.teaches
-- div,1
all c : Course, disj p0,p1 : Person | ((c in p0.teaches && c in p1.enrolled) => (p0 in Professor && p1 in Student)) && ((c in p1.teaches && c in p0.enrolled) => ((p1 in Professor && p0 in Student)
-- div,1
all c : Course, disj p0,p1 : Person | ((c in p0.teaches && c in p1.enrolled) => (p0 in Professor && p1 in Student)) && ((c in p1.teaches && c in p0.enrolled) => ((p1 in Professor && p0 in Student))
-- div,2
all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,5
all c : Course, disj p0,p1 : Person | ((c in p0.teaches && c in p1.enrolled) => (p0 in Professor  && p1 in Student)) && ((c in p1.teaches && c in p0.enrolled) => ((p1 in Professor && p0 in Student))
-- div,1
all p1 , p2 : Professor, c : Course |(p1->c in enrolled) && (p1!=p2) implies p2->c not in teaches 
  	all p1 , p2 : Professor, c : Course | p2->c in enrolled) && (p1!=p2) implies p1->c not in teaches
-- div,1
all p1,p2 : Professor | all c1:Course |
      (c1 in p1.teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)

	all p1,p2:Professor,c1:Course |
-- div,1
all p1,p2:Professor,p:Project | p1 -> p in Person <: projects and p2 -> p in person <: Projects implies (no c:Course | (p1 -> c in teaches and p2 -> c in enrolled) or (p2 -> c in teaches and p1 -> c in enrolled))
-- div,1
all p1,p2:Professor,p:Project | p1 -> p in Person <: projects and p2 -> p in projects <: Projects implies (no c:Course | (p1 -> c in teaches and p2 -> c in enrolled) or (p2 -> c in teaches and p1 -> c in enrolled))
-- div,1
all p1, p2 : Professor | all c:Course | (c in p1.teaches) and (c in p2.teaches) implies p1 not in enrolled.(p2.teaches)
  	all p1,p2:Professor | all c:Course | c in (p1 + p2).teaches imples p1 not in enrolles.(p2.teaches)
-- div,1
all t1, t2, c1,c2: Course | (t1!=t2 and t1 in teaches.c1 and t2 in teaches.c1) implies t1 in teaches.c2 implies t2 not in enrolled.c2 
  (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)
-- div,1
all p1,p2 : Professor | all c1:Course |
      (p1->c1 in teaches and p2->c1 in teaches) implies 
       (all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled)

	all p1,p2:Professor,c1:Course | c1 in p1.teaches and c1 in p2.teaches implies c1 in p1.teaches and c1 in p2.teaches implies (all c2:Courese | c2 in p1.teaches implies c2 not in enrolled)
-- div,1
all t1,t2:Person | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some t1.enrolled & t2.teaches
  
  all p : Person | no (p.teaches.~teaches - p) & p.teaches.~enrolled
}

check {
  }
  	all t1,t2:Person | t1 != t2 and some t1.enrolled & t2.enrolled => 
  		not some t1.enrolled & t2.teaches
  
  }
  implies {
  all p : Person | no (p.teaches.~teaches - p) & p.teaches.~enrolled
  
}
-- div,2
