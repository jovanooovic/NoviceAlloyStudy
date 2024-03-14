Class.Teacher
-- div,1
Class Teacher.Teaches
-- div,1
Class in Teaches.~Teacher
-- div,1
Teaches in Teacher some Class
-- div,1
all c:Class | some t:Teacher | t->c
-- div,1
all c:Class | some Teacher in c.Teaches
-- div,1
all c:Class | some Teacher.c in Teaches
-- div,1
all c:Class | some c.~Teaches in Teacher
-- div,1
all x: Class | some t :Teacher | t-> Teaches
-- div,1
all c:Class | some t:Teaches | t in Teaches.c
-- div,1
