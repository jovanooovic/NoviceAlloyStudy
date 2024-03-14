Teacher in Teaches.Class
-- div,33
Teacher in Class.~Teaches
-- div,6
(Teaches.Class & Teacher) = Teacher
-- div,1
Teacher in Teacher.Teaches.~Teaches
-- div,1
all t:Teacher | some t.Teaches
-- div,76
all t: Teacher | not no t.Teaches
-- div,1
all t : Teacher | #t.Teaches > 0
-- div,6
all t:Teacher | t.Teaches != none
-- div,6
iden & Teacher->Teacher in Teaches.~Teaches
-- div,2
all p : Person | p in Teacher implies some p.Teaches
-- div,2
Teacher in Class.~Teaches
  	Teacher in Teaches.Class
-- div,1
all t : Teacher | some c : Class | c in t.Teaches
-- div,2
all p:Teacher | some c:Class | p->c in Teaches
-- div,1
all t:Teacher | some c:Class | t->c in Teaches
-- div,5
