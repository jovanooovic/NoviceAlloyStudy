some Teaches.Class
-- div,6
some Teacher.Teaches
-- div,1
some Class.~Teaches
-- div,2
Teaches.Class = Teacher
-- div,1
Teacher in Teaches.Class
-- div,1
Teaches.Class in Teacher
-- div,1
Teacher in Person . Teaches
-- div,1
~Teaches.Teaches in iden
-- div,2
Teacher in ~Teaches.Teacher
-- div,1
some (Teaches.Class & Teacher)
-- div,2
some  Teacher & Teaches.Class
-- div,1
#(Teaches :> Class) = #Class
-- div,1
some Teacher <: Teaches.Class
-- div,1
Teacher.Teaches in Teaches.Class
-- div,1
(Class->Class) in ~Teaches.Teaches
-- div,1
all c : Class | one Teaches.c
-- div,2
~((Groups.Group):>Teacher) in Teaches
-- div,1
all c : Class | lone Teaches.c
-- div,2
#(Teacher->Class :> Class) = #Class
-- div,1
all c : Class | (#c.Groups) > 0
-- div,1
all c : Class | #Teacher->c > 1
-- div,1
all c:Class | Teaches.c in Teacher
-- div,9
all c : Class | Teacher in Teaches . c
-- div,1
all c : Class | some c.Groups.Group
-- div,1
all c : Class | Teacher->c in Teaches
-- div,3
all c : Class | no Teacher.(c.Groups)
-- div,1
all c : Class | one Teacher.(c.Groups)
-- div,1
all c : Class | some Teacher.(c.Groups)
-- div,2
all c : Class | lone Teacher.(c.Groups)
-- div,1
all c : Class | #Person.(c.Groups) > 0
-- div,2
all c : Class |  #Teacher.(c.Groups) > 0
-- div,1
all c : Class | Person.(c.Groups) in Teacher
-- div,2
all c : Class, t : Teacher | some t.Teaches
-- div,4
all t : Teacher, c : Class | some c->t->Group
-- div,1
all c : Class, t : Teacher | (#t.(c.Groups)) > 0
-- div,1
all c:Class | all t:Teacher | t.Teaches = c
-- div,1
all c: Class | some t: Teacher | some Groups[c][t]
-- div,2
