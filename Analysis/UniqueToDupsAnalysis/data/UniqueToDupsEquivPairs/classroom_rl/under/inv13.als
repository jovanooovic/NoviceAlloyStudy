-- equiv pair start,1
Teacher.Tutors = Person.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p.Tutors in Student
-- div,1
-- equiv pair end
-- equiv pair start,3
all s:Student , t:Teacher |  Tutors.s in Teacher
-- div,2
all t : Teacher, s : Student | Tutors:>Student in Teacher<:Tutors
-- div,1
-- equiv pair end
-- equiv pair start,3
all p: Person | (some p.Tutors) => (p in Teacher)
-- div,2
all p1, p2:Person | p1->p2 in Tutors implies p1 in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,5
Teacher.Tutors in Student
  	Tutors.Student in Teacher
-- div,4
Teacher.Tutors in Student and Student.~Tutors in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
Teacher.Tutors = Person.Tutors and Tutors.Student = Tutors.Person
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher, s : Student | Teacher<:Tutors  in Tutors:>Student
-- div,1
-- equiv pair end
-- equiv pair start,3
all t : Teacher, s : Student | t.Tutors in Student and Tutors.s in Teacher
-- div,1
all s: Student , t:Teacher | t.Tutors in Student and Tutors.s in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,2
all p : Person, t : Teacher | p->t in Tutors => p in Teacher && t in Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person, t : Teacher | t->p in Tutors => t in Teacher and p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
not some s:Student | all p:Person | s->p in Tutors and (not some t:Teacher | p->t in Tutors)
-- div,1
-- equiv pair end
