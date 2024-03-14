Person in Student
-- div,1
Person - Teacher = Student
-- div,1
Person in Student & Teacher
-- div,1
Person in  (Teacher & Student )
-- div,1
Person in Teacher or Person in Student
-- div,3
(Person in Student) or (Person in Teacher)
-- div,1
one Student - Teacher & Teacher - Student
-- div,1
some Student - Teacher & Teacher - Student
-- div,2
no (Person-Teacher) and no (Person-Student)
-- div,1
not some p:Person | p not in Student or p not in Teacher
-- div,1
all p: Person | one s: Student | one t: Teacher | p = s or p = t
-- div,1
no p: Person | all s: Student | all t: Teacher | p != s and p != t
-- div,1
