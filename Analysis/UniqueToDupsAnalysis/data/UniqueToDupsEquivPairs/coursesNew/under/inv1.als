-- equiv pair start,36
no enrolled.Professor
-- div,2
enrolled in  (Person -> Course)
-- div,1
no (enrolled.Person - Student)
-- div,1
no (Professor <: Person.enrolled)
-- div,1
all p : Professor | p not in Course
-- div,1
all  p : Professor | p not in enrolled.p
-- div,1
all  p : Professor | p not in p.enrolled
-- div,2
all c : Course | c.enrolled in Student
-- div,1
all s:Student | s.enrolled in Course
-- div,1
all p : Professor | p not in Person.enrolled
-- div,1
all x: Person - Student | no enrolled.x
-- div,1
all p:Person| Course.grades.p in Student
-- div,1
all c:Course| c.grades.Person in Student
-- div,1
all p:Person-Student | none in p.enrolled
-- div,2
all p : Person-Student | p.enrolled in Course
-- div,1
all p : Person-Professor | p.enrolled in Course
-- div,1
all c : Course | c.enrolled in Student-Professor
-- div,1
all p: Person | p in p.enrolled => p in Student
-- div,1
all p : Professor , c: Course | p not in c.enrolled
-- div,1
all p:Person | p.enrolled = 0 => p in Professor
-- div,1
all x: Person | (x not in Student) implies x not in x.enrolled
-- div,1
all p : Person | p in Student implies p.enrolled in Course
-- div,1
all p: Person | p in Person.enrolled implies p in Student
-- div,1
all p : Person | all pr : Professor | pr not in p.enrolled
-- div,1
all c: Course, p: Person | p in c.enrolled => p in Student
-- div,3
all p:Person, c:Course| p in c.enrolled implies p in Student
-- div,2
all p: Person, c: Course | p not in Student => p not in enrolled[c]
-- div,2
all p: Person, s: Student, c: Course | p not in s => p not in c
-- div,1
all p : Person | (p not in Student implies #(enrolled) = 0) or (p in Student implies #(enrolled) > 0)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | p.enrolled in Student.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, s: Student | p not in Student => p not in Course.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Person | all c1 : Course | p1.enrolled = c1 implies p1 in Student
-- div,1
-- equiv pair end
