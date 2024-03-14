all t : Teacher
-- div,2
all t : Teacher |
-- div,2
all Teaches.Teaches
-- div,1
all Teacher.Teaches
-- div,3
all t:Teacher | t->c
-- div,1
all t : Teacher | some c :
-- div,2
all t:Teacher | t->c , c:Class
-- div,1
all t: Teacher | all t.Teaches
-- div,1
all t:Teacher | some t.Teasches
-- div,1
Teachs in Teacher -> some Class
-- div,1
all t:Teacher | t->some c : Class
-- div,1
all t:Teacher some c: Class| t->c
-- div,1
id in (Teacher.Teaches).~(Teacher.Teaches)
-- div,1
all t:Teacher,some c:Class | t->c in Teaches
-- div,2
all t:Teacher; some c:Class | t->c in Teaches
-- div,1
all t:Teacher, some c:Class | t->c in Teacher
-- div,1
all t:Teacher ,some c:Class | t->c in Teaches
-- div,2
all t:Teacher, some c:Class | t->c in Teaches
-- div,4
all t:Teacher | some c:Class | t->c in Teache
-- div,1
all t : Teacher, c : class | t -> c in Teaches
-- div,1
all t:Teacher | (some c:Class) t->c in Teaches
-- div,1
all t : Teacher, some c : Class | t->c in Class
-- div,1
all t: Teacher | some t.Teaches | c.Groups in t
-- div,1
all t : Teacher | some c : Class t->c in Teaches
-- div,1
all t : Teacher, some x : Class | t->x in Teaches
-- div,2
all t : Teacher, some c : Class | t->c in Teaches
-- div,4
all t : Teacher | some c : Class | t->c in teaches
-- div,1
(all t : Teacher | some c : Class | t-> in Teaches)
-- div,2
all p:Person,c:Class | p in Teacher implies t->c in Teaches
-- div,1
all p:Person | p in Teach => some c:Class | p->c in Teaches
-- div,1
all p:Person,some c:Class | p in Teacher implies p->c in Teaches
-- div,2
all p:Person, some c:Class | p in Teacher implies p->c in Teaches
-- div,1
all p:Person, | some c:Class | p in Teacher implies p->c in Teaches
-- div,1
