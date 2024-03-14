-- equiv pair start,7
all p: Person | (p in Teacher implies p not in Student)or(p not in Teacher implies p in Student)
-- div,5
all p : Person {
  (p not in Teacher implies p in Student)
  or
  (p in Teacher implies p not in Student)
  }
-- div,1
all p : Person | p in Student => p not in Teacher and p in Teacher => p not in Student
-- div,1
-- equiv pair end
