no Teaches
-- div,1
no (Teaches . Class)
-- div,2
no (Class -> Teacher)
-- div,1
one Class.~Teaches
-- div,1
(Teaches . Class) = Class
-- div,2
lone (Teacher <: Teaches)
-- div,2
lone Teaches.~Teaches
-- div,1
(Teaches).~(Teaches) = iden
-- div,1
Teaches.~Teaches in iden
-- div,17
Teaches.*Teaches in iden
-- div,1
Teaches in Person lone -> Class
-- div,1
lone (Teaches.Class & Teacher)
-- div,1
Teaches in Teacher lone -> Class
-- div,1
all c: Class | no Teaches.c
-- div,1
all c:Class| one Teaches.c
-- div,9
all c:Class| lone Teaches.c
-- div,57
(Teacher <: Teaches).~Teaches in iden
-- div,3
Teacher <: Teaches.~Teaches in iden
-- div,1
all t : Teacher | no t.Teaches
-- div,1
no c : Class | #Teaches.c > 1
-- div,1
all c : Class | lone c->Teaches
-- div,1
all c : Class | lone c->Teacher
-- div,2
all c : Class | lone Teacher->c
-- div,3
all c : Class | #Teaches.c < 2
-- div,2
all c : Class | #Teacher->c < 2
-- div,6
all c:Class | lone Teaches:>c
-- div,1
all c:Class | lone c.~Teaches
-- div,3
all c:Class | not (some Teaches.c)
-- div,1
all c: Class | #(Teaches.c) <= 1
-- div,1
all c : Class | #(Teacher->c) <= 1
-- div,1
all t1, t2: Person.Teaches | t1 != t2
-- div,1
all t1, t2: Teacher.Teaches | t1 != t2
-- div,1
all c:Class| one Teaches.c & Teacher
-- div,1
all c : Class |  one (Teacher & Teaches.c)
-- div,2
((Teacher + Student) <: Teaches).~(Teaches) in iden
-- div,1
all c : Class | lone Person -> c & Teaches
-- div,1
iden in (~Teaches :> Teacher) . (Teacher <: Teaches)
-- div,1
all c:Class,t:Teacher | lone Teaches.c
-- div,1
all c:Class,p:Person | lone Teaches->c
-- div,1
all t1, t2: Teacher | t1.Teaches not in t2.Teaches
-- div,1
all t : Teacher | one ( t & Groups.Group.Teacher)
-- div,2
~Teaches.Teaches in iden and Teaches.~Teaches in iden
-- div,1
all c:Class| one t:Teacher | t = Teaches.c
-- div,1
all c:Class| one t:Teacher | t in Teaches.c
-- div,1
all c : Class | one t : Teacher | c in Teaches.t
-- div,1
all c : Class | one t : Teacher | c in t.Teaches
-- div,2
all c: Class | one t: Teacher | t->c in Teaches
-- div,1
all c : Class | #(Teacher->c) > 0 and #(Teacher->c) < 2
-- div,2
all c:Class,p:Person | lone Teaches.c and lone p.Teaches
-- div,3
all c:Class,p:Teacher | lone Teaches.c && lone p.Teaches
-- div,5
all c:Class,p:Person | lone Teaches->c and lone p->Teaches
-- div,2
one t1:Teacher | one t2:Teacher| t1.Teaches != t2.Teaches
-- div,1
all c : Class, t, t1 : Teacher |  t->c in Teaches implies t1->c not in Teaches
-- div,1
all c : Class | lone (Teaches.c & Teacher)
  
  Class in (lone Teacher.Teaches)
-- div,1
