all c : Class, s : c.Groups.Person | s in Teaches.c
-- div,1
all c : Class, s : c.Groups.Person | s in Teaches.c.Tutors
-- div,6
all c : Class, s : c.Groups.Student | s in Teaches.c.Tutors
-- div,1
all s : Student | some s.(Class<:Groups) implies some Class.(Teacher<:Teaches)
-- div,1
all c : Class, s : c.Groups.Person, t : Teaches.c | s in t.Tutors
-- div,1
all c : Class, s : c.Groups.Student, t : Teaches.c | s in t.Tutors
-- div,1
all c: Class | (Teaches.c & Teacher)->(c.Groups.Group & Student) in Tutors
-- div,6
all c : Class, p : Student | p in (c.Groups).Group implies Teaches.c in Tutors.p
-- div,1
all c: Class, s:Student| s in c.Groups.Group implies Teaches.c in Tutors.s
-- div,1
all s : Student, c : Class | some c -> s <: Groups implies (Teaches . c) -> s in Tutors
-- div,1
all p : Person, c : Class | some p.(c.Groups) implies Teacher & Teaches.c in Tutors.p
-- div,2
all p : Student, c : Class | some p.(c.Groups) implies (Teacher & Teaches.c) in Tutors.p
-- div,3
all c: Class, s: Student, t: Teaches.c | some s.(c.Groups) implies t->s in Tutors
-- div,1
all c: Class | let w = Tutors.(c.Groups.Group & Student) | no w or Teaches.c in w
-- div,1
all s : Student, c : Class | some (Teacher<:Tutors).c implies some s.(Teacher<:Teaches)
-- div,1
all s : Student, c : Class | some c.(Teacher<:Teaches) implies some s.(Teacher<:Tutors)
-- div,1
all s : Student, c : Class | some s.(c.Groups) and some Teaches.c implies some Tutors.s
-- div,1
all c: Class, s:Person| s in c.Groups.Group implies (Teaches.c & Teacher) in Tutors.s
-- div,1
all s: Student , c: Class| s in c.Groups.Group implies (Teaches.c & Teacher) in Tutors.s
-- div,1
all c: Class, s:Student| s in c.Groups.Group implies (Teaches.c & Teacher) in Tutors.s
-- div,2
all s:Person,c:Class | some (s<:c.Groups) implies no((Teacher & Teaches.c)-(Tutors.s))
-- div,2
all c : Class, s : c.Groups.Group | (all t : (Teacher <: Teaches.c) | s in t.Tutors)
-- div,1
all c : Class, s : c.Groups.Group | all t : (Teacher <: Teaches).c | t->s in Tutors
-- div,1
all s:Student,c:Class | some ( s<:c.Groups ) implies no((Teacher & Teaches.c)-(Tutors.s))
-- div,6
all p1, p2 : Person, c : Class | some c.(p2.Groups) and c in p1.Teaches implies p2 in p1.Tutors
-- div,4
all s : Student, c : Class | some s.(c.Groups) and some Teacher & Teaches.c implies some Tutors.s
-- div,1
all s:Student ,c:Class |  some (s <:c.Groups) implies   ( (Teaches.c & Teacher) & (Tutors.s) ) in Teacher
-- div,1
all s: Student | all c: Class | all t: Teacher | c->t->s in Groups implies t->s in Tutors
-- div,1
Student in Student.(Class.Groups) and Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,7
Student in Class.(Groups.Student) and Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,1
Student in (Class.Groups).Student and Class in (Teacher<:Teaches).Class implies Student in (Teacher<:Tutors).Student
-- div,1
all c : Class, s : Student, t : Teacher | s in c.Groups.Group and c in t.Teaches implies s in t.Tutors
-- div,1
all s : Student, c : Class, t : Teacher | some c.(s.Groups) and some Teaches.c implies t.Tutors in Student
-- div,2
all t : Teacher, c : Class | some Student.(c.Groups) and some (t<:Teaches).c implies some (t<:Tutors).Student
-- div,1
all s : Student, c : Class | some s.(c.Groups) and some (Teacher<:Teaches).c implies some (Teacher<:Tutors).s
-- div,1
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teacher & Teaches.c implies some Tutors.s
-- div,1
all s : Student, c : Class, t : Teacher | some c.(s.Groups) and some Teacher & Teaches.c implies some Tutors.s
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some Teaches.c & t implies some (t<:Tutors).s
-- div,7
all s : Student, t : Teacher, c : Class | some s.(c.Groups) and some (t<:Teaches).c implies some (t<:Tutors).s
-- div,8
all s:Student ,c:Class |  some (s <:c.Groups) implies  (all t:Teacher| t->c in Teaches implies t->s in Tutors)
-- div,1
all s : Student, t : Teacher, c : Class | some s.(c<:Groups) and some (t<:Teaches).c implies some (t<:Tutors).s
-- div,1
all s:Student, c:Class, t:Teacher, g:Group | (t->c in Teaches and c->s->g in Groups) implies t->s in Tutors
-- div,1
all c : Class, g : Group, t : Teacher, s : Student | {
    ((t->c in Teaches) and (c->s->g in Groups)) implies (t->s in Tutors)  
  }
-- div,2
all s:Student ,c:Class |  some (s <:c.Groups) implies  no (Teaches.c & Teacher)  implies no ( (Teaches.c & Teacher) & (Tutors.s) )
-- div,1
all c : Class, g : Group, p1 : Teacher, p2 : Student | {
    ((p1->c in Teaches) and (c->p2->g in Groups)) implies (p1->p2 in Tutors)  
  }
-- div,1
all c : Class, g : Group, p1, p2 : Person | {
    ((p1 in Teacher) and (p1->c in Teaches) and (c->p2->g in Groups)) implies (p1->p2 in Tutors)  
  }
-- div,1
all s:Person, c:Class, t:Teacher | all g:Group | c->s->g in Groups and t->c in Teaches implies t->s in Tutors
-- div,2
all p:Person, c:Class| (some g :Group |c->p->g in Groups) implies  some t:Person| t->c in Teaches 
														   implies t->p in Tutors
-- div,1
all s :Student, c:Class | (some g:Group | c->s->g in Groups) implies  (all t:Person| t->c in Teaches implies t->s in Tutors)
-- div,1
all s :Person, c:Class | (some g:Group | c->s->g in Groups) implies  (all t:Teacher| t->c in Teaches implies t->s in Tutors)
-- div,1
all s :Student, c:Class | (some g:Group | c->s->g in Groups) implies  (all t:Teacher| t->c in Teaches implies t->s in Tutors)
-- div,1
