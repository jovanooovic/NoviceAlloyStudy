-- equiv pair start,215
teaches.Course in Professor
-- div,15
teaches in Professor -> Course
-- div,5
no (Person-Professor).teaches
-- div,6
no (teaches.Course - Professor)
-- div,1
(Person-Professor).teaches = none
-- div,2
all x : teaches.Course | x in Professor
-- div,2
all p : teaches.Course | p in Professor
-- div,2
all c:Course | teaches.c in Professor
-- div,9
all t : teaches.Course | t in Professor
-- div,1
all x:Person-Professor | no x.teaches
-- div,19
all t : Person - Professor | no t.teaches
-- div,1
all p:Person-Professor | no p.teaches
-- div,24
all s:Person-Professor | no s.teaches
-- div,4
all p : Person - Professor | #p.teaches=0
-- div,2
all p:Person | p not in Professor implies no p.teaches
-- div,3
all x: Person | some x.teaches implies x in Professor
-- div,2
all p:Person| some p.teaches => p in Professor
-- div,16
all p:Person | not (no p.teaches) implies p in Professor
-- div,1
all p : Person | #p.teaches>0 implies p in Professor
-- div,5
all student : Person - Professor | no student.teaches
-- div,2
all x: Person | #x.teaches > 0 => x in Professor
-- div,2
all x: Person | x not in Professor implies #(x.teaches)=0
-- div,3
all p : Person | p not in Professor implies p.teaches=none
-- div,4
all p : Person | p.teaches != none => p in Professor
-- div,1
all s : Person | s not in Professor implies #(s.teaches)=0
-- div,1
all p : Person | p in teaches.Course => p in Professor
-- div,2
all c : Course | all p : teaches.c | p in Professor
-- div,1
all p: Person | p not in Professor => p not in Course.~teaches
-- div,2
all p:Person,c:Course | p in teaches.c => p in Professor
-- div,9
all p:Person, c:Course| c in p.teaches implies p in Professor
-- div,9
all c : Course, p :Person | p in teaches.c => p in Professor
-- div,4
all c : Course, p : Person | c in p.teaches implies p in Professor
-- div,1
all x: Person, y: Course | y in x.teaches implies x in Professor
-- div,1
all p:Person, c:Course| p->c in teaches implies p in Professor
-- div,2
all x:Person, y:Course| x->y in teaches implies x in Professor
-- div,7
all u:Person, c:Course| u->c in teaches implies u in Professor
-- div,1
all x:Person, c:Course| x->c in teaches implies x in Professor
-- div,2
all x: Person , y: Course | (x not in Professor) implies (y not in x.teaches)
-- div,1
all x: Person - Professor |all c: Course| c not in x.teaches
-- div,1
all x: Person, y: Course | x not in Professor => x not in y.~teaches
-- div,2
all p: Person, c: Course | p not in Professor => p not in c.~teaches
-- div,1
all c : Course | all p : Person-Professor | no p & teaches.c
-- div,1
all x: Person, y: Course | not (x not in Professor) or x not in y.~teaches
-- div,1
all p: Person| all c: Course| p in teaches.c implies p in Professor
-- div,5
all x: Person | all c: Course | c in x.teaches => x in Professor
-- div,3
all x : Person | all y : Course | x in teaches.y implies x in Professor
-- div,2
all p:Person |all c:Course | c in p.teaches implies p in Professor
-- div,14
all p:Person | all c:Course | p->c in teaches implies p in Professor
-- div,4
all x : Person | all y : Course | x not in Professor implies x not in teaches.y
-- div,1
all p1 : Person | all c1 : Course | c1 in p1.teaches implies p1 in Professor
-- div,1
all p1: Person | all c1 : Course | p1->c1 in teaches implies p1 in Professor
-- div,2
all p : Person | some p.teaches implies p in Professor
  	all p : Person, c : Course | p->c in teaches implies p in Professor
-- div,1
all p : Person | some p.teaches implies p in Professor
  	all p : Person, c : Course | p->c in teaches implies p in Professor
  	all p : Person, c : Course | c in p.teaches => p in Professor
-- div,1
-- equiv pair end
