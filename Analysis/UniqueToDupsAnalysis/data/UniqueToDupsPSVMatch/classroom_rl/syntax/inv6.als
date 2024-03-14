Teacher<:link
-- div,1
all t : Teacher |
-- div,2
all Teacher.Teachs
-- div,1
all Teaches.Teacher
-- div,1
all Teacher.Teaches
-- div,11
some Teacher.teaches
-- div,1
all Teacaher.Teaches
-- div,1
Tall Teaches.Teacher
-- div,1
all Teacher in Teaches
-- div,1
all Teacher in ~Teaches
-- div,1
Teacher in Teaches.class
-- div,1
Teachers in Teaches.Teacher
-- div,1
Teachers in Teacher.Teaches
-- div,1
all t : Teacher | t.teaches
-- div,1
Teaches.Teachers = Teachers
-- div,1
all t : Teacher | Teaches.c
-- div,1
all Teaches.Class = Teacher
-- div,1
~(Teacher.Teaches) = Teacher
-- div,2
all t:Teacher some t.Teaches
-- div,1
all Teacher in Teaches.Class
-- div,1
all Teacher in Class.~Teaches
-- div,1
Teachers in (Teaches . Class)
-- div,1
all t:Teacher | all t.Teaches
-- div,1
all t.Teacher | some t.Teaches
-- div,1
all Teacher in Teacher.Teaches
-- div,1
all t : Teacher | one t.teaches
-- div,1
(all t:Teacher ) some t.Teaches
-- div,2
all t : Teacher | no t^.Teaches
-- div,1
all t : Teacher | all t.Teaches
-- div,2
all t : Teacher | some t.teaches
-- div,1
(all t:Teacher ){ some t.Teaches }
-- div,1
all t : Teacher | | some t.Teaches
-- div,1
all t : Teacher | some c in t.Teaches
-- div,1
all t: Teacher | t.Teaches in Classes
-- div,1
all t: Teacher | t.Teaches = some Class
-- div,1
all t : Teacher | Class in Teacher^.Teaches
-- div,1
all t : Teacher | (some Class) in t.Teaches)
-- div,1
all p : Person | p in Teacher implies t.Teaches
-- div,1
all t : Teacher | some c : Class | t->c in Teaches
-- div,1
