Student
-- div,1
Teacher.Class
-- div,1
set Student
-- div,1
always Student
-- div,1
Person -> Student
-- div,1
Teacher.Teaches
-- div,2
no Student in Person
-- div,1
all s : Person.Student | s
-- div,1
all p:Person | p is Student
-- div,1
all p : Person | p & Student
-- div,1
all x : Person | x is in Student
-- div,1
all s : Person.Student | s in Person
-- div,1
