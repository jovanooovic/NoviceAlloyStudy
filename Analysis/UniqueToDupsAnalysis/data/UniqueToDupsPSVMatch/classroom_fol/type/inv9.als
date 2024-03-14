Class.Groups
-- div,1
Class.Teaches
-- div,1
Teaches.Class
-- div,1
Class.~Teaches
-- div,1
all c:Class | c.~Teaches
-- div,2
lone Teacher.Teaches.Class
-- div,1
one t: Teacher | t.Teaches
-- div,1
no Teacher in Teaches.Class
-- div,1
some t: Teacher | t.Teaches
-- div,1
all c:Class | one c.~Teacher
-- div,1
one Teacher in Teaches.Class
-- div,1
all c:Class | lone c.~Teacher
-- div,1
lone Teacher in Class.Teaches
-- div,1
lone Teacher in Teaches.Class
-- div,1
Class.~Teaches.Teaches in iden
-- div,1
one Teacher in Teacher.Teaches
-- div,1
all c : Class | lone Teacher.c
-- div,2
lone Teacher in Class->Teaches
-- div,1
lone Teacher in Teaches.Teaches
-- div,1
lone Teacher in Teacher.teaches
-- div,2
lone Teacher in Teacher.Teaches
-- div,1
Teacher.Teaches.~Teaches in iden
-- div,1
all c:Class,t:Teacher | t.Teaches
-- div,1
Teacher.Teaches -> lone Teacher
-- div,1
all c:Class,t:Teacher | Teaches.t
-- div,1
all c:Class,t:Teacher | ~Teaches.t
-- div,1
all p:Person | p.Teaches one Class
-- div,1
all c:Class,t:Teacher | t.Teaches.c
-- div,1
all c:Class,t:Teacher | c.~Teaches.t
-- div,1
all c : Teacher.Teacher | one Teacher
-- div,1
all c : Class | no Teacher in Teaches.c
-- div,1
all c:Class,t:Teacher | lone t.Teaches.c
-- div,1
all c : Class | lone Teacher in c.Groups
-- div,1
all c : Class | one Teacher in Teaches.c
-- div,3
all c:Class,t:Teacher| lone c->t ~Teaches
-- div,1
all c:Class,t:Teacher | lone c.~Teaches.t
-- div,2
all c : Class | lone Teacher in Teaches.c
-- div,4
some c : Class | lone Teacher in Teaches.c
-- div,1
all c : Class | lone (Teacher in Teaches.c)
-- div,1
all c : Class | #(Teaches->c & Teaches) < 2
-- div,2
all c : Class | #(Teaches->c & Teacher) < 2
-- div,1
all c : Class | #(Teacher->c & Teacher) < 2
-- div,2
all c:Class,t:Teacher | lone t->c in Teaches
-- div,1
all c : Class | lone c.Groups in Teacher.Teaches
-- div,1
all c:Class | some t:Teacher | lone t in Teaches.c
-- div,1
Teaches in Person one -> Class
  Teacher in Teacher one -> Class
-- div,1
all t:Teacher,c:Class | (lone t.Teaches) and (lone c->t in Groups)
-- div,1
some t: Teacher | some c: Class | c.Groups in Teacher and lone t.Teaches
-- div,1
all c:Class,t1,t2:Teaches | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,1
all c : Class | some t1, t2 : Teacher | t1 in Teaches.c and t2 in Teaches.c -> t1=t2
-- div,1
no c:Class | all p1,p2:Teacher | c in p1->Teaches and c in p2->Teaches implies p1=p2
-- div,1
all t1:Teacher,t2:Teacher,c:Class | (t1->c in Teacher and t2->c in Teacher) implies t1=t2
-- div,1
all c:Class, t1, t2:Teacher | (t1 -> c in Teaches) and (t2 -> c in Teacher) implies t1 = t2
-- div,1
Teaches in Person one -> Class
  Teaches in Teacher one -> Class
  Teacher in Student none -> Class
-- div,1
all t1,t2 : Teacher, c : Class | t1->c in Teaches and t2->c in Teaches implies t1=t2 not in Teaches
-- div,1
Teaches in Person one -> Class
  Teaches in Teacher one -> Class
  all s:Student, c:Class | s.c  none
-- div,1
Teaches in Person one -> Class
  Teaches in Teacher one -> Class
  all s:Student, c:Class | s -> c = none
-- div,1
