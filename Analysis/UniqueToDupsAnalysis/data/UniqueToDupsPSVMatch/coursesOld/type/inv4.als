Project.projects
-- div,1
Course <: projects
-- div,2
projects.Project
-- div,1
Course.projects
-- div,1
(Course<:projects).Project
-- div,1
Project.(Course<:projects)
-- div,1
one projects.Course
-- div,2
one projects.Project
-- div,2
some projects.Project
-- div,1
lone projects.Project
-- div,2
one Project.~projects
-- div,2
one projects & Course
-- div,1
Course one -> projects
-- div,1
(Course<:projects).~(Course<:projects)
-- div,1
one Course :> projects
-- div,1
lone Course :> projects
-- div,1
projects.Course in Course
-- div,2
one c:Course | c.projects
-- div,1
projects.~projects & iden
-- div,1
projects.Person in Course
-- div,1
all p:Project | projects.p
-- div,1
one c:Course |  c.projects
-- div,1
projects.~projects in iden
-- div,4
projects.Course in Project
-- div,1
all c: Course | c.projects
-- div,1
projects.Project in Course
-- div,1
projects . Course in Person
-- div,2
all x: Course | one projects
-- div,1
all p:Project|one projects.p
-- div,2
projects.~(projects) in iden
-- div,3
all p:Project | one Course.p
-- div,4
all p:Project | p in Course.p
-- div,1
all p: Project | one Course.p
-- div,2
projects in Course -> Project
-- div,1
projects in Project -> Course
-- div,1
all p:Project|some projects.p
-- div,1
one Project.~projects->Course
-- div,1
all c:Course | one projects.c
-- div,1
one Course.projects = Project
-- div,1
all x:Project | one projects.x
-- div,5
all p:Project | one projects.p
-- div,13
all p : Project | one Course.p
-- div,4
one c:Course | c in c.projects
-- div,1
all x: Course | one projects.x
-- div,1
one Course in Project.projects
-- div,2
all c: Course | one projects.c
-- div,2
one (Course<:projects) Project
-- div,1
one Project in Course.projects
-- div,1
all c:Course | lone projects.c
-- div,1
one Project.~projects in Course
-- div,1
all p : Project | lone p.Course
-- div,1
all x: Course | one  projects.x
-- div,1
all p : Project | lone Course.p
-- div,2
all x: Project | one projects.x
-- div,1
all p : Project| one projects.p
-- div,2
all c : Course | one projects.c
-- div,2
all p: Project | one projects.p
-- div,26
all p:Project | lone projects.p
-- div,1
all p:Project | one (projects.p)
-- div,1
all p: Project | lone projects.p
-- div,3
all proj:Project | projects.proj
-- div,1
all p:Project | p implies Course
-- div,1
all p : Project | one projects&p
-- div,1
one (Project in Course.projects)
-- div,1
Course.projects -> one Project
-- div,1
Project in (one Course).projects
-- div,1
all x : Project | one projects.x
-- div,1
all x: Project | one  projects.x
-- div,3
all c : Course | c in c.projects
-- div,2
all p : Project | one projects.p
-- div,38
all p: Project | one p.~projects
-- div,2
all p:Project | Course.projects.p
-- div,1
all p : Project | one p.~projects
-- div,4
all p : Project | lone projects.p
-- div,9
all p : Project | one  projects.p
-- div,1
projects in Course one -> Project
-- div,21
Project in Course one -> projects
-- div,1
all p : Project | some projects.p
-- div,2
projects in Course -> one Project
-- div,2
all p : Project | one (projects).p
-- div,1
all p : Project | lone p.~projects
-- div,2
all p : Project | one p & Course.p
-- div,1
Course<:projects.~(Course<:projects)
-- div,1
all p : Project | one (projects.p)
-- div,1
all p: Project | one p.(~projects)
-- div,1
all p : projects | one p & Courses.p
-- div,2
one c:Course | projects.Project in c
-- div,1
all proj:Project | one projects.proj
-- div,1
all p:Project | one Course implies p
-- div,1
all p: Project | one projects.Course
-- div,2
all p : Project | Course.(projects.p)
-- div,1
all c:Course | lone (c) in c.projects
-- div,1
projects in Course one -> set Project
-- div,6
all p: Project | projects.p in Course
-- div,1
all p:Project | one Course.projects.p
-- div,9
all p:Project | one projects.Course.p
-- div,1
all p:Project | one p.Course.projects
-- div,1
all p: Project | one projects.Project
-- div,2
all pro: Project | ~{Course.projects}
-- div,1
all pro: Project | {Course<:projects}
-- div,1
all p : Project, c : Course | lone c.p
-- div,1
projects in Project set -> lone Course
-- div,1
all p:Project | some Course.projects.p
-- div,2
all p : Project | projects.p in Course
-- div,4
all p: Project | one Course.projects.p
-- div,7
all p : Project | (Course<:projects).p
-- div,1
all p:Project | one (Course.projects.p)
-- div,1
all p : Project | one Course.projects.p
-- div,11
all p : Project | one p.projects.Course
-- div,1
all p:Project | one (projects.p.Course)
-- div,1
all x: Project | one  Course.projects.x
-- div,1
all p : Project | one p.Course.projects
-- div,1
all p:Project | one (projects.Course.p)
-- div,1
all x:Project | one Course in projects.x
-- div,1
all p: Project | one (Course).projects.p
-- div,1
all p : projects | one Course.proposes.p
-- div,1
all p : Project | one p.~projects.Course
-- div,2
all p:Project, c:Course | one projects.c
-- div,1
all p: Project | one (Course.projects).p
-- div,1
all p:Project, c:Course | one projects.p
-- div,1
Course.projects in Course one -> Project
-- div,2
all p: Project | p.~(Course <: projects)
-- div,1
all p : projects | one Course.projects.p
-- div,1
all p : Project | (Course <: projects).p
-- div,1
all p:Project | one p in Course.projects
-- div,3
all p:Project | one projects.p in Course
-- div,1
all pro: Project | ~{Course <: projects}
-- div,2
all p : Project | lone Course.projects.p
-- div,3
projects.Course in Course one -> Project
-- div,2
Course.projects in Course -> one Project
-- div,1
all p:Project | one  p in Course.projects
-- div,1
all pro: Project | ~{Course.projects}.pro
-- div,1
all p : Project | one Course.(projects.p)
-- div,2
all p : Project | one (Course.projects).p
-- div,4
all p:Project | p implies Course.projects
-- div,1
Course[projects] in Course one -> Project
-- div,1
all p: Project | one projects.p in Course
-- div,1
all p: Project | one p.(Course.~projects)
-- div,1
all p:Project | lone p in Course.projects
-- div,1
all x:Project | one Course->x in projects
-- div,1
all pro: Project | {Course<:projects}.pro
-- div,1
all p : Project | one p.(Course.projects)
-- div,1
all p: Project | one p.(~Course.projects)
-- div,1
all p:Project | one (p = Course.projects)
-- div,1
Course.projects.~(Course.projects) = iden
-- div,1
all p : Project | one p implies projects.p
-- div,1
all p:Project | one (projects <: Course).p
-- div,1
all p : Project | one Course <: projects&p
-- div,1
all p : Course.projects | one p & Course.p
-- div,1
all pro: Project | ~{Course<:projects}.pro
-- div,2
all p : Project |lone p in Course.projects
-- div,1
all p:Project, c:Course | one projects.p.c
-- div,1
all p : Project | one Course.(p.~projects)
-- div,1
Course.projects.~(Course.projects) in iden
-- div,3
all p:Project | one (projects.p in Course)
-- div,1
all p : Project | one (projects<:Course).p
-- div,1
all p : Project | one (projects:>Course).p
-- div,1
all pro: Project | ~{Course:>projects}.pro
-- div,1
all p : Project | one p in Course.projects
-- div,5
all p : Project | one projects.p <= Course
-- div,1
all p : Project | one projects.p in Course
-- div,1
all p : Project | one (Course:>projects).p
-- div,1
all p : Project | one ((Course.projects).p)
-- div,1
all p : Project | some p in Course.projects
-- div,1
all p : Project | one p in Course<:projects
-- div,1
all p:Project | one (Course < c.projects).p
-- div,1
all pro: Project | #Course.projects.pro = 1
-- div,1
all p : Project | lone p in Course.projects
-- div,1
all x:Project | (one Course)->x in projects
-- div,1
all p : Project |one (p in Course.projects)
-- div,1
all p:Project|one c:Course | one projects.p
-- div,2
all p : Project | one projects.p <= Project
-- div,1
all p : Project | one p.(Course<:~projects)
-- div,1
all p : Project | one (Course.(projects.p))
-- div,1
projects <:Course  in Course one -> Project
-- div,1
all p : (Course <: projects)| one projects.p
-- div,3
all p:Project | one c:Course | c <: projects
-- div,1
all p : (projects <: Course)| one projects.p
-- div,1
all p : Project | one p in (Course.projects)
-- div,1
all p : Project | one (p in Course.projects)
-- div,1
lone Course <: projects & Person <: projects
-- div,1
all p : projects | one p.~(Course<:projects)
-- div,1
all p : Project | one (projects <: Course).p
-- div,1
all p : Project | one (Course :> projects).p
-- div,1
all p : Project |lone (p in Course.projects)
-- div,1
all p : Project | one (projects :> Course).p
-- div,1
all p : Project ,c : Course | one p.Course.c
-- div,1
all pro: Project | ~{Course <: projects}.pro
-- div,2
all p: Project| all c: Course | c.projects.p
-- div,1
all p : (projects <: Course )| one projects.p
-- div,1
all p : Project , c : Course | one projects.p
-- div,1
all p : Project | one p in (Course<:projects)
-- div,1
all p : Project | lone (p in Course.projects)
-- div,1
all proj:Project | one (Course.projects).proj
-- div,1
all pro: Project | ~{Course <: projects}[pro]
-- div,1
all p:Project | one Course.projects implies p
-- div,1
all p:Project|one c:Course | one c.projects.p
-- div,1
all p : Project | Course.projects.p in Course
-- div,1
all p:Project | one Course implies p.projects
-- div,1
projects <: projects in Course one -> Project
-- div,1
all p:Project ,c:Course | one p in c.projects
-- div,1
all p:Project | p.projects in Course.projects
-- div,1
all p:Project | one c:Course | p in projects.c
-- div,1
Person in projects implies  Course <: projects
-- div,1
all p : Project | one c : Course | c.projects.p
-- div,1
all p:Project | one c:Course | p->c <: projects
-- div,1
all p : Project , c : Course | one c.projects.p
-- div,1
one c: Course | all p: Person | p in c.projects
-- div,2
all p:Project | one c:Course | p->c in projects
-- div,2
all p : Project, c : Course | lone c.projects.p
-- div,1
all p : Project | p implies one Course.projects
-- div,1
projects.~projects in iden
  	Person <: projects
