Person<:projects
-- div,1
all s1:Student | s1.(Person<:projects)
-- div,1
all s : Student , p:s.projects | (p.~projects)
-- div,1
all x, y:Student | one x.projects and y.projects
-- div,1
all p1,p2: Project | lone projects.p1&projects.p2
-- div,1
all s1: Student | lone s1.projects&Student-s1.projects
-- div,1
all s : Student | s.projects in Student lone -> lone Student
-- div,1
all s : Student , p,p1:Project | (no projects.p & projects.p1)
-- div,1
all s1,s2:Student | lone s1.projects & s2.projects -> s1 != s2
-- div,1
all s : Student , p,p1:Project | (not projects.p & projects.p1)
-- div,1
all s : Student , p:s.projects | (p.~projects) not in s.projects
-- div,1
all s : Student , p,p1:Project | (not p.~projects & p1.~projects)
-- div,1
all s,s1 : Student | s!s1 implies lone (s.projects & s1.projects)
-- div,1
all s1, s2 : disj Student | lone s1.projects & s2.projects
-- div,1
all s : Student | s.projects[projects] in Student lone -> lone Student
-- div,1
all s : Student, disj p1,p2 : s.projects | p1.~projects != p2.~projects
-- div,1
all s1,s2 : Student | lone p : Project | s1-> p and s2 -> p in projects
-- div,1
all p1:Person, j1,j2:p1.projects | no projects.j1 & projects.j2 or j1 = j2
-- div,1
all s : Student, disj p1, p2 : s.projects | no projects.p1 & projects.p2 - s
-- div,1
all disj s1,s2:Student, p1,p2:Project | s1.p1 & s2.p1 implies no s1.p2 & s2.p2
-- div,1
all s : Student | s.projects[Course <: projects] in Student lone -> lone Student
-- div,1
all s : Student | s.projects[Person <: projects] in Student lone -> lone Student
-- div,1
all s : Student , p,p1:Project | (p+p1) in s.projects implies (not p.projects-{s})
-- div,1
all s: Student | all p: s.projects | all s2: projects.p | s2 not in (s.projects)-p
-- div,1
all s : Student , p,p1:Project | (p+p1) in s.projects implies (not (p.projects)-{s})
-- div,1
all s : Student , p1,p2 : Project| (p1!=p2 ) implies (not p1.~projects & p2.~projects)
-- div,1
all s : Student , p1,p2 : Project| (p1!=p2 and (p1+p2) in s.projects) implies (not p1)
-- div,1
all s1,s2:Student | lone p:Project | s1->p in Course.projects and s2->p in Course.projects
-- div,1
all s : Student, p : s.projects | ((Person<:projects).p)-s not in ((s.projects)-p).Project
-- div,3
all s: Student | all p: s.projects | all s2: Person <: projects.p | s2 not in (s.projects)-p
-- div,1
all disj s1, s2 : Student | lone s1.projects & s2.projects implies s1.projects & s2.projects
-- div,5
all s1, s2 : Student | s1 != s2 implies lone p : Project | p in s1.projects and p s2.projects
-- div,1
all s : Student , p:s.projects | ((p.~projects)-{s}) not in (((s.projects)-{p}).~projects)-{s}
-- div,1
all s : Student, p : s.projects | ((Person<:projects).p)-s not in ((s.(Person<:projects))-p).Project
-- div,1
all s : Student , p,p1:Project | (p+p1) in s.projects implies (not p.projects-{s} & p1.projects-{s})
-- div,1
all s: Student | all p: Project <: s.projects | all s2: Person <: projects.p | s2 not in (s.projects)-p
-- div,1
all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (no p.~projects & p1.~projects)
-- div,1
all s : Student , p,p1:Project | (p1!=p and (p+p1) in s.projects) implies (not p.~projects & p1.~projects)
-- div,1
all s : Student, disj p,p1,p2 : s.projects | projects.p1 in projects.p2 implies no projects.p & projects.p1
-- div,1
all s : Student , p1,p2 : Project| p1!=p2 and (p1+p2) in s.projects implies not p1.~projects & p2.~projects
-- div,1
all s : Student, disj p,p1,p2 : s.projects | projects.p1 in projects.p2 implies none projects.p & projcets.p1
-- div,1
all s : Student , p1,p2 : Project| p1!=p2 and (p1+p2) in s.projects implies (not p1.~projects & p2.~projects)
-- div,1
all s : Student , p1,p2 : Project| (p1!=p2 and (p1+p2) in s.projects) implies (not p1.~projects & p2.~projects)
-- div,1
all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.projects & p2.projects)
-- div,1
all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.projects & p2.~projects)
-- div,1
all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not p1.~projects & p2.~projects)
-- div,1
all disj s1,s2:Student, p1,p2:Project | s1.projects.p1 & s2.projects.p1 implies no s1.projects.p2 & s2.projects.p2
-- div,1
all s1, s2: Student | all p1, p2: Project| (p1 and p2) in s1.projects and (p1 and p2) in s2.projects implies p1=p2
-- div,1
all s : Student , p1,p2 : Project| (p1!=p2 and ({p1}+{p2}) in s.projects) implies (not p1.~projects & p2.~projects)
-- div,1
all s : Student | all p1,p2 : Project | (p1!=p2 and (p1+p2) in s.projects) implies (not p1.~projects & p2.~projects)
-- div,1
all s : Student | all disj p1,p2 : s.projects | lone (Person->projects & Person->p1) & (Person->projects & Person->p2)
-- div,1
all p1, p2 : Project, s1, s2 : projects.p1 | s1 != s2 and p1 != p2 implies s1->p2 not in projects or s2->p2 not in projects
-- div,1
all s : Student , p1,p2 : Project | (p1!=p2 and ((p1+p2) in s.projects)) implies (not (p1.~projects)-{s} & (p2.~projects)-{s})
-- div,1
all s : Student , p1,p2 : Project | (p1!=p2 and p1 in s.projects and p2 in s.projects) implies (not p1.~projects & p2.~projects )
-- div,1
all s1,s2: Student, p1,p2:Project | s1->p1 in projects and s2->p1 in projects implies no (s1->p2 in projects and s2->p2 in projects)
-- div,1
all p1, p2 : Project, s1, s2 : projects.p1 | s1 != s2 and p1 != p2 implies s1->p2 not in Person<:projects or s2->p2 not in Person<:projects
-- div,1
all s : Student , p1,p2 : Project | (p1!=p2 and p1 in s.projects and p2 in s.projects) implies (not (Person :> projects.p1) & (Person :> projects.p2) )
-- div,1
all u1: Person, u2: Person, proj1: Project, proj2: Project | u1->proj1 in projects and u2->proj1 and u1->proj2 in projects and u2->proj2 in projects implies proj1 = proj2
-- div,1
