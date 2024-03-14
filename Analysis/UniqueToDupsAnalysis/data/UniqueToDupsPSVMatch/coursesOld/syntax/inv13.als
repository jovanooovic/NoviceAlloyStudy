all
-- div,3
one Grade/last
-- div,1
all s : Student
-- div,2
some Grade/last
-- div,1
some Grande/last
-- div,1
some Grande.last
-- div,1
all s : Student |
-- div,6
last[Person.(c.grades)]
-- div,1
all c : Course | s : first[c.grades] in c.projects
-- div,1
all c : Course | larger[Person.(c.grades)] in Grade
-- div,2
all c: Course | some c.grades implies one Grades.max
-- div,1
grades.max[Grade] in c.projects.~projects :> student
-- div,1
all c: Course | some c.grades.last.projects&c.ptojects
-- div,1
all c: Course | some c.grades implies one max(c.grades)
-- div,1
all c:Course,s:c.grades.last | some (s.prjects &c.projects)
-- div,1
all c:Course,s:first.(s.c.grades) | (c.projects & s.projects)
-- div,1
all s:Student | s in Course.grades.last implies c in s.enrolled
-- div,1
all s : Student | all c: Course | s in c.grades.last implies so
-- div,1
all c : Course | n : c.grades.last | some n.projects & c.projects
-- div,1
all c : Course | n : c.grades.last | some n.projects in c.projects
-- div,1
all s:Student, c:Course, g:Grade | c->p->g in grades and g in last
-- div,1
all s:Student | first.(s.c.grades) implies (c.projects &s.projects)
-- div,1
all c : Course | some s : c.grades.last some s.projects & c.projects
-- div,1
all c: Course | some c.grades implies some c.(c.gradex.max.projects)
-- div,1
es - es.^(~(Ord.Next))
  lone grade {grades - grades.^(~(Ord.grades))}
-- div,1
all c1 : Course |
  	one s1:Student | c1->s1->g1 in grades and g1=max[]
-- div,1
all c->s->g : grades | g in last => some p:c.projects | s->p in projects
-- div,1
all s1 : Student | all c1 : Course | s1 in c1.grades.Grade.max implies ()
-- div,1
all s: Student, c: Course | s.grades.last => some (c.projects & s.projects
-- div,1
all s1 : Student | all c1 : Course | 
  	s1 in c1.grades.Grade.max implies ()
-- div,1
all c : Course, c : Pesron | p=(last[c.grades]).projects implies p in enrolled.c
-- div,1
all c : Course | ((c.grades).(lats[Person.(c.grades)])) in projects.(c.projects)
-- div,1
all s:Student, c:Course | s in c.grades.last implies c in s.enrolled & c.project
-- div,1
all s:Student,c:Course | s.(c.grade)=last implies some (s.projects & c.projects)
-- div,1
all c: Course | s in c.grades.last implies some s.grades.last.projects&c.projects
-- div,1
all c: Course | s in c.grades.last implies some c.grades.last.projects&c.projects
-- div,1
all s:Student,c:Course | (first.(s.c.grades) & s) implies (s.projects & c.projects)
-- div,1
all c : Course | some proj : c.grades.(max[Person.(c.grades)]).projects in c.projects
-- div,1
all c : Course | s : first[c.grades].Grade | c in s.enrolled implies c.projects in s.projects
-- div,1
all s:Student, c:Course, g:Grade | c->s->g in grades and g in last => some p:c.projects | c.s1.g
-- div,3
all s : Student, c : s.enrolled | s in c.grades.last implies (some p : Project | p in c.projects
-- div,1
all s : Student | all c : Course | s in c.grades.last implies (some p : Projet | s->p in projects)
-- div,1
all c: Course | some c.grades implies some s: Student | s in max[c.grades] and p.projects in c.projects
-- div,1
all s : Student, c : Course, g : Grade | max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
-- div,2
all s:Student,c:Course, some p:Project | s in c.grades.last implies (p in c.projects and p in s.projects)
-- div,1
all s:Student, c:Course, g:Grade | c->p->g in grades and g in last => some p:c.projects | p in s.projects
-- div,1
all s : Student, c : Course, g : Grade | g = max[s.(c.grades)] => one (s.projects & c.projects) s.projects)
-- div,1
all c : Course, s : Student | s.(c.grades) == max[Student.(c.grades)] implies some s.projects in c.projects
-- div,2
all c : Course | ((c.grades.(max[Person.(c.grades)])) in projects.(c.projects)) or no projects.(c.projects))
-- div,1
all s: Student, c: Courses in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c: Course s: Student | 
  	 (s.(c.grades)) = max[Student.(c.grades)] 
  		some (c.projects & s.projects)
-- div,1
all c: Course, s: Student | 
  	 (s.(c.grades)) = max[Student.(c.grades)] 
  		some (c.projects & s.projects)
