-- equiv pair start,103
Person.^Tutors in Student and Person.^~Tutors in Teacher
-- div,8
Person.^~Tutors in Teacher and Person.^Tutors in Student
-- div,10
all t, s : Person | t->s in Tutors => (t in Teacher and s in Student)
-- div,7
all x,y : Person | x->y in Tutors implies x in Teacher and y in Student
-- div,6
all a, b : Person | a -> b in Tutors implies a in Teacher and b in Student
-- div,1
all p,p1:Person | p->p1 in Tutors implies p in Teacher and p1 in Student
-- div,6
all p,pp: Person | p->pp in Tutors implies p in Teacher and pp in Student
-- div,1
all p1,p2:Person | p2 in p1.Tutors implies p1 in Teacher and p2 in Student
-- div,1
all p1,p2:Person | p1->p2 in Tutors => p1 in Teacher and p2 in Student
-- div,56
all p:Person, p2: Person | p->p2 in Tutors implies (p in Teacher and p2 in Student)
-- div,1
all p1:Person, p2:Person | p1->p2 in Tutors implies p1 in Teacher and p2 in Student
-- div,4
all p: Person | all s: Person | p->s in Tutors implies p in Teacher and s in Student
-- div,2
-- equiv pair end
