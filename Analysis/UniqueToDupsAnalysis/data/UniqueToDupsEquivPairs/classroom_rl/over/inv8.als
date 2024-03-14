-- equiv pair start,1
lone Person.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
one Teacher.Teaches
-- div,4
-- equiv pair end
-- equiv pair start,1
one Teacher->Teaches
-- div,1
-- equiv pair end
-- equiv pair start,16
lone Teacher.Teaches
-- div,12
#Teacher.Teaches < 2
-- div,1
lone (Teacher.Teaches & Class)
-- div,1
all t : Teacher | lone Teacher.Teaches
-- div,1
all t : Teacher | #Teacher.Teaches < 2
-- div,1
-- equiv pair end
-- equiv pair start,14
~Teaches.Teaches in iden
-- div,11
no ~Teaches.Teaches - iden
-- div,1
let c = ~Teaches | c.~c in iden
-- div,1
all t:Person | lone t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,7
all t:Teacher | one t.Teaches
-- div,2
all t: Teacher | #t.Teaches = 1
-- div,1
all t: Teacher { one c: Class | t.Teaches = c }
-- div,1
all t:Teacher { one c:Class | c in t.Teaches }
-- div,2
all t:Teacher { one c:Class | t in c.~Teaches }
-- div,1
-- equiv pair end
-- equiv pair start,2
#(Teacher & Teaches.Class) < 1
-- div,1
all t : Teacher, c, c1 : Class | (t->c + t->c1) in Teaches => c != c1
-- div,1
-- equiv pair end
-- equiv pair start,1
Teaches in Teacher  -> lone Class
-- div,1
-- equiv pair end
-- equiv pair start,1
iden in ~ Teaches . Teacher <: Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Teacher | lone t.Teaches + Class
-- div,1
-- equiv pair end
-- equiv pair start,2
all disj c1,c2: Class | c1 in Teacher.Teaches iff c2 not in Teacher.Teaches
-- div,1
all disj c1,c2: Class | c1 in Teacher.Teaches and c2 not in Teacher.Teaches or c1 not in Teacher.Teaches and c2 in Teacher.Teaches
-- div,1
-- equiv pair end
