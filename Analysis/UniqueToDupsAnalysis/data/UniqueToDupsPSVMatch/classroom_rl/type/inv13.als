Teacher.Tutors
-- div,1
Tutors.Student
-- div,1
Tutors.Teacher
-- div,1
Teacher in Tutors
-- div,2
Tutors in Teacher
-- div,1
no(Student & Tutors)
-- div,1
Person.Tutors & Student
-- div,1
Person.Tutors:>Student
-- div,1
Teacher.Tutors.Student = Tutors
-- div,1
all t:Tutors | Teacher.t.Student
-- div,1
(Teacher <: Tutors) :> Student
-- div,1
Teacher <: Tutors :> Student
-- div,1
Person.Tutors in Teacher->Student
-- div,1
Teacher.Tutors and Tutors.Student
-- div,3
Tutors.Teacher & Student.Tutors
-- div,1
Teacher.Tutors + Tutors.Student
-- div,1
all t:Teacher, s:Student | t.Tutors.s
-- div,1
Teacher.Tutors & Tutors.Student
-- div,1
Person.Tutors.univ in Teacher->Student
-- div,1
all s: Student , t:Teacher | t.Tutors.s
-- div,1
all t, s : Person | t.Teaches & s.Tutors
-- div,1
Teacher<:Person.Tutors:>Student
-- div,1
all t : Teacher, s : Student | t.Tutors.s
-- div,1
Tutors in Teacher.Tutors & Tutors.Student
-- div,1
Person.Tutors in Student and Teacher.Teaches
-- div,1
all t : Teacher, s : Student | some t.Tutors.s
-- div,1
Tutors.Person in Teacher and Tutors in Student
-- div,1
all s:Student , t:Teacher | (some Tutors.s) :>t
-- div,1
all t, s : Person | t in Teacher & s in Student
-- div,1
Person.Tutors.univ in Teacher.univ->Student.univ
-- div,1
Person.Tutors & Student
  Tutors.Person & Teacher
-- div,1
Person.Tutors in Student and Teacher.Tutors.Person
-- div,1
Person.Tutors & Student and Tutors.Person & Teacher
-- div,1
Person.Tutors & Student and
  Tutors.Person & Teacher
-- div,1
all s:Student , t:Teacher | some Tutors.s :>t in Teacher
-- div,1
(Person.Tutors in Student) and (Person.Student in Teacher)
-- div,2
all t : Teacher, s : Student | s in t.Tutors & t in Tutors.Person
-- div,1
all t,s:Person | Tutors.s:>t implies t in Teacher and s in Student
-- div,2
Teacher in (Teacher <: Teaches) and Student in (Teaches :> Student)
-- div,1
all p : Person, t : Teacher, s : Student | s in t.Tutors & t in Tutors.p
-- div,1
all p : Person, t : Teacher | t->p in Tutors => t in Teacher & p in Student
-- div,1
all t, s : Person | (t.Tutors & s.Tutors) implies (t in Teacher & s in Student)
-- div,1
all p1:Person, p2:Person | p1 in Tutors.Person implies p1 in Teacher && p2 in Tutors implies p2 in Student
-- div,1
