all t:Teacher | t
-- div,1
all t: Teacher | t.Tutors
-- div,1
no Student in Person.Tutors
-- div,1
all t:Teacher  | t in Tutors
-- div,1
no Student in Person.^(~Tutors)
-- div,1
all t: Teacher | t.Tutors.Student
-- div,1
all s:Student |no s in Person.^~Tutors
-- div,1
all t:Teacher , s:Student | t in Tutors
-- div,1
all p: Person | p in Teacher and p.Tutors
-- div,1
all t: Teacher | all s: Student | t.Tutors
-- div,2
Tutors in Student and Tutors not in Teacher
-- div,1
all t : Teacher, s : Person | t->s in s.Tutors
-- div,1
all p:Person | p in Tutors implies p in Teacher
-- div,4
all p: Teacher | p.Tutors in Student and Groups[p]
-- div,1
all t: Teacher | all s: Student | t->s and not s->t
-- div,1
all t: Teacher | all s: Student | t.Tutors and no s.Tutors
-- div,1
all t:Teacher , s:Student | t in Tutors and !(s in Tutors)
-- div,1
all t: Teacher | all s: Student | t.Tutors and not s.Tutors
-- div,2
all t:Teacher , s:Student | t in Tutors and not (s in Tutors)
-- div,1
all x, y : Person | x -> y implies x in Teacher and y in Student
-- div,1
all t : Teacher | all s : Student | t in Tutors and not s in Tutors
-- div,1
all t: Teacher | all s: Student | t->s in Tutors and no s->t in Tutors
-- div,1
all t: Teacher | all s: Student | t->s in Tutors and (not s->t) in Tutors
-- div,1
all p1,p2 : Person | p1->p2 in Tutors implies p1 in Teaches and p2 in Student
-- div,1
all p1,p2 : Person | p1->p2 in Tutors implies p1 in Teaches and p2 in Students
-- div,1
all s:Student, t:Teacher | s not in Person.Tutors.^Tutors and t not in Person.~Tutors^~Tutors
-- div,1
all p1, p2 : Person, ps : set Person | (p1->ps in Tutors and p2 in Tutors) => (p1 in Teacher and p2 in Student)
-- div,1
all p1, p2 : Person, ps : set Person | (p1->ps in Tutors and p2 in ps) => (p1 in Teacher and p2 in Student)
-- div,1
