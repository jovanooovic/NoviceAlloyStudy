all t :
-- div,2
all c : C
-- div,1
all c : Class |
-- div,1
all c:Class | lone t.Teaches
-- div,1
all c.Class | lone Teaches.c
-- div,2
all c.Class | lone c.Teaches
-- div,3
!(Teacher some -> one Class)
-- div,1
all c.Class | lone t.Teaches
-- div,1
all c : Class | lone Teches.c
-- div,1
all c: Class | lone Teaches.c
-- div,1
all c : Class | lone teaches.c
-- div,1
all c : Class | lone t.Teaches
-- div,1
all c:Class | lone Teaches.c and
-- div,1
Teacher.teaches some -> one Class
-- div,1
all c : Class | Techer in Teaches.c
-- div,1
all c : Class | c in one Teacher.Teaches
-- div,1
all : Class | lone (Teaches.c & Teacher)
-- div,1
all c:Class | t:Teacher | one t.Teaches:>c
-- div,1
all c : Class, | Teacher->c not in Teaches
-- div,2
all c : Class | lone (Teaches.c & Teachers)
-- div,1
all c : Class | lone Person -> c & Teaches)
-- div,1
all c:Class| lone Teaches.c
-- div,1
all c:Class, one t:Teacher | t in Teaches.c
-- div,1
all t : Teacher | (all c : t.Teaches | some )
-- div,2
all c:Class | lone t:teacher | t in c.~Teaches
-- div,1
(Teaches.~Teaches) :> (Teacher,Teacher) in iden
-- div,1
((Teacher + Students) <: Teaches).~(Teaches) in iden
-- div,1
all c:Class,Teacher | lone Teaches.c and lone p.Teaches
-- div,1
all c:Class,p:person | lone Teaches.c and lone p.Teaches
-- div,1
all c : Class, t, t1 : Teacher | (t->c + t->c1) in Teaches => t = t1
-- div,1
no c : Class | some disj t1,t2 | c in t1.Teaches and c in t2.Teaches
-- div,1
c : Class, disj t1,t2 : Teacher | not c in (t1.Teaches & t2.Teaches)
-- div,1
all c : Class, all disj t1,t2 : Teacher | not c in (t1.Teaches & t2.Teaches)
-- div,1
all c:Class,t1,t2:Class | t1->c in teaches and t2->c in teaches implies t1=t2
-- div,1
all c:Class,t1:t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,1
all c:Class,t1,t2:Teacher | t1->c in teaches and t2->c in teaches implies t1=t2
-- div,1
