Teacher.Teaches in iden
-- div,1
Teaches Teacher -> one Class
-- div,1
all t:Teacher | lone t.Teacher
-- div,2
all c:Class | lone Teacher.Teaches.c
-- div,1
all t : Teacher, c,d:Class | t->c and t->d implies c=d
-- div,1
all t : Teacher|all c,d:Class | t->c and t->d implies c=d
-- div,1
all t1,t2 : Teacher | some c : Class | t1->c and t2->c implies t1=t2
-- div,1
all t1,t2 : Teacher | some c : Class | t1->c and t2->c implies t1 = t2
-- div,1
all t : Teacher | some c1,c2 : Class | t->c1 and t->c2 implies c1 = c2
-- div,1
all t:Teacher | lone t.Teaches
  ~(Teaches<:Teaches).(Teaches<:Teaches) in iden
-- div,3
some t1:Teacher , t2:Teacher, c:Class | (t1->c in Teaches and t2->c in Teaches) implies t1 = t2 or (not t1->c and not t2->c)
-- div,2
