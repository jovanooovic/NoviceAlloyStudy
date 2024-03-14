Course.grades.Grade in Student
-- div,33
Course.grades in Student->Grade
-- div,3
grades in Course->Student->Grade
-- div,11
Grade.~(Course.grades) in Student
-- div,1
no Course.grades.Grade - Student
-- div,2
no (Person-Student).(Course.grades)
-- div,7
no Course.grades.Grade & Person-Student
-- div,1
no (Person-Student) & Course.grades.Grade
-- div,7
no Course.grades & (Person-Student)->Grade
-- div,13
all c:Course | c.grades.Grade in Student
-- div,18
all p : Course.grades.Grade | p in Student
-- div,4
all c : Course | no (c.grades).Grade - Student
-- div,1
all c : Course | no Grade.~(c.grades) - Student
-- div,1
all p : Person-Student | p not in Course.grades.Grade
-- div,2
all p:Person | some p.(Course.grades) implies p in Student
-- div,5
all x : Course | no x.grades & (Person-Student)->Grade
-- div,1
all p: Person | p in Course.grades.Grade implies p in Student
-- div,4
all p:Person-Student, c:Course | p not in c.grades.Grade
-- div,3
all p : Person, c : Course | some p.(c.grades) implies p in Student
-- div,1
all p: Person - Student , c: Course | no (p-> Grade & c.grades)
-- div,2
all c: Course, p: Person | p in c.grades.Grade implies p in Student
-- div,1
all p:Person, c:Course | p in c.grades.Grade implies p in Student
-- div,4
all p:Person,c:Course | c->p in grades.Grade implies p in Student
-- div,1
all p: Person, g: Grade | p->g in Course.grades implies p in Student
-- div,2
all p : Person - Student, c : Course, g : Grade | p->g not in c.grades
-- div,2
all x:Person-Student, y:Course, z:Grade | y->x->z not in grades
-- div,1
all p : Person | all c : Course | p in c.grades.Grade implies p in Student
-- div,2
all c : Course | all p : Person | p in c.grades.Grade implies p in Student
-- div,8
all p: Person, c: Course, g: Grade | p in c.grades.g implies p in Student
-- div,1
all c: Course, p: Person, g:Grade | p in c.grades.g implies p in Student
-- div,2
all p:Person, c:Course, g:Grade | c in grades.g.p implies p in Student
-- div,3
all p : Person | all g : Grade | p->g in Course.grades implies p in Student
-- div,1
all c : Course, p : Person, g : Grade | g in c.grades[p] => p in Student
-- div,2
all c:Course, p:Person, g:Grade | c->p->g in grades => p in Student
-- div,5
all p: Person, g: Grade, c: Course | c->p->g in grades implies p in Student
-- div,2
all p:Person,c:Course,g:Grade | c->p->g in grades implies p in Student
-- div,15
all p : Person, c : Course, g : Grade | p not in Student implies c->p->g not in grades
-- div,1
all p : Person, c : Course, g : Grade | (p in c.grades.Grade) implies p in Student
-- div,1
all p:Person | p not in Student implies all c:Course, g:Grade | c->p->g not in grades
-- div,2
Course.grades.Grade in Student
  	
  	all p : Person | p in Course.grades.Grade implies p in Student
-- div,1
all p:Person | all c:Course | all g:Grade | p -> g in c.grades implies p in Student
-- div,3
all c : Course | all p : Person | all g : Grade | p->g in c.grades implies p in Student
-- div,3
all p: Person | all g: Grade | all c: Course| p -> g in c.grades implies
  	p in Student
-- div,1
all p:Person| all c:Course| all g:Grade| c->p->g in grades implies p in Student
-- div,4
all c: Course | all p: Person | all g: Grade | c->p->g in grades implies p in Student
-- div,1
all p: Person | all g: Grade | all c: Course | c->p->g in grades implies p in Student
-- div,1
all p1 : Person | all c : Course | all g : Grade | c->p1->g in grades implies p1 in Student
-- div,1
all p,c,g : univ | p in Person and c in Course and g in Grade and c->p->g in grades implies p in Student
-- div,2
all c : Course | all p : Person | all grade : Grade | (p -> grade in c.grades) implies (p in Student)
-- div,1
all p1 : Person | all c1 : Course | all g1 : Grade | (c1->p1->g1 in grades) implies (p1 in Student)
-- div,9
all s1: Person | all c1: Course | all g1: Grade | (c1->s1->g1 in grades) implies s1 in Student
-- div,1
all person: Person | all course: Course | all grade: Grade | person->grade in course.grades implies person in Student
-- div,2
