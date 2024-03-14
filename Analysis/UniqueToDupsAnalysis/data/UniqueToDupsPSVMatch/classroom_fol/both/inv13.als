no Student.Tutors
-- div,1
no Student & Student.Tutors
-- div,1
all p: Person | p in Teacher
-- div,1
no Student.Tutors and no Teacher.~Tutors
-- div,1
all s:Student | s not in Person.^Tutors
-- div,1
all s:Student | s not in Person.^~Tutors
-- div,1
all t:Teacher, s:Student | t->s in Tutors
-- div,7
all s: Student, t:Teacher | t->s in Tutors
-- div,2
(some t : Teacher, s : Student | s->t in Tutors)
-- div,1
all t:Teacher,s:Student | s->t not in Tutors
-- div,4
(some t : Teacher, s : Student | t->s in Tutors)
-- div,2
some s : Student, t : Teacher | t -> s in Tutors
-- div,1
Teacher in Person.~Tutors and Student in Person.Tutors
-- div,1
all p1 : Teacher , p2 : Student | p1 -> p2 in Tutors
-- div,1
Teacher in Person.~Teaches and Student in Person.Teaches
-- div,1
Teacher in Person.^~Tutors and Student in Person.^Tutors
-- div,1
Student in Person.^Tutors and Teacher in Person.^~Tutors
-- div,1
all t:Teacher | all s:Student | t->s in Tutors
-- div,2
Teacher in Person.^~Teaches and Student in Person.^Teaches
-- div,1
some t:Teacher | all s:Student | t->s in Tutors
-- div,1
all p : Person - Teacher, t : Teacher | t -> p in Tutors
-- div,1
all s : Student | some t : Teacher | t -> s in Tutors
-- div,1
some  t:Teacher | some s:Student | t->s in Tutors
-- div,1
no Student & Student.Tutors and no Teacher & Teacher.~Tutors
-- div,3
all t:Teacher, s:Student | t->s in Tutors and t!=s
-- div,1
no Student & Student.~Tutors and no Teacher & Teacher.~Tutors
-- div,3
all t:Teacher, s:Student | (t.Tutors & s.Tutors) = none
-- div,1
all p: Teacher | p.Tutors in Student and p.Teaches in Student
-- div,1
(some t,s : Person | s->t in Tutors implies( t in Teacher and s in Student))
-- div,1
( some t,s : Person | t->s in Tutors implies t in Teacher and s in Student)
-- div,2
all t:Teacher, s:Student | t->s in Tutors and s->t not in Tutors
-- div,1
all t:Teacher,s:Student | s->t not in Tutors and t->s in Tutors
-- div,1
(all t : Teacher, s : Student | t->s in Tutors implies s->t not in Tutors)
-- div,1
(some t : Teacher, s : Student | s->t in Tutors and t->s not in Tutors)
-- div,1
all t:Teacher,s:Student | s->t not in Tutors and t->t not in Tutors
-- div,1
(some t : Teacher, s : Student | t->s in Tutors and s->t not in Tutors)
-- div,2
(some t : Teacher, s : Student | t->s in Tutors implies s->t not in Tutors)
-- div,3
all p: Teacher | p.Tutors in Student and p.Teaches in Class.Groups[p]
-- div,1
all p1, p2 : Person | p1 -> p1 in Tutors implies (p1 in Teacher and p2 in Student)
-- div,1
all p1,p2 : Person | (p1->p2 in Tutors) implies p2 in Teacher and p1 in Student
-- div,1
all p1, p2 : Person
  		| p1->p2 in Tutors implies p1 in Teacher and p2 in Teacher
-- div,1
some p1,p2 : Person | (p1->p2 in Tutors) implies p1 in Teacher and p2 in Student
-- div,3
all p : Person
  		| (p in Teacher implies all p2 : Person | p2->p not in Tutors)
-- div,1
some p1,p2 : Person | (p1->p2 in Tutors) implies p2 in Teacher and p1 in Student
-- div,1
all t:Teacher | all s:Student | t->s in Tutors and  s->t not in Tutors
-- div,1
all p: Teacher | p.Tutors in Student and p.Teaches in Class.Groups[Student]
-- div,1
all s:Student, t:Teacher | s not in Person.^Tutors and t not in Person.Tutors
-- div,1
all t: Teacher | all s: Student | t->s in Tutors and not s->t in Tutors
-- div,3
all s:Student, t:Teacher | s not in Person.^Tutors and t not in Person.^Tutors
-- div,2
all t:Teacher,s:Student,c:Class | t->c in Teaches and t->s in Tutors
-- div,1
all s:Student, t:Teacher | s not in Person.*Tutors and t not in Person.*Tutors
-- div,1
(some t : Teacher, s : Student | t->s in Tutors implies t in Teacher and s in Student)
-- div,1
all p:Person,t:Teacher,s:Student | s->p not in Tutors and p->t not in Tutors
-- div,1
all t:Teacher,s:Student,p:Person | p->t not in Tutors and s->p not in Tutors
-- div,1
all s:Student,t:Teacher | s not in Person.^~Tutors and t not in Person.^Tutors
-- div,1
all s:Student, t:Teacher | s not in Person.^Tutors and t not in Person.^~Tutors
-- div,1
some p1:Person, p2:Person | p1 -> p2 in Tutors implies p1 in Teacher and p2 in Student
-- div,3
some p1:Person, p2:Person | p1 -> p2 in Tutors iff (p1 in Teacher and p2 in Student)
-- div,1
all t1:Teacher,t2:Teacher,s:Student | s->t1 not in Tutors and t1->t2 not in Tutors
-- div,1
all t:Teacher, s:Student | t->s in Tutors and t->t not in Tutors and s->s not in Tutors
-- div,1
all t:Teacher,s:Student | s->t not in Tutors and t->t not in Tutors and s->t not in Tutors
-- div,1
all p1:Person | isTutored [p1] implies p1 in Student
}

pred isTutored (p1:Person){
	some p2:Person | p1->p2 in Tutors
-- div,1
all s:Student, t:Teacher | s not in Person.Tutors.^Tutors and t not in Person.~Tutors.^~Tutors
-- div,2
all t:Teacher,s:Student,c:Class | t->c in Teaches and t->s in Tutors and s->c not in Teaches
-- div,1
all p:Person,t:Teacher,s:Student | s->p not in Tutors and p->t not in Tutors and t->s in Tutors
-- div,1
all t:Teacher,s:Student,c:Class | t->c in Teaches and t->s in Tutors and not s->c in Teaches
-- div,1
all p1, p2 : Person | p1 -> p1 in Tutors implies (p1 in Teacher and 
      p1 not in Student and p2 in Student and p2 not in Teacher)
-- div,2
all t:Teacher, s:Student | (t.Tutors & s.Tutors) = none
    all t:Teacher, s:Student | (t.Teaches & s.Teaches) = none
-- div,1
all p : Person
  		| (p in Teacher implies all p2 : Person | p2->p not in Tutors) and
  		  (p in Student implies all p2 : Person | p->p2 not in Tutors)
-- div,1
all p1, p2:Person | (isTutored [p1] implies p1 not in Teacher) and (isTutor [p2] implies p2 not in Student)
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
}

pred isTutor (p1:Person){
	some p2:Person | p1->p2 in Tutors
-- div,1
