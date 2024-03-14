-- equiv pair start,2
all c : Course | some c.grades.last
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course | some c.grades.Grade
-- div,1
-- equiv pair end
-- equiv pair start,4
all s : Student, c :Course | s in c.grades[0]
-- div,4
-- equiv pair end
-- equiv pair start,1
all c : Course | c.grades.(max[Grade]) in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | one c.grades.last.(Person <: projects)
-- div,1
-- equiv pair end
-- equiv pair start,5
all c : Course | some c.grades.last.(Person <: projects)
-- div,5
-- equiv pair end
-- equiv pair start,1
all c : Course | some c.grades.first.(Person <: projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course |  no (last[c.grades].projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course |  one (last[c.grades].projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course |  some (last[c.grades].projects & c.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | c.grades.(max[Grade]) in enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,2
all c: Course | one u : last[c.grades] |  some (u.projects & c.projects)
-- div,2
-- equiv pair end
-- equiv pair start,2
all c: Course, s: Student | c.grades.(max[Grade]) in Person <: s.projects
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Course | one u : first[c.grades] |  some (u.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | s in c.grades.(max[Grade]) => c in s.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student| some c:Course| s in c.grades.last implies c.projects in s.projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all s : Student, c :Course | s in c.grades.first implies #s.projects&c.projects>0
-- div,2
-- equiv pair end
-- equiv pair start,2
all c: Course | some c.projects implies some (last[c.grades].projects & c.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student| some c:Course| s in c.grades.last implies one (c.projects&s.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person | all y : Course | y.grades[x] = y.grades.max implies y in x.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student| some c:Course| s in c.grades.last implies #(c.projects&s.projects)>=1
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student | all c:Course | s in c.grades.last implies (some p:Project | p in s.enrolled.projects )
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course, s : Student | s in c.grades.(max[Grade]) => one proj : s.projects | proj in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Person, c:Course, g:Grade, p:Project| c->x->g in grades implies x in Student and x->c in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all c : Course | some p : Person | (p in c.grades.(max[Grade])) implies (p.projects & c.projects != none)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in c.grades.last implies (some p:Project | p in c.projects and p in s.enrolled.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student | all c : Course | s in c.grades.last implies (some p : Project | p in s.projects and c in s.enrolled)
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student |
  		all c : s.enrolled |
  			max[Student.(c.grades)] = s.(c.grades) implies some s.projects & c.projects
-- div,3
-- equiv pair end
-- equiv pair start,1
all x:Person, c:Course, g:Grade, p:Project| c->x->g in grades implies x in Student and x->c in enrolled and c->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,2
all x : Person | all y : Course | y.grades[x] = y.grades.max implies (one p : Project | p in y.projects and p in x.projects)
-- div,2
-- equiv pair end
-- equiv pair start,2
all c : Course | some p : Person | some pr: Project | (p in c.grades.(max[Grade])) implies ((p.projects & c.projects) != none)
-- div,1
all c : Course | some p : Person | some pr: Project | (p in c.grades.(max[Grade])) implies (pr in c.projects and pr in p.projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all c : Course | all pM : Student | (all p : Student |  gte[pM.(c.grades), p.(c.grades)]) implies some pM.projects & c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student |
  		all c : s.enrolled |
  			(max[Student.(c.grades)] in s.(c.grades)) implies (some s.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,7
all s : Student |
  		all c : s.enrolled |
  			(some max[Student.(c.grades)] & s.(c.grades)) implies (some s.projects & c.projects)
-- div,6
all s : Student |
  		all c : s.enrolled |
  			(some max[Student.(c.grades)] & s.(c.grades)) implies (some c.projects and some s.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student |
  		all c : s.enrolled |
  			(some max[Student.(c.grades)] & s.(c.grades)) implies (some s.projects & Course.projects)
-- div,3
-- equiv pair end
-- equiv pair start,1
all c : Course | all pM : c.grades.Grade | (all p : c.grades.Grade |  gte[pM.(c.grades), p.(c.grades)]) implies some pM.projects & c.projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Person, c:Course, g:Grade, p:Project| c->x->g in grades implies x in Student and x->c in enrolled and c->p in projects and x->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all x:Person, c:Course, g:Grade, p:Project| c->x->g in grades and x in Student implies x->c in enrolled and c->p in projects and x->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student |
  		all c : s.enrolled |
  			(some max[Student.(c.grades)] & s.(c.grades)) implies (some s.projects & c.projects or no c.projects)
-- div,3
-- equiv pair end
-- equiv pair start,1
all x:Person, c:Course, g:Grade| one p:Project| c->x->g in grades and x in Student implies x->c in enrolled and c->p in projects and x->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student |
  		all c : s.enrolled |
  			(some max[Student.(c.grades)] & s.(c.grades)) implies (some s.projects & c.projects)

	all c : Course |
		some c.grades implies some c.projects
-- div,1
-- equiv pair end
