no Student & Person
-- div,2
no Person & Teacher
-- div,2
no (Teacher + Student)
-- div,1
(Teacher & Student) = 0
-- div,1
Person & Teacher = none
-- div,2
no p: Person | p in Teacher
-- div,1
no p:Person | p in (Teacher + Student)
-- div,1
all p: Person | no t: Teacher | p = t
-- div,1
Person = Student + Teacher
  no Student & Teacher
-- div,3
Person = Student + Teacher
  no Teacher&Student
-- div,3
all p:Person | p in Student and p not in Teacher
-- div,4
all p: Person | all t: Teacher | p != t
-- div,1
all p: Person | p not in Student and p in Teacher
-- div,1
all p : Person | p not in Teacher && p not in Student
-- div,1
not some p:Person | p in Student or p in Teacher
-- div,1
all p: Person | (p in Student and p not in Teacher) or (p in Teacher and p not in Student)
-- div,2
