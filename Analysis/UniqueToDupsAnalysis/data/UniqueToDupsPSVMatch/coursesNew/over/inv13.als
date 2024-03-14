grades.(max[Grade]) = projects.~projects
-- div,1
all c: Course | c.grades.(max[Grade]) in (Course <: projects).c
-- div,2
all c: Course | c.grades.(max[Grade]) in Course <: c.projects
-- div,1
all c: Course | one u : Student | u = last[c.grades] and some (u.projects & c.projects)
-- div,1
all x : Person | all y : Course | x in y.grades.last implies (one p : Project | p in y.projects and p in x.projects)
-- div,1
all x:Person, c:Course, g:Grade| one p:Project| c->x->g in grades implies x in Student and x->c in enrolled and c->p in projects and x->p in projects
-- div,1
