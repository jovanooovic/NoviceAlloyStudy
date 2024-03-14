-- equiv pair start,8
all c:Class | some Teaches.c
-- div,3
all c:Class | some c.~Teaches
-- div,4
all c : Class | some p : Person | p -> c in Teaches
-- div,1
-- equiv pair end
