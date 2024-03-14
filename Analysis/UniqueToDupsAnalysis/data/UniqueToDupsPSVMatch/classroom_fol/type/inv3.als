Student or Teacher
-- div,1
no Student && Teacher
-- div,1
no Student and Teacher
-- div,1
Teacher iff not Student
-- div,1
no (Student && Teacher)
-- div,1
not (Student && Teacher)
-- div,1
no Person in Student + Teacher
-- div,1
no Person in Student and Teacher
-- div,1
no p:Person | p is Student and p is Teacher
-- div,1
all p : Person | p not in (Teacher and Student)
-- div,1
all p:Person | no p in Student and p in Teacher
-- div,1
all p : Person | no ( p in Student & p in Teacher)
-- div,3
all p : Person | no ( (p in Student) & (p in Teacher))
-- div,1
all p : Person | ( p not in Student & p not in Teacher)
-- div,1
all p:Person | p and Teacher implies p not in Student or p in Student and p not in Teacher
-- div,1
