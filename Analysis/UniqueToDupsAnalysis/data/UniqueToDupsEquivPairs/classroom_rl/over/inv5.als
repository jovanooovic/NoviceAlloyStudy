-- equiv pair start,13
some Class.Teaches
-- div,2
some Groups.Teacher
-- div,1
some Teaches.Person
-- div,1
some Teacher.Groups
-- div,1
some Teaches.Teaches
-- div,1
some Class.Groups.Teacher
-- div,1
some Class.Teaches & Teacher
-- div,1
some c:Class | c in Teacher
-- div,1
some t : Teacher | t in Class
-- div,1
some c : Class | some c.Teaches
-- div,1
some t : Class | some t.Teaches
-- div,1
some t : Teacher | t in Person.(Class.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,2
some c:Class | Teacher.Teaches = c
-- div,2
-- equiv pair end
-- equiv pair start,1
some c : Class, p : Teacher | (p.Teaches) = c
-- div,1
-- equiv pair end
-- equiv pair start,1
some Teacher and all t : Teacher | some t.Teaches
-- div,1
-- equiv pair end
