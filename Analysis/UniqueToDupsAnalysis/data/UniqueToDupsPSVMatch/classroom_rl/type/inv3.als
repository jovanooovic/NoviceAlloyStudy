Person
-- div,1
no Student and Teacher
-- div,1
no (Teacher and Student)
-- div,1
no (Student and Teacher)
-- div,1
no Person in Student+Teacher
-- div,1
Person in (Student and Teacher)
-- div,2
no Person in (Student & Teacher)
-- div,3
~ (Person in (Student & Teacher))
-- div,1
~((Student and Teacher) in Person)
-- div,1
no p:Person | p in (Teacher and Student)
-- div,1
not (Person in Student & Person in Teacher)
-- div,1
no (Person in Student and Person in Teacher)
-- div,1
all p:Person | p in Student = p not in Teacher
-- div,1
all p:Person | ~(p in Student and p in Teacher)
-- div,4
Person = Student + Teacher and Teacher & Student
-- div,1
