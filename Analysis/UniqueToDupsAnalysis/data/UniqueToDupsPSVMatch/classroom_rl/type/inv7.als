Teaches.Class
-- div,1
some Teacher:>Teaches
-- div,1
Class in Teacher.Class
-- div,1
all c:Class | Teaches.c
-- div,3
Class  in Teacher.Class
-- div,1
all c:Class | c.Teaches
-- div,1
all t: Teacher | t.Class
-- div,1
Teaches :> Class = Class
-- div,1
Teaches <: Class = Class
-- div,1
Class in Teaches.Teaches
-- div,1
Class in ~Teaches.Teaches
-- div,1
~Teaches.Teaches in Class
-- div,1
some Teaches.Class.Teacher
-- div,1
all t: Teacher | t.Teaches
-- div,1
Teaches in Teaches some->Class
-- div,1
all c : Class | some Teacher.c
-- div,1
Teacher <: Person.Teaches.Class
-- div,1
Class = (Person.Teaches . Class)
-- div,1
Class = (Class . Person.Teaches)
-- div,1
all c: Class |  Teacher.Teaches.c
-- div,1
all c:Class | c  in Teacher.Class
-- div,5
~(Teacher.Teaches).Teaches in iden
-- div,1
all c : Class | Teacher in c.Groups
-- div,1
all c: Class | c -> Teacher.Teaches
-- div,2
all c:Class | some Teacher.Teaches=c
-- div,2
some Person.(Class.Groups) in Teacher
-- div,1
all c: Class | some Teacher.Teaches.c
-- div,4
all c : Class | some Teacher.Teaches.c
-- div,6
all c : Class | Teaches -> c in Teaches
-- div,1
all c:Class | ( Teaches.c )some Teacher
-- div,1
Class in Class.~Teaches.Teacher.Teaches
-- div,1
all c:Class | some Teaches.c in Teacher
-- div,1
all c : Class | some Teacher in c.Groups
-- div,1
all c : Class | some Teaches.c = Teacher
-- div,1
all c : Class | some (Teacher.Teaches).c
-- div,1
all c : Class | some c . Teacher.Teaches
-- div,1
all c : Class | some c . Teacher->Teaches
-- div,1
all c : Class | some Teaches.c in Teacher
-- div,2
all c : Class | some Teacher in c->Groups
-- div,1
all x:Class, t:Teacher | some t.Teaches.x
-- div,1
all c : Class | (Teaches :> c) in Teacher
-- div,1
all c : Class | (Teaches <: c) in Teacher
-- div,1
all c:Class |  (some Teaches.c in Teacher)
-- div,1
all class : Class | class in Teacher.class
-- div,1
all c:Class |  some (Teaches.c in Teacher)
-- div,1
all c : Class | some Teacher->c in Teaches
-- div,1
all c : Class | (some Teaches.c) in Teacher
-- div,1
all c:Class | ( some Teaches.c ) in Teacher
-- div,1
all c : Class | some (Teacher->c) in Teaches
-- div,1
some t: Teacher | all c: Class| c.Groups = t
-- div,1
all c : Class | (some Teacher)->c in Teaches
-- div,1
some t: Teacher | all c: Class| t in c.Groups
-- div,1
all c : Class, t : Teacher | some t.Teaches.c
-- div,2
all x:Class| some t: Teacher| some t.Teaches.x
-- div,1
all c : Class | all t : Teacher | t in c.Groups
-- div,1
all c : Class | some t : Teacher | t->Teaches->c
-- div,1
all c : Class | some Person.(c.Groups) in Teacher
-- div,1
all c : Class | some t : Teacher | some t.Teaches.c
-- div,1
all c : Class | (Teacher <: Teaches) -> c in Teaches
-- div,1
all c : Class | some Teaches.c && Teaches.c & Teacher
-- div,1
all c : Class | ((Teacher <: Teaches) -> c) in Teaches
-- div,1
all disj c : Class | some Teaches.c & (Teaches.c = Teacher)
-- div,1
all disj c : Class | some Teaches.c & (Teaches.c in Teacher)
-- div,1
