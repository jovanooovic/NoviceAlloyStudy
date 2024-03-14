all c
-- div,1
some Teacher
-- div,2
teaches.course
-- div,1
some teachs.Course
-- div,1
some teacher.Course
-- div,2
all c:Course | some
-- div,2
Courses in Professor
-- div,1
some teaches.Courses
-- div,1
Person.teachs = Course
-- div,1
teaches.Courses != none
-- div,1
teaches.Person = Courses
-- div,1
all c: Course | teaches.p
-- div,1
Courses in Person.teaches
-- div,2
Course in .Person.teaches
-- div,1
Teacher.teaches = Courses
-- div,1
Person.enrolled in Courses
-- div,1
no Courses - Person.teaches
-- div,1
Professor.teaches = Courses
-- div,1
no Couserse - Person.teaches
-- div,1
Course in (Teacher . teaches)
-- div,1
all c: Couse | some teaches.c
-- div,1
all x: Couse | some teaches.x
-- div,1
all c:Course | some teaches.C
-- div,1
some Profess.teaches & Course
-- div,1
all Course & teaches.Professor
-- div,1
some (Person-Students).teaches
-- div,1
Teaches in Professor -> Course
-- div,1
all c : Course | some teches.c
-- div,1
Course & some Professor.teaches
-- div,1
all t:Teachers| lone t in Course
-- div,1
all c : Courses | some teaches.c
-- div,2
all c in Course | some c.~teaches
-- div,1
teaches in Course -> some Teacher
-- div,1
teaches in Teacher some -> Course
-- div,1
Courses = Courses & Person.teaches
-- div,1
teaches in Profesor some -> Course
-- div,1
teaches in Person some -> Course
l
-- div,1
teacher in Professor some -> Course
-- div,2
teaches in Professor some -> Course
-- div,3
all c : Courses | teaches.c in Person
-- div,1
teaches in Person some -> set Course
l
-- div,1
all c : Course | c in Professor.teachs
-- div,1
all c: Courses | some (teaches.Course)
-- div,1
all c:Courses | c in Professor.teaches
-- div,2
teaches in Teacher some -> some Course
-- div,1
all c : Course | c in professor.teaches
-- div,1
all p:Professer,c:Course| c in p.teaches
-- div,1
all c : Courses | c in Professor.teaches
-- div,1
some (Person - Students) & teaches.Course
-- div,1
all c:Course | c.teaches in lone (Professor)
-- div,1
all c:Course | some teaches.c
-- div,2
all c : Course | c implies lone p : Professor
-- div,1
all  c:Courses, t:Professor | t->c in teaches
-- div,1
all x: Course some y: Person | x in y.teaches
-- div,1
all c:Course | some t:Teacher | c in t.teaches
-- div,1
all c: Course | p : Professor | p in teaches.c
-- div,1
all c:Courses | some p:Person | c in p.teaches
-- div,1
all x: Course some y: Teacher | x in y.teaches
-- div,1
some Professor | all c:Course | p->c in teaches
-- div,2
all c:Course | some p:Professsor | p->c teaches
-- div,1
all x: Course, some y: Teacher | x in y.teaches
-- div,2
all c: Course, some p: Person | p->c in teaches
-- div,1
p.~(Person<:Course) implies some p in Professor
-- div,1
all c:Course | some t:Teacher | t->c in teaches
-- div,1
all c: Course | some t: Teacher | c in t.teaches
-- div,1
all c: Course | some t:Teacher | c->t in teaches
-- div,1
some p : Professor | c : Course | c in p.teaches
-- div,1
all c : Course, some p : Professor | p.teaches.c
-- div,1
all c: Courses | some t:Teacher | c->t in teaches
-- div,1
all c:Couses | some p:Professor | p->c in teaches
-- div,1
all c: Course | some t: Teacher | x->t in teaches
-- div,1
all c : Course | some t : Professor | p.teaches.c
-- div,1
all c:Courses | some p:Professor | p->c in teaches
-- div,1
all c:Course | some p:Professsor | p->c in teaches
-- div,1
all c: Course | some p: Professor | p->c in teache
-- div,1
all c: Course | some t: Teachers | x->t in teaches
-- div,1
all c:Courses | some p: Professor | c in p.teaches
-- div,1
all c:Course | c.teaches in no (Person - Professor)
-- div,1
all c : Course, p : Professor | c in some p.teaches
-- div,1
all x: Course | some p: Profeesor | x->p in teaches
-- div,1
all c : Course, some p : Professor | c in p.teaches
-- div,1
all c : Course, some p : Professor | c in teaches.p
-- div,2
all c : Course | some t : Teacher | t->c in teaches
-- div,1
all c: Courses | some t: Teachers | x->t in teaches
-- div,1
all c : Courses, some p : Professor | c in p.teaches
-- div,1
all c : Courses | all p : Professor | c in p.teaches
-- div,2
all c : Couser | some p : Professor | p->c in teaches
-- div,1
all c : Course | some t : Teacher | t -> c in teaches
-- div,1
all c : Course | some p : Professor | p->c in teacher
-- div,1
all c : Courses | some p : Professor | c in p.teaches
-- div,3
all a : Courses | some b : Professor | a in b.teaches
-- div,1
all c : Course | some p : Professor | c1 in p1.teaches
-- div,1
all c : Courses | some p : Professor | p -> c in teaches
-- div,1
all c : courses | some p : Professor | p -> c in teaches
-- div,1
all c : Course | one p : Professor | some c i& p.teaches
-- div,1
all c : Course | lone p : Person | implies p in Professor
-- div,1
all c:Course | some p:Professor implies c -> p in teaches
-- div,1
all p : Professor, c : Courses | lone (p.teaches & teaches.c)
-- div,1
all x: Course some y: Person | y in Teacher and x in y.teaches
-- div,1
all p:Person ,c:Courses| no(p & Student) implies c in p.teaches
-- div,1
all x: Course some y: Person | y in Professor and x in y.teaches
-- div,1
all x: Course some y: Person | y in Professor and x in x.teaches
-- div,1
all x: Course, some y: Person | y in Professor and x in y.teaches
-- div,1
all c:Course | some p:Person | no (p & Student) implies c not in p.teachs
-- div,1
all c:Courses | some p:Person | no (p & Student) implies c not in p.teachs
-- div,1
all x : univ | x in Course implies some y : uni | y in Professor and y->x in enrolled
-- div,1
all x : univ | x in Courses implies some y : uni | y in Professor and y->x in enrolled
-- div,1
