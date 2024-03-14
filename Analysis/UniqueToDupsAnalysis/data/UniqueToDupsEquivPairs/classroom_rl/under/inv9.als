-- equiv pair start,29
no (Class . Teaches)
-- div,1
Teacher.Teaches in Class
-- div,1
Teaches.^Teaches in iden
-- div,1
(Teaches . ~Teaches) in (Person -> Person)
-- div,1
all c:Class | lone c.Teaches
-- div,4
all t:Teacher | lone Teaches.t
-- div,2
all c : Class | lone Teaches.Teacher
-- div,2
all c: Class | lone (c&Teacher.Teaches)
-- div,1
all c : Class | lone ((c.Teaches) - Teacher)
-- div,1
(Teacher <: Teaches).~(Teaches :> Teacher) in iden
-- div,2
all c:Class | lone Teacher.Teaches:>c
-- div,5
all c:Class | lone Teacher.Teaches<:c
-- div,1
all c : Class | #(c & Teacher.Teaches) < 2
-- div,3
all c:Class,t:Teacher | lone t.Teaches:>c
-- div,1
all c:Class,t:Teacher | lone Teaches.c:>t
-- div,1
all c : Class, t : Teacher | #(c & t.Teaches) < 2
-- div,2
-- equiv pair end
