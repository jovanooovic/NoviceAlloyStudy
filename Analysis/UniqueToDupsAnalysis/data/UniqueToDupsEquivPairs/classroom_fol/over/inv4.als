-- equiv pair start,1
no Person
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person in Student) or (Person in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person | p in Student and p in Teacher
-- div,2
all p:Person | not (p in Student implies p not in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
(Person in Student) iff not (Person in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | p != Student implies p = Teacher
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | p not in Student implies p = Teacher
-- div,1
-- equiv pair end
-- equiv pair start,2
all p:Person | not (p in Student implies p in Teacher)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Person | not (p not in Student implies p not in Teacher)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p in Student or p in Teacher and inv3
}

pred inv3{
  all p : Person | p in Student implies p not in Teacher
-- div,1
-- equiv pair end
