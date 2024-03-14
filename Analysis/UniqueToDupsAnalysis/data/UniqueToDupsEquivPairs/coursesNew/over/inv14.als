-- equiv pair start,1
all s1,s2 : Person | lone (s1+s2).(Person <: projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all s1,s2 : Person | lone s1.(Person <: projects) & s2.(Person <: projects)
-- div,1
all p1,p2 : Person | all pro1,pro2 : Project | (pro1 in p1.projects and pro1 in p2.projects and pro2 in p1.projects and pro1 != pro2) implies (pro2 not in p2.projects)
-- div,1
all p: Person | all project: p.projects | no (getProjectStudents[project] & getProjectStudents[Project - project])
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
-- equiv pair end
-- equiv pair start,2
all x,y:Person, p:Project, i:Project| x-> p in projects and y-> p in projects implies x-> i in projects and y -> i not in projects
-- div,1
all x1,x2 : Person | all y1,y2 : Project | y1 in x1.projects and y2 in x2.projects implies (y2 in x1.projects implies y2 not in x2.projects) or (y2 in x2.projects implies y2 not in x1.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x,y:Person, p:Project, i:Project-p| x-> p in projects and y-> p in projects implies x-> i in projects and y -> i not in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | one getProjectStudents[p.projects]
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
-- equiv pair end
-- equiv pair start,1
one x,y:Person, p,k:Project| x in Student and y in Student and x->p in projects and y->p in projects implies x->k in projects and y->k not in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1,p2 : Person | all c1,c2 : Project | (c1 in p1.projects and c1 in p2.projects and c2 in p1.projects and p1!=p2 ) implies (c2 not in p2.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | all project: p.projects | p = (getProjectStudents[project] & getProjectStudents[Project - project])
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | all project: p.projects | p = (getProjectStudents[project] & getProjectStudents[p.projects - project])
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
-- equiv pair end
