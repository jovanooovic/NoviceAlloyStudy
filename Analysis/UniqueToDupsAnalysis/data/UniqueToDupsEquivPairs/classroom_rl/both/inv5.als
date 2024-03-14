-- equiv pair start,1
(#Teaches ) > 0
-- div,1
-- equiv pair end
-- equiv pair start,1
Teacher in Class
-- div,1
-- equiv pair end
-- equiv pair start,1
no Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
some Teacher -> Group
-- div,2
-- equiv pair end
-- equiv pair start,4
Class in Teaches.Class
-- div,1
all t : Class | some t.Teaches
-- div,1
all c: Class | some c.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
~Teaches.Teaches in iden
-- div,1
-- equiv pair end
-- equiv pair start,3
Teaches.Class in Teacher
-- div,1
all c : Class | Teaches.c in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,38
Teacher in Teaches.Class
-- div,3
all t:Teacher| some t.Teaches
-- div,30
all t: Teacher | not no t.Teaches
-- div,1
all t: Teacher | some ~Teaches.t
-- div,1
all p : Person | p in Teacher implies some p.Teaches
-- div,1
all t:Teacher {some c:Class | c in t.Teaches}
-- div,1
all t:Teacher | some c:Class | t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student | no s.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
some c:Class | lone Teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,3
all t:Teacher | lone t.Teaches
-- div,3
-- equiv pair end
-- equiv pair start,5
all c : Class | some Teaches.c
-- div,3
all x:Class | some Teaches.x
-- div,1
all c: Class | some c.~Teaches
-- div,1
-- equiv pair end
-- equiv pair start,3
all t: Teacher | some t.Tutors
-- div,2
all t: Teacher | some ~Tutors.t
-- div,1
-- equiv pair end
-- equiv pair start,1
Class->Teacher->Group in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | some p.Teaches
-- div,1
all p:Person {some c:Class | c in p.Teaches}
-- div,1
-- equiv pair end
-- equiv pair start,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class |  Teaches.c in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
some c : Class | some c->Teacher->Group
-- div,1
some c : Class, t : Teacher | some (c -> t -> Group)
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Class, p : Person | (p.Teaches) = c
-- div,1
-- equiv pair end
-- equiv pair start,1
some c:Class {all t:Teacher |c in t.Teaches}
-- div,1
-- equiv pair end
-- equiv pair start,1
some c:Class | all t:Teacher | t.Teaches = c
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher, s : Student | some t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all t: Teacher | some c: Class | t.Teaches = c
-- div,1
-- equiv pair end
-- equiv pair start,2
all t:Teacher { some c:Class | t.Teaches in c}
-- div,2
-- equiv pair end
-- equiv pair start,2
some c: Class | some t: Teacher | some t.(c.Groups)
-- div,1
some c : Class, t : Teacher, g: Group | c->t->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some t : Teacher | (some c : Class | some c->Groups->t)
-- div,1
-- equiv pair end
-- equiv pair start,1
no Student & Teacher and 
 	all t:Teacher { some t.Teaches}
-- div,1
-- equiv pair end
-- equiv pair start,2
all t : Teacher, s : Student | some t.Teaches and no s.Teaches
-- div,1
all t: Teacher, s: Student | not no t.Teaches and no s.Teaches
-- div,1
-- equiv pair end
