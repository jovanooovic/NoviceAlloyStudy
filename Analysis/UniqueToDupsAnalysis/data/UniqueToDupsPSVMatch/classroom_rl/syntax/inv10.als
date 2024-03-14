all c: Class
-- div,1
all c : Class
-- div,2
Teacher.teaches
-- div,2
all disj c: Class |
-- div,3
Groups: Student -> Group
-- div,1
all c: Class, s: Student |
-- div,2
all c:Class | all c.Groups
-- div,1
all c : Class | lone c.Group
-- div,1
all c : Class, s : Student |
-- div,1
all c: Class | all s: Student
-- div,1
all c:Class | (x,y):c.Groups in c
-- div,1
all c.Class,s:Student | c.Group.s
-- div,1
all c : Class | Student.(c.Groups)
-- div,1
all c:Class | some c.Group | Student
-- div,1
all c: Class | all s: Student | s in
-- div,6
all s : Student,c : class | some c->
-- div,5
all c : Class | Students in c.Groups
-- div,1
all c : Class | all s : c->Student |
-- div,1
all c:Class | some c.Groups | Student
-- div,1
all c : Class | lone Student.c.Groups
-- div,1
all c:Class,s:Student| c->s->g in Groups
-- div,1
(Groups . Group) = no (Class -> Teacher)
-- div,1
all s: Student,c:Class | c.s -> one Group
-- div,1
(Groups . Group) = all (Class -> Student)
-- div,1
all s: Student,c:Class | s.c -> one Group
-- div,1
all c:Class, s:Student | some p.(c.Groups)
-- div,1
all c : Class, student | some s.(c.Groups)
-- div,2
all c : Class | lone c.Groups
-- div,1
all c : Class, Student | some s.(c.Groups)
-- div,1
all c.Class,s:Student | s.Group :> c.Groups
-- div,1
all c: Class | s: Student | some c.Groups.s
-- div,1
all c : Class | Students in (c.Groups).Group
-- div,1
all c : Class | c.Groups in (Student x Group)
-- div,1
all c: Class | all s: Student | s in c.groups
-- div,1
all s : Student,c : class | some c->s . Groups
-- div,1
all c:Class | all s:Student | c->s->g in Groups
-- div,1
all c : Class, s : Student | some (c, s).Groups
-- div,2
all c:Class |all s:Students | some s <: c.Groups
-- div,1
all c : Class, s : Student | some {(c,s)}.Groups
-- div,1
all c: Class | all s: Student | some c.Groups[s]
-- div,1
all c: Class | s: Student | s in c.Groups.Person
-- div,1
all c:Class |all s:Students | some (s<:c.Groups)
-- div,1
all c : Class, all s: Student | some (s.c.Groups)
-- div,1
all c: Class | all s: in Student | s in c.Groups.g
-- div,1
all c:Class | (x->y):c.Groups implies x in Student
-- div,1
all c: Class | s: Student | s -> Group in c.Groups
-- div,1
all s: Student | some g: Group | (s->g) in c.Groups
-- div,1
all c:Class | (c.Groups.Group) in Person.(c.Grupos)
-- div,1
all c:Class | all s:Student | some s in <: c.Groups
-- div,1
all c : Class | all s: Student  |  s->g in c.Groups
-- div,1
all c : Class | lone Student.(c.Groups)
-- div,1
all c: Class | all s: Student | c.gropus->s in Group
-- div,1
all c: Class | all s: Student | s -> c.groups.Person
-- div,1
all c: Class | all s: Student | c.groups->s in Group
-- div,1
all c: Class | g: Group, s: Student | s in c.Groups.g
-- div,1
all c : Class |  s: Student | s<:c.Groups in c.Groups
-- div,1
all s:Student| some g:Group |  (Groups.(s->g) in Class
-- div,1
all c:Class |all s:Students | s<:c.Groups :> some Group
-- div,1
all c:Class, s:Student |some g:Group (c.Groups (s->g) )
-- div,1
all c:Class, s:Student |some g:Group (c.Groups.(s->g) )
-- div,1
all s:Student | some g:Group |   (Class - (Groups.(s->g))
-- div,1
all s:Student | some g:Group | no  Class - Groups.(s->g) )
-- div,1
all s: Student, c: Class | some g : Group c->s->g in Groups
-- div,2
all c: Class | all s: Student | s in c.^(g: Group | Groups.g)
-- div,1
all c: Class | g: Group | all s: in Student | s in c.Groups.g
-- div,1
all c: Class | all s: Student | g in Group and s in c.Groups.g
-- div,1
all c:Class, s:Student | some s.(c.Groups)
-- div,2
iden in ~(Students <: Class.Groups) . (Students <: Class.Groups)
-- div,1
for c Class | iden in ~(Student <: c.Groups) . (Student <: c.Groups)
-- div,1
for c: Class | iden in ~(Student <: c.Groups) . (Student <: c.Groups)
-- div,1
all c : Class, s : Student | some g : Group | c -> s -> g in Groups 
  	all c : Class, s : Student |
-- div,2
