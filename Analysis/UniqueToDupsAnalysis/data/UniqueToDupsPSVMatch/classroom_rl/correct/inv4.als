Student+Teacher = Person
-- div,7
Teacher + Student = Person
-- div,2
Person = Teacher+Student
-- div,15
Person=Student + Teacher
-- div,23
Person in Teacher + Student
-- div,14
Person in Student+Teacher
-- div,31
Person - Teacher in Student
-- div,2
Person - Student in Teacher
-- div,1
no ((Person-Student)-Teacher)
-- div,9
no Person - (Student + Teacher)
-- div,1
no Person - (Teacher + Student)
-- div,1
no (Person - Student) & (Person - Teacher)
-- div,3
all p:Person | p in Student + Teacher
-- div,5
all p:Person | p in Student or p in Teacher
-- div,14
all p:Person | p in Teacher or p in Student
-- div,7
no p:Person | p not in Teacher and p not in Student
-- div,1
no p:Person | p not in Student and p not in Teacher
-- div,8
all p:Person | not (p not in Student and p not in Teacher)
-- div,2
not some p:Person | p not in Student and p not in Teacher
-- div,1
all p : Person | not(not p in Student and not p in Teacher)
-- div,1
all p : Person | p in Student or p in Teacher
  
  
  Person = Student + Teacher
-- div,2
all p : Person | p not in Student => p in Teacher || p not in Teacher => p in Student
-- div,1
