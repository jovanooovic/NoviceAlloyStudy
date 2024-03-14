-- equiv pair start,2
no (Student - Teacher)
-- div,1
all p:Person | not (p in Student and p not in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,9
Person = Student + Teacher
-- div,2
Person = Teacher + Student
-- div,1
all p:Person | p in Student or p in Teacher
-- div,5
all p : Person | not (p not in Teacher && p not in Student)
-- div,1
-- equiv pair end
-- equiv pair start,5
Person in (Student & Teacher)
-- div,2
(Person in Student and Person in Teacher)
-- div,1
all p:Person | p in Student and p in Teacher
-- div,2
-- equiv pair end
-- equiv pair start,3
Person not in (Student & Teacher)
-- div,1
not (Person in (Student & Teacher))
-- div,1
not (Person in Student and Person in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
one p: Person | p in Student or p in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p in Student or p not in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher)
-- div,1
-- equiv pair end
