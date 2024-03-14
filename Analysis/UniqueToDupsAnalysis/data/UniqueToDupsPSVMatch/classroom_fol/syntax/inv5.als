some Teachs
-- div,2
Teacher.class
-- div,1
all p:Person |
-- div,1
some t.Teaches
-- div,1
all p:Teacher |
-- div,1
all x in Teacher
-- div,1
some x : Person |
-- div,4
all Teaches.Class
-- div,1
some Teacher.teaches
-- div,2
t : Teacher | some c in Class
-- div,1
some c:Classe,p:Person | c->p
-- div,1
some t:Teacher | some g:Group
-- div,1
all p:Person | some Teaches.c
-- div,1
all p:Person | c->p in Teaches
-- div,1
some c: Classes | c in Teaches
-- div,1
all t : Teacher | t->c in Teaches
-- div,1
all t : Teacher | t->_ in Teaches
-- div,1
all t:teacher | f1->f2 in Teaches
-- div,2
some c:Class, some t:Teacher | t->c
-- div,1
some c:Class; some t:Teacher | t->c
-- div,1
some t : Teacher | t.teaches in Class
-- div,4
all t : Teacher some c : Class | t->c
-- div,1
all t : Teacher, some c : Class | t->c
-- div,1
t : Teacher | t implies some c in Class
-- div,1
all p:Person | p in Person
-- div,1
some c: Class | all t: Teacher | c->t->g
-- div,1
some c: Class | some t: Teacher | t.class
-- div,1
all t:Person| t in Teacher and in t Class
-- div,1
t : Teacher | some c in Class implies t->c
-- div,1
all t:Teacher, c:Class | t -> c in teaches
-- div,1
some c : Class | p : Person | p in teacher
-- div,1
all c : Class | t : Teacher | t->c Teaches
-- div,1
some c : Class, t : Teacher | some c->t->G
-- div,1
some p:Person,c:Class | p in Teacher implies
-- div,1
some c: Class | all t: Teacher | t.teaches.c
-- div,1
all c:Class,lone t:Teacher | t->c in Teaches
-- div,1
some t : Teacher, c : Class | t->c in teaches
-- div,1
all t:Teacher, some c:Class | t->c in Teaches
-- div,1
all c : Class | t : Teacher | t->c in Teaches
-- div,1
some c:Class | some t:Teacher | p-> in Teaches
-- div,1
some c:Class | some t:Teachers | p-> in Teaches
-- div,1
some c : Class | some p : Person | p in teacher
-- div,1
some c : Class, t : Teacher | t.teahes in Class
-- div,2
some c: Class | all t: Teacher | p->c in Teaches
-- div,1
all p:Person | some c : Classe | p->c in Teaches
-- div,2
all t:Teacher and some c:Class | t->c in Teaches
-- div,1
some c : Class, t : Teacher | t.teaches in Class
-- div,1
some t: Teacher | some c:class | t->c in Teaches
-- div,1
all t: Teacher | some c: Class | some t.Teaches c
-- div,1
all x : Teacher | some y : Class | x->Y in Teaches
-- div,1
some c : Class, some t : Teacher | t->c in Teaches
-- div,2
some t : Teacher, some c : Class | t->c in teaches
-- div,1
some c : Class, some t : Teacher | c->t in Teaches
-- div,1
some t : Teacher, some c : Class | t->c in Teaches
-- div,5
all t: Teacher | some c: Class | some t.Teaches c.t
-- div,1
some c : Classes | some t : Teacher | p->c in Groups
-- div,1
all c : Class | some t : TEacher | t -> c in Teaches
-- div,1
t : Teacher | some c in Class implies t->c in Teaches
-- div,2
all f1,f2:File | f1->f2 in link implies f2 not in Trash
-- div,1
some c:Class, p:Person | p in Teacher and c in p.teaches
-- div,1
some c:Class, p:Person | p->c in teaches and p in Teacher
-- div,1
all p:Person | p in Teacher some c:Class | p->c in Teaches
-- div,1
all x : Person, c : Class | x->c in Teaches
-- div,1
some c : Class | t : Teacher, g : Group | c -> t -> g in Groups
-- div,1
some c : Class, some t : Teacher, some g : Group | c->t->g in Groups
-- div,1
some p : Person | p in Teacher and some c : Class |  p->c in teaches
-- div,1
some c:Class | hasTeacher[c]
}

pred hasTeacher[c:Class]{
	all g:Group | group_has_teacher[g]
-- div,1
some c:Class | hasTeacher[c] 
}

pred hasTeacher[c:Classes]{
	all g:Group | group_has_teacher[g]
-- div,1
some c:Classes | hasTeacher[c] 
}

pred hasTeacher[c:Classes]{
	all g:Group | group_has_teacher[g]
-- div,1
