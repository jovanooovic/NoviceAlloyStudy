Course<:projects in Course one -> Project
-- div,31
all p:Project|one (Course<:projects).p
-- div,39
all p: Project | one p.~(Course<:projects)
-- div,10
all disj p: Project | #(Course <: projects).p = 1
-- div,3
all proj:Project | one (Course<:projects).proj
-- div,2
all pro: Project | #pro.~{Course <: projects} = 1
-- div,2
all p : Project | one Course & (projects.p)
-- div,1
all p:Project | one (projects.p & Course)
-- div,3
all x : Project | one projects.x & Course
-- div,3
all p:Project | one Course<:projects.p
-- div,30
all p: Project | one Course :> projects.p
-- div,19
all p : Project | one projects.p <: Course
-- div,2
all p : Project | one projects & Course->p
-- div,2
all p : Project | one projects.p :> Course
-- div,1
all x : Project | one projects.x <: Course
-- div,6
all p:Project | one c:Course | c in projects.p
-- div,5
all x: Project| one y: Course |  x in y.projects
-- div,4
all a : Project | one b : Course | a in b.projects
-- div,1
all p:Project | one c:Course | p in c.projects
-- div,97
all x:Project | one y:Course | y in projects.x
-- div,1
all x:Project | one y:Course| y->x in projects
-- div,10
all x: Project | one c: Course | c->x in projects
-- div,1
all p:Project|one c:Course|c->p in projects
-- div,61
all tp : Project | one c : Course | tp in c.projects
-- div,1
all p:Project | one c1:Course | c1->p in projects
-- div,1
all p1: Project | one c1: Course | c1->p1 in projects
-- div,12
all proj:Project | one c:Course | c->proj in projects
-- div,1
all p: Project | one course : Course | p in course.projects
-- div,1
all proj: Project | one course: Course | proj in course.projects
-- div,2
all p : Project | some c : Course | c->p in projects and Course <: projects in Course one -> set Project
-- div,1
all c1,c2: Course, p: Project | p in c1.projects and p in c2.projects implies c1=c2
  	Project in Course.projects
-- div,3
all p : Project | some c1 : Course | c1->p in Course<:projects and all c2 : Course | c2->p in Course<:projects implies c1 = c2
-- div,1
all p:Project | p in Course.projects
  	all p:Project,c1,c2:Course | p in c1.projects and p in c2.projects implies c1=c2
-- div,3
all p: Project | p in Course.projects
	all p: Project, c1, c2: Course | c1 in projects.p and c2 in projects.p implies c1=c2
-- div,1
all p:Project | p in Course.projects
  	
    all c1,c2:Course, p:Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,3
all p : Project | p in Course.projects
	all disj c1, c2 : Course | all p : Project | p in c1.projects implies p not in c2.projects
-- div,1
all p : Project | some c : Course | c->p in projects and all c1,c2 : Course | c1->p in projects and c2->p in projects implies c1=c2
-- div,2
all p : Project | p in Course.projects
	all p : Project | all c1,c2 : Course | p in c1.projects and p in c2.projects implies c1=c2
-- div,5
all p : Project | p in Course.projects
	all c1, c2 : Course | all p : Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,4
all p : Project | p in Course.projects
	all p : Project | all c1,c2 : Course | c1->p in projects and p in c2.projects implies c1=c2
-- div,1
all p : univ | p in Project implies some c1 : univ | c1 in Course and c1->p in Course<:projects and all c2 : univ | c2 in Course and c2->p in Course<:projects implies c1 = c2
-- div,2
all p : Project | all c1,c2 : Course | c1->p in projects and c2 ->p in projects implies c1=c2
  	all p : Project | some c : Course | c -> p in projects
-- div,1
all p:Project | some c:Course | c->p in projects
  	all c1,c2:Course | (some p:Project | c1->p in projects and c2->p in projects) implies c1 = c2
-- div,1
all proj:Project, c1, c2:Course | c1->proj in projects and c2->proj in projects => c1=c2
  	all proj:Project | some c:Course | c->proj in projects
-- div,1
