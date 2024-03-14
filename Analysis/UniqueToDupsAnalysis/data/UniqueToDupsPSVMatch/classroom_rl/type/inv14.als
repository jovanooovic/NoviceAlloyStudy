all c : Class | c.Groups.Group
-- div,1
all s : Student | some s.Class
-- div,3
all s : Student | some Class.s
-- div,1
Tutors = Person.(Teacher.Teaches)
-- div,1
all c : Class | c.Groups.Group <: Student
-- div,1
Tutors = Person.((Person.Teaches).Groups)
-- div,1
Tutors = Group.~((Person.Teaches).Groups)
-- div,1
all c : Class | c.Groups.Group :> Student
-- div,1
all s:Student | all c:Class| s <: c.Groups
-- div,1
all c : Class, s : c.Person | s in Teaches.c.Tutors
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c)
-- div,1
all c : Class, s : c.Groups->Person | s in Teaches.c
-- div,2
all s: Student | Teacher in Teaches.Groups.(s->Group)
-- div,1
all s: Student | Teaches.Groups.(s->Group) in Teacher
-- div,1
all c: Class, s: Groups.c, t: Teaches.c | t->s in Tutors
-- div,1
all c : Class, s : c.Groups.Person | s :> Teaches.c.Tutors
-- div,1
all c : Class, s : c.Groups.Person | s <: Teaches.c.Tutors
-- div,1
all c : Class, s : c.Groups, t : Teaches.c | s in t.Tutors
-- div,1
all c : Class, s : c.Student, t : Teaches.c | s in t.Tutors
-- div,2
all c : Class, s : c.Groups->Person | s in Teaches.c.Tutors
-- div,2
all c : Class, s : c->Groups.Person | s in Teaches.c.Tutors
-- div,1
all c : Class, p : c.Groups, t : Teacher->c | t->p in Tutors
-- div,1
all s : Student | some s.(Class.Groups) & (Teacher.Tutors).s
-- div,1
all c : Class, s : c->Student, t : Teaches.c | s in t.Tutors
-- div,1
all p:Person |some g:Group | all t:Teacher | t->Groups.(p->g)
-- div,1
all s : Student | some s.(Class.Groups) and (Teacher.Tutors).s
-- div,1
all s: Student | all g: Group | Teaches.Groups.(s->g) in Teacher
-- div,1
all c : Class, s : c.Groups.Person.Group | s in Teaches.c.Tutors
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and c.(t.Teaches)
-- div,1
all s:Student | all t:Teacher | t->s in Tutors implies t <:Groups
-- div,1
all s: Student | some g: Group | Teaches.Groups.(s->g) in Teacher
-- div,2
all c : Class, p : c.Groups.Person, t : Teacher->c | p in t.Tutors
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and (t<:Teaches).c
-- div,1
all c : Class, p : c.Groups.Person, t : Teacher->c | t->p in Tutors
-- div,2
all s,t : Person, c : Class | some s.(c.Groups) and  (t<:Teaches).c
-- div,1
all s,t : Person, c : Class | some s.(c<:Groups) and (t<:Teaches).c
-- div,1
all c : Class, p : (c.Groups).Group, t : Teacher->c | t->p in Tutors
-- div,1
all c : Class, s : c.Groups.Student, t : Teacher->c | t->s in Tutors
-- div,2
all c : Class, s : c.Groups.Group | all t : (Teaches).c | t->s Tutors
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and some c.(t.Teaches)
-- div,1
all c : Class, g : Group, s : c.Student, t : Teaches.c | s in t.Tutors
-- div,1
all s : Student, t : Teacher | some s.(Class.Groups) implies t.(Class)
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and some t.(Teaches.c)
-- div,1
all c : Class | (c.Groups).Group in (Tutors.(Teaches.c) & Tutors.Teaches)
-- div,1
all s : Student | some s.(Class<:Groups) implies Class.(Teacher<:Teaches)
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and some (t.Teaches) in c
-- div,1
all p:Person |some g:Group | all t:Teacher | t->Groups.(p->g)  in Teaches
-- div,1
all c : Class, g : Group, s : c->Student->g, t : Teaches.c | s in t.Tutors
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) & t.(Teaches.c)
-- div,1
all s: Student, t: Teacher | some c: Class | Groups.t implies t->s in Tutors
-- div,1
all c : Class, s : c.Groups->Person | c in Teaches.c.Tutors
-- div,1
all c: Class, s: Student, t: Teaches.c | s in c.Groups implies t->s in Tutors
-- div,1
all s : Student, t : Teacher | some s.(Class.Groups) implies t.(Class.Groups)
-- div,1
all s : Student, t : Teacher | (some s.(Class.Groups)) implies t.(Class.Groups)
-- div,1
all c : Class, s : Groups.Group, t : Teaches.c | some g : Group | s in t.Tutors
-- div,1
all c:Class, t:Person | t->c in Teaches implies {s,g: c.Groups | t->s in Tutors}
-- div,1
all c : Class, s : c.Groups.Group | all t : (Teacher <: Teaches).c | t->s Tutors
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches.c)
-- div,1
all s : Student, c : Class | c -> s <: Groups implies (Teaches . c) -> s in Tutors
-- div,1
all c : Class, s : c.Groups.Group | all t : (Teacher :> Teaches).c | t->s in Tutors
-- div,1
all s : Student, c : Class | (c -> s) <: Groups implies (Teaches . c) -> s in Tutors
-- div,1
all s, t : Person | some s.(Class.Groups) and some t<:Teaches implies some t.(Tutors.s)
-- div,1
all s:Person,c:Class | (some s<:c.Groups) implies no((Teaches & Teaches.c) - (Tutors.s))
-- div,1
Student in (Class.Groups) and Class in (Teacher.Teaches) implies Student in (Teacher.Tutors)
-- div,1
all s,t : Person, c : Class | some s.(c.Groups) and some (t<:Teaches).c implies (t<:Tutors).s
-- div,1
Student in (Class<:Groups) and Class in (Teacher.Teaches) implies Student in (Teacher.Tutors)
-- div,1
Student in (Class<:Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher.Tutors)
-- div,1
Student in (Class.Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher<:Tutors)
-- div,1
Student in (Class<:Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher<:Tutors)
-- div,1
all s : Student, c : Class, t : Teacher | some c.(s.Groups) and some Teaches.c implies s.Tutors
-- div,2
Student in (Class<:Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
-- div,1
Student in (Class:>Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
-- div,1
all p:Person |some g:Group | all t:Teacher | t->Groups.(p->g)  in Teaches implies t->p in Tutors
-- div,1
all s:Student ,c:Class |  some (s <:c.Groups) implies  no ( (Teaches.c in Teacher) & (Tutors.s) )
-- div,1
all s : Student | some s.(Class.Groups) and some Teacher:>Teaches implies some (Teacher:>Tutors).s
-- div,1
all s : Student | some s.(Class.Groups) and some Teacher:>Teaches implies some (Teacher<:Tutors).s
-- div,1
all p:Person, c:Class| some t:Teacher, g:Group |t->c  and c->p->g in Groups implies t->p in Tutors
-- div,1
all c : Class, s : Student, t : Teaches.c | some g : Group | 
  		c->s->g in Groups & s in t.Tutors
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches) implies s.(t.Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches) implies s.(t<:Tutors)
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches) implies s.(t:>Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some c.(t.Teaches) implies s.(t.Tutors)
-- div,1
Student in Student.(Class:>Groups) and Class in (Teacher<:Teaches) implies Student in (Teacher:>Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some t.(Teaches.c) implies s.(t.Tutors)
-- div,2
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t.Teaches).c implies s.(t.Tutors)
-- div,1
all s:Person,c:Class | some (c<:Groups.s) implies (all t:Person | some Teaches.c:>t implies Tutors.s:>t)
-- div,1
all s:Person,c:Class | (some c<:Groups.s) implies (all t:Person | some Teaches.c:>t implies Tutors.s:>t)
-- div,1
all s:Person,c:Class | (some s<:c.Groups) implies (all t:Person | some Teaches.c:>t implies Tutors.s:>t)
-- div,1
all s:Student | all c:Class | all t:Teacher | (s <: c.Groups and t->c in Teaches )implies t->s in Tutors
-- div,1
all s:Student | all c:Class | all t:Teacher | (s <: c.Groups) and (t->c in Teaches) implies t->s in Tutors
-- div,1
all s:Student ,c:Class |  some (s <:c.Groups) implies  no ( (Teaches.c & Teacher) & (Tutors.s) ) in Teacher
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher.Teaches).Class implies Student in (Teacher:>Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t.Teaches).c implies some (t.Tutors).s
-- div,2
all s : Student, t : Teacher, c : Class | some (s.(c.Groups) and (Teaches.c & t)) implies some (t<:Tutors).s
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t.Teaches).c implies some (t<:Tutors).s
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t<:Teaches).c implies some (t.Tutors).s
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (Teaches.c & t) implies some (Tutors.t).s
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies some Student.(Teacher:>Tutors)
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies some (Teacher:>Tutors).Student
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c:>Groups) and some (t<:Teaches).c implies some (t<:Tutors).s
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher.Teaches).Class implies Student in (Teacher.Tutors).Student
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies Student in (Teacher:>Tutors).Student
-- div,2
Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies Student in Student.(Teacher:>Tutors)
-- div,1
Student in Student.(Class<:Groups) and Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,2
Student in Student.(Class:>Groups) and Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (Teaches.c & t) implies some (Tutors.t & Tutors).s
-- div,1
some Student in Class.(Groups.Student) and Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,1
