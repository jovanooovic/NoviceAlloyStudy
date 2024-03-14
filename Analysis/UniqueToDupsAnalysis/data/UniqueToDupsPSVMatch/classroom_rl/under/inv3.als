all p: Person | lone Student or lone Teacher
-- div,1
Person = Student + Teacher implies no Teacher & Student
-- div,1
all p : Person | p in Student => p not in Teacher && p in Teacher => p not in Student
-- div,1
