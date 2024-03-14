-- equiv pair start,52
Class = Person.Teaches
-- div,1
Class in Person.Teaches
-- div,3
Class in Class.~Teaches.Teaches
-- div,1
all x:Class| some Teaches.x
-- div,2
all c:Class | some Teaches.c
-- div,37
all c : Class | #Teaches.c > 0
-- div,1
all c: Class | some c.~Teaches
-- div,3
all c : Class | c in Person.Teaches
-- div,1
(Class->Class & iden) in ~Teaches.Teaches
-- div,1
iden & (Class->Class) in ~Teaches.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,3
Teacher.Teaches in Class
-- div,1
#(Teaches :> Class) = #Teaches
-- div,1
all c : Class, t : Teacher | some t->c
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some Teacher->c
-- div,2
-- equiv pair end
-- equiv pair start,10
all c: Class | some Teacher.Teaches
-- div,5
all c : Class | some (Teacher.Teaches)->c
-- div,3
all c : Class | some t : Teacher | some t.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,3
all c:Class | some Teaches.~Teaches
-- div,2
all c : Class | some ((Person.Teaches) -> c)
-- div,1
-- equiv pair end
-- equiv pair start,1
Class.~Teaches.Teaches in Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some t : Teacher | some t->Teaches->c
-- div,1
-- equiv pair end
