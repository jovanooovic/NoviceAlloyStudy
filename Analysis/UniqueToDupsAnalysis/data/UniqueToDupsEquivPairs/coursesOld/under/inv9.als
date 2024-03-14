-- equiv pair start,65
no (Professor.teaches & Professor)
-- div,1
all p : Professor | p in Professor
-- div,5
all p : Professor | p not in p.^(teaches)
-- div,1
all p,p2:Professor | p2 not in p.teaches
-- div,2
all p:Professor | p not in p.^(~teaches)
-- div,1
all p1,p2 : Professor | p1 not in teaches.p2
-- div,2
all p:Professor | no (p.teaches.enrolled)
-- div,1
all p : Professor | Professor not in p.teaches
-- div,1
all p : Professor | no (p.teaches & Professor)
-- div,2
all p : Professor | p not in p.^(teaches.enrolled)
-- div,1
all p : Professor | Professor not in p.teaches.enrolled
-- div,1
all p : Professor | Professor not in enrolled.p.teaches
-- div,3
all p : Professor | no enrolled.p.teaches & Professor
-- div,1
all p:Professor | some enrolled.p implies p not in Professor
-- div,1
all p, cp: Professor, c: p.teaches | cp not in c.enrolled
-- div,1
all profCourse: Professor.teaches | Professor not in profCourse
-- div,1
all c : Course, p : teaches.c | p not in teaches.c.teaches
-- div,2
all p: Professor | no p.teaches&Professor-p.enrolled
-- div,1
all c : Course, p : teaches.c | p not in enrolled.teaches.c
-- div,1
all p : Professor | no teaches.p.teaches & enrolled.p.teaches
-- div,1
all p: Professor | no (p.teaches.~teaches) & p.teaches.enrolled
-- div,1
all pf: Professor , p: Person | p in pf.enrolled implies p in Student
-- div,1
all p:Professor, c:Course | p->c in teaches implies c.enrolled in Student
-- div,1
all p1, p2 : Professor, c : Course | c in p1.teaches implies p2 not in p2.enrolled
-- div,1
all p : Person | no p.teaches.grades.Student & p.enrolled.grades.Student
-- div,2
all p1,p2:Professor,c:Course | c in p1.teaches implies c not in enrolled.Course
-- div,1
all a : Professor | all b : Professor | (a->b not in teaches and b->a not in teaches)
-- div,1
all p : Professor | all c : p.teaches | one (Person.teaches & c) & p.teaches
-- div,1
all p: Professor | all c: p.teaches | all col: teaches.c | col not in c
-- div,1
all p1: Professor, p2: Professor, c: Course | c in p1.teaches implies c not in enrolled.c
-- div,1
all disj p1,p2 : Professor | (p1 + p2) in enrolled.Course => p1 not in p2.teaches and p2 not in p1.teaches
-- div,1
all p: Professor | all c: p.teaches | all col: teaches.p.teaches | no col.enrolled & c
-- div,1
all p: Person | all cor : p.teaches |all col : teaches.cor |  cor.enrolled in Person-col
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r not in c.enrolled
-- div,1
all p: Professor |all cour: p.teaches | all col: teaches.p.teaches |  cour not in col.enrolled
-- div,1
all p:Professor | all c:Course | p->c in teaches implies all r:Professor | r not in c.^enrolled
-- div,1
all disj p1, p2 : Professor, c : Course | (p1 + p2) in teaches.c => p1 not in p2.teaches and p2 not in p1.teaches
-- div,1
all p:Professor, c:Course | p->c in teaches implies some r:Professor | r!=p implies r->c not in enrolled
-- div,1
all a : Person | all b : Person | a in Professor and b in Professor implies (a->b not in teaches and b->a not in teaches)
-- div,3
all p1,p2: Professor, c1,c2: Course | c1 in p1.teaches&p2.teaches and c2 in p2.teaches implies p2 not in c1.enrolled
-- div,1
all p1,p2:Professor,c1:Course | c1 in p1.teaches and c1 in p2.teaches implies c1 in p1.teaches and c1 in p2.teaches
-- div,1
all t1, t2, c1,c2: Course | c1!=c2 and t1 in teaches.c1 and t2 in teaches.c1 and t1 in teaches.c2 implies t2 not in enrolled.c2
-- div,1
all t1, t2, c1,c2: Course | (t1!=t2 and t1 in teaches.c1 and t2 in teaches.c1) implies t1 in teaches.c2 implies t2 not in enrolled.c2
-- div,2
all p1,p2:Person, c1,c2:Course | c1 in p1.teaches and c1 in p2.teaches and p1!=p2 and p1 in c2.teaches implies p2 not in c2.enrolled
-- div,1
all t1, t2, c1,c2: Course | c1!=c2 and t1!=t2 and t1 in teaches.c1 and t2 in teaches.c1 and t1 in teaches.c2 implies t2 not in enrolled.c2
-- div,1
all p1,p2: Professor, c1,c2: Course | p1 != p2 and c1!=c2 and c1 in p1.teaches&p2.teaches and c2 in p1.teaches implies p2 not in c2.enrolled
-- div,1
all p1, p2 : Professor, c : Course |  c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies p2 not in c2.enrolled)
-- div,1
all t1, t2, c1: Course | (t1!=t2 and t1 in teaches.c1 and t2 in teaches.c1) implies (all c2: Course | t1 in teaches.c2 implies t2 not in enrolled.c2)
-- div,1
all p1,p2 : Person | all c,c2 : Course | c in p1.teaches and c in p2.enrolled implies (c2 not in p1.enrolled and c2 not in p2.enrolled) or c=c2 or c!= c2
-- div,1
all p1, p2 : Professor, c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies p2 not in c2.enrolled)
-- div,1
all p,x:Professor, c:Course | p->c in teaches implies p->c not in enrolled and x->c not in enrolled and x->c in teaches implies x->c not in enrolled and p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,7
all p:Professor | no  (teaches.(p.teaches) - p) & enrolled.(p.teaches)
-- div,1
all p : Professor, c : p . teaches |
  no (teaches . c  - p) & (p . teaches . ~enrolled)
