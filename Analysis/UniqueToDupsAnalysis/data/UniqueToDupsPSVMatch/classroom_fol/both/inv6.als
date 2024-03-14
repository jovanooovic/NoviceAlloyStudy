~Teaches.Teaches in iden
-- div,1
Teacher.Teaches in Teacher
-- div,1
all p:Person,c:Class | p->c in Teaches
-- div,1
all t:Teacher,c:Class | t->c in Teaches
-- div,8
all x : Teacher, y : Class  | x->y in Teaches
-- div,1
all t:Teacher, c:Class | c->t in Teaches
-- div,1
all x : Teacher | all c : Class | x->c in Teaches
-- div,1
all t:Teacher | all c:Class | t->c in Teaches
-- div,3
all p:Person,c:Class | p in Teacher implies p->c in Teaches
-- div,3
all p:Person,c:Class,g:Group | p in Teacher implies c->p->g in Groups
-- div,1
all p:Person |some c:Class | (p in Teacher and p not in Student) implies p->c in Teaches
-- div,1
