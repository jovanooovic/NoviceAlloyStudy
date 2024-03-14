all c : Class | no Student.Groups
-- div,1
(Student <: Class.Groups.Group) in Student
-- div,1
Group.~(Student <: Class.Groups) in Student
-- div,2
all c:Class | c.Groups in (Person ->Group)
-- div,1
all c : Class | Student.(c.Groups) in Group
-- div,4
all s : Student | s in Class implies s in Group
-- div,2
all c : Class, s : Student | some c.Groups
-- div,2
all c: Class | Student in Class.Groups.Group
-- div,1
all c : Class, s : Student | some c->s->Group
-- div,1
all c : Class | (Student.(c.Groups) & Group) in Group
-- div,1
all c: Class, s: Student | c.Groups[s] in Group
-- div,1
all s : Student, c : Class | s in c implies s in Group
-- div,2
all c : Class | all s : Student | some (c.Groups)
-- div,1
all c: Class | all s: Student | lone c.Groups.s
-- div,1
all c: Class | all s: Student | s.Groups in c.Groups
-- div,2
all c: Class | all s: Student | Groups.s in c.Groups
-- div,2
all c : Class | all s : c.Groups.Person | #s.Groups > 0
-- div,1
all c : Class | all s : c.Groups.Student | #s.Groups > 0
-- div,3
all c : Class | all s: Student | s<:c.Groups in c.Groups
-- div,1
all x:Class, p:Student| some g:Group | some (x.Groups).g
-- div,1
