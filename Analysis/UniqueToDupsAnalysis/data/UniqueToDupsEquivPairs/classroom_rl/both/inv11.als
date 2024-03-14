-- equiv pair start,3
some Teacher.Teaches.Groups
-- div,1
some Teacher & Teaches.(Groups.Group).Person
-- div,1
some Teacher & Teaches.((Groups.Group).Person)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,8
no (Person - Teacher).Teaches.Groups
-- div,1
Teaches.Groups.Group.Person in Teacher
-- div,1
Teaches.(Groups.Group.Person) in Teacher
-- div,2
all c:Class|  some c.Groups   implies Teaches.c in Teacher
-- div,1
all c : Class | (Person.(c.Groups) -> Teaches.c) in (Group -> Teacher)
-- div,1
all c : Class | some Person.(c.Groups) implies (Teaches.c in Teacher)
-- div,1
all c:Class | (some g:Group |some p:Person | c->p->g in Groups)   implies Teaches.c in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some Teacher.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,2
all t : Teacher | some  Class.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | no Teacher.(c.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher | t.Teaches = c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher | lone t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher | some t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Class | some Teacher.(c.Groups)
-- div,5
-- equiv pair end
-- equiv pair start,1
all c : Class  | c not in  Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
Teacher in  Teaches.((Groups.Group).Person)
-- div,1
all t : Teacher | some (t.Teaches).Groups
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class | no Teaches.c <=> no c.Groups
-- div,1
all c:Class | (some c.Groups iff some c.~Teaches )
-- div,2
-- equiv pair end
-- equiv pair start,7
all c : Class | some (c.Groups -> Teaches.c)
-- div,2
all c : Class | some (Person.(c.Groups) -> Teaches.c)
-- div,2
all c : Class | some ((c.Groups.Group -> Teaches.c) :> Teaches.c)
-- div,1
all c : Class | some (c.Groups.Group <: (c.Groups.Group -> Teaches.c))
-- div,1
all c : Class | some t : Teaches.c | (some p : Person, g : Group | c->p->g in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | Teaches.c in Person.(c.Groups)
-- div,1
all c : Class | Teaches.c in Tutors.(Student.(c.Groups))
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class | some Teaches.c => some c.Groups
-- div,2
all c : Class | some (Teaches.c) implies  (some (Person.(c.Groups)))
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Class | some Groups implies some Teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (Teaches.c in Class.Groups.Group)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Class | (some c.Groups) => (one Teaches.c)
-- div,1
all c:Class | some c.Groups implies (some Teaches.c && lone Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class | lone c.Groups implies some Teaches.c
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | all t : Teacher | some t.(c.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | no Teaches.c => no c->Person->Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | Teaches.c in Tutors.(c.Groups.Group)
-- div,1
-- equiv pair end
-- equiv pair start,3
some Class.Groups implies one Class.~Teaches&Teacher
-- div,1
some Person.(Class.Groups) implies one Class.~Teaches&Teacher
-- div,2
-- equiv pair end
-- equiv pair start,1
Tutors.Person in Teacher and Person.Tutors in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Teacher->c) implies some Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Student.(c.Groups) -> Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (Tutors.(c.Groups.Group) in Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | some c.Groups implies Teacher in c.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,7
all c:Class | some c.Groups implies Teacher in Teaches.c
-- div,1
all c : Class | some c.Groups implies Teacher->c in Teaches
-- div,1
all c : Class | some Person.(c.Groups) implies (Teacher in Teaches.c)
-- div,1
all c : Class, t : Teacher | t->c not in Teaches => no c.Groups
-- div,4
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher | t->c in Teaches => no c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Student - c.Groups.Group) + Teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | no c.Groups iff some t:Teacher| c in t.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class | lone c.Groups implies some Teaches.c & Teacher
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Class | some ((Person - c.Groups.Group) + Teaches.c)
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Class | Teacher in c.Groups.Group implies some Group
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Class | c.Groups.Group in Teacher implies some Group
-- div,1
all c : Class | c.Groups.Group in (Student+Teacher) implies some Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some ((Person - c.Groups.Group) -> Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (Teaches.c in (Class.Groups.Group & Teacher))
-- div,1
-- equiv pair end
-- equiv pair start,7
all t : Teacher, c : Class | t->c in Teaches => some c.Groups
-- div,1
all c : Class | some (Teacher & Teaches.c) implies  some (Person.(c.Groups))
-- div,6
-- equiv pair end
-- equiv pair start,1
all c : Class | ((Teaches.c & Teacher) in Class.Groups.Group)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class | no Teaches.c => c->Person->Group not in Groups
-- div,2
all c : Class | some p : Person | no Teaches.c => c->p->Group not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, p : Person | p->c not in Teaches => no c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (#c.Groups > 0) <=> (#(Teaches.c & Teacher) > 0)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some t : Teacher | t->c in Teaches => some Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher | t->c in Teaches => no c.Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | (#c.Groups > 0) and (#(Teaches.c & Teacher) >= 0)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,t:Teacher | some t.Teaches implies some c.Groups.Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (Tutors.(c.Groups.Group) in (Teaches.c & Teacher))
-- div,1
-- equiv pair end
-- equiv pair start,6
all c : Class | some t : Teacher | t->c in Teaches => some c.Groups
-- div,1
all c : Class | some t : Teacher | 
  		t->c in Teaches => (some p : Person, g : Group | c->p->g in Groups)
-- div,5
-- equiv pair end
-- equiv pair start,1
all c : Class | (#(Teaches.c & Teacher) > 0) implies (#c.Groups > 0)
-- div,1
-- equiv pair end
-- equiv pair start,5
all c: Class | some (Person - c.Groups.Group) + (Teacher & Teaches.c)
-- div,4
all c : Class | some (Person - c.Groups.Group) + (Teaches.c & Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some t : Teacher | t->c not in Teaches => no Groups.c
-- div,1
all c:Class | some t:Teacher | some c.Groups.Person implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some Teaches.c implies c -> Person -> Group in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | some p : Person | no Teaches.c => c->p->Group in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some (Student - c.Groups.Group) + (Teaches.c & Teacher)
-- div,1
all c: Class | some (Student - c.Groups.Group) + (Teacher & Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Class | lone ((Person - c.Groups.Group) + (Teacher & Teaches.c))
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (Teacher + Student) in c.Groups.Group implies some Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Teacher & Teaches.c) implies  (one (Person.(c.Groups)))
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | no (Teacher <: Teaches.c) => (c->Student->Group not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | some (Teacher & Teaches.c) implies  (lone (Person.(c.Groups)))
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,p:Person | some t:Teacher | some c.Groups.p implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,6
all c : Class | some Teaches.c & Teacher implies c -> Person -> Group in Groups
-- div,6
-- equiv pair end
-- equiv pair start,1
all c:Class|some s:Student | all g:Group | s->g in c.Groups implies c in Teacher.Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | c.Groups in Class.Groups implies (Teaches.c in (Teaches.Class & Teacher))
-- div,1
-- equiv pair end
-- equiv pair start,3
not some c:Class, t:Teacher, s:Student, g:Group | t->c not in Teaches and  c->s->g in Groups
-- div,1
all c:Class, t:Teacher | all s:Student, g:Group | c->s->g in Groups implies t->c in Teaches
-- div,1
not some c:Class, t:Teacher | some s:Student, g:Group | t->c not in Teaches and  c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class | all t:Teacher | some g:Group, s:Person | t->c in Teaches and c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class, t:Teacher | some s:Student, g:Group | c->s->g in Groups implies t->c in Teaches
-- div,1
all c:Class, t:Teacher | some s:Student, g:Group | t->c not in Teaches implies c->s->g not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
some c:Class, t:Teacher | some s:Student, g:Group | c->s->g in Groups implies t->c in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class | all t:Teacher | some g:Group, s:Student | t->c in Teaches and c->s->g in Groups
-- div,2
-- equiv pair end
-- equiv pair start,1
not some c:Class, t:Teacher | some s:Student, g:Group | t->c in Teaches and  c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
not some c:Class, t:Teacher, s:Student, g:Group | t->c not in Teaches implies  c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, t:Teacher | some s:Student, g:Group | t->c not in Teaches and c->s->g not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class, t:Teacher | all s:Student, g:Group | c->s->g not in Groups implies t->c not in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class| some s:Student, g:Group | c->s->g in Groups implies (some t:Teacher | t->c in Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c:Class, t:Teacher | some s:Student, g:Group | c->s->g not in Groups implies t->c not in Teaches
-- div,1
all c:Class | all t:Teacher | some g:Group, s:Student | t->c in Teaches implies c->s->g in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
not some c:Class, t:Teacher | some s:Student, g:Group | t->c not in Teaches implies c->s->g not in Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Class,g:Group | some t:Teacher,s:Student | s in c.Groups.g implies t->c in Teaches and t->g in c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher | 
  		t->c not in Teaches => (some p : Person, g : Group | c->p->g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class | some t : Teacher | t->c not in Teaches => (some p : Person, g : Group | c->p->g not in Groups)
-- div,3
-- equiv pair end
-- equiv pair start,1
all c : Class | some t : Teacher | 
  		t->c in Teaches => (some p : Person, g : Group | c->p->g not in Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | lone t : Teacher | 
  		t->c not in Teaches => (some p : Person, g : Group | c->p->g not in Groups)
-- div,1
-- equiv pair end
