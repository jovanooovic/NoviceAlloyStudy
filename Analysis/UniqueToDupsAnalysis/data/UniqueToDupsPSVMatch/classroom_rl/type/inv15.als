^Tutors
-- div,1
Teacher in ^Tutors
-- div,1
^Tutors in Teacher
-- div,1
^Tutors.Teacher
-- div,1
^(~Tutors) in Teacher
-- div,1
Person.^Tutors.Teacher
-- div,1
^Tutors :> Teacher
-- div,1
some Teacher in ^Tutors
-- div,1
Person.(^Tutors).Teacher
-- div,2
some (^Tutors & Teacher)
-- div,1
all s : Student | s.^Tutors
-- div,1
Person.(^Tutors) -> Teacher
-- div,2
all p : Person | p.^(~Tutors)
-- div,1
some t:Teacher | t in ^Teaches
-- div,1
(^Tutors).Person & Teacher
-- div,1
all p : Person | p <: ^ Tutors
-- div,1
some (Person.(^Tutors).Teacher)
-- div,1
all p : Person | p <: (* Tutors)
-- div,1
all p:Person | Teacher.p.^Tutors
-- div,1
all p : Person | p <: (^ Tutors)
-- div,1
all p : Person | Teacher.^Tutors.p
-- div,1
all s : Student | s.^Tutors.Teacher
-- div,1
all p : Person | ^Tutors.p & Teacher
-- div,1
all s:Person | (^Tutors.s & Teacher)
-- div,1
all p : Person | p.^Tutors & Teacher
-- div,2
all p : Person | p.(^Tutors) -> Teacher
-- div,1
all s:Student |some Teacher & s.^Teacher
-- div,1
all s : Student | some s.^Tutors.Teacher
-- div,1
all s : Student | Teacher in s . ^Teacher
-- div,1
all s:Student |some Teacher in s.^Teaches
-- div,1
all s : Person | some Tutors.^s & Teacher
-- div,2
all p : Person | some (Teacher.^Tutors.p)
-- div,2
all p : Person | (p.*Tutors.p) in Teacher
-- div,1
all p:Person | (some Teacher) in p.^Tutors
-- div,1
all s:Student | some Teacher in s.^Teacher
-- div,1
all p:Person | some Teacher in (p.^Tutors)
-- div,1
all p : Person | some (p.(^Tutors).Person)
-- div,1
all p:Person | some (Teacher in p.^Tutors)
-- div,1
all p : Person | some ^Tutors.p in Teacher
-- div,2
all p : Person | some Teacher & ^Teacher.p
-- div,1
all p: Person | some (Tutors.*p & Teacher)
-- div,1
all s : Student | some Teacher in s.^Tutors
-- div,1
all p : Person | some (p.(^Tutors).Teacher)
-- div,2
all s : Person | some (Tutors.^s & Teacher)
-- div,1
all p : Person | some (p.^(Tutors).Teacher)
-- div,1
some t : Teacher | t in (t.^Teaches).Teacher
-- div,1
all s:Person | some  (^(Tutors.s) & Teacher)
-- div,1
all p : Person |  some (p.(^Tutors).Teacher)
-- div,1
all p : Person | some (Teacher & ^Teacher.p)
-- div,1
all s : Student | some Teacher in s . ^Tutors
-- div,2
all s : Student | some Teacher in s . ^Teacher
-- div,1
all s : Student | some t : Teacher | t.(s.^Tutors)
-- div,1
all p : Person | some t : Teacher | p.^(~Tutors).t
-- div,1
all p:Person | some Tutors.p implies (Teacher<:^Tutors.p)
-- div,1
all p:Person | some Tutors.p implies (^Tutors.p:>Teacher)
-- div,1
all p : Person | some t : Teacher | p in Tutors or p->t in Tutors or p->t in Tutors.Tutors
-- div,1
