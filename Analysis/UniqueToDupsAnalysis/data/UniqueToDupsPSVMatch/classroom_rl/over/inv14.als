Tutors = ((Person.Teaches).Groups)
-- div,1
all c : Class | no c.Groups.Group
-- div,1
Tutors = (Person.Teaches) -> Group.~((Person.Teaches).Groups)
-- div,1
all c : Class | Teaches.c -> Class.Groups.Group in Tutors
-- div,1
all s, t : Person | some s.(Class.Groups) and some t<:Teaches implies some (t<:Tutors).s
-- div,1
all s, t : Person | some s.(Class.Groups) and some t<:Teaches implies some t<:(Tutors.s)
-- div,1
all s, t : Person | some s.(Class.Groups) and some t<:(Teaches.Class) implies some t<:(Tutors.s)
-- div,1
all p1, p2 : Person, c : Class | (some g : Group | c -> p2 -> g in Groups) implies (p1 -> p2 in Tutors and p1 -> c in Teaches)
-- div,1
all s:Person,c:Class, g:Group  | (c->s->g in Groups implies all t:Person | t->c in Teaches and t->s in Tutors)
-- div,1