-- div,1
all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #[c.projects&s1.projects]=1
-- div,1
all s: Student, c: Courses in c.grades.last implies ((some p : Project | p in c.projects and p in s.projects))
-- div,1
all c: Course | some c.grades implies some s: Student | s = max[c.grades]
-- div,2
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte(g,y))
-- div,1
all c: Course | some c.grades implies some s: Student | s in max[c.grades]
-- div,1
all s: Student, c: Courses | s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course, s : Student | s.(c.grades) == max[Student.(c.grades)] implies some x : s.projects| x in c.projects
-- div,1
all s : Student | all c : Course | s in c.grades.last implies some p : Project | p in c.projectsa and p in s.projects
-- div,1
all s1 : Student | all c : Course | s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects
-- div,1
all s1 : Student | all c : Course | s in c.grades.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course, s : c.grades.Grade | s.(c.grades) = max(Person.(c.grades)) implies c in (Course <: projects).(s.projects)
-- div,1
all s : Student, c : Course, g : Grade | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects) s.projects)
-- div,1
all s1: Student | all c1: Course | c1->s1 in grades.last implies (some p1: Project | c1->p1 in projects and s1->p1 in projects
-- div,2
all c : Course, s : Student | s.(c.grades) = max[(Student & $Professor).(c.grades)] implies some x : s.projects| x in c.projects
-- div,1
all c : Course, s : Student | s.(c.grades) = max[(Student - $Professor).(c.grades)] implies some x : s.projects| x in c.projects
-- div,1
all s : Student | all c : Course | 
  	s in c.grades.Grade.max() implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course, s : c.grades.Grade | 
  s.(c.grades) = max(Person.(c.grades))
  
  implies 
  c in (Course <: projects).(s.projects)
-- div,1
all s:Student, c:Course | s->c in enrolled and s in c.grades.last in implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course | some s : (c .~enrolled) | {
  	 max[Person . (c . grades)] = (s . (c . grades))
  	some (c . projects & s . projects)
-- div,1
all c : Course, s : enrolled.c | (some c.grades.s and all x->g : c.grades | ordering/gte[c.grades.s,g]) implies c in projects.(s.projects)
-- div,1
all c : Courses | some n : c.grades | (all nota : Person.(c.grades) | Person.n >= nota ) implies (some proj : n.Grade | proj in c.projects)
-- div,1
all c : Course, nota : Person.(c.grades) | some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
-- div,1
all s : Student | all c : Course | 
  	s in c.grades.Grade.max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g in c.grades.Person implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g in (c.grades.last) implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course, nota : Person.(c.grades) | (some n : c.grades | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
-- div,1
all c1 : Course |
	max [all g1 : Grades | all s1 : Student | c1->s1->g1]
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,1
all c : Course, s : c.grades.Grade | (all e : grades.Grade.e | ordering/gte[c.grades.s,c.grades.e]) implies c in (Course <: projects).(s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in (Person.(c.grades.last) implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c1 : Course |
	max [all g1 : Grades | all s1 : Student | g1:Grade|c1->s1->g1]
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,1
all c : Course, nota : Person.(c.grades) | (some grade : c.grades | gte[Person.grade,nota] ) implies (some proj : grade.Grade.projects | proj in c.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in (Person.(c.grades)).last() implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c1 : Course | all s1 : Student |
	(s1->c1 in enrolled and (max(g1:Grade|c1->s1->g1))) implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,1
all c1 : Course | all s1 : Student |
	(s1->c1 in enrolled and (max[g1:Grade|c1->s1->g1])) 
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,1
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : univ | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s] implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s)) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : enrolled.c | (s in c.grades.Grade) and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > s.grades.s)) implies c in (Course <: projects).(s.projects)
-- div,1
s2 in Student and p in Project and s1->p in Person <: projects and s2->p in Person <: projects implies all p1 : Project | p1!=p and s1->p1 in Person <: projects implies not s2->p1 in Person <: projects
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
  	(c1->s1->g1 in grades and 
    (some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1]))
  
	implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
      	(c1->s1->g1 in grades) implies 
    	(some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1])
  
	implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
   	(
  		(c1->s1->g1 in grades) implies 
    	(some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1])
  	)
		implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
  	(
      	(c1->s1->g1 in grades) implies 
    	(some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1])
	)
  
	implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
  		
  	c1->s1->g1 in grades implies 
  	(
      some p1:Project | some g2 : Grade | some s2 : Student | 
      	c1->s2->g2 in grades and g2=max[g1]
  	   	and c1->p1 in projects and s2->p1 in projects) 
	)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
  		
  	c1->s1->g1 in grades implies 
    
  	(
      (some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1])
  	   and (some p1 : Project | c1->p1 in projects and s2->p1 in projects) 
	)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | 
  		
  	c1->s1->g1 in grades implies 
  	(
      (some g2 : Grade | some s2 : Student | c1->s2->g2 in grades and g2=max[g1])
  	   and 
  	  (some p1 : Project | c1->p1 in projects and s2->p1 in projects) 
	)
-- div,1
