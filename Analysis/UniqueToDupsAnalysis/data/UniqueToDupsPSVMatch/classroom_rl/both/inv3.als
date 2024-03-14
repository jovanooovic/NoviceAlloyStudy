no (Student - Teacher)
-- div,1
Person = Student + Teacher
-- div,2
Person = Teacher + Student
-- div,1
Person in (Student & Teacher)
-- div,2
Person not in (Student & Teacher)
-- div,1
not (Person in (Student & Teacher))
-- div,1
(Person in Student and Person in Teacher)
-- div,1
not (Person in Student and Person in Teacher)
-- div,1
all p:Person | p in Student and p in Teacher
-- div,2
all p:Person | p in Student or p in Teacher
-- div,5
one p: Person | p in Student or p in Teacher
-- div,1
all p : Person | p in Student or p not in Teacher
-- div,1
all p:Person | not (p in Student and p not in Teacher)
-- div,1
all p : Person | not (p not in Teacher && p not in Student)
-- div,1
(Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher)
-- div,1
