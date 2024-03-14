Teacher in ~Teaches
-- div,1
Teacher in Teacher.Class
-- div,1
all t:Teacher,g:Group | t->g
-- div,1
all x : Teacher | lone x.Class
-- div,1
all t : Teacher | t in Teaches
-- div,2
Teacher.~Teaches.Teaches in iden
-- div,1
all x : Teacher | lone Class.Teacher
-- div,1
all t:Teacher,g:Group | t->g in Groups
-- div,2
all t : Teacher, c : Class | t->c in Class
-- div,1
iden  in (Teacher.Teaches).~(Teacher.Teaches)
-- div,1
all t : Teacher | some c : Class | t->c Teaches
-- div,1
Teacher in (Teacher.Teaches).~(Teacher.Teaches)
-- div,1
all p:Person | p in Teaches implies p in Teacher
-- div,3
all p:Person,c:Class | p in Teacher implies p->c
-- div,1
iden & Teacher in (Teacher.Teaches).~(Teacher.Teaches)
-- div,1
all p1,p2:Person | p1->p2 in Class implies p1 in Teacher
-- div,1
(iden & Teacher) in (Teacher.Teaches).~(Teacher.Teaches)
-- div,1
all p:Person,c:Class,g:Group | p in Teacher implies c->p->g
-- div,1
all p:Person | p in Teaches => some c:Class | p->c in Teaches
-- div,1
all p:Person,c:Class,g:Group | p in Teacher implies c->p->g in Class
-- div,2
