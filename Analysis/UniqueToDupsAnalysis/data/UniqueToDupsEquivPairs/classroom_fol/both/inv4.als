-- equiv pair start,21
no Teacher & Student
-- div,1
no Student & Teacher
-- div,2
all p:Person | p in Student implies p not in Teacher
-- div,2
all p:Person | p in Teacher implies p not in Student
-- div,1
all x : Person | x not in Student or x not in Teacher
-- div,1
all p:Person | p not in Student or p not in Teacher
-- div,8
all p:Person | not (p in Teacher and p in Student)
-- div,1
all p:Person | not (p in Student and p in Teacher)
-- div,3
always (all s:Student | s not in Teacher)
	always (all t:Teacher | t not in Student)
-- div,1
always (all p:Person | (p in Student implies p not in Teacher) and (p in Teacher implies p not in Student))
-- div,1
-- equiv pair end
-- equiv pair start,64
no Student + Teacher
-- div,11
no Teacher+Student
-- div,1
no Student
  no Teacher
-- div,8
no (Person & Student) and no (Person & Teacher)
-- div,1
all f : Person | f not in (Student + Teacher)
-- div,1
(no Student) and (no Teacher) and no ( Student & Teacher )
-- div,1
all x: Person | x not in Student and x not in Teacher
-- div,4
all p:Person | p not in Student and p not in Teacher
-- div,22
all p:Person | p not in Teacher and p not in Student
-- div,6
all p:Person | not (p in Teacher or p in Student)
-- div,1
all p:Person | not (p in Student or p in Teacher)
-- div,4
all p:Person | not (p not in Student implies p in Teacher)
-- div,1
not some p : Person | p in Student or p in Teacher
-- div,1
all p : Person | not p in Student and not p in Teacher
-- div,1
all x : Person | x in Person implies x not in Student and x not in Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
no Student and no Teacher and no Class
-- div,2
-- equiv pair end
-- equiv pair start,1
Person != Student
  	Person != Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
no Student and no Teacher and some Person
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person | no (p.Tutors + p.Teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
no Student and no Teacher and no Class and no Group
-- div,1
-- equiv pair end
-- equiv pair start,6
all p:Person | p not in Student implies p not in Teacher
-- div,3
all x : Person | x not in Student implies x not in Teacher
-- div,3
-- equiv pair end
-- equiv pair start,1
all p:Person | p not in Teacher implies p not in Student
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | no (p.Tutors + p.Teaches) and no (Student + Teacher)
-- div,1
all p : Person | p not in Student and p not in Teacher and no p.Teaches and no p.Tutors
-- div,1
-- equiv pair end
