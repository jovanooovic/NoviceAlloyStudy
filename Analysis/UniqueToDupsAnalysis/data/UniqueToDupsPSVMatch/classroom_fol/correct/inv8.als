all t:Teacher | lone t.Teaches
-- div,33
all t : Teacher | (#t.Teaches)<2
-- div,2
~(Teacher<:Teaches).(Teacher<:Teaches) in iden
-- div,6
all t:Teacher | lone c:Class | t->c in Teaches
-- div,8
all x,y:Class, t:Teacher | t->x in Teaches and t->y in Teaches implies x=y
-- div,1
all x : Teacher, y, t : Class | x -> y in Teaches and x -> t in Teaches implies y = t
-- div,2
all t : Teacher , c,u : Class | t->c in Teaches and t->u in Teaches implies c=u
-- div,1
all t : Teacher, c,d:Class | t->c in Teaches and t->d in Teaches implies c=d
-- div,2
all t : Teacher, x, y : Class | t->x in Teaches and t->y in Teaches implies x = y
-- div,2
all x: Teacher, y,z: Class | x->y in Teaches and x->z in Teaches implies y=z
-- div,5
all t : Teacher, c, c1 : Class | t->c in Teaches and t->c1 in Teaches implies c = c1
-- div,1
all t:Teacher,c1,c2:Class | c1 in t.Teaches and c2 in t.Teaches implies c1=c2
-- div,2
all p:Teacher, c1, c2:Class | p->c1 in Teaches and p->c2 in Teaches => c1=c2
-- div,1
all c1,c2:Class,t:Teacher | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
-- div,1
all t:Teacher, c1, c2:Class |t->c1 in Teaches and t->c2 in Teaches=>c1=c2
-- div,37
all p:Teacher, c1, c2:Class | c1 = c2 or not (p->c1 in Teaches and p->c2 in Teaches)
-- div,1
(all t : Teacher | all c,u : Class | (t->c in Teaches and t->u in Teaches) implies c=u)
-- div,1
all t : Teacher | all x,y : Class | t->x in Teaches and t->y in Teaches implies x=y
-- div,2
all c1,c2:Class | all t:Teacher | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
-- div,5
all p : Teacher | all c1, c2 : Class | (p->c1 in Teaches and p->c2 in Teaches) => c1 = c2
-- div,1
all t: Teacher | all c1,c2: Class | t->c1 in Teaches and t->c2 in Teaches => c1=c2
-- div,19
all c1:Class,c2:Class,t:Teacher | (t->c1 in Teaches and t->c2 in Teaches) implies c1 = c2
-- div,5
all c1, c2 : Class, p : Person | p in Teacher and (p -> c1 in Teaches && p -> c2 in Teaches) => c1 = c2
-- div,1
all c1, c2 : Class | all p : Person | p in Teacher and (p -> c1 in Teaches && p -> c2 in Teaches) => c1 = c2
-- div,1
all x : Teacher | all c : Class | all d : Class | x->c in Teaches and c!=d implies x->d not in Teaches
-- div,1
