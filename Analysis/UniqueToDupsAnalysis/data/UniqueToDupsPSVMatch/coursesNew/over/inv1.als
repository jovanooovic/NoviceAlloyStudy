no (Person.enrolled - Student)
-- div,2
all x : Course | x in Person
-- div,1
all x: Person | x in Student
-- div,1
all p: Person | p in Student
-- div,3
all x: Person | x.enrolled in Student
-- div,1
all p : Person.enrolled | p in Student
-- div,2
all p2 : Person.enrolled | p2 in Student
-- div,1
all p:Person-Student | p.enrolled = 0
-- div,1
all s : Person | s not in Student implies #(enrolled)=0
-- div,1
all p : Person | p not in Student implies #(enrolled) = 0
-- div,2
all p : Person.enrolled | p in Person-Professor
-- div,1
all p : Person | all p2 : p.enrolled | p2 in Student
-- div,1
all x : Person, c : Course | x in Student and x.enrolled in c
-- div,1
all p : Person, g : Grade | p->g in Course.grades and p in Student
-- div,1
all c: Course | all p: Person | p not in Professor && p in Student
-- div,1
all e : Person | all c: Course | c in e.enrolled implies c in Student
-- div,1
