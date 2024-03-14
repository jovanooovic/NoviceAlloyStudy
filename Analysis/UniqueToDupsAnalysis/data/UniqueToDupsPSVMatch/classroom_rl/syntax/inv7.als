all c : Class
-- div,1
all c: Class |
-- div,1
all Teacher.Class
-- div,1
all Class.Teaches
-- div,1
Class  in Teacher.class
-- div,1
Class in Teacher.teaches
-- div,1
Class in Teachers.Teaches
-- div,1
some t:Teacher | all t.Teaches
-- div,2
#(Teaches :> Class) == #Teaches
-- div,1
Teacher <: Persson.Teaches.Class
-- div,1
all c : Class | some t : Teacher
-- div,1
all c: Class | c -> eacher.Teaches
-- div,1
all c:Class | some t:Teacher | t->
-- div,2
all c: Class, some t: Teacher | t.c
-- div,1
all c:Class | c in some Teaches.~Teaches
-- div,1
all c: Class | some (Teaches.c & Teachers)
-- div,1
all c:Class, some t:Teacher | t.Teaches = c
-- div,1
all c:Class { some t:Teacher | c in t.Teaches
-- div,1
all c:Class, some t:Teacher | t in c.~Teaches
-- div,1
all c : Class | some t : Teacher | c in p.Teaches
-- div,2
all c : Class, t : Teacher | (#t.(c.Groups)) > 0
}
-- div,1
all c : Class | (all t : Teacher | t in c.Groups)
}
-- div,1
