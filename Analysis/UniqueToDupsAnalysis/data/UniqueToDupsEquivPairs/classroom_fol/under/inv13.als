-- equiv pair start,3
Person.^~Tutors in Teacher
-- div,1
all x, y : Person | x->y in Tutors implies x in Teacher
-- div,1
all p,pp: Person | p->pp in Tutors implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher | t.Tutors in Student
-- div,1
all p: Teacher | p.Tutors in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher | all s: Student | t.Tutors in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
Teacher in Person.^*Tutors and Student in Person.*Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | all s: Student | p->s in Tutors implies p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | t.Tutors in Student and all s : Student | Tutors.s in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
not some p1,p2:Person | p1->p2 in Tutors and not p1 in Teacher and not p2 in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1:Person | isTutored [p1] implies p1 in Student
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2:Person | isTutored [p1] implies p1 in Student and isTutor [p2] implies p2 in Teacher
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
}

pred isTutor (p1:Person){
	some p2:Person | p1->p2 in Tutors
-- div,1
-- equiv pair end
