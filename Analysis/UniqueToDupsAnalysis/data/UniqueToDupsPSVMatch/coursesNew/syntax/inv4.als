all c : Course |
-- div,1
all p : Project | project.c
-- div,1
all p : Project | projects.c
-- div,1
all p:Project | one project.p
-- div,1
all x:Project| one projects.c
-- div,1
all p:project | one project.p
-- div,1
all g.Grade | one (projects.g)
-- div,1
all p: Project | one project.p
-- div,1
all p : Projects | p in Course
-- div,1
all p: Project| one projects.c
-- div,1
all p : Project | one projects.c
-- div,1
all p : Project | one proposes.p
-- div,1
all p : Project | p in one Course
-- div,1
all c:Course | one Course:projects.c
-- div,1
pojects in Course one -> set Project
-- div,1
all p:Projects | p in Course.projects
-- div,1
all p: project | p in Course.projects
-- div,1
all p : Project | one x in projects.p
-- div,1
all p: Project | one getProjectCourse[p]
-- div,1
all p : Project | one p : Course.projects
-- div,1
all p: Project | p in one Course.projects
-- div,1
all x: Project | x in one Course.projects
-- div,1
all x: Project |  x in one Course.projects
-- div,1
all p:Project |one c:Course | p in u.Course
-- div,1
all p:Project, one c:Course|p in c.projects
-- div,1
all p:project| one c:Course| c->p in projects
-- div,1
all p : Project | (Course <: #projects).p = 1
-- div,1
all p: Project, one c: course| p in c.project
-- div,1
all p:Project | one c:Curso | p in c.projects
-- div,2
all p:Progect| one c:Course| c->p in projects
-- div,2
all p : Project | (Course <: #projects).p = 1)
-- div,1
all p:Project | one c:Course | c->p in project
-- div,1
all x : Project | y : Course | x in y.projects
-- div,1
all p: Project, one c: course| p in c.projects
-- div,1
all p:Projects | one c:Course | c in projects.p
-- div,2
all p : Project | (Course <: #(projects.p) = 1)
-- div,1
all p: Project | one c: course| p in c.projects
-- div,1
some p:Project| one c:Courses| c->p in projects
-- div,1
all x: Project, y: Course  |x in one y.projects
-- div,1
all p : Project | (Course <: #projects).p = 1))
-- div,1
all p:Projects | one c:Course | p in c.projects
-- div,1
one c:Course | all p:Project | c->p in jrojects
-- div,1
all p : Project | one c :Course | p in c.project
-- div,2
some p:Projects| one c:Courses| c->p in projects
-- div,1
all p: Project | one c: Course | c.projects = p
}
-- div,1
all p : Project, one c : Course | p in c.projects
-- div,1
all p : Person.projects | one p : Course.projects
-- div,1
all proj:Project | one c:Course | p in c.projects
-- div,1
all p : project | one c : course | p in c.projects
-- div,1
all p : Project | (Course <: (#(projects.p) = 1)))
-- div,1
all p : Project, c : Courses | one c in projects.p
-- div,1
all p : Projects | one c: Course | c in projects.p
-- div,2
all p : Project | one c : course | p in c.projects
-- div,2
all p : Projects | one c : Course | p in c.project
-- div,1
all p : Project , one c : Course | p in c.projects
-- div,1
all p : Project | one c : Course | p in c.projetcs
-- div,2
all p:Project | one c:Course | p in c.projects ghh
-- div,1
all p : Project | some c : Course | #(c.project)>0
-- div,1
all p : Project | one c : Courses | p in projects.c
-- div,1
all p : Project |(one c :Course | p in c.projects))
-- div,1
all p : Projects | one c : Course | p in c.projects
-- div,7
all p : Project | #(projects.p & Course->Entry) = 1
-- div,1
all pr: Project | one Course | pr in Course.projects
-- div,1
all x: Project, y: Course  | #(x in y.projects) == 1
-- div,1
all x: Project | all y: Courses | x in one y.projects
-- div,1
all p : Project | (lonw c : Course | p in c.projects)
-- div,1
all p: Project | p in Course.projects and one p.Courses
-- div,1
all project : Projects | one course : Course | course->project in projects
-- div,1
all p : Project
  all x,y : Course | (#(x.projects)>0 and x!=y) implies #(y.projects)=0
-- div,1
all p : Project | all c : Course | all c1 : Course-c | p in c.projects | p not in c1.projects
-- div,1
