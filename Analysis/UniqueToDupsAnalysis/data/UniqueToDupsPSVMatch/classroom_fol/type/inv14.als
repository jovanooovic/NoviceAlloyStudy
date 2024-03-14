all s:Groups.Group | some Groups
-- div,1
all c : Class, s : c.Student.Groups.Group | iden
-- div,1
some c:Class ,g:Groups | all s :Student | g in c
-- div,1
all c:Class,s:Student,t:Teacher,g:Groups | c->s->g in Groups
-- div,1
some c:Class |some g:Groups | all s :Student | c->(s->g) in Groups
-- div,1
all s:Student,c:Class|some t:Teacher | t->c in Teaches and c.Groups
-- div,1
all s:Student,c:Class|some t:Teacher | t->c in Teaches and c.Groups.s
-- div,2
some c:Class ,g:Groups ,t:Teacher| all s :Student | c->(s->g) in Groups
-- div,1
all c : Class, s : c.Student.Groups.Group, t : Teacher.c | s in t.Tutors
-- div,1
all s:Student,c:Class,g:Group|some t:Teacher | t->c in Teaches and c.Groups.g
-- div,1
some c:Class |some g:Groups |some t:Teacher| all s :Student | c->(s->g) in Groups
-- div,1
all c:Class,s:Student,t:Teacher,g:Groups | c->s->g in Groups and c->t->g in Groups
-- div,1
all s : Student, c : Class | some t : Teacher | c->s in Groups implies t->s in Tutors
-- div,2
all s : Student, c : Class, g : Group | c->s implies some t : Teacher | t->s in Tutors
-- div,1
all c:Class,s:Student,t:Teacher | s.(c.Groups) and t.(c.Groups) implies t in c.^~Tutors
-- div,1
some c:Class ,g:Groups ,t:Teacher| all s :Student | c->(s->g) in Groups  and t->c in Teaches
-- div,1
some c:Class ,g:Groups ,t:Teacher| all s :Student | (c->(s->g) in Groups  and t->c in Teaches)
-- div,1
some c:Class ,g:Groups ,t:Teacher| all s :Student | c->(s->g) in Groups implies t->s in Tutors
-- div,1
all c:Class,s:Student,t:Teacher | some s.(c.Groups) and some t->c in Teaches implies t in s.^~Tutors
-- div,1
all p:Person,c:Class,t:Teacher | (some g:Group | c->p->g in Groups) and t->c in Teaches implies t->p
-- div,1
all ps,t : Person | some c : Class, g : Group | c->ps->g in Groups and t->c in Teaches implies t->ps
-- div,2
all s:Student,c:Class,g:Group|some t:Teacher | t->c in Teaches and some s.(c.Groups) and  t.(c.Groups)
-- div,1
all c : Class, g : Group, p1, p2 : Person | (p1->c in Teaches and c->p2->g) implies (p1->p2 in Tutors)
-- div,1
all s:Student,c:Class|some t:Teacher | t->c in Teaches and c.Groups.s and  c.Groups.t implies t in s.^~Tutors
-- div,1
all c : Class , s : Student , t : Teacher | 
    ((c->s in Class )and(t->c in Teaches)) implies t->s in Tutors
-- div,1
all c : Class, s : Student | some t : Teacher | ((c->s in Groups) and (c->t in Groups)) implies t->s in Tutors
-- div,1
some s :Student | some c:Class | some g:Group | c->s->g in Groups and some t:Teacher| t->c implies t->s in Tutors
-- div,1
all s:Student | some c:Class,g:Group | (c->s->g in Group and some t:Teacher | t->c in Teaches and t->s in Tutors)
-- div,1
some c:Class ,g:Groups ,t:Teacher| all s:Student | c->(s->g) in Groups  and t->c in Teaches implies t->s in Tutors
-- div,1
some s :Student | some c:Class | some g:Group | c->s->g in Groups and (some t:Teacher| t->c implies t->s in Tutors)
-- div,1
some s :Student | some c:Class | some g:Group | c->s->g in Groups and (some t:Teacher| t->c) implies t->s in Tutors
-- div,1
all t : Teacher | some c : Class, s : Person, g : Groups | t->c in Teaches and c->s->g in Groups and t->s in Tutors
-- div,1
all s : Student | some c:Class, g:Group | (c->s->g in Group and some t:Teacher | t->c in Teaches and t->s in Tutors)
-- div,1
some c:Class ,g:Groups ,t:Teacher| all s :Student | (c->(s->g) in Groups  and t->c in Teaches) implies t->s in Tutors
-- div,2
all s:Student,c:Class | all t:Teaches | (some g:Group | c->s->g in Groups) and t->c in Teaches implies t->s in Tutors
-- div,1
all t : Teacher | some c : Class, s : Person, g : Groups | t->c in Teaches and c->s->g in Groups implies t->s in Tutors
-- div,2
all s:Student | (some c:Class,g:Groups | c->s->g in Groups) implies (some t:Teacher | t->c in Teaches and t->s in Tutors)
-- div,1
all s : Student | some t : Teacher | some c : Class | some g : Group | c->s->g in Group and t->c in Teaches => t->s in Teaches
-- div,1
all s:Student,c:Class|some t:Teacher,g:Group | t->c in Teaches and  s.(c.Groups).g and one t.(c.Groups) implies t in s.^Tutors
-- div,1
all s:Student,c:Class,g:Group|some t:Teacher | t->c in Teaches and some s.(c.Groups) and  t.(c.Groups) implies t in s.^~Tutors
-- div,1
all s:Student,c:Class|some t:Teacher,g:Group | t->c in Teaches and one s.(c.Groups).g and one t.(c.Groups) implies t in s.^Tutors
-- div,1
