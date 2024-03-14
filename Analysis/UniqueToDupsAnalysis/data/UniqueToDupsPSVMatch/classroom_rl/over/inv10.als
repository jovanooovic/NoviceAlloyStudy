(Groups . Group) = (Class -> Person)
-- div,3
(Groups . Group) = (Student -> Class)
-- div,1
(Group . Groups) = (Class -> Student)
-- div,1
(Groups . Group) = (Class -> Student)
-- div,11
Student . (Class . Groups) = Student
-- div,1
all s: Student | one s.Groups
-- div,3
all s: Student | some s.Groups
-- div,1
all c:Class| one c.Groups.Student
-- div,1
all c:Class | some c.Groups.Student
-- div,2
all c: Class | c.Groups.Group = Student
-- div,3
(Groups . Group) = (Class -> Student) + (Class -> Teacher)
-- div,1
all c: Class | Student.(c.Groups) = Student
-- div,1
all c: Class | c.Groups.Student = Student
-- div,1
all c: Class,s:Student | one s.(c.Groups)
-- div,4
all c:Class, s:Student | one c.Groups.s
-- div,1
all c: Class , s: Student | one c.(s.Groups)
-- div,2
all s:Student | some g:Group | no  Class
-- div,1
all c:Class, s:Student | some c.Groups.s
-- div,15
all c : Class, s : Student | some s.Groups.c
-- div,1
all c : Class, s : Student | some (c -> s).Groups
-- div,3
all c : Class, s : Student | some c & s & Group
-- div,1
all c: Class | all s: Student | some s.Groups
-- div,2
iden in ~(Student <: Class.Groups) . (Student <: Class.Groups)
-- div,3
iden in (~(Class.Groups) :> Student) . (Student <: Class.Groups)
-- div,1
all c: Class | all s: Student | one Groups[c][s]
-- div,1
all c: Class | all s: Student | some c.Groups.s
-- div,5
all c: Class | all s: Student | s in c.Groups.Person
-- div,4
all s:Student { some g:Group | g in Class.Groups.s}
-- div,1
all c:Class | some g:Group | (Student->g) in c.Groups
-- div,1
all c: Class | iden in ~(Student <: c.Groups) . (Student <: c.Groups)
-- div,1
all s: Student, c: Class { one g: Group | c.Groups.g = s }
-- div,1
all s: Student, c: Class { some g: Group | c.Groups.g = s }
-- div,1
all s: Student, c: Class { one g: Group | s->g in c.Groups }
-- div,1
all c:Class, s:Student | some g:Group | c->g->s in Groups
-- div,1
all c:Class { all s:Student | some g:Group | g in c.Groups.s}
-- div,1
all c : Class | all s: Student | one g : Group  |  s->g in c.Groups
-- div,3
all c: Class | all s: Student | one g: Group |  c->s->g in Groups
-- div,1
all c:Class | all s:Student | some g:Group | s->s->g in Groups
-- div,1
all s: Student, c: Class { one g: Group | s->g in c.Groups and s.Teaches = none }
-- div,1
all c : Class | all p:Person | one g: Group |  p in Student implies p->g in c.Groups
-- div,4
