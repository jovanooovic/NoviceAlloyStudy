-- equiv pair start,3
some Class.Teaches
-- div,1
some Class<:Teaches
-- div,1
some Teacher.Teaches & Teaches.Class
-- div,1
-- equiv pair end
-- equiv pair start,11
Teaches . Class = Class
-- div,1
Class in Teaches.Class
-- div,3
Teaches.Teacher = Class
-- div,1
Class in Teaches.Person
-- div,1
Class in (Teacher <: Teaches.Class)
-- div,1
all c:Class | some c.Teaches
-- div,3
all c : Class | some Teaches.Teacher
-- div,1
-- equiv pair end
-- equiv pair start,4
Teaches in Teacher some->Class
-- div,1
all c:Class | some Teaches.c and Teaches.c in Teacher
-- div,3
-- equiv pair end
-- equiv pair start,1
all c:Class | some t:Teacher | t.Teaches = c
-- div,1
-- equiv pair end
