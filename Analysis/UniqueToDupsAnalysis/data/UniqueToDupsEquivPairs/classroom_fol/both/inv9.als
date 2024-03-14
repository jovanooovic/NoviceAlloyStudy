-- equiv pair start,5
lone Teacher.Teaches
-- div,1
all c : Class | lone Teacher.Teaches
-- div,1
all c : Class | #(Teacher.Teaches)<2
-- div,2
all c : Class |( c in Teacher.Teaches implies #(Teacher.Teaches)<2)
-- div,1
-- equiv pair end
-- equiv pair start,1
Teacher in Teaches.Class
-- div,1
-- equiv pair end
-- equiv pair start,2
~Teaches.Teaches in iden
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Person | one p.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Teacher | one p.Teaches
-- div,1
all t:Teacher | one t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,8
all t:Teacher | lone t.Teaches
-- div,4
all t:Teacher | lone ~Teaches.t
-- div,1
all c:Class,t:Teacher | lone t.Teaches
-- div,1
all t:Teacher | lone t.Teaches and lone t.Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
some t: Teacher | one t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
one t: Teacher | lone t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
some t: Teacher | lone t.Teaches
-- div,3
-- equiv pair end
-- equiv pair start,4
all c : Class | Teacher in Teaches.c
-- div,1
all c : Class, t : Teacher | t->c in Teaches
-- div,1
all c:Class,t1,t2:Teacher | t1->c in Teaches
-- div,1
all c : Class | all t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class | Teacher in Teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
Class.~Teaches.Teaches in Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Class | some t: Teacher | t->c in Teaches
-- div,1
no c:Class | all p1,p2:Teacher | c in p1.Teaches and c in p2.Teaches implies p1!=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Teacher | all c : Class | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
lone t : Teacher | all c : Class | t->c in Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all t:Teacher | (lone t.Teaches) and (lone t->Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
some t: Teacher | t not in Student and lone t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t:Teacher | lone t.Teaches and (no Student & Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class |( c in Teacher.Teaches and #(Teacher.Teaches)<2)
-- div,1
-- equiv pair end
-- equiv pair start,1
no c:Class | all p1,p2:Teacher | c in p1.Teaches and c in p2.Teaches implies p1=p2
-- div,1
-- equiv pair end
-- equiv pair start,1
not some c :Class | all t1,t2 : Teacher | t1->c in Teaches and t2->c in Teaches and t1 = t2
-- div,1
-- equiv pair end
-- equiv pair start,9
all c : Class | some t, x : Teacher | t -> c in Teaches and x -> c in Teaches implies t = x
-- div,1
all c : Class | some y, z : Teacher | y->c in Teaches and z->c in Teaches implies z = y
-- div,1
all c:Class | some t1,t2:Teacher | t1->c in Teaches and t2->c in Teaches implies t1=t2
-- div,5
not some c :Class | all t1,t2 : Teacher | t1->c in Teaches and t2->c in Teaches and t1 != t2
-- div,2
-- equiv pair end
-- equiv pair start,1
some t : Teacher | all c : Class | t->c in Teaches
	all c : Class | all t : Teacher | t->c in Teaches
-- div,1
-- equiv pair end
