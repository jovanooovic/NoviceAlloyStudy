some teaches
-- div,2
some Taeches
-- div,1
some classes
-- div,1
Teacher.class
-- div,1
some c: Class:
-- div,1
some t.Teaches
-- div,1
all t:Teacher |
-- div,1
Teacher.teaches
-- div,1
all Teaches.Class
-- div,1
some Teacher.Teach
-- div,1
some teaches.Class
-- div,1
no Teascher.Teaches
-- div,1
some Teacher.teaches
-- div,4
some Teachers.Teaches
-- div,1
Teacher.Teaches = some
-- div,1
some  p.Teaches in Class
-- div,1
some t.Teaches & Teacher
-- div,1
Teachers in Teaches.Class
-- div,1
all t : Teacher | some c->t
-- div,1
some p : person | p.Teaches
-- div,1
some Classes in Teaches.Class
-- div,1
all t: Teacher | some t.Tutor
-- div,1
all t:Teacher | t.Teaches = c
-- div,5
Teacher.Teaches = some Classes
-- div,1
all t:Teacher | some t.teaches
-- div,1
all c : Class | some t.Teaches
-- div,1
all t : Teacher | some class.t
-- div,1
all t: Teacher: some t.Teaches
-- div,1
all t : Teacher : some t.Class
-- div,1
all t: Teacher | some t.teaches
-- div,1
some t : Class | some c.Teaches
-- div,1
all t : Teacher | some t.teaches
-- div,3
for t: Teachers | some t.teaches
-- div,1
some c:Class, t:Teacher | t->c in
-- div,1
some (Teaches . Class & Teacher)
}

run test{ inv5 and not inv5o
}

pred inv5{
  some (Teaches . Class & Teacher)
}

run test{ inv5 and not inv5o
-- div,1
some c:Class | Techear.Teaches = c
-- div,1
some t: Teacher | t.Teaches = Classes
-- div,1
all c : Class |  teaches.c in Teacher
-- div,1
Class->Teacher->Group in Groups
}

run test{ inv5 and not inv5o
}

pred inv5{
	Class->Teacher->Group in Groups
}

run test{ inv5 and not inv5o
-- div,8
some  Teacher and some Class in Theches
-- div,1
some c : Class, p : Teacher | p.(c.groups)
-- div,1
all t:Teacher, some x: Class | t.Teaches.x
-- div,1
some c: Class |all t: Teacher | c.groups->t
-- div,1
all t:Teacher, some c:Class | t->c in Teaches
-- div,1
all p:Person | some x: Class | some t.Teaches.x
-- div,1
all t:Teacher, some c:Class | t -> c in Teaches
-- div,1
all t:Teacher; some c:Class | t -> c in Teaches
-- div,1
all t : Teacher, all c : Class | some t.Teaches.c
-- div,1
all t : Teacher | (some c : Class| (c -> t) not none)
-- div,1
all t : Teacher | (some c : Class | (c -> t) not none)
-- div,1
some c: Class |all t: Teacher | c.groups->t in Teacher
-- div,1
some c : Class, t : Teacher, g: Group c->t->g in groups
-- div,1
some c : Class, t : Teacher, g: Group | c->t->g in groups
-- div,1
all t : Teacher, s : Student | some t.Teaches & no s.Teaches
-- div,1
all t : Teacher, s : Student | some t.Teaches | no s.Teaches
-- div,1
