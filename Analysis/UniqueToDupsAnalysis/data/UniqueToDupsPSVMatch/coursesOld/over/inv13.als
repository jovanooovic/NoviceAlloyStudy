all disj g1:Grade | #g1 = 0
-- div,1
grades.Grade in (Course <: projects).(~projects :> Student)
-- div,1
all c: Course | one (c.grades).max
-- div,1
all c: Course | some c.grades.max
-- div,1
all c : Course, s,g : univ | s->g in c.grades
-- div,1
grades.(max[Grade]) in projects.(~projects :> Student)
-- div,3
all c : Course | c in c.grades.last.(Person<:projects)
-- div,1
all s:Person, c: Course | some (s.projects & c.projects)
-- div,1
all c : Course | all s : Person |  s.(c.grades) in Student
-- div,1
all c: Course | some c.grades implies one c.grades.max
-- div,1
all c: Course | some c.grades implies some c.grades.max
-- div,1
all c : Course, s : c.grades.last | one (s.projects & c.projects)
-- div,1
all c : Course, s : c.grades.last | one c.projects & s.projects
-- div,1
all c : Course |(c.grades.(max[Person.(c.grades)])) in projects.(c.projects)
-- div,6
all c: Course | some c.grades implies some s: Student | s = max[c.grades]
-- div,2
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades)
-- div,1
all c1 : Course | all g1 : Grade |
  	one s1:Student  | c1->s1->g1 in grades and g1=max[]
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y])
-- div,1
all c : Course, s : c.grades.Grade | (all e : grades.Grade.c | ordering/gte[c.grades.s,c.grades.e]) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s : c.grades.Grade | (all e : c.grades.Grade | ordering/gte[c.grades.s,c.grades.e]) implies c in (Course <: projects).(s.projects)
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies c in (this/Course <: projects).(s.(Person <: projects))
-- div,1
all c : Course, s,g : univ | s->g in c.grades and (all x,y : univ | x->y in c.grades implies ordering/gte[g,y]) implies (some p : s.(Person <: projects) | p in c.(Course <: projects))
-- div,2
