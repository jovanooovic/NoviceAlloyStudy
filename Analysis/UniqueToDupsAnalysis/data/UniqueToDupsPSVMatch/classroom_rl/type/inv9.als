one Teacher.Student
-- div,1
(Teacher <: Teaches)
-- div,1
Teacher some -> one Class
-- div,1
all c : Class | Teaches.c
-- div,1
lone Class in Teacher.Teaches
-- div,3
all c: Class | lone Teacher.c
-- div,1
lone Teacher in Teaches.Class
-- div,1
all t : Teacher | not t.Teaches
-- div,1
all c:Class | lone Teacher.Class
-- div,2
Class.(Teacher<:Teaches) in iden
-- div,1
all c:Class | no (some Teaches.c)
-- div,1
(Teaches.~Teaches).Teacher in iden
-- div,1
(Teacher.Teaches).~Teaches in iden
-- div,1
Teaches . ~Teaches in iden.Teacher
-- div,1
Teacher.(Teaches.~Teaches) in iden
-- div,1
Teacher.Teaches some -> one Class
-- div,1
all c : Class | no (lone Teaches.c)
-- div,1
all c:Class| one Teacher = Teaches.c
-- div,1
lone (Teacher <: Teaches) in Teacher
-- div,1
lone ((Teacher <: Teaches) & Person)
-- div,1
all c : Class | one Teacher.Teaches.c
-- div,1
all c : Class | lone Teacher.Teaches.c
-- div,2
(Teaches.Class).~(Teaches.Class) = iden
-- div,1
all c: Class | lone Teaches & Teaches.c
-- div,1
all c:Class | lone Teacher in Teaches.c
-- div,1
all c:Class,t:Teacher | lone t.Teaches.c
-- div,1
all c : Class | lone (Teacher.Teaches.c)
-- div,1
all c: Class | lone (Teaches & Teaches.c)
-- div,1
all c : Class | #(Teacher.c & Teaches) < 2
-- div,1
~(Teaches<:Class).(Teaches<:Class) in iden
-- div,1
iden[Teacher] & (Teaches.~Teaches) in iden
-- div,1
iden(Teacher) & (Teaches.~Teaches) in iden
-- div,1
all c:Class,t:Teaches | lone t in Teaches.c
-- div,1
all c:Class,t:Teacher | one t->c in Teaches
-- div,1
all c : Class | #(c in Teacher.Teaches) < 2
-- div,1
all c : Class | lone (Teaches.c) in Teacher
-- div,1
all c : Class | lone (c in Teacher.Teaches)
-- div,1
all c : Class | (lone Teaches.c) in Teacher
-- div,1
all c : Class | #(c and Teacher.Teaches) < 2
-- div,1
all c : Class, s : Student | s->c in Groups z
-- div,3
all x:Class| some t:Teacher | lone t.Teaches.x
-- div,1
(Teaches.~Teaches :> Teacher->Teacher) in iden
-- div,1
all c : Class | lone t : Teacher | t.Teaches.c
-- div,1
Teacher & ((Teacher.Teaches).~Teaches) in iden
-- div,1
all t:Teacher | lone t.Teaches and ~(t.Teaches)
-- div,1
(Teaches.~Teaches) :> (Teacher->Teacher) in iden
-- div,1
all c : Class | one Person.(c.Groups) in Teacher
-- div,1
all c : Class | some Person.(c.Groups) in Teacher
-- div,1
(Teacher <: Teaches).(~Teacher <: Teaches) in iden
-- div,1
all c : Class | #(Person.(c.Groups) in Teacher) <= 1
-- div,1
all c : Class | all p : Person.(c.Groups) | some p in Teacher
-- div,1
