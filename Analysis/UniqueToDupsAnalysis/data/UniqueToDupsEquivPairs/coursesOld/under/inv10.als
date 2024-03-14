-- equiv pair start,56
iden in iden
-- div,1
no grades.Professor
-- div,1
no Professor & Grade
-- div,1
no grades.(Person-Student)
-- div,1
no (Person-Student).grades
-- div,3
no grades.Professor->Grade
-- div,1
no grades.(Professor->Grade)
-- div,2
no (Course.grades & enrolled)
-- div,1
all p : Person | p in Person
-- div,3
no Course.grades.(Person-Student)
-- div,1
no Professor & Course.grades.Person
-- div,2
all p : Professor | p in Professor
-- div,2
all u : Person-Student| u not in Grade
-- div,1
no (Person-Student) & Course.grades.Person
-- div,1
all x : Professor | no grades.(x->Grade)
-- div,1
all x:Person-Student | no x.grades
-- div,2
all p : Course.grades.Person | p in Grade
-- div,1
all c : Course | Grade.(c.grades) in Student
-- div,3
all p : Course.~(grades.Grade) | p in Grade
-- div,1
all p: Person | p in Grade implies p in Student
-- div,1
all c : Course | c.grades.Person in Student
-- div,2
all u : Person-Student| no u.grades.Grade
-- div,2
all p:Person | some grades.p implies p in Student
-- div,1
all u : Person-Student| u.grades.Grade=none
-- div,1
all p:Person | some Course.grades.p implies p in Student
-- div,1
all x:Person-Student, y:Grade | no x.grades.y
-- div,1
all u : Person-Student| no u.teaches implies u not in Grade
-- div,2
all u : Person-Student | u not in Professor implies u not in Grade
-- div,1
all c: Course, p,pe: Person | p in c.grades.pe implies p in Student
-- div,1
all p: Person, c: Course | p in (c.grades.Person) implies p in Student
-- div,1
all p:Person | all c:Course | p in c.grades.Person implies p in Student
-- div,1
all p: Person, c: Course, g: Grade | g in c.grades.p implies p in Student
-- div,1
all c : Course | all p : Person | p in c.grades.Person implies p in Student
-- div,3
all p: Person, c: Course,g: Grade | (p->c)->g in grades implies p in Student
-- div,1
all p:Person,c:Course,g:Grade | p->c->g in grades implies p in Student
-- div,2
all p : Person | p not in Student implies all c : Course | p->c->Grade not in grades
-- div,1
all p : Person, c : Course, g : Grade | (g in c.grades.Grade) implies p in Student
-- div,1
all p : Person | all c : Course | all g : Grade |p->c->g in grades implies p in Student
-- div,2
all p1 : Person | all c : Course | all g : Grade | p1->c->g in grades implies p1 in Student
-- div,1
-- equiv pair end
-- equiv pair start,3
all x : Professor-Student | no x->Grade & Course.grades
-- div,3
-- equiv pair end
-- equiv pair start,1
all x : Professor-Student | no x->Grade & (x.teaches).grades
-- div,1
-- equiv pair end
-- equiv pair start,7
all p : Person - Student, c : Course | p->Grade not in c.grades
-- div,1
all x: Person-Student, y:Course | y-> x-> Grade not in grades
-- div,1
all c : Course, p : Person | c.grades[p] = Grade => p in Student
-- div,1
all p : Person | p not in Student implies all c : Course | c->p->Grade not in grades
-- div,2
all person : Person | all course : Course | person->Grade in course.grades implies person in Student
-- div,2
-- equiv pair end
