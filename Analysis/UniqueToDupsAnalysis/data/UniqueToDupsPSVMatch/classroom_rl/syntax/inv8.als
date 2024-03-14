no some Teaches.Class
-- div,1
Teacher in lone Teaches.Class
-- div,1
Teacher.Teaches in lone Class
-- div,1
(Teachers in ~Teaches.Teaches)
-- div,1
Teacher in lone Teaches.Teacher
-- div,1
all t: Teacher | lone t.Teaches
-- div,1
all t : Teacher | lone t.teaches
-- div,1
all t: Teachers | lone t.Teaches
-- div,1
one Person.teacher Teacher.Teaches
-- div,1
(Teacher.Teaches).Teaches in ident
-- div,1
(Teacher->Teacher & ~Teaches.Teaches in iden
-- div,1
(Teacher<:Teaches).(Teacher<:Teaches) in Iden
-- div,1
-(Teacher<:Teaches).(Teacher<:Teaches) in iden
-- div,4
-(Teacher<:Teaches).(Teacher<:Teaches) in Iden
-- div,1
~(Teacher<:Teaches).(Teacher<:Teaches) in Iden
-- div,1
all t: Teachers | lone c: Class | t.Teaches = c
-- div,2
~ (Teacher<:Teaches).(Teacher<:Teaches) in Iden
-- div,1
all t:Teacher, c1,c2:Class | t->c1 in Teaches and t->c2 in Teaches implies c1=
-- div,1
all t:Teacher, c1,c2:Class | t->c1 in Teaches and t->c2 in Teaches implies t1=t2
-- div,2
