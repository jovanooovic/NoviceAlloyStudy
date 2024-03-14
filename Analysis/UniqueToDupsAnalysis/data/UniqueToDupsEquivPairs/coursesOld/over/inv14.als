-- equiv pair start,6
all s1, s2 : Person | lone s1.projects & s2.projects
-- div,1
all p1,p2:Person | lone p:Project | p in p1.projects and p in p2.projects
-- div,1
all p1:Person, j1,j2:p1.projects | no Person<:projects.j1 & Person<:projects.j2 or j1 = j2
-- div,1
all p1,p2:Person, p:Project | p in p1.projects and p in p2.projects => not some p3:Project | p3 != p and p3 in p1.projects and p3 in p2.projects
-- div,2
all u1: Person, u2: Person, proj1: Project, proj2: Project | u1->proj1 in projects and u2->proj1 in projects and u1->proj2 in projects and u2->proj2 in projects implies proj1 = proj2
-- div,1
-- equiv pair end
-- equiv pair start,1
all disj p1, p2 : Person | lone p1.projects + p2.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1,p2: Project | lone (Person<:projects).p1&(Person<:projects).p2
-- div,1
all p1,p2:Person, j:Project | p1->j in projects and p2->j in projects implies p1 = p2
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Person, p : s.projects | ((Person<:projects).p)-s not in (Person<:projects).((s.projects)-p)
-- div,1
-- equiv pair end
-- equiv pair start,2
all p1, p2 : Project, s1, s2 : Person<:projects.p1 | s1 != s2 and p1 != p2 implies p2 not in s1.projects+s2.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all u1: Person, u2: Person, u3: Person, proj: Project | proj in u1.projects and proj in u2.projects and proj in u3.projects implies u3 != u2
-- div,1
-- equiv pair end
