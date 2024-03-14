Professor.teaches - iden
-- div,1
(Professor.teaches) - iden
-- div,1
enrolled.(Professor.teaches)
-- div,1
all p : Person | no p in p.teaches
-- div,1
all p: Professor | no p in p.teaches
-- div,2
all p : Professor | no p in p.teaches
-- div,1
all p: Professor |
    no p in p.teaches
-- div,1
all p: Professor | all c: p.teaches | univ
-- div,1
all x:Person | none (x.enrolled & x.teaches)
-- div,2
all p: Professor | p not in p.teaches.grades
-- div,1
all x:Professor | none (x.enrolled & x.teaches)
-- div,1
all x : Professor | x.enrolled => not(x.teaches)
-- div,1
all p : Professor | none (p.teaches & p.enrolled)
-- div,1
all x : Professor | some x.enrolled => not(x.teaches)
-- div,1
all p : Professor | p not in p.teaches iff p.enrolled
-- div,1
all c: Course, p: Professor | c in p.teaches => no p in c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => p not in c.grades
-- div,3
all p: Professor, c: Course | c in p.teaches => p not in c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => c not inp.enrolled
-- div,1
all p:Professor | all c:Course | no ((p.teaches).projects & p.enrolled)
-- div,1
all p: Professor| all c: Course| p in c.teaches implies p not in enrolled
-- div,1
all c: Course, p: Professor | c in p.teaches => no c.grades[p] in c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => no p.grades[p] in c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades
-- div,1
all c: Course, p: Professor | c in p.teaches => not (p.grades[p] in c.grades)
-- div,1
all c : Course | all p : Professor | p in c.~(teaches) implies (p not in c.grades and p not in c.~(enrolled))
-- div,1
