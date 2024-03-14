-- equiv pair start,3
some ~Teaches&Teacher.Groups
-- div,1
iden in  (~Teaches :> Teacher) . (Teacher <: Teaches)
-- div,1
~iden.iden in ~((Teacher.Teaches).Groups).((Teacher.Teaches).Groups)
-- div,1
-- equiv pair end
-- equiv pair start,21
all t:Teacher  | some Groups.t
-- div,2
all t:Teacher | some t.Groups
-- div,3
Teacher in Tutors.Class.Groups.Group
-- div,1
all t : Teacher | some (t <: Group)
-- div,2
all t : Teacher | some t.Groups.Group
-- div,1
all t: Teacher | some (Class.Groups).(t.Tutors)
-- div,1
all t : Teacher | some (((t.Teaches).Groups).Person)
-- div,1
all t: Teacher | some g: Group | t->g in Teaches
-- div,1
all t: Teacher | t in (Class.Groups.Group & t.Teaches)
-- div,1
all t : Teacher | some t.Teaches & Groups.Person.Group
-- div,7
all t: Teacher | some g: Group | some (t.Groups).g
-- div,1
-- equiv pair end
-- equiv pair start,2
Teaches.(Groups.Group.Person) = Teacher
-- div,1
Teaches.Groups.Group.Person = Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
some c:Class| all t:Teacher |t->c in Teaches and  some c.Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all t: Teacher | some c: Class | some g: Group | t->c in Teaches and c->t->g in Groups
-- div,1
-- equiv pair end
