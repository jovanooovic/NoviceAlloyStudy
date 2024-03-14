lone ~(grades.Grade)
-- div,1
all x: Student | one x.(Course.grades)
-- div,1
all s : Student | lone (grades.Grade).s
-- div,1
all s:Student| lone s.enrolled.grades
-- div,2
all x : Student | lone x.enrolled.grades
-- div,1
all x : Student | lone x.(x.enrolled.grades)
-- div,1
all s:Student| lone s.(s.enrolled.grades)
-- div,1
all p : Person, c : Course | some p.(c.grades)
-- div,1
all s:Student, c:Course| one s.(c.grades)
-- div,7
all p: Person, c: p.enrolled | lone c.grades
-- div,1
all s : Student, c : Course | #c.grades[s]=1
-- div,3
all p : Student , c : p.enrolled | lone c.grades
-- div,2
all s : Student, c : s.enrolled  | lone c.grades
-- div,1
all s: Student | all y: Course | one y.grades
-- div,1
all s: Student | all y: Course | one y.grades.s
-- div,1
all s : Student |
  		all c : Course |
  			one s.(c.grades)
-- div,1
all c: Course, g:Grade| lone (c.grades.g & Student)
-- div,1
all p : Student , c : p.enrolled | lone c.grades.Grade
-- div,1
all s : Student | all c : s.enrolled | lone c.grades
-- div,1
all x : Student | all y: x.enrolled | some y.grades
-- div,1
all x : Student | all y: x.enrolled | lone y.grades
-- div,1
all c : Course, g : Grade, s : Student | #c.grades=1
-- div,1
all c: Course, s: Student, g: Grade | one s.(c.grades)
-- div,1
all p:Person | lone g:Grade | p->g in p.enrolled.grades
-- div,1
all c: Course | all p: Person, g: Grade | p->g in c.grades
-- div,1
all s : Student, c : Course | one g:Grade | g in c.grades[s]
-- div,2
all x: Person, c: x.enrolled | lone (Person & Course.grades.Grade)
-- div,1
all s : Student, c : Course | one g : Grade | s->g in c.grades
-- div,2
all c: Course, p: Student | one g: Grade | p->g in c.grades
-- div,1
all p:Person, c:Course| some g:Grade| c->p->g in grades
-- div,1
all x:Student, c:Course| (some g:Grade| c->x->g in grades )
-- div,1
all s : Student, c : Course, g : Grade | s->g in c.grades and lone g
-- div,1
all s:Student, c:s.enrolled | one g:Grade | s->g in c.grades
-- div,1
all s : Student | lone {c : Course, p : Person | some c.grades}.s
-- div,1
all p : Person | lone g : Grade | all c : Course | p->g in c.grades
-- div,2
all c : Course | lone g : Grade | all s : Person | s->g in c.grades
-- div,1
all c : Course | all p : Student | all g : Grade | p->g in c.grades
-- div,1
all p : Student | lone g : Grade | all c : Course | p->g in c.grades
-- div,3
all s:Student | lone g:Grade | all c:Course | s->g in c.grades
-- div,1
all c : Course | lone g : Grade | all s : Student | s->g in c.grades
-- div,2
all x:Student | lone g:Grade | all z:Course | x->g in z.grades
-- div,2
all s:Student | lone g: Grade | all c:Course | c->s->g in grades
-- div,1
all s : Student, c : Course, g : Grade | g in c.grades[s] => #c.grades=1
-- div,3
all c : Course, g : Grade, s : Student | g in c.grades[s] => #c.grades=1
-- div,9
all s : Student | all g : Grade | one c : Course | lone s->g & c.grades
-- div,1
all s : Student | {c : Course, p : Person | some c.grades}.s in s.enrolled
-- div,1
all p:Person, c:Course | lone g:Grade | c->p->g in grades implies p in Student
-- div,1
all x:Person, c:Course|some g:Grade| x->c in enrolled and x in Student implies c->x->g in grades
-- div,1
all s:Student | lone g1,g2: Grade | all c:Course | c->s->g1 in grades and c->s->g2 in grades => g1=g2
-- div,1
all x:Student|all y:Course|one z:Grade | y in x.enrolled implies (x->z in y.grades or x->z not in y.grades)
-- div,1
all g1,g2:Grade | all s:Student | all c1,c2:Course | (s->g1 in c1.grades and s->g2 in c2.grades) implies c1!=c2
-- div,1
all g1,g2:Grade | all s:Student | all c1,c2:Course | (c1 in s.enrolled and c2 in s.enrolled and s->g1 in c1.grades and s->g2 in c2.grades) implies c1!=c2
-- div,1
