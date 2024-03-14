Student != Teacher
-- div,2
Student not in Teacher
-- div,2
Person = Student + Teacher
-- div,2
Person = Teacher + Student
-- div,1
not (all p : Person | p in Student)
-- div,1
(Person in Teacher) iff not (Person in Student)
-- div,1
all p:Person | p in Student or p in Teacher
-- div,14
all p:Person | p in Teacher or p in Student
-- div,4
all p:Person | p in Student implies p in Teacher
-- div,1
all p:Person | p in Teacher implies p in Student
-- div,1
not (all p : Person | p in Student and p in Teacher)
-- div,3
all p : Person { 
    all p : Person | p in Teacher or p in Student
  }
-- div,1
all p : Person | p not in Teacher implies p in Student or p not in Student implies p in Teacher
-- div,1
