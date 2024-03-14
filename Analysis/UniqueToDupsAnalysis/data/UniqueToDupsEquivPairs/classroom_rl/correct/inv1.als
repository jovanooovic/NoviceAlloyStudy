-- equiv pair start,221
Student = Person
-- div,5
Person=Student
-- div,42
Person in Student
-- div,81
no Person-Student
-- div,18
Person - Student = none
-- div,5
all f: Person | f in Student
-- div,1
all p: Person|p in Student
-- div,64
all p: Person | Person in Student
-- div,2
all p : Person | some (p & Student)
-- div,1
all p : Person | p in Student
  
  
  Person in Student
-- div,2
-- equiv pair end
