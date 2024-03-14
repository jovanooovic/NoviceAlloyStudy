all p : Person |
-- div,2
-Teaches.Teaches in iden
-- div,1
all T:Teacher | lone Teaches.t
-- div,1
all t.Teacher | lone t.Teaches
-- div,2
all t:Teacher | t.Teaches = one
-- div,1
all t: Teacher | lone c: Class |
-- div,5
Teaches in set Person -> one Class
-- div,1
Teaches in set Teacher -> one Class
-- div,1
all t : Teacher | c : Class | t->c in Teaches
-- div,1
-(Teacher<:Teaches).(Teacher<:Teaches) in iden
-- div,5
all t : Teacher , c : Class | lone t->c in Teaches
-- div,1
-(Teacher<:Teaches) . (Teacher <: Teaches) in iden
-- div,2
t1,t2 : Teacher | some c : Class | t1->c and t2->c implies t1=t2
-- div,1
all t : Teacher | lone c : Class | t->c in Teaches
-- div,1
all t : Teacher c,d:Class | t->c in Teaches and t->d in Teaches implies c=d
-- div,1
all t : Teacher | c,u : Class | t->c in Teaches and t->u in Teaches implies c=u
-- div,1
all t:Teacher | c1,c2:Class | c1 in t.Teaches and c2 in t.Teaches implies c1=c2
-- div,1
all t1,t2:Teacher, all c:Class | t1->c in Teaches and t2->c in Teaches => t1=t2
-- div,1
all t:Teacher,c:Class,g:Class | (t->c in Teaches) implies (t->g not in teaches)
-- div,1
all c1:Class,c2:Class,t:Teacher | (t->c1 in Teaches implies not t1->c2 in Teaches
-- div,1
all t1,t2:Teacher, all c:Class | (t1->c in Teaches and t2->c in Teaches) => t1=t2
-- div,1
all c1:Class,c2:Class,t:Teacher | (t->c1 in Teaches implies not( t1->c2 in Teaches)
-- div,1
all t : Teacher | some x,y : Class | t->x in teaches and t->y in Teaches implies x=y
-- div,1
all t : Teacher | (some x,y : Class | t->x in Teaches and t->y in Teaches) implies x=y
-- div,1
all t : Teacher, some c1,c2 : Class | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
-- div,3
all t : Teacher | one c1,c2 : Class | t->c1 in Teaches and t->c2 in Teaches impplies c1=c2
-- div,1
all t1,t2:Teacher | some c1,c2:Class | t1->c in Teaches and t2->c1 in Teaches implies t1=t2
-- div,1
all t:Teachers, c1,c2:Class | (t -> c1 in Teaches) and (t -> c2 in Teaches) implies c1 = c2
-- div,1
all p:Person | some c: Class | t -> c in Teaches
  Teacher <:Teaches in Teacher -> one Class
-- div,1
all t1,t2:Teacher | some c1,c2:Class | t1->c in Teaches and t2->c1 in Teaches implies t1=t2 |
-- div,1
all t:Teachers, c1,c2:Class and (t -> c1 in Teaches) and (t -> c2 in Teaches) implies c1 = c2
-- div,1
all t:Teachers | c1, c2:Class and (t -> c1 in Teaches) and (t -> c2 in Teaches) implies c1 = c2
-- div,1
all c1, c2 : Class | some p : Perso | p in Teacher and p -> c1 in Teaches => p -> c2 in Teaches
-- div,1
all t:Teachers | all c1, c2:Class and (t -> c1 in Teaches) and (t -> c2 in Teaches) implies c1 = c2
-- div,1
all c1, c2 : Class, all p : Person | p in Teacher and (p -> c1 in Teaches && p -> c2 in Teaches) => c1 = c2
-- div,2
some t1:Teacher , t2:Teacher | (t1->c in Teaches and t2->c in Teaches) implies t1 = t2 or (not t1-> and not t2->c)
-- div,1
some t1:Teacher , t2:Teacher | (t1->c in Teaches and t2->c in Teaches) implies t1 = t2 or (not t1->c and not t2->c)
-- div,1
all t:Teacher | all c1,c2:Class | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
-- div,1
all t1,t2:Teacher | some c1,c2:Class | t1->c1 in Teaches and t1->c2 in Teaches implies c1=c2 | t1->c in Teaches and t2->c1 in Teaches implies t1=t2
-- div,1
all t1,t2:Teacher | some c1,c2:Class | t1->c1 in Teaches and t1->c2 in Teaches implies c1=c2 | t1->c1 in Teaches and t2->c1 in Teaches implies t1=t2
-- div,1
all t1,t2:Teacher | some c1,c2:Class | t1->c1 in Teaches and t1->c2 in Teaches implies c1=c2 | t1->c in Teaches and t2->c1 in Teaches implies t1=t2 |
-- div,1
