no (teaches.Person & Student)
-- div,2
no teaches.Person - Professor
-- div,3
all p: Student| no teaches.p
-- div,1
all p: Person| p in Student implies no teaches.p
-- div,1
all c: Course, p: Person |
    (p in c.teaches) => p in Professor
-- div,1
all p : Person, c : Course | c->p in teaches implies p in Professor
-- div,1
