-- equiv pair start,213
Student = Person
-- div,1
Person = Student
-- div,12
Person in Student
-- div,51
no (Person-Student)
-- div,1
(Person & Student) = Person
-- div,1
all f : Person | f in Student
-- div,1
all x: Person | x in Student
-- div,10
all p: Person|p in Student
-- div,135
all s : Person | s in Student
-- div,1
-- equiv pair end
