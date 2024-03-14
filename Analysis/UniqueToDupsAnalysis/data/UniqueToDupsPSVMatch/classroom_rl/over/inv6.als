iden in Teaches
-- div,1
Teaches.Class = Teacher
-- div,8
Class.Teaches = Teacher
-- div,2
Teacher = Teaches.Class
-- div,2
Teaches.Person = Teacher
-- div,1
Teaches . Teacher = Person
-- div,1
Teaches.Teacher = Teacher
-- div,2
Teacher = Teaches.Teacher
-- div,1
Teacher = Teacher.Teaches
-- div,1
iden in ~Teaches.Teaches
-- div,2
Teacher in Teaches.Teacher
-- div,2
Teacher in Teacher.Teaches
-- div,1
Class.~(Teaches) = Teacher
-- div,1
Teacher in Class.^Teaches
-- div,1
Teacher in ~Teaches.Person
-- div,1
Teacher in ~Teaches.Teacher
-- div,2
Teacher . (Teacher <: Teaches) = Person
-- div,2
all p : Person | some p.Teaches
-- div,1
all t : Teacher | one t.Teaches
-- div,2
some c : Class | some c.Teaches
-- div,1
all t : Teacher | some Teaches.t
-- div,1
some c: Class | all t: Teacher | t->c in Teaches
-- div,1
