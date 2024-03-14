-- equiv pair start,1
no (teaches.~teaches & iden)
-- div,1
-- equiv pair end
-- equiv pair start,1
no ^(teaches.~enrolled) & iden
-- div,1
-- equiv pair end
-- equiv pair start,1
no enrolled.Course & teaches.Course
-- div,1
-- equiv pair end
-- equiv pair start,2
no (Person.teaches & Person.enrolled)
-- div,1
Person.teaches & Person.enrolled = none
-- div,1
-- equiv pair end
-- equiv pair start,7
all p:Person | some (Person <: teaches).p
-- div,1
all p:Person | p in (Person <: teaches).p
-- div,2
all p:Person | p in p.teaches
-- div,1
all p:Person | some ^(Person <: teaches).p
-- div,1
all p:Person | some (Person <: ~teaches).p
-- div,1
all p:Person | some (Person <: ^teaches).p
-- div,1
-- equiv pair end
-- equiv pair start,6
all c : Course, p : Person | p->c in teaches and c not in p.enrolled
-- div,1
all c : Course, p : Person | p->c in teaches and p->c not in enrolled
-- div,3
all p:Person, c:Course | p->c in teaches and not(p->c in enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person , c: Course | c not in p.teaches and c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Person | p in Professor and p->c in teaches and p->c not in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, p : Person | p->c in teaches and p->c not in enrolled and p not in Student
-- div,1
-- equiv pair end
