enrolled.Course in Student
-- div,11
enrolled in Student -> Course
-- div,4
no enrolled.Course - Student
-- div,1
no (Person-Student).enrolled
-- div,7
(Person-Student).enrolled = none
-- div,2
all p : enrolled.Course | p in Student
-- div,3
all c:Course| enrolled.c in Student
-- div,13
all x : Course | enrolled.x in Student
-- div,1
all u : enrolled.Course | u in Student
-- div,1
all x:Person-Student | no x.enrolled
-- div,41
all p:Person-Student| no p.enrolled
-- div,32
all s:Person-Student | no s.enrolled
-- div,5
all p :Person-Student | #p.enrolled =0
-- div,3
all x: Person - Student | x.enrolled = none
-- div,1
all p:Person | p not in Student implies no p.enrolled
-- div,3
all p:Person| some p.enrolled => p in Student
-- div,20
all x: Person | some x.enrolled implies x in Student
-- div,4
all p:Person | not (no p.enrolled) implies p in Student
-- div,2
all p : Person | #p.enrolled>0 implies p in Student
-- div,5
all x: Person | #x.enrolled > 0 => x in Student
-- div,2
all s : Person | s not in Student implies #(s.enrolled)=0
-- div,1
all p : Person | p not in Student implies p.enrolled=none
-- div,5
all p : Person | p.enrolled != none => p in Student
-- div,2
all x: Person | x not in Student implies #(x.enrolled)=0
-- div,2
all x : Person | x in enrolled.Course implies x in Student
-- div,2
all p:Person| p in enrolled.Course implies p in Student
-- div,3
all professor : Person - Student | no professor.enrolled
-- div,1
all c : Course | all p : enrolled.c | p in Student
-- div,1
all x: Person | x not in Student => x not in Course.~enrolled
-- div,1
all p: Person | p not in Student => p not in Course.~enrolled
-- div,4
all c : Course, p : Person | c in p.enrolled implies p in Student
-- div,1
all p:Person, c:Course | p in enrolled.c => p in Student
-- div,13
all p : Person, c : Course | c in p.enrolled => p in Student
-- div,17
all x:Person, c:Course | x in enrolled.c implies x in Student
-- div,1
all p:Person, c:Course| some p.enrolled => p in Student
-- div,1
all x: Person, y: Course | y in x.enrolled implies x in Student
-- div,3
all c:Course,p:Person| p in enrolled.c => p in Student
-- div,3
all c : Course, e : Person | e in enrolled.c => e in Student
-- div,1
all u:Person, c:Course| u->c in enrolled implies u in Student
-- div,1
all x:Person,y:Course| x->y in enrolled implies x in Student
-- div,6
all p:Person, c:Course| p->c in enrolled implies p in Student
-- div,2
all x:Person, c:Course| x->c in enrolled implies x in Student
-- div,2
all x: Person , y: Course | (x not in Student) implies y not in x.enrolled
-- div,1
all p : Person - Student | all c : Course | c not in p.enrolled
-- div,1
all x: Person - Student | all c: Course| c not in x.enrolled
-- div,1
all p: Person, c: Course | p in c.~enrolled implies p in Student
-- div,1
all p, e: univ | p in Person and p->e in enrolled implies p in Student
-- div,1
all p: Person, c: Course | p not in Student => p not in c.~enrolled
-- div,3
all x: Person, y: Course | x not in Student => x not in y.~enrolled
-- div,2
all p : Person, c : Course | p in enrolled.Course => p in Student
-- div,1
all c : Course | all p : Person-Student | not p in enrolled.c
-- div,1
all c : Course | all p : Person-Student | no p & enrolled.c
-- div,2
all p: Person | all c: Course| p in enrolled.c implies p in Student
-- div,7
all x : Person | all y : Course | x in enrolled.y implies x in Student
-- div,3
all x: Person | all c: Course | c in x.enrolled => x in Student
-- div,3
all p:Person | all c:Course | c in p.enrolled implies p in Student
-- div,16
all p:Person| all c:Course | p->c in enrolled implies p in Student
-- div,4
all x : Person | all y : Course | x not in Student implies x not in enrolled.y
-- div,2
all x: Person | all y: Course | (x not in Student) implies y not in x.enrolled
-- div,1
all p1 : Person | all c1 : Course | c1 in p1.enrolled implies p1 in Student
-- div,1
all p1: Person | all c1 : Course | p1->c1 in enrolled implies p1 in Student
-- div,3
all person : univ | all courses : Course | person->courses in enrolled implies person in Student
-- div,2
