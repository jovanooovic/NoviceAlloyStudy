one (projects & Course)
-- div,1
all x : Student | x.projects
-- div,1
one (projects & Person -> Course)
-- div,1
one (Person -> Course & projects)
-- div,1
all s,x: Student | (s.projects & x.projects) >2
-- div,1
all s1,s2 : Student | lone (s1+s2).Person <: projects
-- div,1
all s1, s2 : Student | s1.projects & s2.projects => s1 = s2
-- div,3
all s1, s2 : Student | (s1.projects & s2.projects) => s1 = s2
-- div,1
all s1:Student|all s2:Student-s1| (s1.projects & s2.projects)
-- div,1
all s1,s2 : Student | all p : s1.projects | lone s2->p & Project
-- div,1
all x,y:Student | lone z:Project | lone (z in x.projects & z in y.projects)
-- div,1
all x1,x2 : Person | all y : Project | lone(y in x1.projects and y in x2.projects )
-- div,2
all disj s1,s2:Student |all c1,c2:Course | (s1 in c1.projects & s2 in c1.project) implies no (s1 in c2.project && s2 in c2.project)
-- div,1
all disj s1,s2:Student |all c1,c2:Course | ((s1 in c1.projects) & (s2 in c1.project)) implies no (s1 in c2.project && s2 in c2.project)
-- div,1
all s:Student, ss: Student-s ,p:Project, pp:Project-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
-- div,2
all p: Person | getProjectStudents[p.projects]
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
all s:Student, ss: Student-s,p:projects, pp:projects-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
-- div,1
all s:Student, ss: Student-s ,p:projects, pp:projects-p| (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
-- div,1
all s:Student, ss: Student-s , p:Project, pp:Project-p | (p in s.projects && p in pp.projects) => no (pp in s.projects & pp in pp.projects)
-- div,1
all s:Student, ss: Student-s ,p:Project, pp:Project-p| (p in s.projects && p in pp.projects) => (pp not in s.projects & pp not in pp.projects)
-- div,1
all s1:Student, s2:Student, c1:Course, c2:Course | c1 in s1.projects and c1 in s2.projects implies ((c2 in s1.projects and c2 not in s2.projects) or (c2 not in s1.projects and c2 in s2.projects))
-- div,3
all p: Person | all project: p.projects | (getProjectStudents[project] & getProjectStudents[p.projects - project])
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
all p:Person, x:Person-p, y:Project, v:Project-y, c:Course, k:Course-c| c->y in projects and p->y in projects and x->p in projects and p->c in enrolled and x->c in enrolled and k->v in projects and p->k in enrolled and p->v in projects implies x->v not in projects
-- div,2
all p:Student, x:Student-p, y:Project, v:Project-y, c:Course, k:Course-c| c->y in projects and p->y in projects and x->p in projects and p->c in enrolled and x->c in enrolled and k->v in projects and p->k in enrolled and p->v in projects implies x->v not in projects
-- div,2
