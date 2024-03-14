no Course <: projects
-- div,1
one Course <: projects
-- div,3
some Course <: projects
-- div,1
lone Course <: projects
-- div,2
one Course.projects
-- div,3
one (Course<:projects).Project
-- div,3
one Project.~(Course <: projects)
-- div,2
lone Project.~(Course <: projects)
-- div,1
Course.projects in Person
-- div,2
(Course <: projects).Project = Course
-- div,1
Project in Person.projects
-- div,1
~(Course<:projects).(Course<:projects) in iden
-- div,1
one (Course & projects.Project)
-- div,3
one Project & Course.projects
-- div,2
Course <: projects in Course -> one Project
-- div,5
lone Project & Course.projects
-- div,3
#(Course <: projects).Project = #Project
-- div,1
one Person <: projects.Project
-- div,1
one Course<:projects.Project
-- div,2
Project in (one Course.projects)
-- div,7
all p:Project | one Course
-- div,1
all c:Course | one c.projects
-- div,8
one y:Course | one y.projects
-- div,1
all proj:Project | one Course<:projects
-- div,1
all x: Course | one x.projects
-- div,3
one c:Course | one c.projects
-- div,1
all c:Course | lone c.projects
-- div,9
one c:Course | lone c.projects
-- div,2
one c:Course | some c.projects
-- div,2
all c: Course | some c.projects
-- div,2
one Course & (Course<:projects.Project)
-- div,3
all p : Project | one p.~(Person<:projects)
-- div,1
all p: Course.projects | p in Course
-- div,1
all p:Project | one Course.projects
-- div,8
all p: Course.projects | Project in p
-- div,1
all p : Project | p in Person.projects
-- div,1
all p: Project | one (Course<:projects).Project
-- div,1
all p : Project |lone Course.projects
-- div,3
one c:Course | Project in c.projects
-- div,2
all p : Project | one Project.~(Course <: projects)
-- div,1
all p : Project | one (p & Person.projects)
-- div,1
all p : Project , c : Course | one c.projects
-- div,1
all x : Course | one projects.Project <: Course
-- div,1
all p: Project, c: Course | p in c.projects
-- div,4
all p : Project | one (Course->Project & projects)
-- div,2
all c, c1 : Course | no c.projects & c1.projects
-- div,1
one c1,c2:Course |  some c1.projects implies c1 != c2
-- div,1
one c:Course | all p:Person | p.projects in c
-- div,1
all c : Course | all p : Project | p in c.projects
-- div,1
all p : Project | all c : Course | p in c.projects
-- div,1
all c : Course | one p : Project | p in c.projects
-- div,3
one c:Course | all p:Project | p in c.projects
-- div,18
Project in Course.projects => Project in (one Course.projects)
-- div,1
one c:Course |all p: Project |c->p in projects
-- div,10
all c : Course | some p : Project | p in c.projects
-- div,1
all p:Project|all c:Course|c->p in projects
-- div,2
one c : Course | some p : Project | p in c.projects
-- div,1
all pro: Project | #Course.projects.{Project<:iden} = 1
-- div,2
all c1,c2 : Course | c1.projects = c2.projects implies c1=c2
-- div,2
all p:Project | one c:Course | Project in c.projects
-- div,1
all proj: Project | all c: Course | proj in c.projects
-- div,1
all p : Project | p in Course.projects and p not in Person.projects
-- div,1
all p : Project , c : Course | one c.projects and p in c.projects
-- div,1
all p : Project | one (p & Course.projects) and no (p & Person.projects)
-- div,2
all p : Project | all c : Course | p in c.projects implies lone(c.projects)
-- div,2
one c:Course | all p1,p2:Project | c->p1 in projects and c->p2 in projects
-- div,1
all c, q: Course, p, j: Project | (c->p in projects and q->j in projects) implies p!=j
-- div,1
all p: Project, c1, c2: Course | p in c1.projects && p in c1.projects => c1=c2
-- div,3
all p1, p2: Project, c: Course | p1 in c.projects and p2 in c.projects implies p1=p2
-- div,1
all p1,p2 : Project , c:Course |p1 in c.projects and p2 in c.projects implies p1 != p2
-- div,1
some c1,c2: Course, p: Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,1
all c1, c2: Course, p1,p2: Project | p1 in c1.projects and p2 in c2.projects implies p1!=p2
-- div,2
all p1,p2 : Project | all c : Course | p1 in c.projects and p2 in c.projects implies p1 = p2
-- div,3
all c1,c2: Course | some p: Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,1
all p:Project | one c1,c2:Course | c1->p in projects and c2->p in projects implies c1=c2
-- div,3
all p1, p2 :Project | one c:Course| c->p1 in projects and c->p2 in projects implies p1!=p2
-- div,1
all c1,c2: Course | some p:Project | c1->p in projects and c2->p in projects implies c1=c2
-- div,1
some c1,c2: Course | all p:Project | c1->p in projects and c2->p in projects implies c1=c2
-- div,2
some c1,c2: Course | some p:Project | c1->p in projects and c2->p in projects implies c1=c2
-- div,1
all c1, c2 : Course | some tp : Project | tp in c1.projects and tp in c2.projects implies c1 = c2
-- div,1
all p1, p2 :Project | lone c:Course| c->p1 in projects and c->p2 in projects implies p1!=p2
-- div,1
all p: Project | all c: Course | p in c.projects
	all c: Course | #c.projects = 1
-- div,1
all c1, c2: Course | some p1,p2: Project | (p1 in c1.projects and p2 in c2.projects) implies p1!=p2
-- div,1
all p : Project | p in Course.projects
	one c : Course | all p : Project | p in c.projects
-- div,1
all p : Project | p in Course.projects
	all c : Course | one p : Project | p in c.projects
-- div,1
all p: Project | p in Course.projects
	all p1, p2: Project, c: Course | p1 in c.projects and p2 in c.projects implies p1=p2
-- div,1
all p:Project | one c1,c2:Course | no p1:Person | c1->p in projects and c2->p in projects implies c1=c2 and p1->p in projects
-- div,1
all p : Project | p in Course.projects
	all p1,p2 : Project | all c : Course | (p1 in c.projects and p2 in c.projects) implies p1 = p2
-- div,1
