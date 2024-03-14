-- equiv pair start,113
(Teacher->Teacher) & Teaches.~Teaches in iden
-- div,2
Teaches.~Teaches & Teacher->Teacher in iden
-- div,1
let t = Teacher <: Teaches | t.~t in iden
-- div,1
let R = Teacher <: Teaches | R.~R in iden
-- div,1
all c: Class | lone Teacher & Teaches.c
-- div,8
all c:Class| lone Teaches.c & Teacher
-- div,36
all c: Class | lone Teacher :> Teaches.c
-- div,4
no c : Class | #(Teacher & Teaches.c) > 1
-- div,1
all c:Class | lone Teaches.c:>Teacher
-- div,6
all c : Class | lone Teacher -> c & Teaches
-- div,1
(Teacher<:Teaches).~(Teacher<:Teaches) in iden
-- div,6
(Teacher <: Teaches) . (~Teaches :> Teacher) in iden
-- div,4
all c : Class | (#Teaches.c & Teacher) < 2
-- div,1
all c:Class | lone c.~Teaches&Teacher
-- div,12
all c : Class | #(Teacher->c & Teaches) < 2
-- div,2
all c : Class { lone t : Teacher | c in t.Teaches }
-- div,1
all c: Class | lone t: Teacher | t->c in Teaches
-- div,3
all c:Class {lone t:Teacher | t in c.~Teaches}
-- div,7
all c : Class, t, t1 : Teacher | t->c + t1->c in Teaches => t = t1
-- div,2
all c : Class, disj t1,t2 : Teacher | not c in (t1.Teaches & t2.Teaches)
-- div,4
no c : Class | some disj t1,t2 : Teacher | c in t1.Teaches and c in t2.Teaches
-- div,1
all c: Class, t1, t2: Teacher | c in t1.Teaches and c in t2.Teaches implies t1 = t2
-- div,1
all t1,t2:Teacher, c:Class | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,1
all c:Class,t1,t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,3
all c: Class | all x, y: Teacher | c in x.Teaches and c in y.Teaches implies x = y
-- div,1
all t1, t2:Teacher | all c:Class | t1->c in Teaches and t2->c in Teaches implies t1 = t2
-- div,1
all t1: Teacher, t2: Teacher, c:Class | (t1->c in Teaches and t2->c in Teaches) implies t1 = t2
-- div,1
all t : Teacher, y : Teacher | all c : Class | t->c in Teaches and y->c in Teaches implies t=y
-- div,1
-- equiv pair end
