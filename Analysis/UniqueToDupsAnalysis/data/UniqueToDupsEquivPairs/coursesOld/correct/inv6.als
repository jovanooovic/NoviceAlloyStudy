-- equiv pair start,34
Person<:projects in enrolled.projects
-- div,1
all p:Person | p.projects in p.enrolled.projects
-- div,2
all p: Project | (Person<:projects).p in enrolled.projects.p
-- div,1
all p : Project | projects.p <: Person in enrolled.(projects.p <: Course)
-- div,1
all s:Person,p:Project | s->p in projects implies s->p in enrolled.projects
-- div,1
all p: Project, u: Person | p in u.projects implies some c: Course | c in u.enrolled and p in c.projects
-- div,1
all s : Person, p : Project | p in s.projects implies (some c : Course | p in c.projects and c in s.enrolled)
-- div,1
all s : Person | all p : Project | p in s.projects implies some c : Course | p in c.projects and c in s.enrolled
-- div,1
all p : Project | all s : Person | s->p in projects implies (some c : Course | c->p in projects and s->c in enrolled)
-- div,5
all p : Person | all pr : Project | pr in p.projects implies (some c : Course | pr in c.projects and c in p.enrolled)
-- div,1
all p : Person | all pro : Project | pro in p.projects implies ( some c : Course | pro in c.projects and c in p.enrolled)
-- div,1
all s1 : Person | all p1 : Project | 
  	p1 in s1.projects implies (some c1 : Course | p1 in c1.projects and c1 in s1.enrolled)
-- div,1
all p : Person | all p2 : Project | p->p2 in projects implies (some c1 : Course | c1->p2 in projects and p->c1 in enrolled)
-- div,1
all s1 : Person | all p1 : Project | 
  	p1 in s1.projects implies (some c1 : Course | c1->p1 in projects and s1->c1 in enrolled)
-- div,1
all s1: Person | all p1: Project | s1->p1 in projects implies (some c1: Course | c1->p1 in projects and s1->c1 in enrolled)
-- div,11
all p1 : Person | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and p1->c1 in enrolled)
-- div,4
-- equiv pair end