-- div,1
all p: Professor, c: p.teaches | no (c.~teaches-p) & (p.teaches.~enrolled)
-- div,5
-- equiv pair end
-- equiv pair start,63
all disj p,p1:Professor | some p.teaches & p1.teaches implies no p.teaches & p1.enrolled
-- div,1
all disj p1, p2 : Professor | some p1.teaches & p2.teaches implies p2 not in p1.teaches.~enrolled
-- div,1
all disj p1,p2 : Professor | some p1.teaches & p2.teaches implies no p1.teaches & p2.enrolled
-- div,1
all disj p1,p2: Professor | some p1.teaches&p2.teaches implies no p2.enrolled&p1.teaches
-- div,2
all p1,p2:Professor | p1 != p2 and  some (p1.teaches & p2.teaches) implies no p1.teaches & p2.enrolled
-- div,1
all disj p1, p2 : Professor | some p1.teaches & p2.teaches implies all c : p1.teaches | p2 not in enrolled.c
-- div,1
all disj p1, p2 : Professor, c1, c2 : Course |
  		p1 + p2 in teaches.c1
  		&& p1 in teaches.c2
  		=> p2 not in enrolled.c2
-- div,1
all p1: Professor, p2: Professor | p1 != p2 and some (p1.teaches & p2.teaches) => no (p1.teaches & p2.enrolled)
-- div,1
all disj p1, p2 : Professor, c1, c2 : Course |
  		p1 in teaches.c1
  		&& p2 in teaches.c1
  		&& p1 in teaches.c2
  		=> p2 not in enrolled.c2
