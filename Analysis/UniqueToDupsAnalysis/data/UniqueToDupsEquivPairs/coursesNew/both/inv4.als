-- equiv pair start,2
one Course.projects
-- div,2
-- equiv pair end
-- equiv pair start,2
all c:Course | some c.projects
-- div,1
all c : Course | some p : Project | p in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,4
one (Course<:projects).Project
-- div,1
one Course <: projects.Project
-- div,1
one c : Course | some c.projects
-- div,1
one c : Course | #(c.projects)>0
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Course | one c.projects
-- div,3
all c: Course | one p: Project | p in c.projects
-- div,1
all x:Course|one y:Project| x->y in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
one c : Course | one c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
some c : Course | c.projects in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Project | one Course.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | #Person<:projects.p = 1
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y : Course | x.projects != y.projects
-- div,1
all c1,c2 : Course | c1.projects != c2.projects
-- div,1
-- equiv pair end
-- equiv pair start,10
all x: Project, y: Course  | x in y.projects
-- div,1
all p: Project, c: Course | p in c.projects
-- div,3
all x:Course, y:Project| x->y in projects
-- div,1
all p:Project, c:Course| c->p in projects
-- div,1
all x: Project, y: Course  |x in (one y.projects)
-- div,1
all p: Project | all c: Course | p in c.projects
-- div,2
all p : Project | all c : Course |  one c.projects & p
-- div,1
-- equiv pair end
-- equiv pair start,3
some p:Project|one c:Course| c->p in projects
-- div,3
-- equiv pair end
-- equiv pair start,1
all p: Project | one c: Course | c.projects = p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | one c : Course | some c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | one c : Course | c.projects in c
-- div,1
-- equiv pair end
-- equiv pair start,2
one c : Course | all p : Project | p in c.projects
-- div,1
one c:Course | all p:Project | c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | some p: Professor|  c in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Project | some c : Course | c.projects in c
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Project, c: Course | p in c.projects => c in p.enrolled
-- div,1
all p : Project | all c1,c2 : Course | p in c1.projects implies p not in c2.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x: Project, y: Course  | x in y.projects && one y.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y : Course | (#(x.projects)>0 and x!=y) implies #(y.projects)=0
-- div,1
-- equiv pair end
-- equiv pair start,1
all c1,c2 : Course | all p : Project | (p = c1.projects) implies (c1.projects != c2.projects)
-- div,1
-- equiv pair end
