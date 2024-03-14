one Project.projects
-- div,2
(Course<:projects).~(Course<:projects) = iden
-- div,1
all x: Project | one  x.projects
-- div,1
all p:Project | one p.projects
-- div,4
Course <: projects in Course one -> one Project
-- div,1
all p: Project | p in Course
-- div,1
all p: Project | one (Course <: grades).p
-- div,1
all p : Project | one Course <: p.projects
-- div,1
all p : Project | one c : Course | c in p.projects
-- div,1
((Course.projects)->Course).~((Course.projects)->Course) = iden
-- div,1
Project in (one Course.projects)
  	
	all c: Course, p: c.projects | p not in (Course-c).projects
-- div,1
all p:Project | p in Course.projects
  	all p1,p2:Project | p1 in Course.projects and p2 in Course.projects implies p1!=p2
-- div,1
all p:Project | p in Course.projects
  	all p1,p2:Project, c:Course | p1 in c.projects and p2 in c.projects implies p1!=p2
-- div,6
all p:Project | p in Course.projects
  	all p:Project, c1,c2:Course | p in c1.projects and p in c2.projects implies c1!=c2
-- div,1
all p:Project | p in Course.projects
  	all p1,p2 : Project , c:Course |p1 in Course.projects and p2 in Course.projects implies p1 != p2
-- div,1
all p : Project | p in Course.projects
	all c : Course | all p1, p2 : Project | p1 in c.projects and p2 in c.projects implies p1!=p2
-- div,1
all p: Project, c1, c2: Course | p in c1.projects && p in c1.projects => c1=c2
  	all p: Project | one c: Course | p in c.projects
-- div,1
