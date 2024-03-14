all s: Student |
-- div,2
all s,b:Student | lone ( a.projects & b.projects )
-- div,1
all x : Student | one  Student<:projects(x.projects)
-- div,1
all s:Student, ss:Student-s | lone(s.project & ss.project)
-- div,1
all s1,s2 : Student | all p : s1.projects | lone s2->p & Projects
-- div,1
all s : Student | c : Student - s | lone (s.projects & c.projects)
-- div,3
all x : Student | all y:Student | x!=y| lone(x.projects &y.projects)
-- div,1
all x: Student, all col : Student - x | lone (x.projects & col.projects)
-- div,2
all x : Student | all y : Student | x!=y | lone(x.projects & y.projects)
-- div,1
all s : Student | all col : Student - x | lone (s.projects & col.projects)
-- div,2
all x: Students | all col : Students - x | lone (x.projects & col.projects)
-- div,1
all p : Project, s : Student, s2 : Student | lone (s.projects & s1.projects)
-- div,1
all p1,p2 : Project, x : Student | (p1 in x.projects and p2 in x.projects) implies
-- div,1
all x,y:Person, p:Project| x-> p in projects and y-> p in projects implies x->not in
-- div,2
all x1,x2 : Person | all y1 : Project | lone(y in x1.projects and y in x2.projects )
-- div,1
all x: Student | all Student - x : col | all p : x.projects | lone (x.projects & col.projects)
-- div,1
all x,y:Person, p:Project, i:Project-p| x-> p in projects and y-> p in projects implies y not in
-- div,1
all p: Project |
    all s1, s2: Student | 
      (s1 in p.people) && (s2 in p.people) => (s1 != s2)
-- div,1
all s:Student, ss: Student-s | some(s.projects & pp.projects) => (pp in s.projects && pp in pp.projects)
-- div,1
all disj s1,s2 : Student | all p : Project | s1->p in projects and s2->p in projects => no s2.projects & no p1.projects - p
-- div,1
all disj s1,s2:Student | c1,c2:Course | (s1 in c1.project & s2 in c1.project) implies no (s1 in c2.project && s2 in c2.project)
-- div,1
all disj s1,s2:Student |all c1,c2:Course | (s1 in c1.project & s2 in c1.project) implies no (s1 in c2.project && s2 in c2.project)
-- div,1
all x,y:Person, p:Project, i:Project-p| x-> p in projects and y-> p in projects implies x-> i in project and y -> i not in projects
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.project and c1 in p2.projects and c2 in p1.project) implies (c2 in p2.project=
-- div,1
all p: Person | getProjectStudents[project]
}

fun getProjectStudents[project : Project]: set Student {
  	(projects.project & Person)
-- div,1
all p1,p2 : Person | some c1,c2 : Project | (c1 in p1.project and c1 in p2.projects and c2 in p1.projects) implies (c2 in p2.projects)
-- div,1
all s1,s2: Student | all p1,p2: Project |
  	s1->p1 in projects and s2->p1 in projects and s1!=s2 and p1!=p2 => s1+s2 not in projects.p
-- div,1
all u:Person, k:Person-u, c:Course, x:Project|one p:Projects-x| u->p in projects and k->p in projects implies u->x in projects and k->x not in projects
-- div,1
all p1,p2 : Person | all pro1,pro2 | (pro1 in p1.projects and pro1 in p2.projects and pro2 in p1.projects and pro1 != pro2) implies pro2 not in p2.projects
-- div,1
all p1,p2 : Person | all pro1,pro2 | (pro1 in p1.projects and pro1 in p2.projects and pro2 in p1.projects and pro1 != pro2) implies (pro2 not in p2.projects)
-- div,1
all p1, p2 : Project | all s1, s2 : Student | s1 != s2 and p1 in s1.projects and p1 in s2.projects and p2 in s1.projects and p2 in s2.projects implies p1 == p2
-- div,1
all s1,s2 : Student all p1,p2 : Project | p1 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2 implies (p2 not in s1.projects) or (p2 not in s2.projects)
-- div,1
all s1, s2 : Student | all p1,p2 : PRoject | p1 in s1.projects and p1 in s2.projects and s1!=s2 and p1!=p2 implies (p2 not in s1.projects) or (p2 not in s2.projects))
-- div,1
all s1:Student, s2:Student, p1:Project, p2:Project | p1 in s.projects and p2 in s.projects and s1!=s2 and p1!=p2) implies (s1 not p2.projects and s2 not in p1.projects)
-- div,1
all s1:Student, s2:Student, p1:Project, p2:Project | (p1 in s.projects and p2 in s.projects and s1!=s2 and p1!=p2) implies (s1 not p2.projects and s2 not in p1.projects)
-- div,1
all s:Student, s2:Student, proj1:Project, proj2:Project | proj1 in s.projects and proj1 in s2.projects and s!=s2 implies ( p2 not in s1.projects) or (p2 not in s2.projects)
-- div,1
all x:Person, y:Person-x, p:Project, i:Project-p| x-> p in projects and y-> p in projects and x in Student and y in Student implies x-> i in projects a y -> i not in projects
-- div,1
all s:Student, s2:Student, proj1:Project, proj2:Project | proj1 in s.projects and proj1 in s2.projects and s!=s2 implies ( proj2 not in s1.projects) or (proj2 not in s2.projects)
-- div,1
