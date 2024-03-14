no Person.Tutors
-- div,1
no Person.^Tutors
-- div,1
no Person.^~Tutors
-- div,1
all p: Person | p in Teacher and p.Tutors in Student
-- div,2
all p1, p2 : Person | p1 -> p1 in Tutors and (p1 in Teacher and p2 in Student)
-- div,1
all p1, p2 : Person | p1 -> p1 in Tutors and (p1 in Teacher and 
      p1 not in Student and p2 in Student and p2 not in Teacher)
-- div,1
all p1, p2: Person | p1->p2 in Tutors => (p1 in Teacher and p1 not in Student) and (p2 not in Teacher and p2 in Student)
-- div,1
all p1, p2 : Person | p1 -> p2 in Tutors implies (p1 in Teacher and 
      p1 not in Student and p2 in Student and p2 not in Teacher)
-- div,2
all p1, p2:Person | (isTutored [p1] implies p1 in Student and p1 not in Teacher) and (isTutor [p2] implies p2 in Teacher and p2 not in Student)
}

pred isTutored (p1:Person){
	some p2:Person | p2->p1 in Tutors
}

pred isTutor (p1:Person){
	some p2:Person | p1->p2 in Tutors
-- div,1
