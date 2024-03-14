no (Person-Student).Grade
-- div,1
grades in Student -> Grade
-- div,1
(Course.grades) in Student
-- div,2
(Person-Student)->Grade
-- div,1
all c:Course| c.grades in Student
-- div,1
all c:Course | c.grades in Student
-- div,2
all x : Grade | grades.x in Student
-- div,1
all a : Course.grades | a in Student
-- div,2
(Person-Student) not in Course.~grades
-- div,2
all s:Student | s.enrolled.grades.Grade
-- div,1
all p : Person, g : Grade | p in grades.g
-- div,4
all p: Person - Student | p not in grades
-- div,1
no Course.grades &(Person-Student->Grade)
-- div,1
no Course.grades.Grade in (Person-Student)
-- div,1
(Person-Student) not in Course.~grades.grades
-- div,1
all g:Grade, p:Person | g in p.enrolled.grades
-- div,1
all c : Course | all g : Grade | g.c in Student
-- div,1
all x : Grade | one y : Student | y->x in grades
-- div,1
all p: Professor | all c: Course | no c.p.grades
-- div,2
all c : Course | all g : c.grades | g in Student
-- div,2
all p1 : Professor, c : Course | no p1 & c.grades
-- div,1
all p : Person | #(p.grades != 0) => p in Student
-- div,1
all p1 : Professor, c : Course | no p1 in c.grades
-- div,1
{p : Person, g : Grade | some grades.g} in Student
-- div,1
all p : Course.grades | p.Grade in Student
-- div,1
all p1 : Professor, c : Course | p1 not in c.grades
-- div,2
all c : Course | no (c.grades & (Person - Student))
-- div,2
all c : Course | all g : Grade | g.grades in Student
-- div,1
all c : Course | all g : Grade | grades.g in Student
-- div,1
all x: Course | all p: x.grades->Grade | p in Student
-- div,1
all p:Person - Student , c:Course | p not in c.grades
-- div,2
all p:Person | p in grades.Grade implies p in Student
-- div,1
all g : Grade, p : Person| p -> g implies s in Student
-- div,1
all c: Course, p: Person | c.grades->p => p in Student
-- div,1
all p:(Person-Student) | p not in enrolled.grades.Grade
-- div,1
all c:Course,p:Person,g:Grade| p->g in c => p in Student
-- div,1
all p : Person - Student | no c : Course | p in c.grades
-- div,1
all x:Person, c:Course|  c.grades.x implies x in Student
-- div,1
all p : Person - Student, c : Course | p not in c.grades
-- div,1
all p : Person, g : Grade | some p.g implies p in Student
-- div,1
all x: Person | all c: Course | grades(x) => x in Student
-- div,1
all x: Person | all c: Course | c.grades.x => x in Student
-- div,1
all x:Person, c:Course| x in grades.c implies x in Student
-- div,4
all p: Person | p not in Student => p not in Course.grades
-- div,1
all x: Person | all c: Course |c.grades(x) => x in Student
-- div,1
all p:Person,c:Course | p in c.grades implies p in Student
-- div,1
all x:Person, y:Course | x.(y.grades) implies x in Student
-- div,1
all x:Person, g:Grade| x->g in grades implies x in Student
-- div,1
all x: Person | all c: Course | c.grades(x) => x in Student
-- div,1
all c: Course, p: Person | p in c.grades->p => p in Student
-- div,1
all p : Person - Student | no c : Course | p.grades != none
-- div,1
all p:Person, c:Course | p in c.grades implies p in Student
-- div,1
all p : Person - Student | no c : Course | c.grades != none
-- div,1
all p:Person ,c:Course | p in c.grades implies p in Student
-- div,2
all p : Person , g : Grade | p->g implies p not in Professor
-- div,1
all x: Person | all c: Course | grades(x) => c in x.enrolled
-- div,1
all p : Person | some p & Course.grades implies p in Student
-- div,1
all x:Person, g:Grade, c:Course| x->g->c implies x in Student
-- div,1
all x:Person, y:Course | x in (y.grades) implies x in Student
-- div,1
all p:Person ,c:Course | c.grades.Person implies p in Student
-- div,1
all x:Person, g:Grade, c:Course| c->x->g implies x in Student
-- div,2
all x:Person, g:Grade, c:Course| x->c->g implies x in Student
-- div,1
not Course.{c : Course, p : Person | some c.grades} & Professor
-- div,1
all x: Person, y: Course | some x.y.grades implies x in Student
-- div,1
all x: Person| all c: Course| x in grades.c implies x in Student
-- div,1
all x: Person| all c: Course| c in grades.c implies c in Student
-- div,1
all x: Person| all c: Course| c in grades.c implies x in Student
-- div,1
all p:Person,c:Course | p in (p & c.grades) implies p in Student
-- div,1
all x: Person| all c: Course| c in c.grades implies c in Student
-- div,1
all p:Person,c:Course | some (p & c.grades) implies p in Student
-- div,1
all c : Course, p : Person, g : Grade | p->g implies p in Student
-- div,1
all p:Person,c:Course | some  (p & c.grades) implies p in Student
-- div,1
not (Course.{c : Course, p : Person | some c.grades}) & Professor
-- div,1
all p : Person, c : Course | some p.c.grades implies p in Student
-- div,1
all p: Person, g: Grade | p in Course.grades implies p in Student
-- div,1
all p: Person | all c: Course | p in c.grades implies p in Student
-- div,1
all p:Person, c:Course, g:Grade | (c->p->g) implies (p in Student)
-- div,1
all p : Person | {p : Person, g : Grade | some grades.g} in Student
-- div,1
all x : Person | all y : Course | x.(y.grades) implies x in Student
-- div,1
all p : Person, g : Grade | p->g in p.enrolled implies p in Student
-- div,1
all c:Course, p:Person, g:Grade | p in c.grades implies p in Student
-- div,2
all p:Person, g:grades , c:Course | p->g in c.grades => p in Student
-- div,1
all p : Person | all g : Grade | g->p in Course implies p in Student
-- div,1
all x:Student, g:Grade | g in x.grades implies (x.enrolled.grades).gt
-- div,1
all p1 : Professor, c : Course |some p1.c.grades implies p in Student
-- div,1
all c : Course | all p : Person | p in grades[0] implies p in Student
-- div,1
all c : Course | all p : Person | p in grades[p] implies p in Student
-- div,1
all p:Person | all g:Grade | g in Course.p.grades implies p in Student
-- div,1
all p : Person - Student | no c : Course | p.grades & c.grades != none
-- div,1
{p : Person | {c : Course, p : Person | some c.grades}.p} in Professor
-- div,1
all p : Person - Student | all c : Course | p->Grade & c.grades = none
-- div,2
all x:Person | all z:Course | x in z.grades implies x not in Professor
-- div,1
all p : Person - Student | no c : Course | p->grades & c.grades != none
-- div,1
all p : Person, g : Grade | g in p.enrolled.grades implies p in Student
-- div,2
{p : Person | ({c : Course, p : Person | some c.grades}.p)} in Professor
-- div,2
all p:Person, c:Course, g:Grade | p in enrolled.c.g implies p in Student
-- div,1
all x :Person | all c : Course| all g: Grade | x->g implies x in Student
-- div,1
all p : Person, g : Grade | g in p.(enrolled.grades) implies p in Student
-- div,1
all x :Person | all c : Course| all g: Grade | x ->g implies x in Student
-- div,1
all x: Person | all c: Course | some g: Grade | grades(x) => x in Student
-- div,1
all p : Person | all g : Grade | some g->p in Course implies p in Student
-- div,1
all c : Course | all p : Person | p in grades[Person] implies p in Student
-- div,1
all x: Person | all c: Course | grades(x) => cin x.enrolled && x in Student
-- div,1
all x: Person | all c: Course | some g: Grade | c.grades(x) => x in Student
-- div,2
all x: Person | all c: Course | x in Student && grades(x) => c in x.enrolled
-- div,1
all p : Person| some g : Grade | g in p.enrolled.grades implies p in Student
-- div,1
all p:Person | all c:Course | all g:Grade | (c->p->g) implies (p in Student)
-- div,1
all x: Person | all c: Course | grades(x) => c in x.enrolled && x in Student
-- div,1
all c:Course| all p:Person,g:c.grades| p->g in c .grades implies p in Student
-- div,1
all c:Course| all p:Person,g: c.grades| p->g in c.grades implies p in Student
-- div,1
all x: Person | all c: Course | some g: Grade | g in grades.x => x in Student
-- div,1
all x: Person | all c: Course | some g: Grade | g in grades(x) => x in Student
-- div,1
all c:Course, p:Person, g:Grade | g in enrolled.p.grades  implies p in Student
-- div,1
all p:Person | all g:Grade | all c1:Course | (c1->p->g) implies (p in Student)
-- div,1
all x: Person | all c: Course | x in Student && c.grades(x) => c in x.enrolled
-- div,1
all g: Grade | all x: Person | all c: Course | g in c.grades(x) => x in Student
-- div,1
all x: Person | all c: Course | some g: Grade | g in c.grades(x) => x in Student
-- div,1
all p : Person, c : Course, g : Grade | some g in p.enrolled implies p in Student
-- div,1
all p : Person | all g : Grade | lone c : Course | g->p in c implies p in Student
-- div,1
all x :Student | all c : x.enrolled | x->c.grades in c.grades implies x in c.grades
-- div,1
all p : Person, c : Course, g : Grade | some g in p.enrolled.grades implies p in Student
-- div,1
all x:Person, g:Grade, c:Course| x->c in enrolled and c->g in grades implies x in Student
-- div,1
all p : Professor | (all c : Course | (all g : c.grades | no p->g))
-- div,1
all p : Person, c : Course, g : Grade | c in p.enrolled && g in c.grades implies p in Student
-- div,1
all p : Person | (p in Student => (p.grades = p.grades) and (p in Professor => (p.grades = none)))
-- div,1
all p : Person - Student | all c : Course | all g : c.grades | g not in p->Grade
-- div,1
all p : Person - Student | all c : Course | all g1 : c.grades | all g2 : p->Grade | g1 != g2
-- div,1
