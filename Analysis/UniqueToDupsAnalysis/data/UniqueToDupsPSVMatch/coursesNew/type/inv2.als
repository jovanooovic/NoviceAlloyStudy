all p: Student| p.teaches
-- div,1
all x : Professor | x.teaches
-- div,1
all x: Person - Student | x.teaches
-- div,1
all x: Person - Student |  x.teaches
-- div,1
all p:Person | p.teaches implies p in Professor
-- div,1
all p : Person | p.teaches implies p in Professor
-- div,2
all p: Person, c:Course | p not in Professor => p not c.~teaches
-- div,1
all p: Person, c: Course | p not in Professor => p not c.~teaches
-- div,2
all p:Person | all c:Course | c in p.grades implies p in Professor
-- div,1
