-- equiv pair start,9
no teaches&enrolled
-- div,1
all c : Course | no teaches.c&enrolled.c
-- div,2
all p:Person | no (p.teaches & p.enrolled)
-- div,1
all c : Course, p : teaches.c | p not in enrolled.c
-- div,1
all c : Course, p : teaches.c | p not in enrolled.c&p
-- div,1
all c : Course, prof : teaches.c | prof not in enrolled.c
-- div,1
all p : Person | all c : Course | c in p.teaches => no (p.teaches & p.enrolled)
-- div,1
all p1,p2 : Person | all c1 : Course | c1 in p1.teaches and c1 in p2.teaches implies (c1 not in p2.enrolled or c1 not in p1.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,13
no Professor.enrolled
-- div,3
all p:Professor| no p.enrolled
-- div,1
all p1 : Professor | no p1.enrolled
-- div,1
all c : Course, enrol : enrolled.c | enrol not in Professor
-- div,2
all p : Person, c : Course | c in p.enrolled implies p not in Professor
-- div,1
all p : Person, c : Course | p in Professor implies c not in p.enrolled
-- div,1
all p1:Person, p2:Professor | p1 in Professor implies no p1.enrolled
-- div,1
all p1 : Professor |
  		all p2 : Person |
  			(no p2.enrolled & p1.enrolled)
-- div,1
all p:Person | all c:Course | c in p.enrolled implies p not in Professor
-- div,1
all p : Person | all c : Course | p in enrolled.c implies p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
no (Student & Professor)
-- div,1
all p:Person | p in Professor implies p not in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
no (teaches - (Professor <: enrolled))
-- div,1
-- equiv pair end
-- equiv pair start,83
no Professor & enrolled.(Professor.teaches)
-- div,3
#(Professor.teaches & Professor.enrolled) = 0
-- div,1
all x,y: Professor | no x.teaches & y.enrolled
-- div,2
all p,p1:Professor | no (p.teaches & p1.enrolled)
-- div,1
no p1,p2 : Professor | p2 in p1.(teaches.~enrolled)
-- div,1
all p1,p2 : Professor | p2 not in p1.(teaches.~enrolled)
-- div,1
all p1,p2:Professor| no p2.enrolled & p1.teaches
-- div,1
all p1, p2:Professor | no (p1.teaches & p2.enrolled)
-- div,1
all p:Professor | no (p.teaches & Professor.enrolled)
-- div,4
all p : Professor | no (Professor).enrolled & p.teaches
-- div,3
all p : Professor | no enrolled.(p.teaches) & (Professor)
-- div,2
all p: Professor | #(p.teaches & Professor.enrolled) = 0
-- div,1
all p, s: Professor | all c: p.teaches | c not in s.enrolled
-- div,1
all p,q : Professor | all pt : p.teaches | pt not in q.enrolled
-- div,1
all p,p1 : Professor | all c:p.teaches | c not in p1.enrolled
-- div,1
all p1 : Professor, p2 : Professor | no p1.enrolled & p2.teaches
-- div,1
all p: Professor | all c: Professor | no (p.teaches & c.enrolled)
-- div,2
all p:Professor, c : p.teaches, p2:Professor | p2 not in enrolled.c
-- div,1
all p:Professor | all a:Professor | no (p.teaches & a.enrolled)
-- div,1
all p, p1: Professor, c:Course | p in teaches.c implies p1 not in enrolled.c
-- div,1
all p1 : Professor | no p2 : Professor | p2 in p1.(teaches.~enrolled)
-- div,1
all p1,p2 : Professor, c : Course | p1 in teaches.c implies c not in p2.enrolled
-- div,1
all p1,p2 : Professor, c : Course | c in p1.teaches implies c not in p2.enrolled
-- div,1
all p : Professor | (all col : Professor|  no (p.teaches & col.enrolled))
-- div,2
all x:Person, y:Professor | x in Professor implies no (y.teaches & x.enrolled)
-- div,1
all x,y: Professor | all c:Course | c in x.teaches implies c not in y.enrolled
-- div,1
all p, s: Professor | all c: Course | s in teaches.c => p not in enrolled.c
-- div,1
all p,s: Professor| all c: Course | c in p.teaches => c not in s.enrolled
-- div,1
all p1,p2:Professor | all c:Course | c in p1.teaches implies c not in p2.enrolled
-- div,6
all p1,p2:Professor | all c1:Course | c1 in p1.teaches implies c1 not in  p2.enrolled
-- div,1
all p1,p2:Professor| (no p2.enrolled & p1.teaches) and (no p1.enrolled & p2.teaches)
-- div,1
all p1,p2:Professor | all c1,c2:Course | c1 in p1.teaches implies c1 not in  p2.enrolled
-- div,1
all p1:Professor, p2:Professor, c:Course | c in p1.teaches implies c not in p2.enrolled
-- div,2
all p1:Professor, p2:Professor, c:Course| p1 in enrolled.c implies p2 not in teaches.c
-- div,2
all p1:Professor, p2:Professor, c:Course| p1->c in enrolled implies p2->c not in teaches
-- div,1
all p1 : Professor | all p2 : Person | (p2 in p1.(teaches.~enrolled)) implies (p2 not in Professor)
-- div,1
all p : Professor, c : p.teaches | all s : Person | s in enrolled.c implies s not in Professor
-- div,1
all p1 : Professor, c : Course | c in p1.teaches implies (no p2 : Professor | c in p2.enrolled)
-- div,1
all t : Professor, c : Course | c in t.teaches implies not (some t2 : Professor | c in t2.enrolled)
-- div,1
all prof1 : Professor, prof2 : Professor, c : Course | c in prof1.teaches implies c not in prof2.enrolled
-- div,1
all x: Professor, z: Person, y: Course | x in teaches.y and z in enrolled.y implies z not in Professor
-- div,6
all p : Professor | all c : p.teaches | all s : Person | s in enrolled.c implies s not in Professor
-- div,1
all p : Person, prof : Professor, c : Course | c in prof.teaches and c in p.enrolled implies p not in Professor
-- div,2
all p1,p2 : Person, c : Course | p1 in Professor && p2 in Professor && c in p1.teaches implies c not in p2.enrolled
-- div,2
all p1:Professor, p2:Person ,c1:Course| p1->c1 in teaches and p2->c1 in enrolled implies p2 not in Professor
-- div,1
all p, s: Person | all c: Course | s in Professor && p in Professor && c in p.teaches => c not in s.enrolled
-- div,1
all p, s: Person | s in Professor && p in Professor => all c: Course | c in s.teaches => c not in p.enrolled
-- div,3
all p,q : Professor | all pt : p.teaches | (all qe : q.enrolled | pt not in q.enrolled and qe not in p.teaches)
-- div,1
all p, s: Person | s in Professor && p in Professor => all c, d: Course | (c in s.teaches => c not in p.enrolled)
-- div,1
all x :Professor| all y:Person| all z:Course | (z in x.teaches and z in y.enrolled) implies y not in Professor
-- div,1
all p:Person | all p1:Professor |  all c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor
-- div,1
all p1,p:Professor | all c1,c2:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
all x :Professor| all y:Person| all z:Course | (z in x.teaches and z in y.enrolled) implies (y not in Professor and x!=y)
-- div,1
all p1:Professor | all p:Person | all c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
all p1:Professor | all p:Person | all c1,c2:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
all p1:Professor | all p:Person | all c1,c2:Course | c1 in p1.teaches and c1 in p.enrolled and c2 in p1.teaches and c2 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | teaches.c not in enrolled.c
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | enrolled.c not in teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,11
all p1,p2 : Professor | p1 in teaches.Person
-- div,1
all p1,p2 : Professor | p1 in teaches.Professor
-- div,1
all p : Professor | no Professor-p.enrolled & p.teaches
-- div,1
all p1,p2:Professor| (no p2.enrolled & p1.teaches) and p1!=p2
-- div,4
all p1,p2 : Professor | no p1.enrolled & p2.teaches and p1!=p2
-- div,1
all p: Professor | all c: Professor | no (p.teaches & c.enrolled)  and p != c
-- div,1
all p1,p2:Professor| (no p2.enrolled & p1.teaches) and (no p1.enrolled & p2.teaches) and p1!=p2
-- div,1
all p1,p2:Professor| (no (p2.enrolled & p1.teaches)) and p1!=p2 and some (p2.teaches&p1.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
Professor not in enrolled.(Professor.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,24
all p : Professor | no p.enrolled & p.teaches
-- div,1
all p: Professor | no p.teaches & p.enrolled
-- div,1
all p: Professor | all c: p.teaches | c not in p.enrolled
-- div,2
all s:Professor |all c:s.teaches | c not in s.enrolled
-- div,1
all p:Professor | all c:Course | c in p.teaches implies c not in p.enrolled
-- div,2
all p1:Professor | all c:Course | c in p1.teaches implies c not in  p1.enrolled
-- div,1
all p : Professor | all c : Course | c in p.teaches => no (p.teaches & p.enrolled)
-- div,1
all p1,p2:Professor, c:Course| p1->c in teaches and p2->c in enrolled implies p1 != p2
-- div,1
all p1:Professor, c1,c2:Course| p1->c1 in teaches and p1->c2 in enrolled implies c1 != c2
-- div,1
all p1:Professor, c:Course, p2:Person | p1->c in teaches and p2->c in enrolled implies p1 != p2
-- div,1
all p1:Professor, p2:Professor, c:Course | c in p1.teaches and c in p2.enrolled implies p1!=p2
-- div,1
all p1:Professor, c1,c2:Course, p:Person| p1->c1 in teaches and p1->c2 in enrolled implies c1 != c2
-- div,1
all t : Professor, c : Course | c in t.teaches implies (all t2 : Professor | c not in t2.enrolled or t2!= t)
-- div,1
all p1:Professor , s:Professor | all c1:Course | p1->c1 in teaches and s->c1 in enrolled implies p1 != s
-- div,1
all x,z: Professor, y: Course | x in teaches.y and z in teaches.y implies x not in enrolled.y and z not in enrolled.y
-- div,1
all x,y:Person, c:Course| x->c in teaches and y-> c in teaches and x in Professor and y in Professor implies  y->c not in enrolled
-- div,2
all p1:Professor, p2:Professor, c:Course | p1 in teaches.c and p2 in teaches.c implies (p1 not in enrolled.c or p2 not in enrolled.c)
-- div,1
all p, col: Professor, c : Course | (c in p.teaches and c in col.teaches) implies (no co : Course | co in p.teaches and c in col.enrolled)
-- div,1
all x,y:Person, c:Course| x->c in teaches and y-> c in teaches and x in Professor and y in Professor implies x-> c not in enrolled or y->c not in enrolled
-- div,3
-- equiv pair end
-- equiv pair start,1
all p:Person| some p.enrolled => p in Student
-- div,1
-- equiv pair end
-- equiv pair start,4
all x,y:Professor | x.enrolled not in y.teaches
-- div,1
all p1,p2 : Professor | p1.enrolled not in p2.teaches
-- div,1
all p1, p2 : Professor | p1.enrolled !in p2.teaches and p2.enrolled !in p1.teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Person | p1.enrolled not in p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person-Student | no (p.teaches & p.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,13
all p1,p2 : Professor | p1 not in p2.teaches.~teaches
-- div,1
all p: Professor, c:Course | p in teaches.c implies p not in teaches.c
-- div,1
all p, p1: Professor, c:Course | p in teaches.c implies p1 not in teaches.c
-- div,1
all p1,p2 : Professor | all c:Course | c in p1.teaches implies c not in p2.teaches
-- div,1
all p1, p2 : Professor, c:Course | c in p1.teaches implies c not in p2.teaches and p1!=p2
-- div,1
all p1:Professor, p2:Professor, c:Course | c in p1.teaches and c in p2.teaches implies p1!=p2
-- div,1
all t : Professor, c : Course | c in t.teaches implies (all t2 : Professor | t2 != t && c not in t2.enrolled)
-- div,1
all t : Professor, c : Course | c in t.teaches implies (all t2 : Professor | c not in t2.enrolled && t2!= t)
-- div,2
all prof : Professor, c : Course, coll : Person | c in prof.teaches implies (coll not in Professor and c in coll.enrolled)
-- div,1
all p:Professor, c : p.teaches, p2:Professor | p2 in teaches.c implies (all c2 : p2.teaches | p not in teaches.c2)
-- div,1
all t : Professor, c : Course | c in t.teaches implies (all t2 : Professor | c not in t2.enrolled and t2!= t and c not in t2.teaches)
-- div,1
all t1,t2 : Professor, c : Course | c in t1.teaches && c in t2.teaches implies (all t2 : Professor | c not in t2.enrolled and t2!= t1 and c not in t2.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Professor | p.teaches not in Professor.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,3
no(teaches & (Professor <: enrolled).~teaches.teaches)
-- div,3
-- equiv pair end
-- equiv pair start,1
all disj p1, p2 : Professor |  p1.enrolled = p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Professor | Professor.enrolled not in p.teaches
-- div,2
all p : Professor | Professor.enrolled-p not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | Professor not in enrolled.(p.teaches)
-- div,1
all p:Professor | some t:Professor|all c:p.teaches | c not in t.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | (Professor-p).enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,13
all disj p1, p2: Professor | p1.teaches & p2.teaches = none
-- div,2
all p1, p2: Professor | p1 != p2 => p1.teaches & p2.teaches = none
-- div,3
no disj p1, p2: Professor | p1.teaches & p2.teaches != none and p1 != p2
-- div,1
all p1 : Professor | all p2 : Professor | (p1 != p2) => (p1.teaches & p2.teaches = none)
-- div,1
all p1 : Professor | all p2 : Person | (p2 in Professor and p1 != p2) => (p1.teaches & p2.teaches = none)
-- div,4
all x: Professor, y: Course | x in teaches.y implies no z: Person | z in teaches.y and z in Professor and z != x
-- div,1
all x: Professor, y: Course | x in teaches.y implies no z: Person | z in teaches.y and z in Professor and z not in x
-- div,1
-- equiv pair end
-- equiv pair start,3
all x,y:Professor| x!=y implies x.teaches not in y.enrolled
-- div,2
all p : Professor | all c : Professor - p | p.teaches not in c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1 : Person, p2 : Professor | no p1.enrolled & p2.teaches
-- div,1
all prof : Professor, c : Course, coll : Person | c in prof.teaches implies (c not in coll.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,69
all disj p1, p2 : Professor | p1 not in enrolled.(p2.teaches)
-- div,2
all disj p1, p2 : Professor | no p1.enrolled & p2.teaches
-- div,5
all p : Professor | no enrolled.(p.teaches) & (Professor-p)
-- div,1
all p : Professor | no (Professor-p).enrolled & p.teaches
-- div,2
all x,y:Professor| x!=y implies no (x.teaches & y.enrolled)
-- div,2
all p,p1:Professor | p1 != p implies no (p.teaches & p1.enrolled)
-- div,2
all p1,p2 : Professor | p1!=p2 implies no p1.enrolled & p2.teaches
-- div,2
all disj s,j:Professor |all c:s.teaches |  c not in j.enrolled
-- div,1
all p : Professor, col : Professor - p |  no (col.enrolled & p.teaches)
-- div,1
all disj p1, p2 : Professor | all c : p1.teaches | c not in p2.enrolled
-- div,1
all p : Professor | all c : Professor - p | no (c.enrolled & p.teaches)
-- div,1
all p:Professor | all a:Professor-p | no (p.teaches & a.enrolled)
-- div,2
all p : Professor | all pp : (Professor - p).enrolled | no p.teaches & pp
-- div,1
all p: Professor | all p1: Professor - p |  no p1.enrolled & p.teaches
-- div,1
all disj p1,p2 : Professor, c : Course | p1 in teaches.c implies c not in p2.enrolled
-- div,4
all p : Professor | all col : Professor - p | no (col.enrolled & p.teaches)
-- div,5
all p : Professor | (all col : Professor - p |  no (p.teaches & col.enrolled))
-- div,4
all p1 : Professor | all p2 : Professor - p1 | no (p1.teaches & p2.enrolled)
-- div,1
all x,y:Professor, c:Course | x!=y implies c in x.teaches implies c not in y.enrolled
-- div,3
all p:Professor, c : p.teaches, p2:Professor | p != p2 implies p2 not in enrolled.c
-- div,1
all p, p1: Professor, c:Course |p != p1 and p in teaches.c implies p1 not in enrolled.c
-- div,2
all disj p1, p2 : Professor | p1 not in enrolled.(p2.teaches) and p2 not in enrolled.(p1.teaches)
-- div,1
all p : Professor, c : p.teaches |( all col : Professor - p | col not in enrolled.c )
-- div,1
all disj s,j:Professor |all c:s.teaches |  c in j.enrolled implies j not in Professor
-- div,1
all x:Professor, c:Course, y:Professor-x| x->c in teaches implies y->c not in enrolled
-- div,1
all p:Professor, col:Professor - p, c:Course | c in p.teaches => col not in enrolled.c
-- div,1
all p1 : Professor, p2:Professor-p1, c : Course | c in p1.teaches implies c not in p2.enrolled
-- div,1
all p : Professor | all col : Professor - p | all c : p.teaches | col not in enrolled.c
-- div,1
all p : Professor | (all c : p.teaches | (all col : Professor - p | c not in col.enrolled ))
-- div,1
all p1 : Professor | all p2 : Professor - p1 | all c : p2.enrolled | c not in p1.teaches
-- div,1
all p1:Professor, p2:Professor, c:Course | p1!=p2 and p1 in teaches.c implies p2 not in enrolled.c
-- div,2
all p : Professor, c : Course | c in p.teaches implies (all col : Professor - p | c not in col.enrolled)
-- div,1
all p : Professor | (all col : Professor - p, c : Course | c in p.teaches implies c not in col.enrolled)
-- div,1
all p : Professor, col : Professor - p | no (col.enrolled & p.teaches) and no (col.teaches & p.enrolled)
-- div,1
all p1,p2:Professor, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 != c2
-- div,2
all p : Professor | all c : Professor - p | no (c.enrolled & p.teaches) and no (p.enrolled & c.teaches)
-- div,1
all p : Professor | all col : Professor -p | all c : Course | c in p.teaches implies c not in col.enrolled
-- div,3
all p1:Professor |all p2:Professor-p1 | all c:Course | c in p1.teaches implies c not in p2.enrolled
-- div,1
all p: Professor | all p1: Professor - p | some p1.enrolled & p.teaches =>  no p1.enrolled & p.teaches
-- div,1
all x: Professor, y: Course | x in teaches.y implies no z: Person | z in enrolled.y and z in Professor and z != x
-- div,1
all p1 : Professor | all p2 : Professor | all c : Course | (p1!=p2 and c in p1.teaches) implies c not in p2.enrolled
-- div,1
all x :Professor| all y:Person| all z:Course | (z in x.teaches and z in y.enrolled and x!=y) implies y not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor| enrolled.(p.teaches)  in teaches.(p.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | (Person-Student) not in enrolled.(p.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,7
all p : Professor| enrolled.(p.teaches)&teaches.(p.teaches)= none
-- div,3
all p : Professor | all c : teaches.(p.teaches) | no c.enrolled & p.teaches
-- div,3
all x,y:Person| all z,w:Course | (z in x.teaches and z in y.teaches and x in Professor and w in x.teaches) implies w not in y.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Professor| enrolled.(p.teaches) not in teaches.(p.teaches)
-- div,3
-- equiv pair end
-- equiv pair start,2
all p : Professor| teaches.(p.teaches) not in enrolled.(p.teaches)
-- div,2
-- equiv pair end
-- equiv pair start,2
all t : Professor, c : Course | c in t.teaches implies no t.enrolled
-- div,1
all p: Professor | all s: teaches.(p.teaches) | no (s.enrolled & p.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor, c : p.teaches | all s : Student | s in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,14
all p: Professor | no (enrolled.(p.teaches) & enrolled.(p.enrolled))
-- div,1
all p : Professor | no p.teaches & enrolled.(p.enrolled).enrolled
-- div,3
all p: Professor | all s: enrolled.(p.teaches) | no (s.enrolled & p.enrolled)
-- div,1
all p1 : Professor |
  		all p2 : Person |
  			(some p2.enrolled & p1.enrolled) implies (no p1.teaches & p2.enrolled)
-- div,8
all x,y:Person| all z,w:Course | (z in x.enrolled and z in y.enrolled and x in Professor and w in x.teaches) implies w not in y.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Professor| all c:t.teaches| all s:Student| c not in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Professor | all p1: Professor - p | no p.enrolled & p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
no p1 : Professor | no p2 : Professor | p2 in p1.^(teaches.~enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor | no p2 : Professor | p2 in p1.^(teaches.~enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,4
all p: Professor | no (enrolled.(p.teaches) & enrolled.(p.enrolled)-p)
-- div,2
all p: Professor | no (((enrolled.(p.teaches)-p) & (enrolled.(p.enrolled)-p)))
-- div,1
all p : Professor | all p2 : Person - p | some p.enrolled & p2.enrolled implies no p.teaches & p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,5
all p1,p2 : Professor | p1 != p2 implies p1.enrolled not in p2.teaches
-- div,1
all x : Professor | all y : Professor-x | y.enrolled not in x.teaches
-- div,1
all p : Professor | all c : Professor - p | c.enrolled not in p.teaches
-- div,1
all p : Professor | all c : Professor - p | c.enrolled not in p.teaches and p.enrolled not in c.teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | all p : teaches.c | p.teaches not in teaches.c.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,8
all p: Professor | all c: p.teaches | c not in (Person-Student).enrolled
-- div,1
all prof : Professor, c : Course, pr : Person-Student | c in prof.teaches implies (c not in pr.enrolled)
-- div,1
all p1:Professor | all c:Course | c in p1.teaches implies (all p:Person-Student | c not in p.enrolled )
-- div,5
all p1:Professor,p2:Person |all c1:Course | p1->c1 in teaches and p2->c1 in enrolled implies p2 in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor | some t:Professor|all c:t.teaches | c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Person, y : Course | x ->y not in enrolled implies x in Professor
-- div,1
-- equiv pair end
-- equiv pair start,5
all p: Professor | all c: p.teaches | c not in (Person-Student-p).enrolled
-- div,1
all p : Professor | (all col : Person - Student - p |  no (p.teaches & col.enrolled))
-- div,1
all p1:Professor |all p:Person-Student-p1 | all c:Course | c in p1.teaches implies c not in p.enrolled
-- div,1
all p1:Professor | all c:Course | c in p1.teaches implies (all p:Person-Student-p1 | c not in p.enrolled )
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Professor | all s:enrolled.(p.teaches) | p not in enrolled.(s.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course, p: Professor | c in p.teaches => c.grades[p] not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1, p2 : Professor, c : Course | c in p1.teaches iff c not in p2.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,1
one p1:Professor | one c1:Course | c1 in p1.teaches implies  c1 in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
one p1:Professor | all c1:Course | c1 in p1.teaches implies  c1 in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1:Professor | all c1:Course | c1 in p1.teaches implies  c1 in p1.enrolled
-- div,1
all p1:Professor | all c1,c2:Course | c1 in p1.teaches implies  c1 in p1.enrolled
-- div,1
all p1,p:Professor | all c1,c2:Course | c1 in p1.teaches implies  c1 in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p:Professor, c:Course | p in teaches.c implies enrolled.c not in Professor
-- div,2
all c : Course | all p : Professor | p in c.~(teaches) implies c.~(enrolled) not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor | no p.teaches & (enrolled.(p.enrolled) & Professor).enrolled
-- div,1
all p1 : Professor |
  		all p2 : Professor |
  			(some p2.enrolled & p1.enrolled) implies (no p1.teaches & p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Professor, c:Course | p in teaches.c implies enrolled.c not in Professor-p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Person, p2 : Professor | p1 != p2 implies p1.enrolled not in p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor, p2 : Person | (p1 != p2) => (p1.teaches & p2.teaches = none)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Professor, c : Course | p1 in teaches.c <=> c not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,14
all p:Person -Student | all col :Person-Student-p | no (p.teaches & col.enrolled)
-- div,14
-- equiv pair end
-- equiv pair start,1
all p : Professor | all c : p.teaches | all p2 : Professor | p2.enrolled not in c
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj s,j:Person |all c:s.teaches |  c in j.enrolled implies j not in Professor
-- div,1
all x: Person, z : Person -x ,y : Course | x -> y in teaches  and z in Professor implies z -> y not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2:Professor | one c:Course | c in p1.teaches implies c not in  p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1:Professor, p2:Professor, c:Course| p1 in enrolled.c and p2 not in teaches.c
-- div,2
-- equiv pair end
-- equiv pair start,1
all disj p,p1: Professor | p.teaches in p1.teaches => p.enrolled not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person-Student, c:Course | p in teaches.c implies Professor not in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person-Student, c:Course | p in teaches.c implies enrolled.c not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Professor | all disj c,cc: Course | p in c.~teaches => p not in cc.~enrolled
-- div,1
all p1: Professor | all disj c,cc: Course | p1 in c.~teaches => p1 not in cc.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
no Student & Professor
    all disj p1, p2 : Professor | no p1.enrolled & p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj p,pp: Person | lone (p.teaches & pp.teaches) => p.enrolled not in pp.teaches
-- div,1
all disj p,pp: Person | lone (p.teaches & pp.teaches) => (p.enrolled not in pp.teaches && pp.enrolled not in p.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,35
all x, y : Professor | some (x.teaches & y.teaches) implies no (x.teaches & y.enrolled)
-- div,2
all p, col : Professor  | some (col.teaches & p.teaches) implies no (col.enrolled & p.teaches)
-- div,1
all p1,p2 : Professor | some p1.teaches & p2.teaches implies no p1.enrolled & p2.teaches
-- div,4
all t1,t2 : Professor | some t1.teaches & t2.teaches implies no (t1.teaches & t2.enrolled)
-- div,2
all p1, p2: Professor | p1.enrolled & p2.teaches != none implies p1.teaches & p2.teaches = none
-- div,1
all p: Professor | all c: Professor | some (p.teaches & c.teaches) => no (p.teaches & c.enrolled)
-- div,2
all p1 : Professor |
  		all p2 : Professor |
  			(some p2.teaches & p1.teaches) implies (no p1.teaches & p2.enrolled)
-- div,1
all x, y : Professor | some (x.teaches & y.teaches) implies no (x.teaches & y.enrolled) and no (y.teaches & x.enrolled)
-- div,1
all p1, p2 : Professor | all c: Course | c in p1.teaches and c in p2.teaches implies no p1.teaches & p2.enrolled
-- div,2
all p1,p2 : Professor | some (p1.teaches & p2.teaches) implies (all c : Course | c in p1.teaches implies c not in p2.enrolled)
-- div,1
all p1,p2 : Professor | ((p1.teaches) & (p2.teaches) != none) implies ((p1 not in p2.(teaches.~enrolled)) and (p2 not in p1.(teaches.~enrolled)))
-- div,1
all p:Professor, c : p.teaches, p2:Professor | p2 in teaches.c implies (all c2:Course | p in teaches.c2 implies p2 not in enrolled.c2)
-- div,1
all p1, p2 : Professor, c:Course | c in p1.teaches and c in p2.teaches implies (all c2:Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,2
all p1,p2 : Professor | all c:Course | c in p1.teaches and c in p2.teaches implies (all c2:Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,1
all p1:Professor, p2:Professor, c:Course | c in p1.teaches and c in p2.teaches implies (all c2:Course | c2 in p1.teaches implies c2 not in p2.enrolled)
-- div,2
all p1:Professor, p2:Professor, c:Course | p1 in teaches.c and p2 in teaches.c implies (all c2:Course | p1 in teaches.c2 implies p2 not in enrolled.c2)
-- div,11
-- equiv pair end
-- equiv pair start,1
all p1,p2:Professor | all c1,c2:Course | c1 in p1.teaches implies c2 not in  p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | some p1.teaches & p2.teaches implies p1.enrolled not in p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p,p1: Professor | all c: Course | p in c.~teaches => p1.enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => #(p1.enrolled & p2.enrolled)=0
-- div,2
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => p1.enrolled & p2.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2 : Professor, c : Course | p1 in teaches.Course implies c not in p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor |
all c1, c2 : Course |
c1 in p.teaches and c2 in p.enrolled and c1 = c2
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2:Professor | some (p1.enrolled & p2.teaches) implies no (p1.teaches & p2.enrolled)
-- div,1
all p1,p2:Professor, e1: p1.enrolled, e2: p2.enrolled| e1 in p2.teaches implies e2 not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Professor | (p1.teaches not in p2.enrolled) and (p2.teaches not in p1.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Professor, c:Course|(some y:Professor-x| x->c in teaches implies y->c not in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
no disj p1, p2: Professor | p1.teaches & p2.teaches != none => p1 not in p2.teaches.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,7
all p1:Professor, p2:Professor | some c:Course | p1 in teaches.c implies p2 not in enrolled.c
-- div,1
all p1:Professor, p2:Professor| some c:Course | p1 in enrolled.c implies p2 not in teaches.c
-- div,2
all p1:Professor, p2:Professor | some c:Course | p1->c in teaches implies p2->c not in enrolled
-- div,1
all p1:Professor,p2:Person |some c1:Course | p1->c1 in teaches and p2->c1 in enrolled implies p2 not in Professor
-- div,1
all x: Professor | all y: Person | some z : Course | x in teaches.z and y in enrolled.z implies y not in Professor
-- div,1
all p1:Professor | all p:Person | some c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Professor, p2:Professor, c:Course | p1!=p2 and p1 in teaches.c and p2 not in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1, p2: Professor | some (p2.teaches & p1.teaches) => p1.enrolled & p2.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p,p1: Professor | all c: Course | p.teaches = p1.teaches => p.enrolled not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | p1!=p2 and p1.teaches in p2.teaches implies (no p1.enrolled & p2.teaches )
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Professor, c : Course | c in t.teaches implies not (all t2 : Professor | c in t2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,6
all p: Professor | all p1: Professor - p | some p1.enrolled & p.teaches =>  no p1.teaches & p.enrolled
-- div,2
all p: Professor | all p1: Professor - p | some (p1.teaches & p.enrolled) =>  no (p1.enrolled & p.teaches)
-- div,3
all p: Professor | (all col: Professor - p | some (col.teaches & p.enrolled) implies  no (col.enrolled & p.teaches))
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all p1 : Person | all c : p1.enrolled | c in p.enrolled implies p.teaches not in c
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Professor, col : Professor - p | no (col.enrolled & p.teaches) and no (col.teaches & p.teaches)
-- div,1
all p:Professor, col:Professor - p, c:Course | c in p.teaches => col not in enrolled.c and c not in col.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor | all p2 : Professor - p1 | all c : Course | c in p2.enrolled and c not in p1.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Professor | p1!=p2 and (lone p1.teaches & p2.teaches) implies (no p1.enrolled & p2.teaches )
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Professor, p2:Professor | some c:Course | p1!=p2 and p1 in teaches.c implies p2 not in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all p2 : Person - p | some p.projects & p2.projects implies no p.teaches & p2.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all prof : Professor, c : Course, pr : Person-Professor | c in prof.teaches implies (c not in pr.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Professor,p2:Person |some c1:Course | p1->c1 in teaches and p2->c1 in enrolled implies p2 in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2:Professor | all c1,c2:Course | c1 in p1.teaches and c2 in p2.enrolled implies c1!=c2 and p1 != p2
-- div,1
-- equiv pair end
-- equiv pair start,6
all x, y : Professor | some z: Course | x in teaches.z and y in teaches.z implies no (x.teaches & y.enrolled)
-- div,1
all p, col: Professor | some c : Course | (c in p.teaches and c in col.teaches) implies (all co : Course | co in p.teaches implies co not in col.enrolled)
-- div,2
all s1,s2 : Professor | some c1 : Course | all c2 : Course | c1 in s1.teaches and c1 in s2.teaches and c2 in s2.teaches implies c2 not in s2.enrolled
-- div,1
all s1,s2 : Professor | some c1 : Course | c1 in s1.teaches and c1 in s2.teaches implies (all c2 : Course | c2 in s1.teaches implies c2 not in s2.enrolled)
-- div,1
all p, col: Professor | some c1, c2 : Course | (c1 in p.teaches and c2 in col.teaches) implies (all co : Course | co in p.teaches implies co not in col.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,4
all x, y : Professor | some z: Course | x in teaches.z and y in teaches.z implies no (x.teaches & enrolled.y)
-- div,1
all x, y : Professor | some z: Course | x in teaches.z and y in teaches.z implies no (teaches.x & y.enrolled)
-- div,1
all x, y : Professor | some z: Course | some (x.teaches & y.teaches) implies no (x.teaches & enrolled.y) and no (y.teaches & enrolled.x)
-- div,1
all x, y : Professor | some z: Course | x in teaches.z and y in teaches.z implies no (x.teaches & enrolled.y) and no (y.teaches & enrolled.x)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | some c : Professor - p | some (p.teaches & c.teaches) implies no (p.teaches & c.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p,q : Professor | all pt : p.teaches | (all qt : q.teaches | pt not in q.enrolled and qt not in p.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1,p2: Professor | all c: Course | c in p1.teaches && c in p2.teaches => p1.enrolled not in p2.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all c : p.enrolled | all colleagues : enrolled.c - p | p.teaches not in colleagues.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Professor | all p1 : Person | all c : p1.enrolled | c in p.enrolled implies p.teaches not in p1.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor |
  		all p2 : Person |
  			(some p2.enrolled & p1.enrolled) <=> (no p1.teaches & p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Professor | all p:Person |  all c1:Course | c1 in p1.teaches implies c1 not in p.enrolled and p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Professor, c : Course | c in t.teaches implies (all t2 : Professor | c in t2.teaches && c not in t2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1, p2: Professor | some c: Course| p1 in c.~teaches && p2 in c.~teaches => p1.enrolled & p2.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,2
all p,p1:Person|  all c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,2
-- equiv pair end
-- equiv pair start,1
all disj p,pp: Person | some (p.teaches & pp.teaches) => (p.enrolled not in pp.teaches && pp.enrolled not in p.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Professor, z: Person, y: Course | x in teaches.y and z in enrolled.y implies z not in Professor and z in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor |
  		all p2 : Student |
  			(some p2.enrolled & p1.enrolled) implies (no p1.teaches & p2.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x :Professor| all y:Person| all z:Course | (z in x.enrolled and z in y.enrolled) implies y.enrolled not in x.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Professor, p2:Professor, s:Student, c:Course | s not in teaches.c and p1 in teaches.c implies p2 not in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,3
all p1,p2 : Professor | p1 != p2 and some p1.teaches & p2.teaches
  		implies no p1.teaches & (enrolled.(p1.enrolled) ).enrolled
-- div,2
all p1,p2 : Professor | all c: Course | p1 != p2 and some p1.teaches & p2.teaches
  		implies no p1.teaches & (enrolled.(p1.enrolled) ).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Professor | all y: Person | some z : Course | x in teaches.z and y in enrolled.z implies y not in Professor and y in Student
-- div,1
-- equiv pair end
-- equiv pair start,6
all p : Professor, col : Professor - p | some c : Course | c in col.teaches and c in p.teaches implies no (col.enrolled & p.teaches)
-- div,1
all p: Professor, col : Professor - p | some c : Course | (c in p.teaches and c in col.teaches) implies no p.teaches & col.enrolled
-- div,1
all p : Professor | all col : Professor - p | some c : Course | c in col.teaches and c in p.teaches implies no (col.enrolled & p.teaches)
-- div,1
all p : Professor | (all col : Professor - p | some c : Course | c in p.teaches and c in col.teaches implies no (col.enrolled & p.teaches))
-- div,2
all p: Professor, col : Professor - p | some c : Course | (c in p.teaches and c in col.teaches) implies (all co : Course | co in p.teaches implies co not in col.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Professor | all p:Person | one c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
some p:Person| all p1:Professor | all c1:Course | c1 in p1.teaches and c1 in p.enrolled implies p not in Professor and p1 in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all x, y : Professor | some z: Course | some (x.teaches & y.teaches) implies no (x.teaches & y.enrolled) and no (y.teaches & x.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,1
all professor : Professor | all colleagues : Professor | all course : Course | professor->course in teaches and colleagues->course in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p, col: Professor | some c : Course | (c in p.teaches and c in col.teaches) implies (all co : Course | co in p.teaches implies co not in col.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y:Person| all z:Course | (z in x.enrolled and z in y.enrolled and x in Professor) implies (x.teaches not in y.enrolled and y.enrolled not in x.teaches)
-- div,1
all x :Professor| all y:Person| all z:Course | (z in x.enrolled and z in y.enrolled) implies (x.teaches not in y.enrolled and y.enrolled not in x.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y:Person | one c:Course| x->c in teaches and y-> c in teaches and x in Professor and y in Professor implies x-> c not in enrolled or y->c not in enrolled
-- div,1
-- equiv pair end
