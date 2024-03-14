Teacher = {}
-- div,1
none Teacher
-- div,2
Person no Teacher
-- div,1
no Teacher.Person
-- div,1
no Person.Teacher
-- div,1
no Teacher in Person
-- div,1
Person in Teacher or Student
-- div,2
Person in (Teacher or Student)
-- div,4
all p: Person | no p in Teacher
-- div,1
all p: Person | p in Student implies no p in Teacher
-- div,1
