all p
-- div,2
c <: projects
-- div,1
one projects.x
-- div,1
all p : Project |
-- div,6
one Course.proposed
-- div,1
one Projects & Course
-- div,1
all Course <: projects
-- div,1
projects in Course one
-- div,1
one Projects.~projects
-- div,1
one projects.p <= Project
-- div,1
Projects in Course.projects
-- div,1
one p.~(Course <: projects)
-- div,1
one (Course<:projects).proj
-- div,1
one Course<:project.Project
-- div,1
all p:Project | one course.p
-- div,1
all p : Project | one couse.p
-- div,1
all p: Project | c.projects.p
-- div,1
all p : Project | one course.p
-- div,1
projects.Project in one Course
-- div,1
all c: Course | all c.projects
-- div,1
Project in one Course.projects
-- div,1
all p: Project | one propose.p
-- div,1
all p: Project | one Courses.p
-- div,1
all p : Project | one projects
-- div,1
projects.Project in Course one
-- div,1
all p : Project | one project.p
-- div,1
Course in one Course . projects
-- div,1
all p:Project | p in one Course
-- div,1
one c : Course | all projects.c
-- div,1
all p : Project | lone p.course
-- div,1
all p : Projects | one Course.p
-- div,1
all p : Project | one courses.p
-- div,1
Project = Course one -> projects
-- div,1
all p: Projects | one projects.p
-- div,1
all p: Project | one c: Course |
-- div,4
all p.Project | p implies Course
-- div,1
all p : Project | one projects.p
-- div,1
all p : Project | lone p.courses
-- div,1
all p : Project | one projects.c
-- div,1
all p : Project | one proposes.p
-- div,1
Project = Courses one -> projects
-- div,1
all p : Projects | lone Courses.p
-- div,1
all p : Projects | one projects.p
-- div,4
all p : Project | lone projects.c
-- div,1
all p : Project | one (projects.p
-- div,1
all p : Projects | one proposes.p
-- div,1
Project in Courses one -> projects
-- div,1
projects in Courses one -> Project
-- div,1
all p : Projects | lone p.~projects
-- div,1
all p: Project | one Course.project
-- div,1
all p : Projects : lone p.~projects
-- div,1
Course <: projects in Course one -> Project
-- div,1
all p:Projects|p in  Course.projects
-- div,1
for all p : Project | one projects.p
-- div,1
for all p : Project | one p.projects
-- div,1
propose in Project set -> lone Course
-- div,1
all p : Project | p in Corse.projects
-- div,1
all p: Project | one Course.project.p
-- div,1
all p : Project | propose.p in Course
-- div,1
all p:Project | one projects:Course.p
-- div,2
Project not in (some Course.projects)
-- div,1
all c:Course | c.projects in lone (c)
-- div,1
all c : Course | c in Projects.course
-- div,1
all p : Project | proposes.p in Course
-- div,1
Course->Project &  one Course.projects
-- div,1
all p : Project | one Course.project.p
-- div,2
proposes in Project set -> lone Course
-- div,1
all p : Project | Course.projects and p
-- div,1
all p:Project | one (projects:Course.p)
-- div,1
all p : Project | one Course.projects.p
-- div,1
all p : Projects | p in Course.projects
-- div,4
all p : Project | one Course/projects.p
-- div,1
all p: Project | one (Course).project.p
-- div,1
all p:Project | p in one Course.projects
-- div,2
all p : Projects | one Course.proposes.p
-- div,1
all p: Project | one Courses: projects.p
-- div,1
Course/projects in Course one -> Project
-- div,1
all p:Project | one Course <: porjects.p
-- div,1
all p : Project | one (Course)projects.p
-- div,1
all p: Project | one (Courses:projects).p
-- div,1
all p : Project | p = one Course.projects
-- div,1
all p:Projects | one p in Course.projects
-- div,1
all p: Project | one (Course <: Grades).p
-- div,1
one c: Course | all p: Person | p.courses
-- div,1
all p.Project | p implies Course.projects
-- div,1
all p : Project | (Course c : projects).p
-- div,1
all p: Course.projects | Project in one p
-- div,1
all p:Project | one (Course.c:projects).p
-- div,1
all p:Project | one (Course.c.projects).p
-- div,1
all p: Project | one (<:Course)projects.p
-- div,1
all p : Projects | one Course.Projects & p
-- div,1
all p:Project | one (Course.c: projects).p
-- div,1
all p : Project | Course :> one projects.p
-- div,2
all p : Project | Course <: one projects.p
-- div,2
all x : Project | x in one Course.projects
-- div,1
all p : Project | p in one Course.projects
-- div,2
all pro: Project | proj in Course.projects
-- div,1
all p:Project | one (Course c: projects).p
-- div,2
all p : Project | one (Course:<projects).p
-- div,1
all p: Project | one (Course c.projects).p
-- div,1
all c:Course | lone p.(Course <: projects)
-- div,1
all p:Project | one Course| p in c.projects
-- div,1
all p:Project | one (Course < c:projects).p
-- div,1
all p : Project | some (p & Course.projects
-- div,2
all p: Project | one (Course c: projects).p
-- div,1
all p : Project ,c : Course | one project.p
-- div,1
all p : Project | one Course.projects and p
-- div,1
all p: Project | one (Courses : projects).p
-- div,1
all p: Project | one (Course c<:projects).p
-- div,1
all p : Projects | one c : Course | c->p in
-- div,4
all p : Course.projects | one p & Courses.p
-- div,1
all p: Project | one (Courses<: projects).p
-- div,1
all p:Project | one Course | p in c.projects
-- div,1
all p : Courses.projects | one p & Courses.p
-- div,1
all p: Project, all c: Course | c.projects.p
-- div,1
all p:Projects|all c:Course|c->p in projects
-- div,1
this/Course/projects in Course one -> Project
-- div,1
all p : Project | one (Course c : projects).p
-- div,1
for all p : Project | one (Course.projects).p
-- div,1
one c: Course | all p: Person | p in c.courses
-- div,1
all x:Project | one y:course| y->x in projects
-- div,1
all p:Project | one c:Course | p in proposes.c
-- div,1
all p: Project | one c:Course | p in c.project
-- div,1
all p : p.(Course <: projects)| one projects.p
-- div,3
all p:Project , one c:Course | c->p in projects
-- div,6
all p:Projects | one c:Course | p in c.projects
-- div,2
all p:Projects | one c:Course | c in projects.p
-- div,1
all p: Project | one c: Course | p in c.project
-- div,1
Course <: projects in one Course -> one Project
-- div,1
all x: Project one y: course |  x in y.projects
-- div,1
all p: Project, one c: Course | p in c.projects
-- div,1
all p: Project | one c: Course | p->c in course
-- div,1
lone p:Project, all c : Course | p in c.projects
-- div,2
all p : Project , c : Course | one (c.project.p)
-- div,1
all p: Project, some c: Course | projects.p in c
-- div,1
one c:Course | all p:Projects | c->p in projects
-- div,1
all x: Project| one y: course |  x in y.projects
-- div,1
all p:Projects | some c:Course | p in c.projects
-- div,1
all p:Project, lone c : Course | p in c.projects
-- div,2
all p: Project | one c: Course | c->p in project
-- div,1
all p:Projects| one c : Course | p in c.projects
-- div,1
all p : Project | one c: Course | p in c.project
-- div,1
all c Course | one p : Project | p in c.projects
-- div,1
all p : Project | Course->Project & one projects
-- div,1
all p: Project | one c:Course | p->c in proposes
-- div,1
all p:Projects | one c:Course | c->p in projects
-- div,3
one c:Course | some p:Projects | c->p in projects
-- div,1
all p: Project | one c: Course | x->c in projects
-- div,1
all p : Project , c: | one (Course <: projects).p
-- div,1
one c : Course |all p : Project | c->p in project
-- div,1
all p : Project | one c: Course | p in c.proposes
-- div,1
all pro: Project | #Course.projects.ident.pro = 1
-- div,1
all p : Project| Course->Project & one projects.p
-- div,1
one q: Course | all p: Project | c->p in projects
-- div,1
all proj: Project | all c: Course | proj in some c
-- div,1
all p: Project | one c : Course | c -> p in course
-- div,5
all p :Project | some c: Course | c->p in proposed
-- div,1
all p : Project | one c : Course | c->p in project
-- div,1
all p: Projects | lone c: Course | p in c.projects
-- div,1
one c:Course | all p:Person | p.projects in lone(c)
-- div,1
all p : Projects | one c : Course | p in c.projects
-- div,3
all p : Projects | one c : Course | c->p in project
-- div,1
all p: Projects | one c : Course | c -> p in course
-- div,1
one c1,c2:Course |  some c.projects implies c1 != c2
-- div,1
all p : Project | one c : Courde | lone c.projects.p
-- div,1
all p : Project | some c : Course | c->p in proposes
-- div,1
all p : Projects | one c : Course | c->p in projects
-- div,1
all p : Projects | some c : Course | p in c.projects
-- div,1
all p : Project | one c : Course | c -> p in courses
-- div,1
all p : Project | one c : Courses | c -> p in projects
-- div,1
one c : Course | all p : Projects | c -> p in projects
-- div,1
all p1 : Project | one c1 : Course | p1->c1 in project
-- div,1
all p : Projects | one c : Courses | c -> p in projects
-- div,1
all p: Project, some c: Course | c.projects & projects.p
-- div,1
all p1 : Projects | one c1 : Course | p1->c1 in projects
-- div,3
all p: Project, some c: Course | projects.p in c.projects
-- div,1
all c1,c2 : Course | c1.project = c2.project implies c1=c2
-- div,1
all proj: Project | all c: Course | proj in some c.projects
-- div,1
all p : Project | one c : Course | p->c in courses->projects
-- div,1
all pro: Project | #Course.projects.{Projects<:iden}.pro = 1
-- div,1
all p1,p2=Project |  projects.p1 and projects.p2 implies p1!=p2
-- div,1
all c1, c2 : Course | no c1.projects & c2.projects
-- div,3
all proj: Project | all course: Course | proj in one course.projects
-- div,1
all disj c1, c2 : Course | no c1.projects & c2.projects
-- div,2
all disj c1, c2 : Course | lone c1.projects & c2.projects
-- div,1
all p:Project |  c1:Course | c1->p in projects and c2->p in projects implies c1=c2
-- div,1
all c1, c2 : Course, p:Project | c1->p in project and c2->p in projects implies c1=c2
-- div,1
all p : Project and c : Course | p in c.projects implies p not in (Course-c).projects
-- div,1
all c1, c2 : Courses, p:Project | c1->p in project and c2->p in projects implies c1=c2
-- div,1
all c, q: Course, all p, j: Project | c->p in projects and q->j in projects implies q!=j
-- div,1
all p:Project | one c1,c2:Course | c1->p in Projects and c2->p in Projects implies c1=c2
-- div,1
all c, q: Course, all p, j: Project | (c->p in projects and q->j in projects) implies q!=j
-- div,2
some c1,c2:Course | all p:Projects | c1->p in projects and c2->p in projects implies c1=c2
-- div,1
all p : Projects | all c1,c2 : Course | p in c1.projects and p in c2.projects implies c1=c2
-- div,1
all p1, p2 :Projects | one c:Course| c->p1 in projects and c->p2 in projects implies p1!=p2
-- div,1
some c1,c2:Course | some p:Projects | c1->p in projects and c2->p in projects implies c1=c2
-- div,3
all p : Project, c : Course | p in c.projects implies p not in (Courses.projects - c .projects)
-- div,1
all p : Project | some c : Course | c->p in projects and Course :< projects in Course one -> set Project
-- div,1
all p : Project, c : Course | p in Course.project and p in c.project implies p not in (Course-c).projects
-- div,1
all p : Project, c : Course | p in Course.project and p in c.projects implies p not in (Course-c).projects
-- div,1
all p:Project | p in Course.projects
  	all p1,p2:Project | p1 in Course.Projects and p2 in Course.Projects implies p1!=p2
-- div,1
all p:Project | p in Course.projects
  	all p:Project, c1,c2:Course | p1 in c1.projects and p2 in c2.projects implies c1!=c2
-- div,1
all p : Project | some c : Course | c->p in projects and all c1,c2 : Course | c1->p in projects and c2-> in projects implies c1=c2
-- div,1
all p : Project | p in Course.projects
  	all p : Project | all c1,c2 : course | p in c1.projects and p in c2.projects implies (c1=c2)
-- div,1
all p : Project | p in Course.projects
  all c1, c2 : Course | all p : Projects | (p in c1.projects and p in c2.projects) implies (c1 = c2)
-- div,1
all p : Project | p in Course.projects
  all c1, c2 : Courses | all p : Projects | (p in c1.projects and p in c2.projects) implies (c1 = c2)
-- div,1
all p : Project | all c1,c2 : Course | c1->p in projects and c2 ->p in projects implies c1=c2
  	all p : project | some c : Course | c -> p in projects
-- div,1
