lone Teacher.Teaches
-- div,3
lone Teacher->Teaches
-- div,1
Teaches in Person -> one Class
-- div,2
Teaches in Teacher -> one Class
-- div,2
Teaches in Person -> lone Class
-- div,3
Teaches in Teacher -> lone Class
-- div,5
Teaches in Teacher one -> one Class
-- div,1
Teaches in Person one -> lone Class
-- div,1
Teaches in Teacher one -> lone Class
-- div,2
Teaches in Teacher lone -> lone Class
-- div,1
all t:Teacher | one t.Teaches
-- div,1
Teacher <:Teaches in Person -> one Class
-- div,1
Teacher <:Teaches in Teacher -> one Class
-- div,1
all t : Teacher | one c : Class | t->c in Teaches
-- div,1
all t:Teacher | all c:Class | t->c in Teaches implies c=1
-- div,1
all t:Teacher | all c1,c2 :Class |t->c1 in Teaches implies t->c2 not in Teaches
-- div,2
all t : Teacher | all c1, c2 : Class | c1 != c2 and (t->c1 in Teaches and t->c2 in Teaches)
-- div,1
all t1, t2 : Teacher | all c : Class | t1 != t2 and (t1->c in Teaches and t2->c in Teaches)
-- div,2
all t1, t2 : Teacher | some c : Class | t1 != t2 and (t1->c in Teaches and t2->c in Teaches)
-- div,1
all t : Teacher | one c1,c2 : Class | t->c1 in Teaches and t->c2 in Teaches implies c1=c2
-- div,1
all x : Teacher | all c : Class | all d : Class | x->c in Teaches implies x->d not in Teaches
-- div,1
all p:Person | some c: Class | p -> c in Teaches
  Teacher <:Teaches in Teacher -> one Class
-- div,1
all p:Teacher | some c: Class | p -> c in Teaches
  Teacher <:Teaches in Teacher -> one Class
-- div,1
