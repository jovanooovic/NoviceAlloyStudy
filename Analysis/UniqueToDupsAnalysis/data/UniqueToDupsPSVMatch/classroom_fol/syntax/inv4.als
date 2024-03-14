in Person
-- div,1
all p : Person |
-- div,2
Teacher | Student
-- div,1
no Teacher & no Student
-- div,1
Student | Teacher = Person
-- div,1
People in Student + Teacher
-- div,1
People in Student or Teacher
-- div,1
Person always in Student or Teacher
-- div,1
Person implies in Student or Teacher
-- div,1
all p : Person | p in Student + Teacher)
-- div,1
all p:Person | p in Teacher or in Student
-- div,1
al p:Person | p in Student or p in Teacher
-- div,1
all p:person | p in Student or p in Teacher
-- div,1
all p : Person | p in Student or P in Teacher
-- div,1
all p : Person | not (p in Student or in Teacher)
-- div,1
all p : Person | p not in Student , p not in Teacher
-- div,1
none p:Person | p not in Student or p not in Teacher
-- div,1
all x : Person | x not in Student , x not in Teacher
-- div,1
all p : Person | p not in Sudent and p not in Teacher
-- div,1
all p : Person | p not in Student and p not in Teacer
-- div,1
none p:Person | p not in Student and p not in Teacher
-- div,1
not some p: Person | p not in Student and not in Teacher
-- div,1
not some P: Person | p not in Student and not in Teacher
-- div,2
all p : Person | implies p not in Student and p not in Teacher
-- div,1
always (all p:Person | (p in Student implies p not in Teacher) and (p in Teacher implies p not in Student)
-- div,1
