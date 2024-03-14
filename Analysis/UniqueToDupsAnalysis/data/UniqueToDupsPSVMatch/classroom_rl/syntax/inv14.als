ciucouc
-- div,1
all s:Student | s <: (c:Class).Groups
-- div,1
all s:Student | c:Class| s <: c.Groups
-- div,1
some c:Class | {(x,y)| (x,y) : c.Groups }
-- div,1
some c:Class | {(x,y)| (x,y) in c.Groups }
-- div,1
all s: Student |  t: Teacher | t->s in Teaches implies
-- div,3
some c:Class | {(x,y)| (x,y) in c.Groups } implies no Person
-- div,1
Tutors = (Teches.Person) -> Group.~((Person.Teaches).Groups)
-- div,1
Tutors = ((Teaches.Person),  Group.~((Person.Teaches).Groups))
-- div,1
all c : Classes | Teaches . c . Tutors = Class . Groups . Group
-- div,1
all t:Teacher | (some c:Class | t->c in Teaches and t->s in Tutors)
-- div,1
all s,t : Person, c : Class | (some s.(c.Groups) and (t<:Teaches).c
-- div,1
all c : Class, s : c.Groups.Student, t : Teachers->c | t->s in Tutors
-- div,1
all s : Student, t : Teacher | some s.(Class.Groups)
-- div,1
all c : Class, p->g : c.Groups.Person, t : Teacher->c | t->p in Tutors
-- div,1
all s,t : Person, c : Class | (some s.(c.Groups) and some (t<:Teaches).c
-- div,1
all p:Person |some g:Group | all t:Teacher | t-> Groups.(p,g) in Teaches
-- div,1
Student in (c.Groups) and some (t<:Teaches).c implies some (t<:Tutors).s
-- div,1
all s : Student, t : Teacher | some s.(Class.Groups) & Teacher<:Teaches).c
-- div,2
all s:Student | all t:Teacher.(<:s.Group) in Teaches implies t->s in Tutors
-- div,2
all s:Student | all t:Teacher->(<:s.Group) in Teaches implies t->s in Tutors
-- div,2
all s : Student | some s.(Class.Groups) and  implies some (Teacher<:Tutors).s
-- div,1
all s:Student | (all t:Teacher)->(<:s.Group) in Teaches implies t->s in Tutors
-- div,1
Student in (c.Groups) and Class in (t<:Teaches) implies Student in (t<:Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) & some t.(Teaches.c)
-- div,1
all s: Student, t: Teacher | some c: Class | all Groups.t implies t->s in Tutors
-- div,1
all s:Student | ((all t:Teacher)->(<:s.Group) in Teaches) implies t->s in Tutors
-- div,1
all c: Class | let w = Tutors.(c.Groups.Group & Student) | no w or Teaches.c in w
-- div,1
all c : Class, s : c.Groups.Group | (all t : (Teacher <: Teaches).c | t->s Tutors)
-- div,1
all c : Class, s : c.Groups.Group | (all t : (Teacher <: Teaches.c) | t->s Tutors)
-- div,1
all s : Student, t : Teacher | some s.(Class.Groups) implies some t<:Teaches).Class
-- div,1
all c:Class, t:Person | t->c in Teaches implies {(s->g): c.Groups | t->s in Tutors}
-- div,1
all c:Class |all t:Person | t->c in Teaches implies {(s,g): c.Groups | t->s in Tutors}
-- div,1
some c:Class |all t:Teacher | t->c in Teaches implies {(s,g): c.Groups | t->s in Tutors}
-- div,1
some c:Class |all t:Teacher | t->c in. Teaches implies {(s,g): c.Groups | t->s in Tutors}
-- div,1
all s : Student, c : Class, t : Teacher | some c.(s.Groups) and some Teches.c implies s.Tutors
-- div,1
all s : Student, c : class, t : Teacher | some c.(s.Groups) and some Teches.c implies s.Tutors
-- div,1
all p:Person |some g:Group | all t:Teacher | t-> Groups.(p,g)  in Teaches implies t->p in Tutors
-- div,1
all c: Class | all s: c.Groups.Group & Student, all t: Teacher | t.Teaches = c implies s in t.Tutors
-- div,1
all g: Group | some c: Class | all t: Teacher | c->t->g in Groups g in Student implies t->g in Tutors
-- div,1
all s:Student, c:class, t:Teacher | some g:Group c->s->g in Groups and t->c in Teaches implies t->s in
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (tTeaches).c implies some (t.Tutors).s
-- div,1
all s : Student, c : Class, t : Teacher | some c.(s.Groups) and some Teaher & Teaches.c implies some Tutors.s
-- div,1
all s:Student, c:class, t:Teacher | some g:Group c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,3
all s:Student, c:class, t:Teacher | some g:Group | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,1
all s : Student, c : Class | some s.(c.Groups) and some Teacher Teaches.c implies (Tutors.s in ( Teacher & Teaches.c))
-- div,1
all p1, p2 : Person, c : class | some g : Group | c -> p2 -> g in Groups and p1 -> c in Teaches implies p1 -> p2 in Tutors
-- div,1
all s : Student | 
  		(some c : Class | s in c.Groups.Group) implies (
        	all t : Teaches.c :> Teacher | s in t.Tutors
        )
-- div,1
all p:Person, c:Class|some g :Group |c->p->g in Groups implies  (some t:Teacher| t->c in Teaches )
														   implies t->p in Tutors
-- div,1
all c : Class { 
      all s : Student | s->Group in c.Groups {
        all t : Teacher | c in t.Teaches {
          s in t.Tutors
        }
      }
    }
-- div,1