-- div,2
all pro: Project | #Course.projects.iden.pro = 1
-- div,1
all p: Project | one c:Course | p->c in projects
-- div,2
all p: Project| some c: Course | projects.p in c
-- div,1
all p: Project | one c: Course | p in projects.c
-- div,1
all p : Project | one c : Course | c->p projects
-- div,1
all p : Project , c : Course | one (c.projects.p)
-- div,1
all p : Project | one Course.p implies projects.p
-- div,2
all x: Project | one c: Course | x->c in projects
-- div,2
all x: Project | one c: Course | x=>c in projects
-- div,1
all p: Project | one c: Course | p->c in projects
-- div,2
all p: Project | one c:Course | p->c in c.projects
-- div,1
all p : Project | one c : Course | c->p in Project
-- div,1
all p:Project | one (Course.projects & projects.p)
-- div,1
all p : Person.(Course <: projects)| one projects.p
-- div,1
all p : Project , c : Course | one (c.(projects.p))
-- div,1
all p : (Course <: Course.projects)| one projects.p
-- div,1
all p : Project | one c : Course | p->c in projects
-- div,5
all p : Project | some c : Course | p->c in projects
-- div,5
all p : Project | one (Course->Project & projects.p)
-- div,1
all p : Project | one (projects.p & Course.projects)
-- div,1
all p : Project | one c : Course | lone c.projects.p
-- div,1
all p : Project | one p in Course.(Course<:projects)
-- div,1
all p : Project | one c:Course | some p in c.projects
-- div,1
projects.~projects in iden
  	this/Person <: projects
