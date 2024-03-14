all x:Person
-- div,2
no (Person-Student).Grades
-- div,1
no (Person-Students).Grades
-- div,1
all x:Person, c :Course| x->
-- div,3
student in Course.grades.Grade
-- div,1
noCourse.grades.Grade & Professor
-- div,1
grades in Course,Student -> Grade
-- div,1
all c:Course | c.grades.p in Student
-- div,1
all c:Course | c.grades.p->g in Student
-- div,1
all c:Course | c.grades.left in Student
-- div,1
all a : Course.grades | left a in Student
-- div,1
all p:Person-Student | no p.enrolled->grade
-- div,1
all c:Course | c.grades.[Person] in Student
-- div,1
Course.grades.Grade not in (Person-Students)
-- div,1
all s:Student | g in s.enrolled.grades.Grade
-- div,1
all c : Course | all g : Grades | g.c in Student
-- div,1
all x:Person | x.(y.grades) implies x in Student
-- div,1
all p: Professors | all c: Course | no c.p.grades
-- div,1
all x: Course | all p->g: x.grades | p in Student
-- div,2
all g : Grade, p:Person | g in p.enrolled(p.grades)
-- div,1
all p:(Person-Student) | p not in Corse.grades.Grade
-- div,1
all c : Course | p->g : c.grades | p not in Professor
-- div,1
all c: Course, p: person | c.grades->p => p in Student
-- div,1
all p : Person - Student | no c : Courses | p in c.grades
-- div,1
no ourse.{c : Course, p : Person | some c.grades} & Student
-- div,1
all x:Person, g:Grades| x->g in grades implies x in Student
-- div,1
all c : Course | ((p->g) in c.grades) implies (p in Student)
-- div,1
all p:Person ,c:Course | p->* in c.grades implies p in Student
-- div,1
all p:Person ,c:Course | p->_ in c.grades implies p in Student
-- div,1
all p : Person g : Grade | g in p.enrolled implies p in Student
-- div,1
all u: User, g: Grade | u in Course.grades implies u in Student
-- div,1
all p:Person | p not in Student implies no some enrolled.grades
-- div,1
all c : Course | all g : Grade | p->g in c.grades => p in Student
-- div,1
all p : Person {p : Person, g : Grade | some grades.g} in Student
-- div,1
all p: Person, g: Grade | u in Course.grades implies u in Student
-- div,1
all p : Person, c: Course | g in p.(c.grades) implies p in Student
-- div,1
all p:Person,c:Course | some in (p & c.grades) implies p in Student
-- div,1
all x : Person | all y : Course | x.(c.grades) implies x in Student
-- div,1
all p : Person, c : Course | g in p.(c.grades) implies p in Student
-- div,1
p->g in {p : Person, g : Grade | some grades.g} implies p in Student
-- div,1
all p1 : Professor, c : Course |some p.c.grades implies p in Student
-- div,1
all x:Person | all z:Course | x in z.grade implies x not in Professor
-- div,1
all p1 : Professor, c : Course |some p1.(c.grades) implies p in Student
-- div,1
all p : Person, g : grade | g in p.enrolled.grades implies p in Student
-- div,1
all P:Person, c:Course, g:Grade | p in enrolled.c.g implies p in Student
-- div,1
all c : Course | par : c.grades | p->g in par implies p not in Professor
-- div,1
all p:Person, g:Grades, c:Course| c->p->g in grades implies p in Student
-- div,1
all p:Person | all c:Course | g:Grade | (c->p->g) implies (p in Student)
-- div,1
all p : Person | g : Grade | g in p.enrolled.grades implies p in Student
-- div,1
all p->g in {p : Person, g : Grade | some grades.g} implies p in Student
-- div,1
all p : Person | all g : grade | some g->p in Course implies p in Student
-- div,1
all c:Course, p:Person, g:Grade | c->p->g in gradesd implies p in Student
-- div,1
all p : Person | g : Grade | g in p.enrrolled.grades implies p in Student
-- div,1
all c : Course | (all p : Professor, all grades : Grade | no c->p->grades)
-- div,1
all p:Person c:Course, g:Grade | (c->p->g in grades) implies (p in Student)
-- div,1
all p : Person g : Grade | some g in p.enrolled.grades implies p in Student
-- div,1
all c:Course |(all s:Person,g:Grade | s->g  in c.grades implies p in Student
-- div,1
all c:Course |(all p:Person, g:Grade) |p ->g in c.grades implies p in Student
-- div,1
all c:Course |(all s:Person,g:Grade | s->g  in c.grades implies p in Student)
-- div,1
all c : Course | all g : Grade | all p : Person - Profesor | p->g in c.grades
-- div,1
all c : Course, p : Person, g : Grade | p->g in c.grades implies p in Student)
-- div,1
all c:Courses| all p:Person,g:c.grades| p->g in c .grades implies p in Student
-- div,1
all x: Person | all c: Course | some g: grade | g in grades(x) => x in Student
-- div,1
all p : Person | g : Grade | g in p.enrolled.grades.person implies p in Student
-- div,1
all p:Person | all c: Course | all g: Grades | c->p->g in grades => p in Student
-- div,2
all p : Person | all g: Grades, c: Course | p->g in c.grades implies p in Student
-- div,1
all c : Course (all p : Person, g:Grade | c->p->g in grades implies p in Student)
-- div,2
all c : Course |(all p : Person, g : Grade | p->g in c.grades implies p in Student
-- div,1
all c : Course | all p : Person | g : Grade | p->g in c.grades implies p in Student
-- div,1
all c : Course | all p:Person, g:Grade | p->g in course.grades implies p in Student
-- div,1
all c : Course | (all p : Person, g : Grade | p->g in c.grades implies p in Student
-- div,1
all c : Course | all p : Person, g : Grade | p->g in c.grades implies p in Student)
-- div,1
all c : Course | (all p : Person, g : grade | p->g in c.grades implies p in Student)
-- div,2
all c : Course | all p : Person | all g : Grade | p->g in c.grades implies p in Student)
-- div,1
all c : Course | all p : Person | (c in s.enrolled and #(grades)>0) implies c in Student
-- div,1
all c : Course | all p : Person | all g : Grades | p->g in c.grades implies p in Student
-- div,1
all g : Grade | all c : Course | all x : Person | x -> g in c.grade implies x in Student
-- div,1
all p : Person | all c : p.enrolled | some g : grade | p->g in c.grades implies p in Student
-- div,1
all p : Person | (p in Student => (p.grades = p.grades) and (p in Professor => p.grades = none)))
-- div,1
