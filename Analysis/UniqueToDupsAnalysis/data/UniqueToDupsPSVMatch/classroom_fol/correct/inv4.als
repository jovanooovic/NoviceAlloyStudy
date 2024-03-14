Student + Teacher = Person
-- div,1
Person = Teacher+Student
-- div,4
Person = Student + Teacher
-- div,6
Person in Teacher + Student
-- div,2
Person in Student + Teacher
-- div,35
no (Person-Student-Teacher)
-- div,1
all f : Person | f in (Student + Teacher)
-- div,1
all p : Person | p in (Student + Teacher)
-- div,3
all w : Person | w in Student or w in Teacher
-- div,1
all x : Person | x in Student or x in Teacher
-- div,2
all p:Person | p in Student or p in Teacher
-- div,53
all p:Person | p in Teacher or p in Student
-- div,17
all p:Person | p not in Student implies p in Teacher
-- div,3
no p:Person | p not in Teacher and p not in Student
-- div,2
all x: Person | x not in Student implies x in Teacher
-- div,3
no p:Person | p not in Student and p not in Teacher
-- div,3
no p:Person | not p in Teacher and not p in Student
-- div,1
all p:Person | not (p not in Student and p not in Teacher)
-- div,5
not some p:Person | p not in Student and p not in Teacher
-- div,3
all p : Person | not(not p in Student and not p in Teacher)
-- div,1
not some p : Person | not p in Student and not p in Teacher
-- div,1
not some p:Person | not p in Teacher and not p in Student
-- div,1
Person = Student + Teacher
  	all x : Person | x in Student or x in Teacher
-- div,1
all p : Person | (p not in Student implies p in Teacher) and (p not in Teacher implies p in Student)
-- div,1
