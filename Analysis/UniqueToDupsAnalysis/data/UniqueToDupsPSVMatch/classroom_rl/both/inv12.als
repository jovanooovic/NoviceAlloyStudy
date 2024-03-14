~((Groups.Group)) in Teaches
-- div,1
some Class.Groups->Teacher
-- div,1
some Teacher.Teaches.Groups
-- div,3
Teacher in Class.Groups.Group
-- div,2
some (Teacher<:Teaches).Groups
-- div,1
some Teacher<:(Teaches.Groups)
-- div,1
~((Groups.Group):>Teacher) in Teaches
-- div,5
Teaches in ~((Groups.Group):>Teacher)
-- div,1
all t:Teacher | some t.Tutors
-- div,3
Teacher in Tutors.(Class.Groups.Group)
-- div,1
Teacher.Teaches in Groups.Group.Person
-- div,1
Teaches.(Groups.Group.Person) in Teacher
-- div,1
Teaches.Groups.Group.Person in Teacher
-- div,2
all t:Teacher | some t.~Tutors
-- div,1
all t: Teacher | some Class.Groups[t]
-- div,5
all t : Teacher | some Groups.Group.t
-- div,1
some t : Teacher | some (t.(Class.Groups))
-- div,1
all t : Teacher | lone t.Teaches.Groups
-- div,1
all t:Teacher | some t <: Class.Groups
-- div,3
all t : Teacher | #Class.Groups->t > 0
-- div,2
all t: Teacher | t in Class.Groups.Group
-- div,2
all t: Teacher | some (t.Tutors).(Class.Groups)
-- div,1
all t:Teacher, c:Class | some t.(c.Groups)
-- div,2
some c:Class| some (Teaches.c) and  some c.Groups
-- div,1
some g:Group | some (Class.Groups.g & Teaches.Class)
-- div,1
all c:Class,g:Group | some (c.Groups.g & Teacher)
-- div,1
all t: Teacher | some c: Class | some Groups[c][t]
-- div,1
all t: Teacher | some g: Group | some (Groups.g).t
-- div,1
all t : Teacher | all c : t.Teaches | some c.Groups
-- div,1
some c:Class| no(Teaches.c -Person) and  some c.Groups
-- div,1
all t: Teacher | t in (Class.Groups.Group & Teaches.Class)
-- div,1
all t : Teacher | some t.(Class.Groups) and some t.Teaches
-- div,1
all t : Teacher | some t.Teaches and some t.(Class.Groups)
-- div,4
some c:Class| no(Teaches.c -Teacher) and  some c.Groups
-- div,1
all t: Teacher | some g: Group | t in Class.Groups.g
-- div,1
some c:Class| some Teaches.c + Teacher and  some c.Groups
-- div,1
all t : Teacher | some g : Group | t->g in (Class.Groups)
-- div,1
some g:Group | some (Class.Groups.g & Teaches.Class & Teacher)
-- div,1
all t:Teacher | some g:Group | some (Class.Groups.g & t)
-- div,1
all t:Teacher | all g:Group | t.Tutors in g.~(Class.Groups)
-- div,3
all t:Teacher | some g:Group | t.Tutors in g.~(Class.Groups)
-- div,4
all t : Teacher | some c : Class, g : Group | c->t->g in Groups
-- div,1
all t:Teacher, c:Class | some g:Group | c->t->g in Groups
-- div,2
all c:Class,t:Teacher | some t.Teaches implies some c.Groups.Group
-- div,2
all t: Teacher | some g: Group | all c: Class | c->t->g in Groups
-- div,1
all t: Teacher | some g: Group | some c: Class | c->t->g in Groups
-- div,2
all t:Teacher, c:Class | some g:Group | t->c in Teaches implies c->t->g in Groups
-- div,1
all t:Teacher, c:Class | t->c in Teaches implies some g:Group |  c->t->g in Groups
-- div,1
all p: Person | some g: Group | all c: Class | p in Teacher implies c->p->g in Groups
-- div,1
all p: Person | some g: Group | all c: Class | p not in Student implies c->p->g in Groups
-- div,1
all t: Teacher, g:Group, c:Class,s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
some c:Class| some (Teaches.c & Person) and  some g:Group, p:Person | c->p->g in Groups
-- div,2
all t: Teacher | all c: Class | some g: Group | t->c in Teaches and c->t->g in Groups
-- div,1
some c:Class| some (Teaches.c - Teacher) and  some g:Group, p:Person | c->p->g in Groups
-- div,1
some c:Class| some (Teaches.c & Teacher) and  some g:Group, p:Person | c->p->g in Groups
-- div,2
some c:Class| some (Teaches.c & Teacher) implies  some g:Group, p:Person | c->p->g in Groups
-- div,1
all t: Teacher | some c: Class | some g: Group | t->c in Teaches implies c->t->g in Groups
-- div,1
all t:Teacher | some p:Person, c:Class, g:Group |  c->p->g in Groups implies t->p in Teaches
-- div,1
all t: Teacher, g:Group, c:Class | some  s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
all t: Teacher, g:Group | some c:Class, s:Student | c->s->g in Groups implies t->c in Teaches
-- div,1
all p: Person | some g: Group | all c: Class | p in Teacher and p not in Student implies c->p->g in Groups
-- div,1
Teacher in Class.Groups.Group && 
  all t: Teacher | some c: Class | c in t.Teaches implies t in c.Groups.Group
-- div,1
all t: Teacher|some c: Class | t->c in Teaches implies some s:Student, g:Group | c->s->g in Groups
-- div,1
