(no Student in Person^(~Tutors))
-- div,1
all t:Teacher, s:Student | t->s in Toutors
-- div,1
all t : Teacher, s : Student | t->c in Tutors
-- div,1
all p:Person | p in Tutor implies p in Teacher
-- div,1
all t : Teacher, s : Person | t->s in s.tutors
-- div,1
all p1:Person | isTutored [p1] implies p1 in Student
-- div,2
(t->s in Tutos implies t in Teacher and s in Student)
-- div,1
all x, y : Person | x->y in Tutor implies x in Teacher
-- div,1
all t : Teacher,s : student, s : Person | t->s in s.Tutors
-- div,1
all t:Teacher , s:Student | t in Tutors and |(s in Tutors)
-- div,1
all t: Teacher | all s: Student | t.Tutors and not in s.Tutors
-- div,1
all p->P in Tutor | p in Teacher and (all s : P | s in Student)
-- div,1
(no Student & Person^(~Tutors)) and (no Teacher & Person^Tutors)
-- div,1
all p,pp: Person | p->pp in Tutors implies p in Teacher pp in Student
-- div,1
all p: Teacher | p.Tutors in Student and p.Teaches in Class.Groups[t]
-- div,1
all x, y Person | x->y in Tutors implies x in Teacher and y in Student
-- div,1
all p1,p2:Person | p1->p2 in Tutor => (p1 in Teacher and p2 in Student)
-- div,1
all x,y : Person | x->y in Tutors implies x in Teacher and y in Studente
-- div,1
all s,t in Person | t->s in Tutors implies t in Teacher and s in Student
-- div,2
all p,p1:Person | p->p1 in Tutors implies p in Teacher and p1 in Students
-- div,1
all x,y : Person | (x,y) in Tutors implies x in Teacher and y in Studente
-- div,1
all p1, p2
  		| p1->p2 in Tutors implies p1 in Teacher and p2 in Teacher
-- div,2
all p1,p2:Person | t->s in Tutors implies p1 in Teacher and p2 in Student
-- div,1
all p,p1:Person | p->p1 in Tutors implies p in Teachers and p1 in Students
-- div,1
all p1, p2:Person | p1->p2 in Tutors => (p1 in Teachers and p2 in Students)
-- div,1
all p1,p2 : Person | t->s in Tutors implies p1 in Teacher and p2 in Student
-- div,1
all p: Teacher | p.Tutors in Student and p.Teaches in Class.Groupss[Student]
-- div,1
all p1,p2:Person | p1->p2 in Tutors implies p1 in Teachers and p2 in Student
-- div,1
all t : Person | s : Person | t->s in Tutors -> (t in Teacher and s in Student)
-- div,2
all p1,p2 : Person | p1->p2 in Tutors implies p1 in Teachers and p2 in Students
-- div,2
all t : Person | s : Person | t->s in Tutors => (t in Teacher and s in Student)
-- div,2
all t : Teacher | t.tutors in Student and all s : Student | tutors.s in Teacher
-- div,1
(some p1:Person, p2:Person | p1 -> p2 in Tutors) iff (p1 in Teacher and p2 in Student)
-- div,1
all p1:Person | (isTutored [p1] implies p1 in Student
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
-- div,1
all f,l,u : File | f->l in link and f->u in link implies l = u 
  all p1,p2 : Person | p1->p2 in Tutors implies p1 in Teacher and p2 in Student
-- div,2
all p1:Person | (isTutored [p1] implies p1 in Student and isTutor [p2] implies p2 in Teacher
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
-- div,1
all p1:Person | isTutored [p1] implies p1 in Student and isTutor [p2] implies p2 in Teacher
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
}

pred isTutor (p1:Person){
	some p2:Person | p1->p2 in Tutors
-- div,1
