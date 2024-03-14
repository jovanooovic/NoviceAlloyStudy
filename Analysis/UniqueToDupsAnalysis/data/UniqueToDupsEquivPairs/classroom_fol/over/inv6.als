-- equiv pair start,4
Teacher in Class.Teaches
-- div,1
Teacher in Teaches.Person
-- div,1
Teacher in Teacher.Teaches
-- div,1
all x : Person | x in Teacher implies x in Class
-- div,1
-- equiv pair end
-- equiv pair start,2
Teaches in Teacher -> some Class
-- div,2
-- equiv pair end
-- equiv pair start,1
some c : Class | Teacher->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some x : Person | x in Teacher and x in Class
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Class | p -> c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person |some c:Class | p in Teacher implies p->c in Teaches
-- div,2
-- equiv pair end
