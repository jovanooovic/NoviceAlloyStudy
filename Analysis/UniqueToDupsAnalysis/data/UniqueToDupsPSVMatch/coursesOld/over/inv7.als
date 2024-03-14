this/Course <:projects in Course -> one Project
-- div,1
all s : Course| lone (s.projects)
-- div,1
all c: Course | lone c.projects
-- div,2
all p:Project | one (p.enrolled.projects)&Student
-- div,1
all c:Course | (this/Person <: projects) in Student -> lone Project
-- div,1
all p:Person | one (p.enrolled.(Course <: projects))&Student
-- div,1
all s:Person, c:Course | one p : Project | p in s.projects and p in c.projects
-- div,1
all c : Course | all p1, p2 : Project | (p1 in c.projects and p2 in c.projects) implies (p1 = p2)
-- div,1
all s:Person, c:Course | one p : Project | p in s.projects and p in c.projects and c in s.enrolled
-- div,1
all s : Person | all c : Course | one p : Project | s->c in enrolled and c->p in projects and s->p in projects
-- div,4
all s : Person | all c : Course | one p : Project | s->c in enrolled and c->p in projects implies (s->p in projects)
-- div,1
all s : Person | all c : Course | one p : Project | (s->c in enrolled and c->p in projects) implies (s->p in projects or s->p not in projects)
-- div,1
all p : Project | some s : Person | s->p in projects

  	all s : Person | all c : Course | one p : Project | s->c in enrolled and c->p in projects implies (s->p in projects)
-- div,1
all p : Project | some s : Person | s->p in projects

  	all s : Person | all c : Course | lone p : Project | s->c in enrolled and c->p in projects implies (s->p in projects)
-- div,1
all p : Project | some s : Person | s->p in projects

  	all s : Person | all c : Course | one p : Project | s->c in enrolled and c->p in projects implies (s->p in projects or s->p not in projects)
-- div,1
