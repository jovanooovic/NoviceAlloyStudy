Project in Course.projects
-- div,1
all x: Project | x in Course.projects
-- div,2
all p:Project | p in Course.projects
-- div,10
all pr: Project | pr in Course.projects
-- div,1
all p:Project | one (Course.projects & p)
-- div,1
all p: Project | p in (one Course.projects)
-- div,1
all p : Project | (lone c : Course | p in c.projects)
-- div,2
all p : Project | some c : Course| c in projects.p
-- div,1
all x : Project | some y : Course | x in y.projects
-- div,2
all p : Project | some c : Course| p in c.projects
-- div,7
all x:Project | lone y:Course|  y-> x in projects
-- div,1
all p : Project | some c : Course | c->p in projects
-- div,1
all p : Project | some c : Course | #(c.projects)>0
-- div,1
all c1 : Course | all c2 : Course - c1 | no c1.projects & c2.projects
-- div,2
all c1,c2 : Course, p : Project | p in c1.projects and p in c2.projects implies c1=c2
-- div,1
all p : Project | all x,y : Course | (p in x.projects and x!=y) implies p not in y.projects
-- div,1
all p : Project, c1 : Course, c2 : Course | c1 != c2 and c1 in projects.p implies c2 not in projects.p
-- div,1
all p : Project | all c : Course | all c1 : Course-c | p in c.projects implies p not in c1.projects
-- div,1
all p : Project | all c : Course | all c1 : Course-c | p in Course.projects and no c.projects & c1.projects
-- div,2
