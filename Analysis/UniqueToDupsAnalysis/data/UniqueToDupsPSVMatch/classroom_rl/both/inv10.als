no (Groups . Group)
-- div,3
some Student.(Class.Groups)
-- div,1
Class.Groups.Group != none
-- div,1
Class.Groups[Student] != none
-- div,1
Student = Class.Groups.Group
-- div,1
Class . Groups . Group = Student
-- div,4
(Class . Groups) . Group in Student
-- div,1
Student in Class.Groups.Group
-- div,8
Student in Group.~(Class.Groups)
-- div,1
Group.~(Class.Groups) in Student
-- div,1
no Student & Class.Groups.Group
-- div,1
all c: Class | one c.Groups
-- div,1
some Student & (Class . Groups) . Group
-- div,2
all c:Class | some c.Groups
-- div,8
all c:Class | lone c.Groups
-- div,1
some Class->Student & Groups.Group
-- div,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
all s: Student | one s->Groups
-- div,1
~(Groups.Group).(Groups.Group) in iden
-- div,2
(Groups.Group).~(Groups.Group) in iden
-- div,1
(Class . Groups) . Group & Student = Student
-- div,3
all c : Class | #c->Student > 0
-- div,1
all c : Class | no Student->Groups
-- div,1
Student in Group.~(Student <: Class.Groups)
-- div,1
Student in (Group.~(Class.Groups) :> Student)
-- div,2
all c : Class | no Student->c.Groups
-- div,1
all c : Class | lone Student.(c.Groups)
-- div,1
all s : Student | some s.(Class.Groups)
-- div,1
all c : Class | some Student.(c.Groups)
-- div,2
all c : Class | some Student->c.Groups
-- div,1
all c : Class | #Student.(c.Groups) > 0
-- div,1
(Groups . Group) = (Class -> Student) . (Class -> Teacher)
-- div,1
all s : Student | some s <: (Class . Groups)
-- div,1
all c : Class | Student.(c.Groups) = Group
-- div,1
(Groups . Group) = (Class -> Student) - (Class -> Teacher)
-- div,1
all c : Class | (c.Groups).Group in Student
-- div,2
all s : Student | some (Class . Groups) . Group
-- div,1
(Groups . Group) = (Class -> Student) & (Class -> Teacher)
-- div,1
all c : Class | Group in Student.(c.Groups)
-- div,1
all c:Class | (Student->Group) in c.Groups
-- div,3
all c:Class | c.Groups in (Student->Group)
-- div,2
all c : Class | one (Student.(c.Groups) & Group)
-- div,1
all c: Class | (c.Groups).~(c.Groups) in iden
-- div,1
all c: Class | ~(c.Groups).(c.Groups) in iden
-- div,1
all c : Class | lone (Student.(c.Groups) & Group)
-- div,1
all c : Class | some (Student.(c.Groups) & Group)
-- div,1
all c:Class | some (c.Groups &(Student->Group) )
-- div,2
all c:Class | some (c.Groups -(Student->Group) )
-- div,1
all s : Student, c : Class | s in Teaches.Class
-- div,1
all c : Class | (Student.(c.Groups) & Group) = Group
-- div,2
some c : Class | (Student.(c.Groups) & Group) = Group
-- div,1
all c:Class, g:Group | Student in c.Groups.g
-- div,1
all c: Class, s: Student | Group in c.Groups[s]
-- div,1
all c:Class, g:Group | Student->g in c.Groups
-- div,2
all c : Class, s : Student | s->Group in c.Groups
-- div,1
all c:Class | (c.Groups.Group) in Person.(c.Groups)
-- div,2
(~(Class.Groups) :> Student) . (Student <: Class.Groups) in iden
-- div,1
~(Student<:Class.Groups).(Student<:Class.Groups) in iden
-- div,1
all s:Student | some g:Group | no Groups.(s->g)
-- div,3
all c: Class | all s: Student | s -> Group in c.Groups
-- div,1
all s: Student { one g: Group | s->g in Class.Groups }
-- div,1
all c:Class, s:Student, g:Group | (s->g) in c.Groups
-- div,1
all s: Student | some g: Group | (s->g) in Class.Groups
-- div,1
all c : Class |  some s: Student | s<:c.Groups in c.Groups
-- div,1
all c : Class | ~(Student<:c.Groups).(Student<:c.Groups) in iden
-- div,1
all c : Class | one s:Student, g: Group |  s->g in c.Groups
-- div,1
all c : Class | some s:Student, g: Group |  s->g in c.Groups
-- div,1
all c : Class |  one s:Student | one g:Group |  s->g in c.Groups
-- div,1
all c : Class | all s: Student | all g: Group |  s->g in c.Groups
-- div,2
all c : Class |  some s:Student | one g:Group | s->g in c.Groups
-- div,2
all s: Student - Teacher, c: Class { one g: Group | s->g in c.Groups }
-- div,1
all c : Class | all p:Person, g: Group |  p in Student implies p->g in c.Groups
-- div,1
all c : Class | all p:Person | all g: Group |  p in Student implies p->g in c.Groups
-- div,1
