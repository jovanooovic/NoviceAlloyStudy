}
-- div,2
no student & Teacher
-- div,1
no Studente & Teacher
-- div,1
no Student & Teacher
}
-- div,1
no Student & Teacher 
}
-- div,1
Person = no Student & Teacher
-- div,1
Person in Student in Teacher
}
-- div,1
Person = no (Student + Teacher)
-- div,1
Person not in Student & Teacher
}
-- div,1
Person = 
  	no Student & Teacher
-- div,1
no Person in (Student & Teacher))
-- div,1
no Person in Student in Teacher
}
-- div,1
Person not in (Student & Teacher)
}
-- div,1
no Person not (Student & Teacher)
}
-- div,1
all s: Student, no t: Teacher | s = t
-- div,1
all p: Person | no t: Teacher | p == t
-- div,1
no p:Person | p in Teacher and p in Student)
-- div,1
all p:Person | p in Teacher implies p not in
-- div,1
none p: Person | p in Student and p in Teacher
-- div,1
all p:Person | p in Student /= p not in Teacher
-- div,1
Person = Student + Teacher, no Teacher & Student
-- div,1
p in Person implies (p in Student or p in Teacher)
-- div,1
all p: Person | lone in Student or lone in Teacher
-- div,1
Person = no Student + Teacher,
  Student & Teacher
-- div,1
Person = Student + Teacher,
  no Student & Teacher
-- div,1
Person = Student + Teacher and no Teacher & no Student
-- div,1
all p: Person | p lone in Student or p lone in Teacher
-- div,1
Person = no Student + Teacher
  Person = Student & Teacher
-- div,1
Person = no Student + Teacher,
  Person = Student & Teacher
-- div,1
(Person in Student and Person not in Teacher) or (Person not in Student and Person in Teacher) or (Person not in Student and Person not in Teacher)
}
-- div,1