-- div,1
all disj p1, p2 : Professor, c : Course | (p1 in teaches.c and p2 in teaches.c) implies (all c : p1.teaches |p2 not in enrolled.c)
-- div,3
all p1,p2: Professor, c1,c2: Course | p1 != p2 and c1 in p1.teaches&p2.teaches and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
all t,t1 : Professor | all c,c1 : Course | t!=t1 and c in t.teaches&t1.teaches and c1 in t.teaches implies c1 not in t1.enrolled
-- div,1
all p1, p2 : Professor, c1, c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1 != p2 and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,3
all p1, p2: Professor | p1 != p2 and some (p1.teaches & p2.teaches) => no (p1.teaches & p2.enrolled) and no (p2.teaches & p1.enrolled)
-- div,1
all p1,p2 : Professor | all c1,c2 : Course | p1!=p2 and c1 in p1.teaches&p2.teaches and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,5
all p:Professor | all p2:Professor-p | p2 in p.teaches.~teaches implies all c:Course | c in p.teaches implies c not in p2.enrolled
-- div,1
all p1,p2: Professor | all c1,c2 : Course | c1 in p1.teaches and c1 in p2.teaches and c2 in p1.teaches and p1 != p2  implies c2 not in p2.enrolled
-- div,1
all p1, p2 : Professor | all c1, c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1!=p2 and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,2
all p:Professor | all p2:Professor-p | p2 in p.teaches.~teaches implies all c:Course | p->c in teaches implies p2->c not in enrolled
-- div,4
all p1, p2: Professor | all c1, c2: Course | (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies
  		p1->c2 in teaches implies p2->c2 not in enrolled
-- div,4
all p1, p2 : Professor, c : Course | p1 != p2 and c in (p1.teaches & p2.teaches) implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1, p2 : Professor, c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,3
all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1!=p2 implies all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled
-- div,2
all p1,p2 : Professor | all c1:Course | (p1!=p2 and c1 in p1.teaches and c1 in p2.teaches) implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2 : Professor | all c1:Course | (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies (all c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1,p2 : Professor | all c1:Course | (p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies (all c2 : Course | c2 in p1.teaches implies p2->c2 not in enrolled)
-- div,1
all p1,p2 : Professor | all c1:Course | p1!=p2 and p1->c1 in teaches and p2->c1 in teaches implies all c2 : Course | p1->c2 in teaches implies p2->c2 not in enrolled
-- div,15
all t1,t2:Professor, c:t1.teaches | t1 != t2 and c in t2.teaches => 
  		not some c2:Course | (c2 in t1.enrolled and c2 in t2.teaches) or (c2 in t2.enrolled and c2 in t1.teaches)
-- div,2
-- equiv pair end
-- equiv pair start,2
all disj p1,p2 : Person, c : Course | c in p1.teaches and c in p2.enrolled => c not in p2.teaches
-- div,1
all p1,p2 : Person | all c : Course | (p1!=p2 and c in p1.teaches and c in p2.enrolled) implies c not in p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,8
all disj p1, p2 : Professor, c : Course | (p1 in teaches.c and p2 in teaches.c) implies p2 not in enrolled.c
-- div,1
all p1,p2: Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1 != p2  implies c not in p2.enrolled
-- div,1
all a,b : Professor | all c : Course | a!=b and a->c in teaches and b->c in teaches implies (a->c in teaches implies b->c not in enrolled)
-- div,3
all p1, p2 : Professor | all c : Course | c in p1.teaches and c in p2.teaches and p1!=p2 implies c not in p1.enrolled and c not in p2.enrolled
-- div,1
all p1: Professor, p2: Professor, c: Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies p2 not in enrolled.c and p1 not in enrolled.c
-- div,1
all p1,p2 : Professor | all c1:Course |
  	(p1!=p2 and p1->c1 in teaches and p2->c1 in teaches) implies 
  	not ((p1->c1 in teaches and p2->c1 in enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p0,p1 : Professor, c : Course | c in p0.teaches => c not in p1.enrolled && c in p1.teaches => c not in p0.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,6
all disj p1, p2: Professor, disj c1, c2: Course | c1 in p1.teaches && c1 in p2.teaches &&  c2 in p1.teaches => c2 not in p2.enrolled
-- div,1
all p1,p2: Professor, c1,c2: Course | p1 != p2 and c1!=c2 and c1 in p1.teaches&p2.teaches and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
all p1, p2: Professor, c1, c2: Course | p1!=p2 && c1!=c2 && c1 in p1.teaches && c1 in p2.teaches &&  c2 in p1.teaches => c2 not in p2.enrolled
-- div,3
all p1, p2 : Professor, c1, c2 : Course | c1 in p1.teaches and c1 in p2.teaches and p1 != p2 and c1 != c2 and c2 in p1.teaches implies c2 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj p1, p2: Professor| all c: Course | p1->c in teaches implies p2->c not in 
  enrolled or p2->c in teaches implies p1->c not in enrolled
-- div,1
all a,b : Professor | all c : Course |  a!=b and a->c in teaches and b->c in teaches implies (a->c not in enrolled or b->c not in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2: Person, c1: Course | some c2: Course | p1!=p2 &&  (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Person | all c1,c2 : Course | (p1!=p2 and c1!=c2 and (c1+c2) in p1.teaches and (c1+c2) in p2.enrolled) implies (c1 + c2) not in p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c : Course | p1 != p2 and c in p1.teaches and c in p2.teaches implies (some c2 : Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | all c : Course | colleagues[p1,p2] implies c not in p2.enrolled
}

pred colleagues[p1, p2 : Professor]{
	all c : Course | p1!=p2 and c in p1.teaches&p2.teaches and c in p1.teaches
-- div,1
-- equiv pair end
