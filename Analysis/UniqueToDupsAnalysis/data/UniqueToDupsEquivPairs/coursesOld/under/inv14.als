-- equiv pair start,22
all disj s1, s2 : Student, p1, p2 : Project | one s1
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | s1 != s2
-- div,1
all s : Student , p:s.projects | p in s.projects
-- div,1
all s : Student , p,p1:Project | (p+p1) in s.projects implies (s not in (p.projects)-{s})
-- div,1
all s1: Student | some s2: Student | s1 != s2 implies lone (s1.projects + s2.projects)
-- div,1
all s1: Student | some s2: Student | s1 != s2 implies lone (s1.projects & s2.projects)
-- div,1
all disj s1, s2 : Student, p1, p2 : Project | (s1 in projects.p1 and s2 in projects.p1) implies s1 != s2
-- div,1
all s : Student | all disj p1,p2 : s.projects | no (Person.projects & p1) & (Person.projects & p2)
-- div,1
all s : Student | all disj p1,p2 : s.projects | lone (Person.projects & p1) & (Person.projects & p2)
-- div,1
all s : Student | all disj p1,p2 : s.projects | lone (projects & Person->p1) & (projects & Person->p2)
-- div,1
all s: Student | all p: Project <: s.projects | all s2: Person <: projects.p | s2 not in Person <: (s.projects)-p
-- div,1
all disj s1, s2: Student, pj: Project | pj in s1.projects implies pj not in s2.projects && pj in s2.projects implies pj not in s1.projects
-- div,1
all s:Student | all p:Project | s->p in enrolled implies all ss:Student | lone ps:Project | ps in enrolled.s and ps in enrolled.ss
-- div,2
all s1, s2: Student | all p1, p2: Project | (s1->p1 in projects and s2->p1 in projects and s1!=s1) implies
  		( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all s:Student | all p:Project | s->p in enrolled implies all s2:Student | lone p2:Project | p2 in s.enrolled and p2 in s2.enrolled
-- div,1
all s:Student | all p:Project | s->p in enrolled implies all ss:Student | lone ps:Project | ps in enrolled.s and ps in ss.enrolled
-- div,1
all s:Student | all p:Project | s->p in enrolled implies all ss:Student | lone ps:Project | ps in s.enrolled and ps in ss.enrolled
-- div,1
all s1, s2 : Student | all p1 : Project | s1 != s2 and p1 in s1.projects and p1 in s2.projects implies (some p2 : Project | p1 != p2 and p2 in s1.projects implies p2 not in s2.projects)
-- div,1
all s1, s2 : Student | all p1 : Project | s1 != s2 and p1 in s1.projects and p1 in s2.projects implies (some p2 : Project | p1 != p2 and p2 not in s1.projects implies p2 not in s2.projects)
-- div,1
all s1:Student,s2:Student, p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects or ps in s2.projects or (ps not in s1.projects and ps not in s2.projects)
-- div,2
-- equiv pair end
-- equiv pair start,145
all disj x, y : Student | lone x.projects & y.projects
-- div,2
all disj s1,s2: Student | lone s1.projects&s2.projects
-- div,28
all s,t : Student | s != t implies lone (s.projects & t.projects)
-- div,2
all x, y:Student | x!=y implies lone x.projects & y.projects
-- div,1
all s, s2 : Student | s != s2 implies lone s.projects & s2.projects
-- div,1
all s,s1 : Student | s!=s1 implies lone (s.projects & s1.projects)
-- div,5
all s, s2 : Student | s not in s2 implies lone s.projects & s2.projects
-- div,1
all s1, s2 : Student | lone s1.projects & s2.projects or s1 = s2
-- div,2
all u1, u2: Student | u1 != u2 implies lone (u1.projects & u2.projects)
-- div,1
all s1,s2:Student| s1 != s2 => lone s1.projects & s2.projects
-- div,14
all s : Student, t : Student - s | lone (s.projects & t.projects)
-- div,4
all disj s1,s2: Student | s1!=s2 implies lone s1.projects&s2.projects
-- div,1
all s1: Student, s2: Student - s1 | lone (s1.projects & s2.projects)
-- div,4
all s1, s2 : Student | s1 != s2 implies lone p : Project | p in s1.projects&s2.projects
-- div,1
all disj s1, s2 : Student | some s1.projects & s2.projects implies one s1.projects & s2.projects
-- div,2
all s1, s2 : Student | s1 != s2 implies lone p : Project | p in s1.projects and p in s2.projects
-- div,1
all s1, s2 : Student | s1 != s2 implies lone p : Project | s1 in projects.p and s2 in projects.p
-- div,2
all s1,s2 : Student | lone p : Project | s1!=s2 and s1 -> p in projects and s2 -> p in projects
-- div,1
all p: Project, s1, s2: Student | s1 in projects.p and s2 in projects.p and s1 != s2 implies one (s1.projects&s2.projects)
-- div,1
all disj s1,s2 : Student, p : Project | p in s1.projects and p in s2.projects implies no (s1.projects-p) & (s2.projects-p)
-- div,2
all s1,s2 : Student | all p1,p2: Project | (p1+p2) in s1.projects and (p1+p2) in s2.projects and s1!=s2 implies p1=p2
-- div,9
all disj s1,s2 : Student, disj p1,p2 : Project | (p1 in s1.projects and p1 in s2.projects) implies (p2 not in s1.projects or p2 not in s2.projects)
-- div,1
all disj p1,p2 : Project, disj s1,s2: Student | p1 in s1.projects and p1 in s2.projects => p2 not in s1.projects or p2 not in s2.projects
-- div,5
all p1 : Project | all s1,s2 : Student | p1 in s1.projects&s2.projects and s1 != s2 implies s1.projects&s2.projects-p1 = none
-- div,1
all disj s1,s2 : Student, disj p1,p2 : Project | (p1 in s1.projects and p1 in s2.projects) implies (p2 not in s1.projects or s2->p2 not in projects)
-- div,1
all disj s1,s2 : Student, disj p1,p2 : Project | (p1 in s1.projects and p1 in s2.projects) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all p1, p2:Project, disj s1, s2: Student | p1 in s1.projects && p1 in s2.projects && p2 in s1.projects && p2 in s2.projects => p1=p2
-- div,1
all disj s1,s2 : Student, disj p1,p2 : Project | (s1->p1 in projects and s2->p1 in projects) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1+p2 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2 implies p2 not in s2.projects
-- div,1
all s,s1: Student, p,p1: Project | p!=p1 and s!=s1 and s->p in projects and s1->p in projects and s->p1 in projects implies s1->p1 not in projects
-- div,1
all s : Student , u : Student - s | lone( s.projects & u.projects )
  	all s : Student, t : Student - s | lone (s.projects & t.projects)
-- div,1
all disj s1,s2 : Student, p1,p2 : Project | (s1->p1 in projects and s2->p1 in projects and p1!=p2) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all s1,s2:Student,p1,p2:Project | s1!=s2 and p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s2.projects implies p1=p2
-- div,2
all p1, p2:Project, s1, s2: Student | s1!=s2 && p1 in s1.projects && p1 in s2.projects && p2 in s1.projects && p2 in s2.projects => p1=p2
-- div,3
all s1, s2 : Student , p1, p2 : Project | s1!=s2 and p1!=p2 and p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
all s1, s2 : Student, p1,p2 : Project |p1 != p2 and s1!=s2 and p1 in s1.projects and p2 in s1.projects and p1 in s2.projects implies p2 not in s2.projects
-- div,1
all s1,s2:Student,p1,p2:Project | s1 != s2 and s1 -> p1 in Person <: projects and s2 -> p1 in Person <: projects and s1 -> p2 in Person <: projects and s2 -> p2 in Person <: projects implies p1=p2
-- div,1
all p1,p2 : Project | all s1,s2 : Student | p1 in s1.projects&s2.projects and s1 != s2 and p1 != p2 implies s1.projects&s2.projects-p1 = none
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1 in s1.projects&s2.projects and p2 in s1.projects and s1!=s2 and p1!=p2 implies p2 not in s2.projects
-- div,2
all s1,s2:Student, p1,p2:Project | s1!=s2 and p1!=p2 and s1->p1 in projects and s2->p1 in projects and s1->p2 in projects implies s2->p2 not in projects
-- div,1
all s1, s2 : Student, p1, p2 : Project | 
  		s1 != s2 && p1 != p2 && s1->p1 in projects && s2->p1 in projects 
  			=> not (s1->p2 in projects && s2->p2 in projects)
-- div,2
all disj s1,s2 : Student | all p1,p2 : Project | (s1->p1 in projects and s2->p1 in projects and p1!=p2) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all p1, p2 : Project, s1, s2: Student | p1 != p2 and s1 != s2 => not (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
-- div,1
all s1, s2 : Student | all p1, p2 : Project | p1 in s1.projects and p2 in s1.projects and p1 in s2.projects and p2 in s2.projects implies s1 = s2 or p1 = p2
-- div,1
all s1, s2 : Student | all p1,p2 : Project | p1!=p2 and s1!=s2 and p1 in s1.projects and p1 in s2.projects implies p2 not in s1.projects or p2 not in s2.projects
-- div,1
all s,s1:Student | all p,p1:Project | p in s.projects and p in s1.projects and p1 in s.projects and p1 in s1.projects and p!=p1 and s!=s1 implies p = p1
-- div,1
all s1, s2 : Student | all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and s1 != s2 and p1 != p2 implies ( p2 not in s1.projects or p2 not in s2.projects)
-- div,3
all x,y:Student, p:Project | (x->p in projects and y->p in projects and x!=y) implies (all p1:Project-p | x->p1 not in projects or y->p1 not in projects)
-- div,2
all s1,s2 : Student | all p1,p2 : Project |
  	(p1 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2) implies
  	( not(p2 in s1.projects and p2 in s2.projects) )
-- div,1
all s1,s2 : Student | all p1,p2 : Project | s1!=s2 and p1!=p2 and s1->p1 in projects and s2->p1 in projects and s1->p2 in projects implies s2->p2 not in projects
-- div,1
all s1,s2 : Student | all p1,p2 : Project |
  	(p1 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2) implies
  	( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,1
all s1, s2: Student | all p1, p2: Project | s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2 implies (s1->p2 in projects implies s2->p2 not in projects)
-- div,1
all s1:Student , s2:Student-s1, p1:Project, p2:Project-p1 | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,3
all s1,s2 : Student | all p1,p2 : Project | (s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2) implies ( (s1->p2 not in projects) or (s2->p2 not in projects) )
-- div,11
all p1, p2 : Project | all s1, s2: Student | p1 != p2 and s1 != s2 => not (s1->p1 in projects and s1->p2 in projects and s2->p1 in projects and s2->p2 in projects)
-- div,1
all student1, student2 : Student | all project1, project2: Project |((project1 + project2 ) in student1.projects and (project1 + project2 ) in student2.projects and student1 != student2) implies (project1 = project2)
-- div,1
all disj s1,s2,p : univ | s1 in Student and s2 in Student and p in Project and s1->p in Person <: projects and s2->p in Person <: projects implies all p1 : Project | p1!=p and s1->p1 in Person <: projects implies not s2->p1 in Person <: projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, disj p1, p2 : s.projects | no (Person <: projects.p1 & Person <: projects.p2 - s)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c:Course, s1:enrolled.c , s2:enrolled.c-s1, p1:c.projects, p2:c.projects-p1 | p1 in s1.projects and p1 in s2.projects and p2 in s1.projects implies p2 not in s2.projects
-- div,1
-- equiv pair end
