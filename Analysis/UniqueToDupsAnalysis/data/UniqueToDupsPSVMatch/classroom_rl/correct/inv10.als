Class->Student in Groups.Group
-- div,4
all c: Class | Student in c.Groups.Group
-- div,12
all s:Student,c:Class | some s.(c.Groups)
-- div,9
all c:Class,s:Student | some s.(c.Groups)
-- div,39
all c:Class,s:Student | some s <: c.Groups
-- div,2
all c : Class | (c . Groups . Group) & Student = Student
-- div,5
all c: Class, s : Student | s in c.Groups.Group
-- div,2
all c:Class | all s:Student | some s.(c.Groups)
-- div,11
all c : Class, s : Student | some s->Group & c.Groups
-- div,1
all c:Class |all s:Student | some s <: c.Groups
-- div,3
all c:Class,s:Student | some g:Group | s->g in c.Groups
-- div,3
all x:Class, p:Student| some g:Group | x->p->g in Groups
-- div,1
all c:Class,s:Student | some g:Group | c->s->g in Groups
-- div,12
all s: Student, c: Class | some g : Group | c->s->g in Groups
-- div,1
all c: Class | all s: Student | some g: Group | s in c.Groups.g
-- div,1
all c:Class | all s:Student | some g:Group | s->g in c.Groups
-- div,1
all c:Class |all s:Student|some g:Group |c->s->g in Groups
-- div,7
all c : Class | all s: Student | some (s.(c.Groups))
  
  all s : Student | all c : Class | some (s.(c.Groups))
-- div,1
