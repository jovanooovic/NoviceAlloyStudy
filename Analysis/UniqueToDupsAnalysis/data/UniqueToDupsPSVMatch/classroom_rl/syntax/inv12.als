all t:
-- div,1
all t: Teacher
-- div,1
all t:Teacher |
-- div,3
all t : Teacher |
-- div,2
Teacher<:Teaches).Groups
-- div,1
all t : Teacher | some ()
-- div,2
all t:Teacher | some t.tutors
-- div,1
all t: Teacher | some t.Tutor
-- div,1
all t:Teachers | some(Groups.t)
-- div,1
all t : Teacher | some+ t.Teaches.Groups
-- div,1
all t : Techer | some (t.Teaches.Groups)
-- div,1
all t : Teacher | some (t.Teaches).Groupos
-- div,1
all t : Teacher | some groups in t.Teaches
-- div,2
some g:Group | some (Class.Groups.g & Teaches.c)
-- div,1
some ~Teaches&Teacher.Groups & some Group in Class
-- div,1
all t : Teacher | some ((t.Teaches).Groups).Person)
-- div,1
all t : Teacher | t & Teaches.c & (some Class.Groups)
-- div,1
all g:Group | some c:Class,some t:Teacher | some Classes
-- div,1
some c:Class |  all t: Teaches.c | some a->t->g in Groups
-- div,1
some c:Class |  all a: Teaches.c | some a->s->g in Groups
-- div,1
some c:Class |  all t: Teaches.c | some c->t->g in Groups
-- div,1
some c:Class |  all a: Teaches.c and some a->s->g in Groups
-- div,1
all g:Group | some c:Class,some t:Teacher | t->g in c.Groups
-- div,1
all t : Teacher | some ((t.Teaches) & ((Groups.Person).Group)
-- div,1
all t : Teacher | some ((t.Teaches) & ((Groups.Person).Groups)
-- div,1
iden in  ~(Teatcher <: Teaches.Groups) . (Teatcher <: Teaches.Groups)
-- div,1
all t: Teacher | some c: Class | some Person.(c.Groups) | t->c in Teaches
-- div,1
all t:Teacher | some c.Class | t.Teaches:>c implies c.Person.Group:>Groups
-- div,1
all p: Person | some g: Group | all c: Class | p in Teacher c->p->g in Groups
-- div,1
all t : Teacher | some p : Person, g : Group | some g.(p.((t.Teaches).Groups)))
-- div,1
all g:Group | some c:Class,some t:Teacher | t->g in c.Groups and t->c in Teaches
-- div,1
some c:Class| somee (Teaches.c - Teacher) and  some g:Group, p:Person | c->p->g in Groups
-- div,1
Teacher in Class.Groups.Group
  for t: Teacher | some c: Class | c in t.Teaches implies t in c.Groups.Group
-- div,1
Teacher in Class.Groups.Group
  for t: Teacher | some c: Class | c in t.Teaches implies t in c.Groups.Group
-- div,1
Teacher in Class.Groups.Group && 
  for t: Teacher | some c: Class | c in t.Teaches implies t in c.Groups.Group
-- div,1
