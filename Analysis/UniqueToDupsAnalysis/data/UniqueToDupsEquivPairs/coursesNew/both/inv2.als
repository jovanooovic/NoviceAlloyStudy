-- equiv pair start,1
some Professor.teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
no (Person-Student).teaches
-- div,1
all x: Person - Student | no x.teaches
-- div,1
all p:Person, c:Course | c in p.teaches implies p in Student
-- div,1
all c : Course | all p : Person-Student | no p & teaches.c
-- div,1
-- equiv pair end
-- equiv pair start,8
no (teaches.Course & Student)
-- div,1
all p: Student| no p.teaches
-- div,4
all s: Student| no s.teaches
-- div,1
all x : Student | no x.teaches
-- div,1
all p: Person| p in Student implies no p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,4
no (Person - Professor).enrolled
-- div,1
all x: Person - Professor | no x.enrolled
-- div,1
all p :  (Person - Professor) | no p.enrolled
-- div,1
all p:Person | all c:Course | (c in p.enrolled) implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,3
all x:Professor, y: Course| x->y in teaches
-- div,2
all x: Person , y: Course | (x in Professor) implies (y in x.teaches)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | Course in p.teaches implies p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | all x:Person-p | x.enrolled not in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all s: Student, p : Person | no s.teaches && some p.teaches
-- div,1
-- equiv pair end
