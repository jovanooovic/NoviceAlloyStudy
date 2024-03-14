no Professor & Grades
-- div,1
Course.grades.Grade in
-- div,1
grades.Grade in Students
-- div,1
grades.Course in Student\
-- div,1
all c:Course | c.grades.person
-- div,1
Course.grades.Grade in Students
-- div,2
Course.grades.Grades in Student
-- div,1
no Couse.grades.Grade - Student
-- div,1
Courses.grades.Grade in Student
-- div,2
Course.grandes.Grade in Student
-- div,1
Course.grades.Grade in (Studernt)
-- div,1
no (Person-Student) & Course.garde
-- div,1
all (Person-Student).Course.grades
-- div,2
all Course.grades & Student.grades
-- div,1
no (Person-Student).Courses.grades
-- div,2
all g: Grades | grades.g in Student
-- div,1
all Course.grades & Student->grades
-- div,1
Course.grades.grade not in Professor
-- div,1
all Course.grades.Grade in (Studernt)
-- div,1
no Professor & Course.grades.professor
-- div,1
all c: Course | c.grades.Grade in Students
-- div,1
all c : Course | c.grades.~grade in Student
-- div,3
all p : Courses.grades.Grade | p in Student
-- div,1
all c : Course | c.grades.Graade in Student
-- div,1
no Courses.grades & (Person-Students)->grades
-- div,1
all p : Person-| p not in p.teaches.grades.Grade
-- div,1
all c : Course, p : Person | c.grades[p]==Student
-- div,1
all p: Person | p->g in grades implies p in Student
-- div,1
all p : Professor | all g : grade | p->g not in grades
-- div,1
all p: Student, g: Grade | Course.grandes implies p->g
-- div,1
all p : Person-Students | p not in Course.grades.Grade
-- div,1
all c : Course | all p : c.grade->Person | p in Student
-- div,1
all s: Student, c: Course, g: Grades | c->s->g in grades
-- div,1
all s: Student, c: Courses, g: Grades | c->s->g in grades
-- div,1
all p:Person | some Course.grandes.p implies p in Student
-- div,1
all p:Person | some p.(Courses.grades) implies p in Student
-- div,1
all p : Professor | all g : grade | p->g not in Course.grades
-- div,1
all p : Person - Student, c : Course | p->Grades not in c.grades
-- div,1
all p : Person, c : Course | c->o in grades implies p in Student
-- div,1
all p: Person, Course | p in (c.grades.Grades) implies p in Student
-- div,1
all c:Courses, p:Person, g:Grade | c->p->g in grades => p in Student
-- div,1
all p: Person, Course | p in ~(c.grades).Grades implies p in Student
-- div,1
all p: Person, c: Course | p in c.grades.Grades implies p in Student
-- div,1
all p: Person, c: Course | p in (c.grades.Grades) implies p in Student
-- div,1
all p:Person, c.Course, g:Grade | c in grades.g.p implies p in Student
-- div,1
all p : Person, c : Course | c->p.Grades in grades implies p in Student
-- div,1
all p:Person, c.Course, g:Grades | c in grades.g.p implies p in Student
-- div,1
all p:Person,c:Course,g:Grade | p2->c->g in grades implies p in Student
-- div,1
all p.Person, c.Course, g:Grades | c in grades.g.p implies p in Student
-- div,1
all p : Person, c : Course | no (p & Students) implies p not in c.grades
-- div,1
all p : Person, c : Course | no ( p & Student ) implies p not in c.grade
-- div,1
all p: Person, g: Grade | p->g in Course.grades implies p not in Teacher
-- div,1
all p : Person | some (p.enrolled.grades.Grades)&p => p not in Professor
-- div,1
all p : Person, c : Courses| no (p & Students) implies p not in c.grades
-- div,1
all p : Person | g : Grade | g in p.enrolled.grades implies p in Student
-- div,1
all p : Person, c : Courses | no (p & Students) implies p not in c.grades
-- div,1
all p : Person | all c : Cource | p in c.grades.Grade implies p in Student
-- div,1
all p: Person, c: Course, g: Grade | (c->p->g) in Grades implies p in Student
-- div,1
all p: Person, c: Course: g: Grade | (c->p->g) in Grades implies p in Student
-- div,1
all p : Person, c: Course, g: Grade | c -> p -> g in Grades => p not in Professor
-- div,1
all p : Person, c : Course, g : Grade | p in Student implies c -> s -> g in grades
-- div,1
all c:Course, p:Person,g:Grade | g in p1.enrolled.grades implies p not in Professor
-- div,1
all p : Person, c : Course, g : Grade | (c->p->g in grades) implies p not in Teacher
-- div,1
all c: Course | all p: Person | all g: Grades | c->p->g in grades implies p in Student
-- div,1
all p1 : Person | all c : Course | all g : Grades | p1->c->g in grades implies p1 in Student
-- div,1
all p : Person | c : Course | g : Grade | c in p.enrolled and g in p->c.grades implies p in Student
-- div,1
all p1 : Person | all c1 : Course | all g1 : Grades|
  	(c1->p1->g1 in grades) implies (p1 in Student)
-- div,1
all person: Person | all course: Course | all grade: Grade | person->grade in course.grades (implies person in Student
-- div,2
all person: Person | all course: Course | all grade: Grade | person->grade in course.grades (implies person in Student)
-- div,1
grades : Person -> Grade
	
  	all p,c,g : univ | p in Person and c in Course and g in Grade and c->p->g in grades implies p in Student
-- div,1
