-- equiv pair start,2
no Teacher
-- div,1
all p:Person | p not in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
some Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | p not in Student
-- div,2
-- equiv pair end