-- div,1
all p : Project | one p.projects.(Course :> projects)
-- div,1
all p : Project ,c : Course | one p in Course.projects
-- div,1
all p : Project | one (Course -> Project & projects.p)
-- div,2
all pr : Project | some c : Course | pr->c in projects
-- div,1
all p : Project | one ((Course - Course) + projects.p)
-- div,1
all p : Project | one c : Course | p->c in c->projects
-- div,1
all c:Course, p:Project | one (c.projects & projects.p)
-- div,1
Course.projects*Course.~(Course.projects)*Course = iden
-- div,1
all p1 : Project | one c1 : Course | p1->c1 in projects
-- div,1
all proj: Project | all course: Course | one course.proj
-- div,2
all p:Project | one c:Course | p in (Course<:projects.c)
-- div,2
all p:Project | one (Course.projects & Course.projects.p)
-- div,2
Course.projects->Course.~(Course.projects)->Course = iden
-- div,1
all pro: Project | #Course.projects.{Project<:iden}.pro = 1
-- div,2
all pro: Project | #Course.projects.{Project:>iden}.pro = 1
-- div,1
((Course.projects)->Course).~(Course.projects)->Course = iden
-- div,1
all pro: Project | #Course.projects.{iden :> Project}.pro = 1
-- div,1
all p : Project | one (Course <: projects.p & Course.projects)
-- div,1
all p : Project | one ((Course <: projects.p) & Course.projects)
-- div,1
all p : Project | one ( (Course<:projects).p & Course.projects )
-- div,1
all p : Project | all p : p.(Course <: projects)| one projects.p
-- div,1
all p : Project | one ( (Course <: projects).p & Course.projects)
-- div,1
all p : Project | one ( (Course <: projects).p & Course.projects )
-- div,2
one c:Course , p1,p2=Project |  projects.p1 and projects.p2 implies p1!=p2
-- div,1
one c:Course , p1,p2=Project |  c.projects.p1 and c.projects.p2 implies p1!=p2
-- div,1
all p : univ | p in Project implies some c1 : univ | c1 in Course and c1->p in projects
-- div,1
all p : Project | p in Course.Project
	all c : Course | one p : Project | p in c.projects
-- div,1
all p : Project | some c : Course | c->p in projects and projects Course one -> set Project
-- div,1
all p : Project | some c : Course | c->p in projects and projects in Course one -> set Project
-- div,2
all p : Project ,c : Course | p in c.projects implies p not in (Course-c).projects and one p in c.projects
-- div,1
all p:Project | p in projects
  	all p:Project,c1,c2:Course | p in c1.projects and p in c2.projects implies c1=c2
-- div,2
all p:Project | p in Course.projects
  	
    all c1,c2:Course, p:Project | p in c1.projects and c2.projects implies c1=c2
-- div,1
all p:Project | one p in Course.projects
  	all p1,p2 : Project , c:Course |p1 in c.projects and p2 in c.projects implies p1 != p2
-- div,1
