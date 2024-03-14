-- equiv pair start,7
all c : Class | c in (Teacher.Teaches)
-- div,2
all c : Class | some Teacher & Teaches.c
-- div,1
all c : Class | some (Teacher<:Teaches).c
-- div,1
all c : Class | c.Groups in Class.Groups implies (some (Teaches.c & Teacher))
-- div,1
all c : Class | c.Groups in Person -> Group implies (some Teaches.c & Teacher)
-- div,1
all c : Class | (some Teaches.c & Teacher) and c.Groups in Person -> Group
-- div,1
-- equiv pair end
-- equiv pair start,14
all c : Class | some (c.Groups).Teaches
-- div,1
all c : Class | some (c.Groups).Teacher
-- div,2
all c : Class | some c.(Groups.Teacher)
-- div,1
all c : Class | some Teaches.c.Groups
-- div,1
all c : Class | some (Groups).(Teacher.Teaches)
-- div,1
all c : Class | one (c.Groups).(Teacher.Teaches)
-- div,1
all c : Class | some (c.Groups).(Teacher.Teaches)
-- div,4
all c : Class | some (c.Groups).(Teacher<:Teaches)
-- div,1
all c : Class | some Teacher.(c.Groups).(Teacher<:Teaches)
-- div,1
all c : Class | some (Class.Groups - c.Groups) :> (Teaches.c & Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
some Class.Groups iff some t:Teacher| Class in t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | no (c.~Teaches :> Teacher) implies no Groups
-- div,1
all c: Class | some Groups implies some Teaches.c :> Teacher
-- div,1
-- equiv pair end
-- equiv pair start,4
some Person.(Class.Groups) implies one Person.Teaches&Teacher
-- div,1
all c : Class | (some c.Groups implies some (c.Teaches & Teacher))
-- div,2
all p:Person, c: Class | some p.(c.Groups) implies one p.Teaches&Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some c.Groups iff one t:Teacher | c in t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups.Group in (Teaches.c & Teacher).Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (#c.Groups > 0) and (#(Teaches.c & Teacher) = 1)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | (#c.Groups > 0) and (#(Teaches.c & Teacher) > 0)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Class | some t :Teacher | t->c in Teaches and some c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some t : Teacher | t->c not in Teaches => no Groups
-- div,1
-- equiv pair end
-- equiv pair start,13
all c: Class | some c.Groups iff (some t: Teacher | t in Teaches.c)
-- div,1
all c:Class | some c.Groups iff some t:Teacher| c in t.Teaches
-- div,12
-- equiv pair end
-- equiv pair start,10
all c : Class | some t : Teacher | t->c not in Teaches => no c.Groups
-- div,3
all c:Class | some t:Teacher | some c.Groups implies t->c in Teaches
-- div,1
all c : Class | some t : Teacher | no (t->c & Teaches) => no c.Groups
-- div,1
all c : Class | some t : Teacher | no (t <: Teaches).c => no c.Groups
-- div,1
all c: Class | some t:Teacher | some Person.(c.Groups) implies t in Teaches.c
-- div,1
all c:Class | some t:Teacher | some c.Groups.Group implies t->c in Teaches
-- div,3
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Class.Groups - c.Groups) -> (Teaches.c & Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group | some t:Teacher | some c.Groups.g implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (#c.Groups > 0) => (#(Teaches.c & Teacher) > 0) else #c.Groups = 0
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group | some t:Teacher | some c.Groups.g implies t->c in Teaches and t->g in c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher | 
  		t->c in Teaches <=> (some p : Person, g : Group | c->p->g in Groups)
-- div,2
-- equiv pair end
