-- equiv pair start,10
(Person <: projects) in enrolled.projects
-- div,1
all p:Project| (Person <: projects) in enrolled.projects
-- div,1
all s : Person | all p : Project | p in s.projects implies s in enrolled.projects.p
-- div,2
all p: Project | all pe: Person | p in pe.projects implies p in pe.enrolled.projects
-- div,1
all x: Person| all p: Project | p in x.projects implies (some c: Course| p in c.projects and c in x.enrolled)
-- div,1
all p : Project | all s : Person | p in s.projects implies some c : Course | p in c.projects and s in enrolled.c
-- div,1
all s1 : Person | all ps : Project | ps in s1.projects implies (some c1 : Course | ps in c1.projects and c1 in s1.enrolled)
-- div,1
all s1 : Person | all p1 : Project | 
  	s1->p1 in projects implies (some c1 : Course | c1->p1 in projects and s1->c1 in enrolled)
-- div,2
-- equiv pair end
