-- equiv pair start,4
all p : Project | (Person <: projects).p = enrolled.p
-- div,3
all p1 : Person | all pr1 : Project | p1->pr1 in projects implies (some c1 : Course| c1->pr1 in projects and c1->p1 in enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person | some (Person <: projects).enrolled.p
-- div,1
all pr : Person | some (Person <: projects).enrolled.pr
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Project | some (Person <: projects).enrolled.p
-- div,1
all p : Project | some p.(Person <: projects)  & enrolled.p
-- div,1
all p : Project | some (Person <: projects).p  & enrolled.p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project, pr : Person | some (Person <: projects).enrolled.pr
-- div,1
-- equiv pair end
-- equiv pair start,5
all s:Person, p:Project | some c:Course | p in s.projects implies p in c.projects and c in s.enrolled
-- div,1
all s1 : Person | all p1 : Project | some c1 : Course |
  	p1 in s1.projects implies (c1->p1 in projects and s1->c1 in enrolled)
-- div,2
all s1 : Person | all p1 : Project | some c1 : Course| s1->p1 in projects implies (c1->p1 in projects and s1->c1 in enrolled)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p:Person | all pr:Project|p->pr in projects implies (some c:Course|p in Student and p->c in enrolled and c->pr in projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Person, p:Project | some c:Course | p in s.projects implies p in c.projects and c in s.enrolled and s in Student-Professor
-- div,1
-- equiv pair end
