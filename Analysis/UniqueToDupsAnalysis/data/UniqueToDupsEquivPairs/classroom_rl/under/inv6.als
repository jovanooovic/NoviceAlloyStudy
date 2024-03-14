-- equiv pair start,17
Teacher.Teaches in Class
-- div,4
all t : Teacher | no t.~Teaches
-- div,1
all t: Teacher | t.Teaches in Class
-- div,7
no t: Teacher | t.Teaches not in Class
-- div,2
all t : Teacher | no t.Teaches - Class
-- div,2
all t: Teacher | lone c: Class | t.Teaches = c
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Teacher | Teacher.Teaches != none
-- div,1
all t : Teacher | inv5
}

pred inv5{
	some Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher | t.Teaches in Class and Class != none
-- div,1
-- equiv pair end
