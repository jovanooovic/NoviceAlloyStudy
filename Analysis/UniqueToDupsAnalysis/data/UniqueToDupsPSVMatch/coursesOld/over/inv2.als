no teaches.Course
-- div,1
teaches.Course = Professor
-- div,3
(Person . teaches) in Professor
-- div,1
teaches = Professor -> Course
-- div,1
no Person-Professor.teaches
-- div,3
all p : Person | p in p.teaches
-- div,1
Course.~teaches = Professor - Student
-- div,1
all p : Person | p ->p in teaches
-- div,1
no Person-Professor & teaches.Course
-- div,1
all p : Person | p.teaches in Professor
-- div,1
all p : Person | no p.teaches - Professor
-- div,1
all p:Person | some p.teaches iff p in Professor
-- div,1
all p : Person | p.teaches in Course implies p = Professor
-- div,1
all p:Person | p.teaches in Course implies p in Professor
-- div,1
all p:Person | p.enrolled in Course implies p in Professor
-- div,1
all p : Person, c : Course | c in p.teaches implies c in Professor
-- div,1
all p : Person | some p.teaches implies p in Professor and p not in Student
-- div,1
