projects in Course
-- div,1
one projects.Project
-- div,1
some c:Course | c.projects
-- div,1
one c : Course | c.projects
-- div,1
all p : Project | projects.p
-- div,1
all c:Course | one projects.c
-- div,3
all x:Project| one projects.x
-- div,1
all p:Project| one projects.p
-- div,6
all x:Project | one projects.x
-- div,3
all p : projects | p in Course
-- div,1
all g:Grade | one (projects.g)
-- div,1
all p:Project | one projects.p
-- div,3
all p: Project| one projects.p
-- div,1
all p : Project | no projects.p
-- div,1
all p : Project| one projects.p
-- div,1
all p: Project | one projects.p
-- div,6
all x:Project | lone projects.x
-- div,1
all x:Project |  one projects.x
-- div,1
all p : Project | #(p.Course)=1
-- div,1
all p : Project | one projects.p
-- div,26
all x : Project | one projects.x
-- div,2
all p : Project | some projects.p
-- div,2
all p : Project | #projects.p = 1
-- div,4
all p : Project | #(projects.p)=1
-- div,2
all p : Project | lone projects.p
-- div,1
all p : Project | #(projects.p)<=1
-- div,1
all a:Project | one c:Course | c->a
-- div,1
all p : Project | #(projects.p) = 1
-- div,2
all c:Course | one Course.projects.c
-- div,1
all x:Project| one Course.projects.x
-- div,1
projects in Course one -> set Project
-- div,4
all p : Project | one (p.(~projects))
-- div,3
all p: Project | one Course.projects.p
-- div,1
all x: Project | one Course.projects.x
-- div,1
all x : Project | x in projects.Course
-- div,2
all p : Project | one projects.Project
-- div,1
all p : Project | one Course.projects.p
-- div,1
all p : Project | #(Course.projects.p)=1
-- div,1
all p : Project | one p & projects.Course
-- div,1
all p : Project | one p in Course.projects
-- div,1
all p : Project | one Course in projects.p
-- div,1
all x : Project | one x in Course.projects
-- div,1
all x : Project | one Course in projects.x
-- div,1
all p : Project, c : Course | one p in c.p
-- div,2
all x : Course | one x in projects.Project
-- div,1
all p : Project | one (Course:>projects).p
-- div,1
all p : Project | one (projects<:Course).p
-- div,1
one x : Course | all y : Project | x in x.y
-- div,1
some x : Course | one x in projects.Project
-- div,1
all p: Project | one (p in Course.projects)
-- div,1
all p:Project |one c:Course | p in p.Course
-- div,1
all p : Project | #(p.(Course.projects)) = 1
-- div,2
Course.projects in Course one -> set Project
-- div,1
all p:Project| one c:Course| p->c in projects
-- div,1
all x : Project | one ( x in Course.projects)
-- div,1
all p : Project, c : Course | one p.c.projects
-- div,1
all p: Project| one c: Course| p in projects.c
-- div,1
all p: Project| all c: Course| p in projects.c
-- div,1
all p : Project, c : Course | one c.projects.p
-- div,1
all p: Project| some c: Course| p in projects.c
-- div,1
all p : Project | one (p.(~projects <: Course))
-- div,1
all p : Project | Course <: (#(projects.p) = 1)
-- div,1
all x:Project, y:Course| lone x -> y in projects
-- div,1
all p: Project | one c: Course | p in projects.c
-- div,1
all p : Project | one (p.(~(projects <: Course)))
-- div,1
all x: Course | one p: Project | p->x in projects
-- div,2
all p : Project | (Course <: (#(projects.p) = 1))
-- div,1
all x: Project, y: Course  | x => x in y.projects
-- div,1
all p : Project, c : Course | one p in c.projects
-- div,1
all p : Project, c : Course | one c in projects.p
-- div,2
all p : Project, c : Course | one c in p.projects
-- div,1
all p : Project | one c : Course | p in projects.c
-- div,1
all x:Project | lone y:Course|  x -> y in projects
-- div,1
all x: Project, y: Course  | one (x in y.projects)
-- div,1
all p: Project| all c: Course| one p in projects.c
-- div,1
all x: Project, y: Course  | #(x in y.projects) = 1
-- div,1
all p : Project | all x : Course | #(x.projects.p)=1
-- div,1
all x: Project | one y: Course | one x in y.projects
-- div,1
all x: Project | one y: Course | lone x in y.projects
-- div,1
all p : Project | all c : Course | one p & projects.c
-- div,2
all p1: Project | one c1: Course | p1->c1 in projects
-- div,1
all p: Project | p in Course.projects and one p.Course
-- div,1
all p1: Project | some c1: Course | p1->c1 in projects
-- div,1
all p : Project | one c : Course | some p in c.projects
-- div,1
all p : Project | all x:Course | #(Course.projects.p)=1
-- div,1
all p: Project | p in Course.projects and one projects.p
-- div,1
all p: Project | all c: Course | p in c.projects and one c.p
-- div,1
all p: Project | all c: Course | p in Course.projects and one c.p
-- div,1
all c1,c2 : Course | all p : Project | p = c1.projects implies c2.projects
-- div,1
all c1,c2 : Course | all p : Project | (p = c1.projects) implies c2.projects
-- div,1
