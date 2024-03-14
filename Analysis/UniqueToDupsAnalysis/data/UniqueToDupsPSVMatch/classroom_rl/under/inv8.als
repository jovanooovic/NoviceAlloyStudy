Teacher.Teaches in Class
-- div,1
Teaches.Class in (Teacher + Person)
-- div,1
~Teaches . Teacher <: Teaches in iden
-- div,1
all c : Class | lone c.Teaches
-- div,1
all t:Teacher | lone Teaches.t
-- div,1
(Teacher->Teacher) & ~Teaches.Teaches in iden
-- div,1
(Teacher<:Teaches).(Teacher<:Teaches) in iden
-- div,1
~Teaches.Teaches & Teacher->Teacher in iden
-- div,1
(~Teaches :> Teacher) . Teacher <: Teaches in iden
-- div,1
(Teacher<:~Teaches).(Teacher<:Teaches) in iden
-- div,1
(~Teaches:>Teacher).(Teaches:>Teacher) in iden
-- div,3
all t: Teacher | lone c: Class | t.Teaches = c
-- div,3
