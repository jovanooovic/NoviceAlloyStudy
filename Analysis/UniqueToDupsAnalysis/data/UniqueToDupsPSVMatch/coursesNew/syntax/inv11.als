no grades.Grades
-- div,1
no Students.Course.grades
-- div,1
all s:Student, g:Grade, c:Course | s->g->
-- div,1
all c : Course | p : c.grades.Grade | p in enrolled.c
-- div,3
all s:Student | no s->Grades & (Course-s.enrolled).grades
-- div,1
all st :Student, c:st.enrolled, g : Grade | p->g in c.grades
-- div,1
all p: Person, c: Course | c in p.enrolled => c in p.grades.dom
-- div,1
all x: Persona, y : Course | x in y.grades implies x in enrolled.y
-- div,1
all p: Person, c: Course | (c in p.enrolled <=> c in p.grades.dom)
-- div,1
all s:Students,g: Grade,c:Course| s->g in c.grades implies c in s.enrolled
-- div,1
all s : Student | all c : s.enrolled | ( some g : Grade | p->g in c.grades)
-- div,1
all c:Course |(all s:Student g:Grade | s->g in c.grades implies c in s.enrolled)
-- div,1
all c:Course |(all s:Student g:grade | s->g in c.grades implies c in s.enrolled)
-- div,1
all g : Grade, s : Student, c : Course | p->g in c.grades implies c in s.enrolled
-- div,1
all g : Grade, s : Student, c : Course | p->g in c.grades implies c in p.enrolled
-- div,1
all p: Person, c: Course |
(c in p.enrolled <=> c in (c: Course | c in p.grades))
-- div,1
all p: Person, c: Course | (c in p.enrolled <=> c in (c: Course | c in p.grades))
-- div,2
all s : Student, c : Course, g : Grade | c->p->g in grades implies c in s.enrolled
-- div,1
all s: Student| all c: Course| all g: Grade| c in s.enrolled implies x in c.grades.g
-- div,1
all x:Student | all y:Course | all z:Grade| x->z in y.grades implies y in x.enrolledm
-- div,1
all c: Course, p:Person-Professor, g: Grade | p->g in c.grades implies c in p.enrolled)
-- div,1
all c: Course | (all s : Student, g : Grade | p -> g in c.grades implies c in s.enrolled)
-- div,1
all c: Course | (all p: Person) | all g: Grade | p->g in c.grades implies c in p.enrolled
-- div,1
all c : Course | all p : Person | all g : Grade | p->g in c.grades implies c in p.emrolled
-- div,1
all s: Student | all c : Course | all g : Grade | p->g in c.grades implies c in s.enrolled
-- div,1
all c : Course | ( all g : Grade , p : Person | p->g in c.grades implies s in enrolled.c )
-- div,1
all c: Course | (all p: Person, g: Grade | p->g in c.grades implies c in p.enrolled)
-- div,6
all c: Course | (all p : Student, g : Grade | p -> g in c.grades implies c in p.enrolled)
-- div,1
