b
-- div,1
dsadasd
-- div,1
all c : curso
-- div,1
no Professor.enrolled.c
-- div,1
all x:Photo | one posts.x
-- div,1
Professor.enrolled = empty
-- div,1
enrolled.Courses in Student
-- div,1
P.enrolled.Course in Student
-- div,1
all s: Person | p in Student
-- div,1
all s: Person |  p in Student
-- div,1
all s : Students | enrolled.s
-- div,1
all x in Course | x in Person
-- div,1
all s: Student | one s.Courses
-- div,1
all x: Teacher | #(x.enrolled)=0
-- div,1
(Person-Student).enrolled = empty
-- div,1
all p : Professor | no x.enrolled
-- div,1
all s: Student | s in c.~enrolled
-- div,1
no (Person - Student).enrolled
-- div,2
all p->c : enrolled | p in Student
-- div,1
all x:Person | enrolled.c in Student
-- div,2
all c: Cours | enrolled.c in Student
-- div,1
all c : courses | c.grades in Student
-- div,1
All p: Person | p.enrolled in Student
-- div,1
no e:enrolled | p:Professor in Course
-- div,1
all p:person-Student |p.enrolled == 0
-- div,1
all c : courses | grades.c in Student
-- div,1
all  p : Professor | p.enrolled = NULL
-- div,1
all x:Person-Professor| all x.enrolled
-- div,1
all x : x in Course implies x in Person
-- div,2
no e:enrolled | p:Professor in e.Course
-- div,1
all p: Person - Student | np p.enrolled
-- div,1
All p : Person - Professor | p.enrolled
-- div,1
all p : Persom - Student | no p.enrolled
-- div,1
all c:Courses| c.grades.Person in Student
-- div,1
all p : Person - Professor | all p.enrolled
-- div,1
all x: Person - Student | x.enrolled == none
-- div,1
All p : Person - Professor | some p.enrolled
-- div,1
all s: Subject | some c: Course | s in c.plan
-- div,1
all p : Person - Students | #(p.enrolled) = 0
-- div,1
all x: Students, y: Course| x -> y in enrolled
-- div,1
all p : Professor | no p.enrolled
-- div,1
all p:Person, c:Couse| p.enrolled => p in Aluno
-- div,1
all p:person | p in Professor => p.enrolled = 0
-- div,1
all p : Person | all Professor not in p.enrolled
-- div,1
all p: person | p in Professor => p in p.teaches
-- div,1
all p:(Person - Professor) | p in enroled.Course
-- div,1
all p:person | p in Professor => p.enrolled == 0
-- div,2
all c:Course, all p:Person | enrolled.c & Student
-- div,1
all p:Person.enrolled in Course |
  		p == Student
-- div,1
all p:Person | some p.enrolled implies p in student
-- div,1
all s : Person | s not in Student imples #(enrolled)=0
-- div,1
all s : Person | p not in Student imples #(enrolled)=0
-- div,1
all p:Person, c:Couse| some p.enrolled => p in Student
-- div,1
all x: Person - Student | no x.enrolled
-- div,1
all c:Course, all p:Person | p.enrolled.course & Student
-- div,2
all p: Person, c:Courses| p in Student => c in p.enrolled
-- div,1
all x: Person - Student | all c: Course| c in not x.enrolled
-- div,1
all s: Person | p not in Student => p not in Course.~enrolled
-- div,1
all x:Person, c:Courses| x->c in enrolled implies x in Student
-- div,1
all x:Person, c:Course| x->c in enrolled implies x in Studente
-- div,1
all x : Person, c : Course | x in Studente and x.enrolled in c
-- div,1
all p:Person| c:Course | p->c in enrolled implies p in Student
-- div,1
all x: Person, all y: Course | x in Student => x in y.~enrolled
-- div,1
all x: Person | all c: course | c in x.enrolled => x in Student
-- div,1
all p : Person - Student | all c : courses | c not in p.enrolled
-- div,1
all x: Person, y: Courses| x->y in enrolled implies x in Student
-- div,1
all p : Person - Student | all c : Courses | c not in p.enrolled
-- div,1
all p : Person | p not in Student implies #(enrolled) = 0
-- div,2
all p : Person | c: Course | p->c in enrolled implies p in Student
-- div,1
all  p : Person | all c : Course | c in p.enrolled -> P is Student
-- div,1
all p: Person, c: Course | p not in Student => p not in enrolled[C]
-- div,2
all x : Person | all y : Course | x in enrolled.y implies x in student
-- div,1
all x: Person, all y: Course | x not in Student => x not in y.~enrolled
-- div,1
all p : Person, s : Student, c : Course | p.enrolled == c implies p in s
-- div,1
all x: Course, y: Student | y in y.Enrolled && Professor not in Professor.enrroled
-- div,1
all professor : univ | professor in Professor implies no professor->courses in enrolled
-- div,1
all prof : Person - Student | not prof in Person.enrolled.grades.Grade
-- div,1
all person : univ | all courses : Courses | person->courses in enrolled implies person in Student
-- div,3
all p: Person | p in Professor => p not in c.~enrolled
    all p: Person | p in Student => p in c.~enrolled
-- div,1
all p: Person | all c: Course | p in Professor implies (c not in p.enrolled) or p in Studend implies some c in p.enrolled
-- div,1
all p: Person | all c: Course | p in Professor implies (c not in p.enrolled)
    all s: Person | s in Student implies (some c in p.enrolled)
-- div,1
