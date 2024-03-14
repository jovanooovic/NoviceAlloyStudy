-- equiv pair start,58
one last
-- div,1
all disj g1:Grade | #g1 > 0
-- div,1
all disj g1, g2:Grade | #g1 > 0
-- div,1
all c : Course | c.grades.Grade in Person
-- div,1
all c : Course | Person.(c.grades) in Grade
-- div,2
all c: Course | lone (c.grades).max
-- div,1
all c : Course | max[Person.(c.grades)] in Grade
-- div,1
all c: Course | some c.grades implies one Grade.max
-- div,1
all c: Course | some c.grades implies some Grade.max
-- div,1
all c : Course | all s : Person |  s.(c.grades) in Grade
-- div,1
all c : Course | c.grades.(max[Person.(c.grades)]) in Person
-- div,1
all c : Course, p : Person | p=(last[c.grades]).projects implies p in enrolled.c
-- div,1
all c : Course, s : grades.Grade.c | (all e : grades.Grade.c | ordering/gte[c.grades.s,c.grades.e]) implies c in (Course <: projects).(s.projects)
-- div,3
all c : Course, s : c.grades.(c.grades.Person) | (all e : grades.Grade.c | ordering/gte[c.grades.s,c.grades.e]) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : enrolled.c | (some c.grades.s and all g : c.grades.Person | ordering/gte[c.grades.s,g]) implies c in projects.(s.projects)
-- div,2
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in c.grades.Grade implies (some p : Project | p in c.projects and p in s.projects)
-- div,4
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in c.grades.Person implies (some p : Project | p in c.projects and p in s.projects)
-- div,10
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in c.(grades.Person) implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
all s : Student | all c : Course | some g1:Grade | 
  	g1 = max[c.grades]  implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,3
all c : Course, s : enrolled.c | (some c.grades.s and (all x,g : univ | x->g in c.grades implies ordering/gte[c.grades.s,g])) implies c in projects.(s.projects)
-- div,1
all s : Student | all c : Course | some g1:Grade | 
  	g1 = max[c.grades.Person]  implies (some p : Project | p in c.projects and p in s.projects)
-- div,5
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in max[Person.(c.grades)] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | 
  	some g1:Grade | g1 in max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)
-- div,8
all s : Student, c : Course | some g : Grade | c->s->g in grades && g = max[Grade] => some p : Project |  s->p in projects && c->p in projects
-- div,1
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and ordering/gt[c.grades.e,c.grades.s]) implies c in (Course <: projects).(s.projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | some g2 : Grade | some s2 : Student |
  	c1->s1->g1 in grades and c1->s2->g2 in grades and g2=max[g1]
  
	implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,2
-- equiv pair end
-- equiv pair start,73
all s:Student, c:Course | s in c.grades.last implies some s.projects & c.projects
-- div,3
all s: Student, c: Course | s in c.grades.last => some (c.projects & s.projects)
-- div,3
all c: Course, s: Student | s in c.grades.last implies some s.projects&c.projects
-- div,3
all s : Student | all c : Course | s in c.grades.last implies some s.projects&c.projects
-- div,3
all s:Student | all c:Course | s in c.grades.last implies c.projects&s.projects!= none
-- div,4
all s : Student, c : Course | s in c.grades.last implies some p : Project | p in c.projects&s.projects
-- div,3
all s : Student | all c : Course | all g : Grade | s in c.grades.last implies some (s.projects & c.projects)
-- div,1
all s: Student, c: Course | s in c.grades.last implies (some p : Project | p in c.projects and s in (Person<:projects).p)
-- div,2
all s : Student, c : Course | s in c.grades.last implies some p : Project | p in s.projects and p in c.projects
-- div,3
all s:Student,c:Course | s in c.grades.last implies (some p:Project | p in c.projects and p in s.projects)
-- div,7
all s : Student, c : Course | c -> s in grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student, c : Course | c -> s in grades.last implies (some p : Project | c -> p in projects and p in s.projects)
-- div,1
all s : Student, c : Course | c -> s in grades.last implies (some p : Project | c -> p in projects and s -> p in projects)
-- div,1
all s : Student | all c : Course | s in c.(grades.last) implies some p : Project | p in c.projects and p in s.projects
-- div,1
all s: Student | all c: Course | s in c.grades.last implies (some p: Project | p in c.projects and p in s.projects)
-- div,21
all s:Student, c:Course, g:Grade | c->s->g in grades and g in last => some p:c.projects | p in s.projects
-- div,4
all s : Student | all c : Course | s in c.grades.last implies (some p : Project | s->p in projects and c->p in projects)
-- div,1
all s:Student, c:Course, g:Grade | c->s->g in grades and g in last => some p:c.projects | s->p in projects
-- div,2
all s : Student | all c : Course | s in c.grades.last implies (some p : Project | c->p in projects and s->p in projects)
-- div,1
all s1: Student | all c1: Course | c1->s1 in grades.last implies (some p1: Project | c1->p1 in projects and s1->p1 in projects)
-- div,4
all c: Course, s: Student, g: Grade | s->g in c.grades && g = max[Grade] => some p: Project | p in s.projects && p in c.projects
-- div,1
all s : Student, c : Course, g : Grade | 
  		c->s->g in grades && g = max[Grade] => some p : Project |  s->p in projects && c->p in projects
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	s in (c.grades.last) implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all c: Course | some c.grades.last implies some c.grades.last.projects&c.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all c: Course, s: Student | s.(c.grades) = last implies some s.projects&c.projects
-- div,1
all s:Student,c:Course | s.(c.grades)=last implies some (s.projects & c.projects)
-- div,1
all c : Course, s : Student | s.(c.grades) = last implies some x : s.projects| x in c.projects
-- div,1
-- equiv pair end
-- equiv pair start,6
all s: Student, c: s.enrolled | s in c.grades.last => some (s.projects & c.projects)
-- div,1
all s: Student, c: Course | s in enrolled.c and s in c.grades.last implies some s.projects&c.projects
-- div,1
all s : Student, c : s.enrolled | s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
all s:Student, c:Course | s->c in enrolled and s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
-- equiv pair end
-- equiv pair start,1
all s:Person, c: Course | s.(c.grades) = last implies some (s.projects & c.projects)
-- div,1
-- equiv pair end
-- equiv pair start,4
all s : Student, c : Course | s in c.grades.last implies some p : Project | p in s.projects
-- div,1
all s : Student | all c : Course | s in c.grades.last implies (some p : Project | s->p in projects)
-- div,1
all s:Student, c:Course, g:Grade | c->s->g in grades and g in last => some p:Project | s->p in projects
-- div,1
all s:Student, c:Course, g:Grade | c->s->g in grades and no g.next => some p:Project | s->p in projects
-- div,1
-- equiv pair end
-- equiv pair start,1
all s:Student, c:Course | s in Course.grades.last implies some s.projects & Course.projects
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Course | s in c.grades.last implies some p : Project | p in c.projects
-- div,1
all s : Student | all c : Course |
  		s in c.grades.last implies (some p : Project | p in c.projects)
-- div,1
all s : Student, c : Course | c -> s in grades.last implies (some p : Project | c -> p in projects and c -> p in projects)
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : s.enrolled | s in c.grades.last implies (some p : Project | p in c.projects )
-- div,1
-- equiv pair end
-- equiv pair start,3
all s : Student, c : Course | s in c.grades.last implies some p : Project | p in c.projects+s.projects
-- div,3
-- equiv pair end
