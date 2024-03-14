Person
-- div,1
Teacher || Student
-- div,1
Student + Teacher
-- div,1
no Person in Teacher
-- div,1
no (Student or Teacher)
-- div,1
no Person in Teacher+Student
-- div,1
no (Person in Teacher+Student)
-- div,1
Teacher & Person or Student & Person
-- div,1
some Teacher & Person or Student & Person
-- div,1
set (Teacher & Person or Student & Person)
-- div,1
some (Teacher & Person or Student & Person)
-- div,1
no Person in Teacher and no Person in Student
-- div,1
all p : Person | not (p in Student or Teacher)
-- div,1
all p : Person | no (p not in Student and p not in Teacher)
-- div,1
no Student and no Teacher and Group.Person not in Student and Group.Person not in Teacher
-- div,2
