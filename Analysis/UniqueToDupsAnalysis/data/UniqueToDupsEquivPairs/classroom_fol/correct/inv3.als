-- equiv pair start,181
no Teacher & Student
-- div,17
no Student & Teacher
-- div,34
Student & Teacher = none
-- div,2
all x : Student | x not in Teacher
-- div,1
all t:Teacher | t not in Student
-- div,1
all s:Student | s not in Teacher
-- div,2
all s:Student,t:Teacher | s!=t
-- div,1
all p : Person | p not in (Student & Teacher)
-- div,2
no p1:Student,p2:Teacher | p1=p2
-- div,1
no p:Person | p in Teacher and p in Student
-- div,3
no p:Person | p in Student and p in Teacher
-- div,3
all p:Person | p in Student implies p not in Teacher
-- div,38
all x: Person | x in Student implies x not in Teacher
-- div,4
all p:Person | p in Teacher implies p not in Student
-- div,6
all p : Person | p not in Student or p not in Teacher
-- div,3
all p:Person | not (p in Teacher and p in Student)
-- div,5
all p:Person | not (p in Student and p in Teacher)
-- div,3
not some p:Person | p in Teacher and p in Student
-- div,2
not some p:Person | p in Student && p in Teacher
-- div,11
Student in Person - Teacher  
  	Teacher in Person - Student
-- div,1
all p,q:Person | p in Teacher and q in Student implies p != q
-- div,1
all s: Student | all t: Teacher | s not in Teacher and t not in Student
-- div,1
all p:Person | p in Teacher implies p not in Student or p in Student and p not in Teacher
-- div,1
all p:Person | p in Teacher implies p not in Student or p in Student implies p not in Teacher
-- div,4
all p : Person | (p in Teacher implies p not in Student) and (p in Student implies p not in Teacher)
-- div,2
all p : Person | p in Student => p not in Teacher || p in Teacher => p not in Student
-- div,8
all p : Person | (p in Student implies p not in Teacher) and (p in Teacher implies p not in Student)
-- div,2
all x,y : Person | x in Student and y in Teacher implies x not in Teacher and y not in Student
-- div,2
all w : Person | w in Student implies w not in Teacher
  all w : Person | w in Teacher implies w not in Student
-- div,18
all p : Person | p in Student implies p not in Teacher
  	all p : Person | p in Teacher implies p not in Student
-- div,1
Student in Person - Teacher  
  	Teacher in Person - Student
    all x : Person | x in Student implies x not in Teacher
-- div,1
-- equiv pair end
