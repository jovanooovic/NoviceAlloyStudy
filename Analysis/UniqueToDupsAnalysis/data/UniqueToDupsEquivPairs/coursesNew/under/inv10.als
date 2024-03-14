-- equiv pair start,37
no grades.Course
-- div,1
no grades.Professor
-- div,3
no Professor.grades
-- div,2
no Course.grades.Professor
-- div,2
all c:Course | c.grades.1 in Student
-- div,1
all c:Course| c.grades[0] in Student
-- div,1
all c : Course | no c.grades.Professor
-- div,1
all x : Person - Student | no x.grades
-- div,1
all c:Course | c.grades.Person in Student
-- div,2
all p1 : Professor, c : Course | no grades.p1
-- div,1
all p: Person | some grades.p implies p in Student
-- div,1
all x:Person| some grades.x implies x in Student
-- div,1
all p: Person | some grades[p] implies p in Student
-- div,1
all p1 : Professor, c : Course | no c.grades.p1
-- div,1
all p : Person | some Course.grades.p implies p in Student
-- div,1
all p: Professor | all c: Course | no c.grades.p
-- div,1
all p: Person | p not in Student => p not in Course.grades.Person
-- div,1
Person.{c : Course, p : Person | some c.grades} in Student
-- div,1
all x:Person, c:Course| some c.grades.x implies x in Student
-- div,1
all x: Person, y: Course | some y.grades.x implies x in Student
-- div,1
Professor.{c : Course, p : Person | some c.grades} in Student
-- div,1
all p:Person ,c:Course | #c.grades.p>0 implies p in Student
-- div,1
all p:Person ,c:Course | #c.grades.Person>0 implies p in Student
-- div,1
all x : Student | all y : Course | some x.(y.grades) implies x in Student
-- div,1
all p : Person | all g : Grade | g->p in Course.grades implies p in Student
-- div,1
all c: Course, p: Person,g:Grade | p in (grades.g.c) implies p in Student
-- div,1
all x:Person, c:Course, g:Grade| x->c->g in grades implies x in Student
-- div,1
all x : Student | all y : Course | some x.enrolled.(y.grades) implies x in Student
-- div,1
all x: Person, y: Course | some z: Grade | y.grades.x = z implies x in Student
-- div,1
all x: Person| all c: Course| all g: Grade| x in g.grades.c implies x in Student
-- div,1
all p : Person | all g : Grade | all c : Course | g->p in c.grades implies p in Student
-- div,1
all p : Person, g : Grade, c : Course | (p in enrolled.c and c in grades.p.g) implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,4
all p:Person,c:Course | p->Grade in c.grades implies p in Student
-- div,3
all p : Person | all c : Course | some g : Grade | p->g in c.grades implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1 : Professor, c : Course |some p1.(c.grades) implies p1 in Student
-- div,1
-- equiv pair end
-- equiv pair start,3
all p : Person, g : Grade | p->g in p.enrolled.grades implies p in Student
-- div,1
all p : Person | all c : p.enrolled | all g : Grade | p->g in c.grades implies p in Student
-- div,1
all x:Person, g:Grade, c:Course| x->c in enrolled and c->x->g in grades implies x in Student
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | all c : p.enrolled | some g : Grade | p->g in c.grades implies p in Student
-- div,1
-- equiv pair end
