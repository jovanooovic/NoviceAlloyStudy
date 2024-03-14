one Teaches.Class
-- div,2
Teaches.Class = Teacher
-- div,1
Teaches.Class in Teacher
-- div,2
Teaches.~Teaches in iden
-- div,3
one (Teacher & Teaches.Class)
-- div,1
lone Teacher & Teaches.Class
-- div,3
Teaches in Teacher lone -> Class
-- div,1
#(Teacher & Teaches.Class) <= 1
-- div,1
Teacher.Teaches.~Teaches in Teacher
-- div,1
all c : Class | lone Teaches.c
-- div,2
~((Groups.Group):>Teacher) in Teaches
-- div,1
some c : Class | lone Teaches.c
-- div,1
all t : Teacher | some t.Teaches
-- div,2
some t : Teacher | lone t.Teaches
-- div,2
all t:Teacher | lone Teaches.Class
-- div,1
some t : Teacher | lone t.Teaches & Class
-- div,2
all c : Class | lone Teacher -> c & Teaches
-- div,1
all c:Class { one t:Teacher | c in t.Teaches }
-- div,1
all c: Class | lone t: Teacher | t.Teaches = c
-- div,1
all t: Teacher | lone c: Class | some Groups[c][t]
-- div,1
