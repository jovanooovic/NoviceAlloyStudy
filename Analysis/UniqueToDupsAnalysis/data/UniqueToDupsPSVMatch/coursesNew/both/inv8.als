(no (Professor . (Person <: enrolled)))
-- div,1
#enrolled.(Professor.teaches) = 1
-- div,1
all p: Professor | p in p.teaches
-- div,1
all p : Professor | p.enrolled = 0
-- div,1
no Professor & enrolled.(Professor.teaches)
-- div,1
all p : Professor | p.enrolled = none
-- div,1
Professor.teaches & Professor.enrolled = none
-- div,1
all c : Course | teaches.c not in enrolled.c
-- div,1
all p:Professor | p.enrolled != p.teaches
-- div,1
all x : Professor | x.enrolled in x.teaches
-- div,1
all p: Professor | p.teaches != p.enrolled
-- div,1
all p : Professor | p.enrolled !in p.teaches
-- div,5
all t:Professor| t.teaches not in t.enrolled
-- div,2
all x : Professor | x.teaches not in x.enrolled
-- div,1
all x:Professor | x.enrolled not in x.teaches
-- div,4
all t:Professor| t.enrolled not in t.teaches
-- div,2
all p:Professor| p.teaches not in p.enrolled
-- div,6
no p : Professor | p in p.^(teaches.~enrolled)
-- div,1
all p: Professor | p.teaches & p.enrolled = 0
-- div,3
all p:Professor | no (p.projects & ((p.teaches).projects))
-- div,1
all p : Professor | p not in p.teaches iff p in p.enrolled
-- div,1
all p : Professor | all c : Course | p not in teaches.c
-- div,1
all p : Professor, c : Course | p.enrolled not in p.teaches
-- div,2
all x:Professor, c:Course | x.teaches not in x.enrolled
-- div,1
all p:Professor| all c:p.teaches| p.enrolled not in c
-- div,1
all p : Professor | p !in p.teaches => p.enrolled != p.teaches
-- div,2
all x:Person, c:Course| x in Professor implies x->c not in enrolled
-- div,1
all c: Course, p: Professor | c in p.teaches => no c.grades[p]
-- div,1
all p:Professor, c:Course | p in teaches.c and p not in enrolled.c
-- div,2
all p : Person | all c : Course | c in p.teaches implies p not in Professor
-- div,2
all p : Person | all c : Course | p in enrolled.c implies p not in Professor
-- div,1
all c : Course | some p : Person | c in p.teaches and c not in p.enrolled
-- div,1
all p: Professor | one c:Course| c in p.teaches implies c not in p.enrolled
-- div,1
all p: Professor| some c: Course| p in c.teaches implies p not in c.enrolled
-- div,1
all p : Professor | some c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all p:Professor | all coursesTeached:p.teaches | p.enrolled not in coursesTeached
-- div,1
all u:Person,c:Course| u in Professor and u->c in teaches implies u->c in enrolled
-- div,1
all c : Course | all p : Professor | p in c.~(teaches) iff p not in c.grades[Person]
-- div,1
all p1,p2:Professor, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 != c2
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 !=c2
-- div,1
all p1,p2:Professor | all c1,c2:Course | p1->c1 in teaches and p2->c2 in enrolled implies p1 != p2 implies c1 !=c2
-- div,1
