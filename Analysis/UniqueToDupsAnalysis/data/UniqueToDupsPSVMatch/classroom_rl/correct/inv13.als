Tutors in Teacher->Student
-- div,18
Teacher<:Tutors:>Student = Tutors
-- div,2
Tutors in Teacher <: Tutors :> Student
-- div,6
Tutors.Person in Teacher 
  Person.Tutors in Student
-- div,7
Person.Tutors in Student
  	Tutors.Person in Teacher
-- div,15
Teacher.Tutors in Student
  	Tutors.Person in Teacher
-- div,4
Person.Tutors in Student and Person.~Tutors in Teacher
-- div,1
Teacher <: Tutors = Tutors && Tutors :> Student = Tutors
-- div,1
(no (Person-Teacher).Tutors) and (no (Tutors.(Person-Student)))
-- div,11
Person.^~Tutors in Teacher and Person.^Tutors in Student
-- div,1
all p:Person | p.Tutors in Student and Tutors.p in Teacher
-- div,1
all p : Person, t : p.Tutors | p in Teacher && t in Student
-- div,2
all p1,p2:Person | p1.Tutors in Student and Tutors.p2 in Teacher
-- div,2
all t,s:Person | t->s in Tutors implies t in Teacher and s in Student
-- div,5
all s, t: Person | t->s in Tutors implies s in Student and t in Teacher
-- div,1
all p, p1 : Person | p->p1 in Tutors implies (p in Teacher and p1 in Student)
-- div,1
all p : Person, t : p.Tutors | p in Teacher && p.Tutors in Student
-- div,2
all p1,p2:Person | p1->p2 in Tutors implies p1 in Teacher and p2 in Student
-- div,3
all t,s:Person | some  Tutors.s <:t implies s in Student and t in Teacher
-- div,1
all t,s:Person | some Tutors.s:>t implies t in Teacher and s in Student
-- div,3
all p : Person | some p.Tutors implies p in Teacher  and p.Tutors in Student
-- div,1
all p : Person, t : p.Tutors | p->t in Tutors => p in Teacher && t in Student
-- div,2
all p: Person | {((some p.Tutors) => (p in Teacher)) ((some Tutors.p) => (p in Student))}
-- div,1
all p : Person { some p.Tutors implies p in Teacher }
  	all p : Person { some Tutors.p implies p in Student }
-- div,3
