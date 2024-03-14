-- equiv pair start,6
Teacher.Teaches = Class
-- div,1
all c : Class | one (c & Teacher.Teaches)
-- div,1
all c:Class | one Teacher.Teaches:>c
-- div,2
all c : Class | some Teaches.c & Teacher
-- div,1
all c: Class | some t: Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,8
~Teaches.Teaches in iden
-- div,6
~(Teaches:>Class).(Teaches:>Class) in iden
-- div,2
-- equiv pair end
-- equiv pair start,4
all c:Class |  some Teaches.c
-- div,4
-- equiv pair end
-- equiv pair start,5
no ( Teaches.Class - Teacher)
-- div,1
(Teaches . ~Teaches) in (Teacher -> Teacher)
-- div,2
all c: Class | Teaches.c in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,7
all t:Teacher | lone t.Teaches
-- div,3
~(Teacher <: Teaches).(Teacher <: Teaches) in iden
-- div,1
all p : Person | p in Teacher implies lone p.Teaches
-- div,1
all c : Class, t : Teacher | lone ((t.Teaches)->c)
-- div,1
all t:Teacher | all c1, c2:Class | t->c1 in Teaches and t->c2 in Teaches implies c1 = c2
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Teacher | one t.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
all c: Class | #(Teaches.c) <= 2
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Class | not lone Teaches.c
-- div,1
all c : Class | not (lone Person -> c & Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
lone t:Teacher | t.Teaches = Class
-- div,1
lone t:Teacher | all c:Class | c in t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,6
all c:Class | lone Teacher.Teaches
-- div,3
all t : Teacher | lone Teacher.Teaches
-- div,1
all c : Class | lone (Teacher.Teaches->c)
-- div,2
-- equiv pair end
-- equiv pair start,5
all t : Teacher | Class in t.Teaches
-- div,1
all c:Class | Teacher in Teaches.c
-- div,2
all c:Class,t:Teacher | one t.Teaches:>c
-- div,1
all c: Class | all t: Teacher | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | one Groups.Group.t
-- div,1
-- equiv pair end
-- equiv pair start,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | #Teacher.(c.Groups) = 1
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | #Teacher.(c.Groups) < 1
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Class | #Teacher.(c.Groups) <= 1
-- div,2
-- equiv pair end
-- equiv pair start,4
all c : Class | lone Teaches.c - Teacher
-- div,4
-- equiv pair end
-- equiv pair start,1
all c : Class | #Teacher->(c.Groups) < 1
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | Teacher->c not in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class |  no (Student & Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Teacher.Teaches->c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | Class in Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class | not lone Teacher -> c & Teaches
-- div,3
-- equiv pair end
-- equiv pair start,1
all t : Teacher | one ( t & Class.Groups.Group)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,p:Teacher | lone Teaches.c implies lone p.Teaches
-- div,1
-- equiv pair end
