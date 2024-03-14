-- equiv pair start,1
Person in Tutors.Person
-- div,1
-- equiv pair end
-- equiv pair start,1
Person in Tutors.Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | some c.Groups.Group
-- div,2
-- equiv pair end
-- equiv pair start,1
all c:Class | lone Student.(c.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
~((Groups.Group):>Teacher) in Teaches
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student | some s.(Class.Groups)
-- div,2
-- equiv pair end
-- equiv pair start,2
all s : Student | some s.(Class<:Groups)
-- div,1
all s : Student | some Tutors.s & Groups.s.Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, s : Student | some c.Groups
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | some s.(Teacher<:Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, s : Student | some c.Groups.s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student , t:Teacher | some Tutors.s :>t
-- div,1
-- equiv pair end
-- equiv pair start,1
all s,t : Person, c : Class | some s.(c.Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Class, s: Student, t: Teaches.c | t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all t : Teacher | some Tutors.((t.Teaches).Groups.Group)
-- div,1
-- equiv pair end
-- equiv pair start,8
all c : Class | (c.Groups).Group in ((Teaches.c).Tutors)
-- div,3
all c : Class | c . (Groups . Group) in (Teaches . c . Tutors)
-- div,5
-- equiv pair end
-- equiv pair start,2
all c : Class | Teaches . c . Tutors = c . Groups . Group
-- div,1
all c : Class | (c . (Groups . Group)) = (Teaches . c . Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | Teaches . c . Tutors in c . Groups . Group
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, t : Teacher, c : Class | some s.(c.Groups)
-- div,2
-- equiv pair end
-- equiv pair start,1
Tutors = (Teaches.Person) -> Group.~((Person.Teaches).Groups)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | Teaches . c . Tutors = Class . Groups . Group
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Class | Teaches.c in Tutors.(c.Groups.Group & Student)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups).Group in (Teaches.c & Tutors.Person)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups).Group in (Teaches.c & Person.Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups).Group in (Teaches.c & Teacher.Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups).Group in (Teaches.c & Tutors.Student)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person |some g:Group | all t:Teacher | no t->Groups.(p->g)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | Student.(c.Groups) in (Teaches.c & Person.Tutors)
-- div,1
all c : Class | Student.(c.Groups) in (Teaches.c & Teacher.Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s,t : Person, c : Class | some s.(c.Groups) and some t.Teaches
-- div,2
-- equiv pair end
-- equiv pair start,5
all c : Class | Teaches.c -> (Class.Groups.Group & Student) in Tutors
-- div,5
-- equiv pair end
-- equiv pair start,2
all s,t : Person, c : Class | some s.(c.Groups) and some (t<:Teaches).c
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | c . Groups . Group in (Teacher <: Teaches) . c . Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups).Group in (Tutors.(Teaches.c) & Tutors.Person)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c.Groups).Group in ((Teaches.c).Tutors & Teacher.Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | some s.(Class.Groups)   implies some (Teacher<:Tutors).s
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Class, p: c.Groups.Group, t: Teacher & Teaches.c | p -> t in Tutors
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Class | (c . (Groups . Group)) in (Teaches . c . Tutors) & Student
-- div,1
-- equiv pair end
-- equiv pair start,4
all c : Class | (c . (Groups . Group)) & Student in (Teaches . c . Tutors)
-- div,2
all c : Class | ((c.Groups).Group & Student) in ((Teaches.c).Tutors)
-- div,1
all c : Class | (c . (Groups . Group)) & Student in (Teaches . c . Tutors) & Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, s : Student, t : Teaches.c | some g : Group | s in t.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | ((c.Groups).Group) in ((Teaches.c).Tutors + Teacher.Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c . (Groups . Group)) & Student = ((Teaches . c) . Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person, c : Class | some s.(c.Groups) implies (Tutors.s in Teaches.c)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | (some c:Class, t:Teacher | t->c in Teaches and t->s in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, c : Class | some s.(c.Groups) implies (Tutors.s in Teaches.c)
-- div,2
-- equiv pair end
-- equiv pair start,4
all c : Class | (Teaches.c & Teacher) -> (Class.Groups.Group & Student) in Tutors
-- div,3
all s : Student, t : Teacher | some s.(Class.Groups) and some (t<:Teaches).Class implies some (t<:Tutors).s
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, t : Teacher | some s.(Class.Groups) implies some t.(Class.Groups)
-- div,3
-- equiv pair end
-- equiv pair start,1
all s:Student | (some c:Class, t:Teacher | t->c in Teaches implies t->s in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s:Student ,c:Class |  some (s <:c.Groups) implies  no  (Teaches.c  & Tutors.s)
-- div,2
-- equiv pair end
-- equiv pair start,2
all s: Student, t: Teacher | some c: Class | c->t in Teaches implies t->s in Tutors
-- div,1
all s: Student, t: Teacher | some c: Class | c->t->s in Groups implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Class, p: Student & c.Groups.Group, t: Teacher & Teaches.c | p -> t in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | ((c.Groups).Group & Student) in ((Teaches.c).Tutors + Teacher.Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class | (c . (Groups . Group)) & Student = (Teacher & (Teaches . c) . Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,3
all c : Class | (c . (Groups . Group)) & Student in (Teacher & (Teaches . c)) . Tutors
-- div,2
all s:Student,c:Class, g:Group  | (c->s->g in Groups implies some t:Teacher | t->c in Teaches and t->s in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person, c : Class | some s.(Teacher<:Tutors) implies some c.(Teacher<:Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class | (c . (Groups . Group)) & Student in (Teacher & (Teaches . c) . Tutors)
-- div,1
all c : Class | (c . (Groups . Group)) & Student in (Teaches . c . Tutors) & Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class | some (Teacher<:Teaches).c implies some s.(Teacher<:Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class | some s.(c.Groups) and some Teaches.c implies some s.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class | some s.(Teacher<:Tutors) implies some c.(Teacher<:Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class | some (Teacher<:Teaches).c implies some s.(Teacher<:Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student | one c: Class | all t: Teacher | c->t->s in Groups implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class, t : Teacher, s : Student {
      c in t.Teaches implies s in t.Tutors
    }
-- div,1
all s:Student | (all c:Class, t:Teacher | t->c in Teaches implies t->s in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s: Student | some c: Class | all t: Teacher | c->t->s in Groups implies t->s in Tutors
-- div,2
-- equiv pair end
-- equiv pair start,2
all s : Student, c : Class | some s.(c.Groups) implies (Tutors.s in ( Teacher & Teaches.c))
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student ,c:Class |  some (s <:c.Groups) implies  no ( (Teaches.c & Teacher) & (Tutors.s) )
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class | some s.(c.Groups) and some Teacher & Teaches.c implies some s.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student | some s.(Class.Groups) and some Teacher.Teaches implies some (Teacher<:Tutors).s
-- div,1
all s : Student | some s.(Class.Groups) and some Teacher<:Teaches implies some (Teacher<:Tutors).s
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Class, s : Student, t : Teaches.c | some g : Group | 
  		c->s->g in Groups && s in t.Tutors
-- div,1
all c : Class, t : Teaches.c | all s : Student | some g : Group | c->s->g in Groups and s in t.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class, s : Student, t : Teaches.c | some g : Group | 
  		c->s->g in Groups => s in t.Tutors
-- div,1
all c : Class, t : Teaches.c | all s : Student | some g : Group | c->s->g in Groups => s in t.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teaches.c implies some Tutors.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teaches.c implies some t.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Class, t:Person | some g:Group | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teacher & Teaches.c implies some t.Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teacher & Teaches.c implies some Tutors.t
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person, c:Class, t:Teacher | some g:Group | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Class | some s.(c.Groups) and some Teaches.c implies (Tutors.s in ( Teacher & Teaches.c))
-- div,3
-- equiv pair end
-- equiv pair start,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (Teaches.c & t) implies some (Tutors:>t).s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Class, t:Teacher | some g:Group | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student,c:Class, g:Group  | (c->s->g in Groups implies all t:Teacher | t->c in Teaches and t->s in Tutors)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t.Teaches).Groups implies some (t<:Tutors).s
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some Teaches.c & Teacher implies some (t<:Tutors).s
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher | t->c in Teaches => (all s : Student | c->s->Group in Groups => s in t.(Tutors :> Student))
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Class, t : Teacher | t->c in Teaches => (all s : Student | some g : Group | c->s->g in Groups => s in t.Tutors)
-- div,1
all c : Class, t : Teacher | t->c in Teaches => (all s : Student | some g : Group | c->s->g in Groups => s in t.(Tutors :> Student))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class | some s.(c.Groups) and some Teacher & Teaches.c implies (Tutors.s in ( Teacher & Teaches.c))
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Class, t : Teacher | t->c in Teaches => (all s : Student | some g : Group | c->s->g in Groups => s in t.Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teaches.c implies Tutors.s in ( Teacher & Teaches.c)
-- div,2
-- equiv pair end
-- equiv pair start,2
all p1, p2 : Person, c : Class | some g : Group | c -> p2 -> g in Groups and p1 -> c in Teaches implies p1 -> p2 in Tutors
-- div,1
all s:Person, c:Class, t:Person | some g:Group | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some t.Teaches implies (Tutors.s in ( Teacher & Teaches.c))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and t.Teaches in Class implies (Tutors.s in ( Teacher & Teaches.c))
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | 
  		some c : Class | (s in c.Groups.Group) implies (
        	all t : Teaches.c :> Teacher | s in t.Tutors
        )
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person, c:Class|some g :Group |c->p->g in Groups implies  some t:Teacher| t->c in Teaches 
														   implies t->p in Tutors
-- div,2
-- equiv pair end
