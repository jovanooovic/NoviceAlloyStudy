grades.(max[Grade]) in projects.~projects
-- div,2
all c : Course | (c.grades).last in projects.(c.projects)
-- div,3
all c:Course | c.grades.last in c.projects.~projects
-- div,8
all c : Course | last[c.grades] in projects.(c.projects) <: Person
-- div,5
all c : Course, n : c.grades.last | some n.projects & c.projects
-- div,2
all c : Course, p : c.grades.last | some p.projects & c.projects
-- div,1
all c : Course, s : c.grades.last | some c.projects & s.projects
-- div,3
all c:Course,s:c.grades.last | some (s.projects &c.projects)
-- div,4
all c : Course, s : c.grades.(max[Grade]) | some (c.projects & s.projects)
-- div,1
all c : Course | all n : c.grades.last | some n.projects & c.projects
-- div,1
all c : Course | all s : c.grades.last | some s.projects&c.projects
-- div,1
all c : Course, s : c.grades.last | some p : c.projects | p in s.projects
-- div,5
all c:Course,p:Person | c->p->last in grades implies c->p in projects.~projects
-- div,1
all p : Person | all c : Course | p in c.grades.last implies p.projects&c.projects != none
-- div,1
