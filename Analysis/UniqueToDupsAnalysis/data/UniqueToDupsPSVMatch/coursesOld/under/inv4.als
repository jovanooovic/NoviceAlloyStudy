Project.projects in Person
-- div,1
Project = Course.projects
-- div,1
Course.projects=Project
-- div,3
Project in Course.projects
-- div,13
Course.projects in Project
-- div,1
(Course<:projects).~(Course<:projects) in iden
-- div,3
all p:Project | lone p.projects
-- div,1
Project = Project & Course.projects
-- div,1
Course.projects & Project = Project
-- div,1
all p : Project | p.projects in Course
-- div,1
all p:Project|some (Course<:projects).p
-- div,1
all p:Project | lone (Course <: projects).p
-- div,6
all c : Course | lone c.~(Course <: projects)
-- div,1
all p : Project | lone p.~(Course <: projects)
-- div,2
all p:Project | some Course.projects
-- div,1
all x : Project | x in Course.projects
-- div,1
all p:Project|p in  Course.projects
-- div,25
all pro: Project | pro in Course.projects
-- div,1
all p : Project | one p&Course.projects
-- div,11
all p : Project | one Course.projects&p
-- div,10
all p : Project | lone (p & Course.projects)
-- div,2
all p : Project | some (p&Course.projects)
-- div,3
all p: Project | lone Course <: projects.p
-- div,1
all p : Project | lone (Course :> projects.p)
-- div,1
all p : Project | lone Course <: p.~projects
-- div,1
all p : Project, c : Course | p in Course.projects
-- div,1
all p : Project | one (Course.projects)-(Project-p)
-- div,1
all disj c, c1 : Course | no c.projects & c1.projects
-- div,1
all disj c1, c2 : Course | no c1.projects & c2.projects
-- div,1
all x : Project | some y : Course | x in y.projects
-- div,2
all disj c1,c2:Course | lone c1.projects & c2.projects
-- div,1
all p: Project | lone c: Course | p in c.projects
-- div,2
all p:Project | some c:Course | p in c.projects
-- div,3
all p:Project | some c:Course | c->p in projects
-- div,10
all p : Project | lone c : Course | c->p in projects
-- div,1
all c: Course, p: c.projects | p not in (Course-c).projects
-- div,1
all s : Person | all tp : s.projects | tp in Course.projects
-- div,1
all p :Project | some c: Course | c in Course and c->p in projects
-- div,1
all p :Project | some c: Course | c in Course or  not(c->p in projects)
-- div,1
all p: Project, c: Course | p in c.projects => p not in (Course-c).projects
-- div,5
all p : Project ,c : Course | p in c.projects iff p not in (Course-c).projects
-- div,1
all x : Project, y, z : Course | y->x in projects and z->x in projects implies y = z
-- div,2
all c, q: Course, p, j: Project | (c->p in projects and q->j in projects) implies q!=j
-- div,1
all p:Project,c1,c2:Course | p in c1.projects and p in c2.projects implies c1=c2
-- div,2
all c1,c2 : Course,p:Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,5
all disj c1, c2 : Course | all p : Project | p in c1.projects implies p not in c2.projects
-- div,1
all c1, c2 : Course, p:Project | c1->p in projects and c2->p in projects implies c1=c2
-- div,1
all p : Project, c : Course | p in c.projects implies p not in (Course.projects - c .projects)
-- div,1
all p:Project , c1,c2:Course | c1->p in projects and c2->p in projects implies c1=c2
-- div,1
all p : univ | p in Project implies some c1 : univ | c1 in Course and c1->p in Course<:projects
-- div,1
all p : Project, c : Course, c2 : (Course-c) | p in c.projects implies p not in c2.projects
-- div,1
all disj c1,c2:Course, p:Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,1
all x : Project | some y, z : Course | y->x in projects and z->x in projects implies y = z
-- div,2
all c, q: Course | all p, j: Project | (c->p in projects and q->j in projects) implies q!=j
-- div,1
all p: Project | all c1, c2: Course | p in c1.projects and p in c2.projects implies c1=c2
-- div,5
all c1, c2 : Course | all p : Project | (p in c1.projects and p in c2.projects) implies (c1 = c2)
-- div,1
all proj:Project, c1, c2:Course | c1->proj in projects and c2->proj in projects => c1=c2
-- div,1
all p:Project | all c1,c2:Course | c1->p in projects and c2->p in projects implies c1=c2
-- div,2
all p: Project, pr: Professor | lone c: Course | p in c.projects and p not in pr.projects
-- div,1
all p:Project | some c1,c2:Course | c1->p in projects and c2->p in projects implies c1=c2
-- div,2
all p: Project, c1: Course, c2: Course | c1 != c2 && p in c1.projects => p not in c2.projects
-- div,1
all p : Project, c : Course | p in Course.projects and p in c.projects implies p not in (Course-c).projects
-- div,1
all p: Project | all course1, course2 : Course | (p in course1.projects and p in course2.projects) implies course1 = course2
-- div,1
all p : Project | all c1,c2 : Course | p in c1.projects and p in c2.projects implies c1=c2 and p in Course.projects
-- div,1
all p : Project ,c : Course | p in c.projects implies p not in (Course-c).projects and  p not in c.projects implies p in (Course-c).projects
-- div,1
all p : Project ,c : Course | p in c.projects implies p not in (Course-c).projects or  p not in c.projects implies p in (Course-c).projects
-- div,1
