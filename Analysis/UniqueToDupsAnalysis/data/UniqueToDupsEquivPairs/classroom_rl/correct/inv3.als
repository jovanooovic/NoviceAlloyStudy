-- equiv pair start,143
no Teacher&Student
-- div,25
no Student&Teacher
-- div,73
Student & Teacher = none
-- div,4
(Student-Teacher) = Student
-- div,9
no Student & Teacher & Person
-- div,1
all s: Student | s not in Teacher
-- div,1
all p: Person | p not in Student & Teacher
-- div,3
not some s: Student, t: Teacher | s = t
-- div,1
no p:Person | p in Teacher and p in Student
-- div,2
no p:Person | p in Student and p in Teacher
-- div,6
all s: Student | no t: Teacher | s = t
-- div,2
all p : Person | p in Student implies p not in Teacher
-- div,1
all p: Person | (p in Teacher) => (p !in Student)
-- div,2
all p : Person | p not in Student or p not in Teacher
-- div,1
all p:Person | not (p in Student and p in Teacher)
-- div,2
not some p:Person | p in Student and p in Teacher
-- div,2
all p1, p2: univ | p1 in Student and p2 in Teacher implies p1 != p2
-- div,1
all p1, p2: Person | p1 in Student and p2 in Teacher implies p1 != p2
-- div,1
all p : Person | p in Student => p not in Teacher || p in Teacher => p not in Student
-- div,3
all p : Person | p in Teacher => p not in Student || p in Student => p not in Teacher
-- div,1
all p : Person | (p in Student implies p not in Teacher) or ( p in Teacher implies p not in Student) 
  
  
  
  no (Teacher & Student)
-- div,1
all p: Person | (p in Student and p not in Teacher) or (p in Teacher and p not in Student) or p not in (Student + Teacher)
-- div,1
-- equiv pair end
