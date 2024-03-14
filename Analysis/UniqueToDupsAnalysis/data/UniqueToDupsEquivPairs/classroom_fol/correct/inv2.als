-- equiv pair start,157
no Teacher
-- div,58
Teacher = none
-- div,2
always (no Teacher)
-- div,1
no Person & Teacher
-- div,1
Person - Teacher = Person
-- div,1
Person = (Person - Teacher)
-- div,1
no p:Person | p in Teacher
-- div,3
all p:Person | p not in Teacher
-- div,72
all x: Person | x not in Teacher
-- div,4
all f : Person | f not in Teacher
-- div,1
all t : Teacher | t not in Teacher
-- div,1
all p:Person | not p in Teacher
-- div,3
not some p:Person | p in Teacher
-- div,9
-- equiv pair end
