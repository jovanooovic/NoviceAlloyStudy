all p : Person | (
-- div,1
Student disj Teacher
-- div,1
not some p : p in Student and p in Teacher
-- div,1
all p:Person | p in Student | p in Teacher
-- div,1
no all p:Person | p in Student and p in Teacher
-- div,1
not some p  Person | p in Student and p in Teacher
-- div,1
all p: Person | p1 in Student and p1 not in Teacher
-- div,1
all p : Person | p in Student implies not in Teacher
-- div,2
not (all p : Person | p in Student or and p in Teacher)
-- div,1
all P in Person | p in Teacher implies p not in Student
-- div,1
all p : Person { 
    all p : Person | p in Teacher or p in Student
}
  }
-- div,1
all w : Person | in Student implies w not in Teacher
  all w : Person | in Teacher implies w not in Student
-- div,1
