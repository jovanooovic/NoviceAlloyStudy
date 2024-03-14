no Student.Tutors
-- div,1
Teacher = Student.Tutors
-- div,1
Person.Tutors in Teacher
-- div,1
Teacher in Tutors.Teacher
-- div,1
Student in Teacher.Tutors
-- div,2
Teacher in Student.Tutors
-- div,1
Teacher in Teacher.Tutors
-- div,1
Teacher->Student in Tutors
-- div,1
Student in Teacher.Teaches
-- div,1
Teaches in Teacher->Student
-- div,1
no(Student & Person.Tutors)
-- div,1
Tutors.Teacher in Student.Tutors
-- div,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
no Student.Tutors && no Tutors.Teacher
-- div,4
no (Student.Tutors) and no (Tutors -> Teacher)
-- div,1
no Student.Teaches and no Tutors.Teacher
-- div,1
Person.Tutors in Student and no Student.Teaches
-- div,2
Teacher = Person.Tutors and Person.Tutors = Student
-- div,1
all t: Person, s: Student | t->s in Tutors
-- div,1
all t : Teacher, s : Student | s in t.Tutors
-- div,1
Person.Tutors in Teacher and Tutors.Person in Student
-- div,3
all t:Teacher , s:Student | t->s in Tutors
-- div,3
all p : Person, t : Teacher | p->t not in Tutors
-- div,1
Student in Person.Tutors and Teacher in Tutors.Person
-- div,1
Teacher in Person.Tutors and Student in Tutors.Person
-- div,1
Student in Teacher.Tutors and Teacher in Tutors.Person
-- div,2
all p: Person | (some p.Teaches) => (p in Teacher)
-- div,3
Student in Teacher.Tutors and Teacher in Tutors.Student
-- div,1
Student in Person.Tutors and Teacher in Person.~Tutors
-- div,1
Student in Teacher.Tutors and Teacher in Student.~Tutors
-- div,1
all s:Student , t:Teacher | some Tutors.s :>t
-- div,1
all p1, p2: Person | some Tutors.p1 implies p1 in Teacher
-- div,1
Student in Teacher.Teaches and Teacher in Student.~Teaches
-- div,1
no(Student & Person.Tutors) and no (Teacher & Tutors.Person)
-- div,1
no(Student & Person.Tutors) and no (Teacher & Person.Tutors)
-- div,1
all t:Teacher, s:Student | Teaches.t = s.Teaches
-- div,1
not some s:Student | all p:Person | s->p in Tutors
-- div,1
no Student.Tutors and (all p : Person.Tutors | p in Student)
-- div,1
all t:Teacher, s:Student | t in Tutors.s and s in t.Tutors
-- div,1
all t: Teacher, s: Student | t.Tutors in Person and t->s in Tutors
-- div,1
all t: Teacher, s: Student| t->s in Tutors => Tutors = Tutors - t->s
-- div,1
no Student.Tutors and (all p : Person.Tutors | p in Student and p not in Teacher)
-- div,1
all p : Person, t : Teacher, s : Student | s in p.Tutors and t in Tutors.p
-- div,1
all p : Person, t : Teacher, s : Student | s in t.Tutors and t in Tutors.p
-- div,1
all p : Person, t : Teacher | p->t in Tutors => t in Teacher and p in Student
-- div,1
all p : Person | all s: Student | s.Tutors = none and p.Tutors in Student
-- div,1
all p : Person, t : Teacher, s : Student | t not in p.Tutors and t in Tutors.p
-- div,1
all p : Person, t : Teacher, s : Student | t not in p.Tutors and s not in Tutors.p
-- div,1
all t: Person, s: Student | t.Tutors in Person and t in Teacher and t->s in Tutors
-- div,1
all p: Person | {(some p.Tutors => p in Student) (some p.Teaches => p in Teacher)}
-- div,1
no Student.Tutors && Teacher.Tutors in Student
    no Tutors.Teacher && Tutors.Student in Teacher
-- div,2
all s:Student,c:Class | some ( s<:c.Groups ) implies no((Teacher & Teaches.c)-(Tutors.s))
-- div,1
no Student.Tutors
    some Teacher.Tutors && Teacher.Tutors in Student
    no Tutors.Teacher
    some Tutors.Student && Tutors.Student in Teacher
-- div,1
