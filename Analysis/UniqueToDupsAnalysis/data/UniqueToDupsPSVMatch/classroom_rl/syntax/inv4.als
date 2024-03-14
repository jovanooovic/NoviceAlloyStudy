all(Teacher+Student)
-- div,1
no Student | Teacher
-- div,2
all (Student+Student)
-- div,4
no (Student | Teacher)
-- div,1
no Student & no Teacher
-- div,1
no Student + no Teacher
-- div,1
no Teacher & no Student
-- div,1
all (Teacher + Student)
-- div,1
not Teacher & not Student
-- div,1
Person in Teachr + Student
-- div,1
Person in Teacher | Student
-- div,1
no (People-Teacher-Student)
-- div,1
no (no Student & no Teacher)
-- div,1
no not Student & not Teacher
-- div,1
Person in (Student | Teacher)
-- div,2
not Student & not Teacher = none
-- div,1
no ( not Student & not Teacher )
-- div,1
Person = not (Student + Teacher)
-- div,1
not Student - not Teacher = none
-- div,1
no [(Student + Teacher) & Person]
-- div,1
Person in  no (Teacher & Student )
-- div,1
all p:Person | p in Teacher or p in
-- div,1
no (Person-Teacher) and (Person\Student)
-- div,1
all p : People | p in (Student + Teacher)
-- div,1
all p: Person | p !in (Teachers + Student)
-- div,1
all p:Person , p in Teacher or p in Student
-- div,1
no Student - Teacher & no Teacher - Student
-- div,1
all p:Person -> p in Teacher or p in Student
-- div,1
all p : Person | p in Teacher or p in Student)
-- div,1
forall p:Person -> p in Teacher or p in Student
-- div,1
no (Person & Student ) and no (Person & Teacher))
-- div,1
all p: Person | no p = Student and no p = Teacher)
-- div,1
no p: Person | p not in Student and not in Teacher
-- div,1
all p: Person implies p in Student or p in Teacher
-- div,1
all p:Person | p.Teaches = empty and p.Tutors=empty
-- div,1
not (no (Person & Student)  & no(Person & Teacher) )
-- div,1
all p : Person | p not in (Student + Teacher) and no p.teaches
-- div,1
