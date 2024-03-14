some Grade.last
-- div,1
all g:Grade | g > 0
-- div,1
all c: Course | first
-- div,2
all c:Course | c.grades
-- div,1
all c: Course | c.grades.max
-- div,1
all c: Course | c.grades.first
-- div,1
all disj g1, g2:Grade | g1 > #0
-- div,2
all c : Course | last[c.grades]
-- div,1
all c : Course | c.grades.first
-- div,1
all disj g1, g2:Grade | g1 > g2
-- div,1
all c:Course | Person.(c.grades)
-- div,1
all c:Course | max[Person.(c.grades)]
-- div,2
all p: Project | (Course <:projects).p
-- div,2
all c : Course | last[Person.(c.grades)]
-- div,1
all c : Course | c.grades.first & Person
-- div,1
all c: Course | c.(c.grades.max.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades)
-- div,1
all c : Course | c in c.grades.last.projects
-- div,2
all c : Course | first[c.grades] in c.projects
-- div,1
all c:Course | (c.grades).max[Person.(c.grades)]
-- div,2
all c : Course | c.grades.last in ((c.projects))
-- div,1
all c : Course | last[Person.(c.grades)] in Grade
-- div,2
all c : Course | larger[Person.c.grades] in Grade
-- div,1
all c: Course | some c.grades implies c.grades.max
-- div,1
all c : Course | Grade.last[c.grades] in enrolled.c
-- div,1
all c:Course | no (c.grades).max[Person.(c.grades)]
-- div,1
all c : Course | c in c.grades.last.Person<:projects
-- div,2
all c : Course | first[c.grades].Grade in c.projects
-- div,2
all c : Course | last[c.grades].Person in enrolled.c
-- div,1
all c : Course | last[c.grades].Person in projects.c
-- div,1
all s: Student, c: Course | s in c.grades.Grade.last
-- div,1
all c : Course | first[c.grades.Grade] in c.projects
-- div,1
all c : Course | (last[c.grades]).Grade in enrolled.c
-- div,1
all c : Course | c.grades in ((c.projects).~projects)
-- div,1
all c : Course | Grade.(last[c.grades]) in enrolled.c
-- div,1
all c : Course | Person.(last[c.grades]) in enrolled.c
-- div,1
all c : Course | all s : Person |  first[s.(c.grades)]
-- div,1
all c : Course | (last[c.grades]).Person in enrolled.c
-- div,1
all c : Course | c.grades.last in (Person.(c.projects))
-- div,2
all c : Course | (last[c.grades]) in c.projects.Project
-- div,1
all c : Course | (last[c.grades]).projects in projects.c
-- div,1
all c : Course | (last[c.grades]) in (c.projects).Project
-- div,1
all c: Course | lone c.projects in c.grades.first.projects
-- div,1
all c : Course | c.grades.max[Person.(c.grades)] in Person
-- div,2
all c : Course | c.grades.larger[Person.c.grades] in Student
-- div,1
all c : Course | larger[Person.c.grades].c.grades in Student
-- div,2
all c : Course | (c.grades).max[Person.(c.grades)] in Person
-- div,1
grades.max[Grade] in Course <: projects.~projects :> Student
-- div,2
all c : Course | last[c.grades].Person in projects.c <: Person
-- div,1
all c : Course | c in c.grades.last.projects.Course:>~projects
-- div,1
all c : Course | c in c.grades.last.projects.Course<:~projects
-- div,1
all c : Course | c in c.grades.last.projects.~Course<:projects
-- div,1
grades.max[Grade] in (Course <: (projects.~projects) :> Student)
-- div,1
grades.max[Grade] in (Course <: projects).(~projects :> Student)
-- div,2
all x : Course | some first[x.grades].Grade.projects & x.projects
-- div,4
(grades.max[Grade]) in (Course <: projects).(~projects :> Student)
-- div,2
all c : Course , n : c.grades.last | some n.projects in c.projects
-- div,1
all c : Course | (last[c.grades]).projects & Student in c.projects
-- div,1
all c : Course | (last[c.grades]) in (c.projects).Project <: Person
-- div,1
all c : Course | some c.projects.(c.grades.(max[Person.(c.grades)]))
-- div,2
all c: Course | some c.grades implies some c.(c.grades.max.projects)
-- div,1
all s:Person, c: Course | s->Grade implies (s.projects & c.projects)
-- div,1
all s:Student, c: Course | c.grades implies (s.projects & c.projects)
-- div,1
all s:Person, c: Course | some (s.projects & c.projects & s.c.grades)
-- div,1
all s:Person, c: Course | some (s.projects & c.projects && s.c.grades)
-- div,1
all s:Student, c: Course | c.grades.s implies (s.projects & c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) iff (s.projects & c.projects)
-- div,1
all s:Student,c:Course | first.s.c.grades implies s.projects & c.projects
-- div,1
all s:Student, c: Course | (s.c.grades) implies (s.projects & c.projects)
-- div,1
all c : Course | Person.last[c.grades] in projects.(c.projects) <: Person
-- div,1
all c : Course | c.grades.last[Person.(c.grades)] in projects.(c.projects)
-- div,2
all c : Course | c.grades.last(Person.(c.grades)) in projects.(c.projects)
-- div,2
all s:Student, c: Course | c.grades -> s implies (s.projects & c.projects)
-- div,1
all s:Student, c: Course | first.c.grades implies (s.projects & c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) implies s.projects & c.projects
-- div,2
all c : Course | last[Person.(c.grades)] in projects.(c.projects) <: Person
-- div,1
all s: Student | all c: Course | s in c.grades.last implies s in c.projects
-- div,1
all x : Course | some x.grades.first[Person.x.grades].projects & x.projects
-- div,2
all s: Student, c: Course | s.grades.last => some (c.projects & s.projects)
-- div,2
all c: Course, s: Student | s in c.grades.last implies s.projects&c.projects
-- div,3
all c : Course | c.grades.(last[Person.(c.grades)]) in projects.(c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) implies (c.projects &s.projects)
-- div,2
all c: Course | some c.grades.last implies c.grades.last.projects&c.projects
-- div,1
all s:Person, c: Course | first.(s->Grade) implies (s.projects & c.projects)
-- div,1
all c : Course | (c.grades).last[Person.(c.grades)] in projects.(c.projects)
-- div,2
all s:Student,c:Course,s1:first.s.c.grades | some (s1.projects & c.projects)
-- div,1
all s:Student, c: Course | (s.c.grades) & s implies (s.projects & c.projects)
-- div,1
all s:Person, c: Course | ((s.c.grades) & s)implies (s.projects & c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) implies (c.projects & s.projects)
-- div,1
all s:Student,c:Course,s1:first.(s.c.grades) | some (s1.projects & c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) implies (s.projects in c.projects)
-- div,1
all s:Student, c: Course | first[c.grades.s] implies (s.projects & c.projects)
-- div,1
all s : Student | all c : Course | s in first.c.grades implies s in c.projects
-- div,1
all s:Student, c: Course | first.(s.c.grades) implies (s.projects & c.projects)
-- div,1
all s:Person, c: Course | s.(c.grades) = last implies  (s.projects & c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) =s implies (c.projects & s.projects)
-- div,1
all c: Course, s: Student | s.c.grades = last implies some s.projects&c.projects
-- div,1
all s : Student | all c : Course | s in first.(c.grades) implies s in c.projects
-- div,1
all s: Student | all c: Course | s in c.grades.last implies some s in c.projects
-- div,1
all s:Student, c: Course | first.c.grades implies some (s.projects & c.projects)
-- div,1
all c : Course | all s : Person |  s.(c.grades) implies s.projects in c.projects
-- div,1
all c : Course | ((c.grades).(last[Person.(c.grades)])) in projects.(c.projects)
-- div,1
all s:Student, c:Course | s in c.grades.last implies c in s.projects & c.projects
-- div,2
all s:Student,c:Course | first.(s.c.grades) & s implies (s.projects & c.projects)
-- div,1
all s:Student, c:Course | s in c.grades.last implies c in s.enrolled & c.projects
-- div,1
all s:Student, c: Course | first.c.grades.Grade implies (s.projects & c.projects)
-- div,1
all s:Student, c: Course | first.c.grades.Person implies (s.projects & c.projects)
-- div,1
all s:Student, c: Course | c.grades.s.first implies some (s.projects & c.projects)
-- div,1
all s:Student, c: Course | first.c.grades.s implies some (s.projects & c.projects)
-- div,2
all s:Student, c: Course | first[c.grades.s] implies some (s.projects & c.projects)
-- div,1
all s:Student,c:Course | (first.(s.c.grades) & s) implies (s.projects & c.projects)
-- div,1
all s:Student, c: Course | first.(s.c.grades) = s implies (s.projects & c.projects)
-- div,2
all c : Course | all s : Person |  first[c.grades] implies s.projects in c.projects
-- div,2
all c : Course, s : c.grades.max[Student.(c.grades)] | one (c.projects & s.projects)
-- div,1
all s : Student | all c : Course | s in first.c.grades.Grade implies s in c.projects
-- div,2
all s:Student, c: Course | first.c.grades = s implies some (s.projects & c.projects)
-- div,1
all c : Course | all s : Person |  first[c.grades.s] implies s.projects in c.projects
-- div,1
all c : Course | all s : Person |  first[grades.c.s] implies s.projects in c.projects
-- div,1
all c : Course | all s : Person |  first[s.c.grades] implies s.projects in c.projects
-- div,2
all s:Student, c: Course | (first.(s.c.grades) & s) implies (s.projects & c.projects)
-- div,1
all s:Student, c: Course | first.c.grades.Grade implies some (s.projects & c.projects)
-- div,1
all c : Course | c.grades.last[Person.(c.grades)] in (Person <: projects).(c.projects)
-- div,2
all s : Student | all c : Course | s in first.(c.grades.Grade) implies s in c.projects
-- div,1
all c : Course | all s : Student |  first[c.grades.s] implies s.projects in c.projects
-- div,1
all c : Course | all s : Person |  first[s.(c.grades)] implies s.projects in c.projects
-- div,2
all s:Student, c: Course | c.grades.Person.first implies some (s.projects & c.projects)
-- div,1
all s:Student, c: Course | first.c.grades.Student implies some (s.projects & c.projects)
-- div,1
all c : Course | (c.grades).last[Person.(c.grades)] in (Person <: projects).(c.projects)
-- div,1
all s:Student,c:Course | first.(s.c.grades) implies s.projects.Person & c.projects.Person
-- div,1
all c : Course | all s : Person |  first[c.grades.Grade] implies s.projects in c.projects
-- div,1
all c : Course | all s : Student |  first[c.grades.Grade] implies s.projects in c.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled and s in first.c implies s in c.projects
-- div,1
all c : Course | all s : Student |  first[c.grades.Person] implies s.projects in c.projects
-- div,1
all c : Course | all s : Student |  first[c.grades.Student] implies s.projects in c.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled and s = last.Grade implies s in c.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled and s in last.Grade implies s in c.projects
-- div,1
all c : Course | all s : Person |  first[Grade] = s.(c.grades) implies s.projects in c.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled and s in first.grades implies s in c.projects
-- div,3
all s : Student |all c : Course | s in c.grades.Grade.last implies c.projects&s.projects != none
-- div,1
all c : Course | one s : first[c.grades].Grade | c in s.enrolled implies c.projects in s.projects
-- div,1
all c : Course, s : Student | last(Person.c.grades) = s.c.grades implies c in s.projects.~projects
-- div,1
all s : Student, c : Course | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects)
-- div,1
all c : Course, s : Student | last(Person.(c.grades)) = s.c.grades implies c in s.projects.~projects
-- div,1
all s: Student, c: Course | s in enrolled.c and s.(c.grades).last implies some s.projects&c.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled and last.grades.Grade = s implies s in c.projects
-- div,1
all s : Student | all c : Course | c in s.enrolled and s in first.grades.Grade implies s in c.projects
-- div,1
all s: Student, c: Course | s in enrolled.c and (s.(c.grades)).last implies some s.projects&c.projects
-- div,1
all s:Student,c:Course,p:Project | s in c.grades.last implies some p in c.projects and p in s.projects
-- div,1
all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #c.projects&s1.projects=1
-- div,1
all c : Course | some projects.(c.projects) => (c.grades.(max[Person.(c.grades)])) in projects.(c.projects)
-- div,1
all c : Course | ((c.grades.(max[Person.(c.grades)])) in projects.(c.projects)) or no projects.(c.projects)
-- div,1
all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies #(c.projects&s1.projects)=1
-- div,1
all s : Student, c : Course, g : Grade | s = c.grades.max[Student.(c.grades)] => one (s.projects & c.projects)
-- div,1
all s : Student | all c : Course | all g : c.grades | c in s.enrolled and s in first.g implies s in c.projects
-- div,1
all s : Student | all c : Course | all g : Grade | (s->g) in max.c.grades implies c.projects&s.projects != none
-- div,1
all s : Student | all c : Course | all g : Grade | s in max.c.grades.Grade implies c.projects&s.projects != none
-- div,1
all s : Student |all c : Course |all p : Project | s in c.grades.Grade.last implies c.projects&s.projects != none
-- div,1
all s : Student,c : Course,p : Project |
  		s in c.grades.last implies (some p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | all g : Grade | all p: c.projects&s.projects | (s->g) in max.c.grades implies #p=1
-- div,2
all s : Student |all c : Course |all p : Project | s in c.grades.Grade.last implies p in s.projects and p in c.projects
-- div,1
all s : Student | all c : Course | s in c.grades.last implies (some p : Project | p->c in projects and p->s in projects)
-- div,2
all s : Student, g : Grade, c : Course | one p : Project | s->g in c.grades.last implies p in s.projects and p in c.projects
-- div,1
all s: Student, c: Course, g: Grade, proj: Project | s->g in c.grades.last and proj in c.projects implies proj in s.projects
-- div,2
all s:Student, c:Course, p: Project | s in c.grades.Grade.last and p in c.projects and c in s.enrolled implies p in s.projects
-- div,1
all c : Course, p : Project, disj s,s2 : Student, g : Grade | c.grades[s] > c.grade[s2] => p in s.projects and p in c.projects
-- div,2
all s : Student | all g : Grade | all c : Course | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
-- div,1
all s : Student | all c : Course | 
  	s in c.grades.Grade.max implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
all s : Student | all c : Course | 
  	s in c.grades.Person.max implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
all c : Course, s : Student | s.(c.grades) = max[(Student & ~Professor).(c.grades)] implies some x : s.projects| x in c.projects
-- div,1
all s : Student | all c : Course | 
  	s in c.grades.Grade.max[] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | 
  	s in max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | 
  	s in c.grades.Person.max[] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course, s : enrolled.c | not (some e : enrolled.c | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
-- div,1
all s : Student | all c : Course | 
  	s in c.grades.max[c.grades.Person] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course | some n : c.grades | (all nota : Person.(c.grades) | Person.n >= nota ) implies (some proj : n.Grade | proj in c.projects)
-- div,2
all c : Course, s : c.grades.Grade | not (some e : c.grades.Grade | c.grades.e > s.grades.s) implies c in (Course <: projects).(s.projects)
-- div,2
all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade | proj in c.projects)
-- div,1
all s : Student | all g : Grade | all c : Course | all g : Grade | g = max.c.grades and s->g in c.grades implies c.projects&s.projects != none
-- div,1
all c : Course | some s : Student | s in c.grades
	all c : Course | some s : Student | no (s.(c.grades)).next implies s.projects in c.projects
-- div,1
all s : Student | all g : Grade | all c : Course | all g : Grade | s->g in c.grades and g = max.c.grades implies c.projects&s.projects != none
-- div,1
all c1 : Course |
	max [all g1 : Grade | all s1 : Student | c1->s1->g1]
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,1
all s : Student | all c : Course | some g1:Grade | 
  	g1 = max[c.grades.Grade]  implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in c.Person.grades implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies c in projects.(s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade | 
  	g1 in max[c.grades.Grade] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 = max[c.grades.Grade] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 max[Person.(c.grades)] implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in c.grades.Person.last implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in Person.(c.grades.last) implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in last.Person.(c.grades) implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in Person.(c.grades).last implies (some p : Project | p in c.projects and p in s.projects)
-- div,3
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in (Person.(c.grades)).last implies (some p : Project | p in c.projects and p in s.projects)
-- div,4
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in last.(Person.(c.grades)) implies (some p : Project | p in c.projects and p in s.projects)
-- div,2
all s : Student | all c : Course | some g1 : Grade |   
  	g1 in (Person.(c.grades).last) implies (some p : Project | p in c.projects and p in s.projects)
-- div,1
all c1 : Course |
	max [all g1 : Grade | all s1 : Student | c1->s1->g1 in grades]
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,2
all c1 : Course |
	all g1 : Grade | all s1 : Student | max [ c1->s1->g1 in grades]
  	implies (some p1 : Project|c1->p1 in projects and s1->p1 in projects)
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies c in Course <: projects.(s.projects)
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies (some p : s.projects | p in c.projects)
-- div,1
all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and g1>=g implies (one p:Project | c->p in projects and s->p in projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student |
  	c1->s1->g1 in grades and max[g1] implies (some p1 : Project | c1->p1 in projects and s1->p1 in projects)
-- div,1
all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and (g>=g) implies (one p:Project | c->p in projects and s->p in projects)
-- div,2
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies c in (this/Course <: projects).(s.projects)
-- div,1
all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and g1 >= g implies (one p:Project | c->p in projects and s->p in projects)
-- div,1
all s:Student,c:Course,g:Grade| one g1:Grade | c->s->g1 in grades and c->s->g in grades and (g1 >= g) implies (one p:Project | c->p in projects and s->p in projects)
-- div,1
all c : Course, nota : Person.(c.grades) | some n : c.grades, proj : n.Grade.projects | gte[Person.n,nota] implies proj in c.projects
-- div,2
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e > c.grades.s) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and c.grades.e >= c.grades.s) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : enrolled.c | s in c.grades.Grade and not (some e : enrolled.c | e in c.grades.Grade and gt[c.grades.e,c.grades.s]) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course ,n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
-- div,2
all c : Course, nota : Person.(c.grades) | some n : c.grades | gte[Person.n,nota] implies (some proj : n.Grade.projects | proj in c.projects)
-- div,1
all c : Course | some n : c.grades | (all nota : Person.(c.grades) | gte[Person.n,nota] ) implies (some proj : n.Grade.projects | proj in c.projects)
-- div,5
all c : Course, nota : Person.(c.grades) | some grade : c.grades | gte[Person.grade,nota]  implies (some proj : grade.Grade.projects | proj in c.projects)
-- div,1
all c1 : Course | all g1 : Grade | all s1 : Student | one g2 : Grade | one s2 : Student |
  	c1->s1->g1 in grades and c1->s2->g2 and g2=max[g1]
  
  	
  	
	implies (some p1 : Project | c1->p1 in projects and s2->p1 in projects)
-- div,1
