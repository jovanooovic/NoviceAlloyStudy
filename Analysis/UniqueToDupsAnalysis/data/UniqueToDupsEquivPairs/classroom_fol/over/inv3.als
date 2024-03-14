-- equiv pair start,3
no Person & Teacher
-- div,3
-- equiv pair end
-- equiv pair start,1
no Student & Student
-- div,1
-- equiv pair end
-- equiv pair start,13
Student = Person - Teacher
-- div,1
all p:Person | p in Student iff p not in Teacher
-- div,2
Student = Person - Teacher  
  	Teacher = Person - Student
-- div,1
all p:Person | p in Teacher and p not in Student or p not in Teacher and p in Student
-- div,5
all p : Person | p in Student or p in Teacher
	all p : Person | p in Student implies p not in Teacher
-- div,3
not some p:Person | p in Student && p in Teacher
	all p:Person | p in Student or p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person | p not in Student and p not in Teacher
-- div,2
all p : Person | p not in Teacher and p not in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person | x in Student implies x not in Teacher
	Student != Teacher
-- div,1
-- equiv pair end
