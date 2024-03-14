one Person.Teacher
-- div,1
Person -> lone Class
-- div,2
~Class.Class in iden
-- div,1
Teaches -> lone Class
-- div,1
Teacher -> lone Class
-- div,1
Teaches.Class in iden
-- div,1
Person -> lone Teaches
-- div,6
Teacher -> lone Teaches
-- div,1
Teacher.Teaches in iden
-- div,1
~Teacher . Teacher in iden
-- div,1
one Teacher in Teaches.Class
-- div,1
(Teacher in ~Teaches.Teaches)
-- div,1
lone Teacher in Teaches.Class
-- div,1
one (Teacher.Teaches).Teacher
-- div,1
one (Teacher in Teaches.Class)
-- div,1
one Teacher in Teacher.Teaches
-- div,1
all t : Teacher | lone t.Class
-- div,1
all t : Teacher | lone Class.t
-- div,1
some t : Teacher | lone Class.t
-- div,1
Teacher.(Teaches.Class) in iden
-- div,1
some t : Teacher | lone t.Class
-- div,1
(Teacher.Teaches).Person in iden
-- div,1
one Teacher in (Teacher.Teaches)
-- div,1
(Teacher.Teaches).Teacher in iden
-- div,1
Teacher.(Teacher.Teaches) in iden
-- div,2
(Teacher.Teaches).Teaches in iden
-- div,2
Teaches.(Teacher.Teaches) in iden
-- div,1
one Person.Teacher Teacher.Teaches
-- div,1
one Person.Teacher + Teacher.Teaches
-- div,1
one Person.Teacher & Teacher.Teaches
-- div,1
Teacher in (~Teaches.Teaches in iden)
-- div,1
one Person.Teacher in Teacher.Teaches
-- div,1
~(Teaches.Class).(Teaches.Class) in iden
-- div,2
all c : Class | some c in Teacher.Teaches
-- div,1
all c : Class | lone c in Teacher.Teaches
-- div,1
let c = Teacher :> ~Teaches | c.~c in iden
-- div,1
all c : Class | lone (c in Teacher.Teaches)
-- div,1
some t : Teacher | lone (t.Teaches in Class)
-- div,1
let c = Teacher :> (~Teaches) | c.~c in iden
-- div,1
~(Teacher.Teaches).(Teacher.Teaches) in iden
-- div,2
(Teacher.Teaches).~(Teacher.Teaches) in iden
-- div,1
~(Teaches.Teacher).(Teaches.Teacher) in iden
-- div,1
all c : Class | lone Teacher -> c in Teaches
-- div,1
(~Teaches<:Teacher).(Teacher:>Teaches) in iden
-- div,1
~(Teacher:>Teaches).(Teacher:>Teaches) in iden
-- div,1
(~Teaches .Teacher) .(Teacher.Teaches) in iden
-- div,1
(~Teaches .Teacher) . (Teacher.Teaches) in iden
-- div,1
~Teaches :> Teacher . Teacher <: Teaches in iden
-- div,1
~(Teacher.Teaches) . (Teacher . Teaches) in iden
-- div,1
~(Teaches <: Teacher).(Teaches <: Teacher) in iden
-- div,1
(~Teaches :> Teaches) . (Teacher <: Teaches) in iden
-- div,2
~(Teacher in Teaches.Class).(Teacher in Teaches.Class) in iden
-- div,1
all t : Teacher, c, c1 : Class | t->c in Teaches & t->c1 in Teaches => c = c1
-- div,1
all t : Teacher, c, c1 : Class | t->c in Teaches & t->c1 in Teaches => c in c1
-- div,1
