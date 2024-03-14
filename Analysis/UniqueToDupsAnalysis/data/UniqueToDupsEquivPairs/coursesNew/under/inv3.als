-- equiv pair start,1
all c:Course , p:Person| some(teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course, p: Professor | #c.~teaches>0
-- div,1
all x : Course | all y : Professor | #(teaches.x) > 0
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Course | some y : Person | y in teaches.Course
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Course | some p:Person | p in Professor implies c in p.teaches
-- div,2
-- equiv pair end
