Teacher.Class
-- div,4
Class . Teaches
-- div,1
Teaches.Class
-- div,2
Teacher->Class
-- div,1
Person.Teaches
-- div,1
Teacher.Groups
-- div,1
Teacher & Class
-- div,1
Teacher.Teaches
-- div,6
some Class.Teacher
-- div,2
some Teacher.Class
-- div,2
some Teacher.Group
-- div,1
some Teacher.Teacher
-- div,1
some Class in Teacher
-- div,1
Class.Teacher in Class
-- div,1
Class->Teacher not none
-- div,1
all c : Class | c.Teaches
-- div,1
some c : Class | Person.c
-- div,1
some p:Person | p.Teaches
-- div,1
all c : Class | Teaches.c
-- div,1
all t:Teacher | t.Teaches
-- div,1
some Teaches.Class.Teacher
-- div,1
all t:Teacher { t.Teaches}
-- div,1
some c : Class | c.Teaches
-- div,1
some Teacher.Teaches.Class
-- div,2
some t:Teacher | t.Teaches
-- div,1
some c : Class | Teaches.c
-- div,1
some Class in Teaches.Class
-- div,1
some p : Person | p.Teaches
-- div,1
all t : Teacher | t.Teacher
-- div,1
Class & Teacher.Teaches
-- div,4
some t : Teacher | t.Teacher
-- div,1
all t:Teacher | some t.Class
-- div,1
some Class in Person.Teaches
-- div,1
all t: Teacher | some t.Class
-- div,4
some Teacher.Teaches in Class
-- div,1
all t: Teacher | lone t.Group
-- div,1
some c : Class | c -> Teacher
-- div,1
all t: Teacher | lone t.Class
-- div,1
some Teaches.Teacher in Class
-- div,1
some c:Class, t:Teacher | c->t
-- div,1
all t : Teacher | some t.Class
-- div,1
some c:Class, t:Teacher | t->c
-- div,1
all t : Teacher | some Class.t
-- div,1
some  Teacher.Teaches in Class
-- div,1
some c : Class | some c.Teacher
-- div,1
all t : Teacher | some t.Teacher
-- div,2
some c : Class | Teacher.Teaches
-- div,1
all t : Teacher | some t in Class
-- div,1
some t : Teacher | t in Groups->t
-- div,1
some (Teaches . Class in Teacher)
-- div,2
some p:Teacher | p.Teaches + Class
-- div,1
some g:Group | Groups.g in Teacher
-- div,2
some c : Class | Groups[c,Teacher]
-- div,1
some c : Class | c.Teacher.Teaches
-- div,1
some c : Class | (Person.Teaches).c
-- div,1
all t:Teacher | t.Teaches in Teaches
-- div,1
some t: Teacher | t.Teaches not none
-- div,1
some x:Class, t:Teacher | t.Teaches.x
-- div,1
all t: Teacher | some t.Class.Teaches
-- div,1
all t: Teacher | t.Teaches some Class
-- div,1
all t: Teacher | t Teaches some Class
-- div,1
all t: Teacher | some t->Group in Class
-- div,1
some t : Teacher | t in Class->t->Group
-- div,1
some t : Teacher | t in Groups->Teacher
-- div,1
all t: Teacher | some t->Group in Groups
-- div,1
all t : Teacher | some t in Class.Groups
-- div,1
all g : Class.Groups | some g in Teacher
-- div,1
all t: Teacher | some t.Teaches in Class
-- div,1
some t : Teacher | t in Class->Groups->t
-- div,1
some c : Class, t : Teacher | c.Groups[t]
-- div,1
all c : Class , t : Teacher | t.Teaches.c
-- div,1
all c : Class | some Teaches.c in Teacher
-- div,1
all x:Class, t:Teacher | some t.Teaches.x
-- div,1
some c : Class, t : Teacher | c.Groups(t)
-- div,1
all t: Teacher | some t.Teaches in Groups
-- div,1
some c : Class, p : Person | (p.Teaches).c
-- div,1
some c : Class, p : Teacher | p.(c.Groups)
-- div,1
some x:Class|(all t:Teacher | t.Teaches.x)
-- div,1
some c : Class, p : Teacher | (c.Groups).p
-- div,1
some c: Class | some t: Teacher | Teaches.c
-- div,1
some c: Class | some t: Teacher | Teaches.t
-- div,1
some c:Class | some Teaches.c->c in Teaches
-- div,1
some c: Class | some t: Teacher | t.Teaches
-- div,2
all t : Teacher | (some c : Class| (c -> t))
-- div,1
some c : Class | c.(Person.Teaches) in Teacher
-- div,1
all c : Class , t : Teacher | some t.Teaches.c
-- div,1
some c : Class | (Person.Teaches).c in Teacher
-- div,2
all g : Class.Groups | some g.Person in Teacher
-- div,1
all p:Person | some x: Class | some p.Teaches.x
-- div,1
some c : Class, t : Teacher | c -> t not in none
-- div,1
all c : Class,t : Teacher | some t->c in Teaches
-- div,1
all t:Teacher | some x: Class | some t.Teaches.x
-- div,1
all g : Class.Groups | some g->Person in Teacher
-- div,1
some c: Class | some t: Teacher | t.c in Teaches
-- div,1
all t : Teacher | some c : Class | some t.c.Teaches
-- div,1
all t : Teacher | some c : Class | (c -> t) not none
-- div,1
