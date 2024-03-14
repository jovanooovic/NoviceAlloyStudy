all
-- div,1
(Tutors.Person in Teacher
-- div,1
Tutor in Teacher -> Student
-- div,1
tutors in Teacher -> Student
-- div,1
(Tutors.Person in Teacher) & (
-- div,3
all p1,p2:Person | some  Tutors.
-- div,1
Teacher.Tutores + Tutores.Student
-- div,1
all (Teacher <: Tutors) :> Student
-- div,1
Teacher<:Tutors:>+Student = Tutors
-- div,1
all p : Person | p.tutors in Student
-- div,1
Teachers <: Tutors :> Student = Tutors
-- div,1
no Student.Tutors and no Tutors.Teachers
-- div,1
no Students.Tutors and no Tutors.Teacher
-- div,1
no Student.Teaches && no Teachers.Tutors
-- div,1
Person.Tutors in Student & no Student.Teaches
-- div,1
Tutors = {(t in Teacher, s in Student | t -> s }
-- div,1
Person.Tutors & Student, 
  Tutors.Person & Teacher
-- div,1
Person.Tutors in Students and Tutors.Person in Teacher
-- div,1
all p1,p2 | p1.Tutors in Student and Tutors.p2 in Teacher
-- div,1
Teacher.Tutors in Students and Tutors.Students in Teacher
-- div,1
Teachers <: Tutors = Tutors && Tutors :> Students = Tutors
-- div,1
Teachers.Tutors in Students and Tutors.Students in Teachers
-- div,1
no(Student & Person.Tutors) and (no (Tutors.(Person-Student))
-- div,1
Tutors = {(p1, p2 in Person | p1 in Teacher and p2 in Student }
-- div,1
Teacher.Tutor = Person.Tutor and Student.Tutored = Person.Tutored
-- div,1
Teacher.Tutors = Person.Tutors and Student.Tutored = Person.Tutored
-- div,1
all t,s:Person | all Tutors.s:>t implies t in Teacher and s in Student
-- div,1
all p1,p2 in Person | p1->p2 in Tutors implies p1 in Teacher and p2 in
-- div,1
all p : Person | all s: Student | s.tutors = empty and p.Tutors in Student
-- div,1
all p : Person | all s: Student | s.Tutors = empty and p.Tutors in Student
-- div,1
all p : Person | some p.Tutors implies p in Teachers  and p.Tutors in Student
-- div,1
all p1,p2 in Person | p1->p2 in Tutors implies p1 in Teacher and p2 in Student
-- div,2
all p : Person | all s: Student | student.tutors = empty and person.Tutors in Student
-- div,1
(not some s:Student | all p:Person | s->p in Tutors) and (not some t:Teacher | p->t in Tutors)
-- div,1
