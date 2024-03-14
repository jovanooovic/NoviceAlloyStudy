all t1, t
-- div,1
all t1,t2:Teacher |
-- div,6
all c:Class | lone c.Teahces
-- div,4
all c:Class : one c.~Teaches
-- div,1
Teacher.Teaches | one Teacher
-- div,1
Teacher.Teacher | one Teacher
-- div,1
all c:Class : lone c.~Teaches
-- div,1
all c : Class | lone Tecahes.c
-- div,1
teaches in Teacher one -> Class
-- div,1
lone Teavher in Teacher.teaches
-- div,1
all Teaches.Class | one Teacher
-- div,1
no some Teacher in Teaches.Class
-- div,1
all Teacher.Teaches | one Teacher
-- div,1
all Teacher.Teacher | one Teacher
-- div,1
all p:Person | p.teaches one Class
-- div,1
all c : Class | all t1,t2 : Teacher |
-- div,1
all c:Class| t1,t2:Teacher | some Class
-- div,1
all c:Class | t1,t2:Teacher | some Teacher
-- div,1
all c : Class, | #(Teacher -> c & Teaches)<2
-- div,1
all c : Class | no some Teacher in Teaches.c
-- div,1
all t:Teacher | lone t.Teaches & lone t.Groups
-- div,1
all c : Class, one t : Teacher | t->c in Teaches
-- div,1
all c : Class | t1, t2 : Teacher | t1 in Teaches.c & t2 in Teaches.c -> t1=t2
-- div,1
all c : Class | t1, t2 : Teacher | t1 in Teaches.c & t2 in Teaches.c :> t1=t2
-- div,1
all c : Class, x, y : Teacher | y->c in Teaches and x->c in Teaches implies x=Y
-- div,1
all t1:Teacher,t2:Teacher,c:Class | ((t1->c and t2->c) in Teaches implies t1=t2
-- div,2
all c : Class | t1, t2 : Teacher | t1 in Teaches.c and t2 in Teaches.c -> t1=t2
-- div,1
all t1,t2:Teacher, c:Class | (t1->c in Teaches and t2->c in Teaches) implies t=p
-- div,3
no c:Class | p1,p2:Teacher | c in p1->Teaches and c in p2->Teaches implies p1=p2
-- div,1
all c:Class| t1,t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,1
all c:Class | all t,u : Teacher | t-> in Teaches and u->c in Teaches implies t=u
-- div,1
all c:Class | t1,t2:Teacher | t1->c in Teaches and t1->c in Teaches implies t1=t2
-- div,1
all c:Class | t1,t2:Teacher | c->t1 in Teaches and c->t2 in Teaches implies t1=t2
-- div,1
all c:Class | t1,t2:Teacher | c->t1 in ~Teaches and c->t2 in ~Teaches implies t1=t2
-- div,1
all c:Class | all t1,t2:Teacher | t->c1 in Teaches and t->c2 in Teaches implies t1=t2
-- div,1
all t : Teacher, y : Teacher | all c : Class | t->c in Teaches and y->c in Teaches t=y
-- div,1
all c : Class | some y, z : Teacher | y->c in Teaches and z->c in Teaches implyes z = y
-- div,1
all t : Teacher, y : Teacher | all c : Class | t->c in Teaches and y->c in Teaches t==y
-- div,1
all t:Teacher,t2:Teacher,c:Class | (t1->c in Teaches and t2->c in Teaches) implies t1=t2
-- div,1
all some c :Class | all t1,t2 : Teacher | t1->c in Teaches and t2->c in Teaches => t1 = t2
-- div,1
not some c :Class, all t1,t2 : Teacher | t1->c in Teaches and t2->c in Teaches and t1 = t2
-- div,1
all some c :Class | all t1,t2 : Teacher | (t1->c in Teaches and t2->c in Teaches) => t1 = t2
-- div,1
all c : Class | some t1, t2 in Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,1
all t1:Teacher, t2:Teacher, c:Classe | (t1->c in Teaches and t2->c in Teaches) implies t1=t2
-- div,1
Teaches in Person one -> Class
  Teaches in Teacher one -> Class
  Teacher in Student no -> Class
-- div,2
all t1,t2 : Teacher, c : Class | t1->c in Teaches an t2->c in Teaches implies t1->t2 not in Teaches
-- div,1
all c:Class,t1,t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,1
all c : Class | all p1, p2 : Person | p1, p2 in Teacher and p1 -> c in Teaches and p2 -> c in Teaches => p1 = p2
-- div,3
all c : Class | all p1, p2 : Person | p1, p2 in Teacher and p1 -> c in Teaches and p2 -> c in Teaches => p1 = 		p2
-- div,1
