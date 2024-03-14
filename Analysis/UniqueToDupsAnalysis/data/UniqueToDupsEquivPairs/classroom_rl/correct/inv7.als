-- equiv pair start,131
Class = Teacher.Teaches
-- div,5
Teacher.Teaches = Class
-- div,7
Class in Teacher.Teaches
-- div,36
Class in ~Teaches.Teacher
-- div,4
(Class & Teacher.Teaches) = Class
-- div,1
#(~Teaches.Teacher) >= #Class
-- div,1
all c:Class | c in Teacher.Teaches
-- div,26
all c: Class | some Teacher & Teaches.c
-- div,1
all c:Class | some (Teaches.c & Teacher)
-- div,18
all c : Class | some Teacher -> c & Teaches
-- div,1
all c:Class | some Teacher.Teaches:>c
-- div,4
all c : Class | some ( Teacher <:Teaches.c)
-- div,1
all c : Class | some (Teaches.c :> Teacher)
-- div,1
all c : Class | (#Teaches.c & Teacher) > 0
-- div,1
all c: Class | some c.~Teaches&Teacher
-- div,3
all c:Class | some t:Teacher | t in Teaches.c
-- div,2
all c:Class { some t:Teacher | c in t.Teaches }
-- div,3
all c:Class | some t:Teacher | t->c in Teaches
-- div,11
all c : Class | some x : Teacher | x->c in Teaches
-- div,1
all c:Class{ some t:Teacher | t in c.~Teaches }
-- div,3
all c : Class | some (Teaches.c & Teacher)
  
  Class in Teacher.Teaches
-- div,1
-- equiv pair end
