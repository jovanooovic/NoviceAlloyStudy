-- equiv pair start,217
(Course<: projects) in Course one -> set Project
-- div,1
all x:Project |  one (Course <: projects).x
-- div,1
all p: Project | one (Course<:projects).p
-- div,9
all g:Project | one ( (Course <: projects).g)
-- div,3
all p : Project | one (p.~(Course <: projects))
-- div,2
all p : Project | #((Course <: projects).p) = 1
-- div,1
all p:Project| one projects.p & Course
-- div,8
all p: Project | one Course <: projects.p
-- div,5
all p: Project | one Course :> projects.p
-- div,2
all p:Project | one projects.p <: Course
-- div,1
all x: Project | one Course <:projects.x
-- div,4
all p : Project | #projects.p:>Course = 1
-- div,1
all p:Project| #Course:>projects.p=1
-- div,1
all p : Project | #Course<:projects.p = 1
-- div,2
all p: Project| one c:Course | c = projects.p
-- div,4
all x: Project |one c : Course | x in c.projects
-- div,1
all p: Project| one c: Course| c in projects.p
-- div,14
all x: Project| one y: Course  | x in y.projects
-- div,8
all p:Project| one c:Course| p in c.projects
-- div,110
all x : Project | one y : Course | y in projects.x
-- div,3
all p : Project | one x : Course | x in projects.p
-- div,2
all a:Project | one c:Course | a in c.projects
-- div,1
all p:Project|one c:Course| c->p in projects
-- div,21
all x: Project | one p: Course | p->x in projects
-- div,1
all pr: Project | one c : Course | pr in c.projects
-- div,1
all p: Project | one c: Course | p.~projects = c
-- div,2
all p : Project | one c : Course | c in p.~(projects)
-- div,1
all ps : Project | one c1 : Course | ps in c1.projects
-- div,1
all p1: Project | one c1: Course | c1->p1 in projects
-- div,2
all proj:Project | one c:Course | proj in c.projects
-- div,1
all project : Project | one course : Course | course->project in projects
-- div,3
-- equiv pair end
