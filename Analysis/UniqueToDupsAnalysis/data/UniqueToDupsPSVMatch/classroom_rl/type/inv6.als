Teacher.Class
-- div,1
Teaches.Class
-- div,1
Teacher->Class
-- div,1
Teacher.Teaches
-- div,9
Teacher in ~Teaches
-- div,2
Teacher<:Teaches
-- div,1
iden in univ .Teaches
-- div,1
some Teacher:>Teaches
-- div,1
Teacher.Class = Teacher
-- div,2
Teacher in Teacher.Class
-- div,1
Teacher.Class in Teaches
-- div,1
Teacher in Class.Teacher
-- div,1
all t:Teacher | t.Teaches
-- div,7
Teacher in ~Class.Teacher
-- div,1
Teacher in Teaches.Teaches
-- div,1
Teacher.Teaches & Class
-- div,1
all t : Teacher | Teaches.t
-- div,1
Teacher in Teaches.~Teaches
-- div,3
all t : Teacher | t.Teaches
-- div,6
Teaches.Class & Teacher
-- div,2
Teaches . ~Teaches = Teacher
-- div,1
~(Teacher.Teaches) = Teacher
-- div,1
(Teacher <: Teaches) = Person
-- div,1
all t: Teacher | some t.Class
-- div,4
all t : Teacher | some t.Class
-- div,3
all t : Teacher | some Class.t
-- div,1
(Teaches . ~Teaches) = Teacher
-- div,1
some Class in ~Teaches.Teacher
-- div,1
no t: Teacher | t.Teaches = {}
-- div,1
Teacher.Class = Person.Teacher
-- div,1
no t: Teacher | t.Teaches in {}
-- div,1
all t: Teacher | t some-> Class
-- div,1
Teacher.Class = Teacher.Teaches
-- div,1
iden Teacher in Teaches.~Teaches
-- div,1
iden in Teacher.~Teaches.Teaches
-- div,2
iden[Teacher] in Teaches.~Teaches
-- div,1
Teacher & ~Teaches.Person in iden
-- div,1
Teaches . Class . Teacher = Person
-- div,1
Teacher.Teaches in ~Teaches.Teaches
-- div,1
all t : Teacher | t.Teaches & Class
-- div,1
(Teacher & ~Teaches.Teacher) in iden
-- div,1
all t : Teacher | Class -> t.Teaches
-- div,1
all t : Teacher | some Class.t.Teaches
-- div,1
all t : Teacher | some t.Teaches.Class
-- div,1
iden in Teacher.~Teaches.Teacher.Teaches
-- div,1
all t:Teacher| some x:Class | t.Teaches.x
-- div,1
all t : Teacher | some Class in t.Teaches
-- div,2
all t : Teacher | some t->Class in Teaches
-- div,1
some c: Class | all t: Teacher | t.Teaches
-- div,1
all t : Teacher | (some Class) in t.Teaches
-- div,1
all t : Teacher | some (Class in t.Teaches)
-- div,1
~(Teacher.Teaches).(Teacher.Teaches) in iden
-- div,1
all t : Teacher | t->(some Class) in Teacher
-- div,1
iden & (Teacher->Teaches) in Teaches.~Teaches
-- div,1
all t:Teacher | some c:Class | t->c in Teacher
-- div,1
all p : Person | p in Teacher implies p.Teaches
-- div,2
Teacher in Class.~Teaches
  	Teacher & Teaches.Class
-- div,1
