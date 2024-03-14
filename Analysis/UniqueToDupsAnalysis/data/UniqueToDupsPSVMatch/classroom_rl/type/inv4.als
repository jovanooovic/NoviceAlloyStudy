Student or Teacher
-- div,5
Teacher or Student
-- div,1
Person + Teacher
-- div,1
Student + Teacher
-- div,5
no Student = Teacher
-- div,1
no Student || Teacher
-- div,1
no Teacher or Student
-- div,2
no Student or Teacher
-- div,3
no ~Student & ~Teacher
-- div,1
one Student or Teacher
-- div,1
none Student + Teacher
-- div,1
not Teacher or Student
-- div,1
no (~Student & ~Teacher)
-- div,1
Person -> Teacher + Student
-- div,1
Person in Teacher or Student
-- div,1
Person in Student || Teacher
-- div,1
Person in Teacher || Student
-- div,1
no Person = Student + Teacher
-- div,1
Person in (Student || Teacher)
-- div,3
Person & (Student + Teacher)
-- div,1
Person in (Teacher or Student)
-- div,1
Person in (Student or Teacher)
-- div,1
no Person in Student + Teacher
-- div,1
Person & Student + Teacher
-- div,1
Person&Student or Person&Teacher
-- div,1
no Person in (Student + Teacher)
-- div,1
Person not in Student and Teacher
-- div,1
no ( (not Student) & (not Teacher) )
-- div,1
no Student.Teacher or Teacher.Student
-- div,1
all p:Person | no p = Student + Teacher
-- div,1
(Person & Teacher) or (Person &Student )
-- div,1
no (Person-Teacher) and (Person-Student)
-- div,1
(Person & Student) &(Person & Teacher)
-- div,1
all p:Person | no (p = Student + Teacher)
-- div,1
(Person & Student) and (Person & Teacher)
-- div,1
no ((Person-Teacher) and (Person-Student))
-- div,1
Person not in Teacher & Person not in Student
-- div,1
no ((Person & Student ) and (Person & Teacher))
-- div,1
all p: Person | no p = Student and no p = Teacher
-- div,1
all p: Person | no p in Student and no p in Teacher
-- div,1
no (no (Person & Student) and no(Person & Teacher) )
-- div,1
no(no (Person & Student) and no (Person & Teacher) )
-- div,1
all p : Person | no (p not in Student && p not in Teacher)
-- div,1
