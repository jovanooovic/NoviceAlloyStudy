-- equiv pair start,13
some Teacher.Teaches
-- div,9
some Teacher<:Teaches
-- div,1
some c : Class | c in Teacher.Teaches
-- div,2
some c : Class, t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Teaches . Class)
-- div,1
-- equiv pair end
-- equiv pair start,4
Teaches.Class = Class
-- div,1
Teaches.Teacher = Class
-- div,2
iden & (Class->Class) in Teaches.~Teaches
-- div,1
-- equiv pair end
-- equiv pair start,7
Teacher.Teaches = Class
-- div,2
Class in Teacher.Teaches
-- div,3
Class in ~Teaches.Teacher
-- div,1
all c : Class | c in Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
Teaches.~Teaches in iden
-- div,1
-- equiv pair end
-- equiv pair start,2
~Teaches.Teaches in iden
-- div,2
-- equiv pair end
-- equiv pair start,2
Teaches.Class in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,2
all t : Teacher | no t.Teaches
-- div,1
all t : Teacher | no t.^Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | some Teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | lone t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Person | Class in t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,12
all t : Teacher | Class in t.Teaches
-- div,6
all t : Teacher | t->Class in Teaches
-- div,1
all t : Teacher | Class in t.^Teaches
-- div,1
all t : Teacher, c : Class | c in t.Teaches
-- div,1
all t : Teacher, c : Class | t->c in Teaches
-- div,1
all c : Class, t : Teacher | t->c in Teaches
-- div,1
all t : Teacher | all c : Class | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | Teacher.Teaches in c
-- div,1
-- equiv pair end
-- equiv pair start,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all t: Teacher | some c: Class | some Groups[c][t]
-- div,2
-- equiv pair end
