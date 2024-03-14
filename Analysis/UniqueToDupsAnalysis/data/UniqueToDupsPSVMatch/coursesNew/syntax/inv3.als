some Course.p
-- div,1
all c : Course
-- div,1
some p.teaches
-- div,1
all c : Course |
-- div,3
Course = some Teacher
-- div,1
all x:Course, y:Person|
-- div,1
Courses = Person.teaches
-- div,1
all c : Course, t : Teacher
-- div,1
all x: Course | some x.grade
-- div,1
Courses in Professor.teaches
-- div,1
all c : Course, t : Teacher |
-- div,1
all x: Course | aome x.teaches
-- div,1
some Teacher in teaches.Course
-- div,1
all c : Courses | some teaches.c
-- div,1
all c : Course, some p : Professor
-- div,1
some p : Professor | p in teaches.c
-- div,1
all x:Courses | x in Professor.teaches
-- div,1
all c:Couse, t:Teacher | c in t.teaches
-- div,1
all c:Course, t:Teacher | c in t.teaches
-- div,1
all c : Course, t : Teacher | t.teaches = c
-- div,1
all x:Courses | some x in Professor.teaches
-- div,1
all c: Course | c in some Professor.teaches
-- div,1
all c:Course | some t:Teacher | c in t.teaches
-- div,1
all c.Curses | some t:Professor | t in c.grades
-- div,1
all c : Course, some p : Professor | c in Course
-- div,2
all c: Cource | some p:Professor| c in p.teaches
-- div,1
all c:Course | all p:Professor | p->c in courses
-- div,1
all c.Curses | some t:Professor | c in t.teaches
-- div,1
all c : Course, some t : Teacher | t.teaches = c
-- div,1
all c : Course | some Professor | c in p.teaches
-- div,1
all c:Curses | some t:Professor | c in t.teaches
-- div,1
all c:Courses | some t:Professor | c in t.teaches
-- div,1
all c : Course , some p : Person | p in c.teaches
-- div,1
all x : course | some y : person | y in teaches.x
-- div,1
all c : Course, t : Teacher | some t in teaches.c
-- div,2
all c:Courses | some p:Professor | c in p.teaches
-- div,2
all c : Courses , p : Person | lone p in c.teaches
-- div,2
chegaste a resolver?
?
@karpa
chegaste a resolver?
-- div,3
all c.Curses | (some t:Professor | c in t.teaches)
-- div,1
all x: Courses | some t:Professor | x in teaches.t
-- div,1
all x: Course | some p: Professor | p->c in teaches
-- div,1
all c:Course | some teacher:Person | c in t.teaches
-- div,1
all x:Course| some  z:Person | some y->x in teaches
-- div,1
all c : Course  p : Professor | some p in teaches.c
-- div,1
all c: Courses | some p: Professor | p in teaches.c
-- div,1
all c : Course, p : Professor | some p.teaches == c
-- div,1
all c: Courses | some p: Professor | c in p.teaches
-- div,1
all c: Courses | (some p:Professor | c in p.teaches)
-- div,1
all c : Course, some p : Professor | p->c in teaches
-- div,1
all c : Courses, some p : Professor | p in teaches.c
-- div,1
all c : Course | some p : Professor | c in p.tecahes
-- div,1
all x: Courses | some p: Professor | p->c in teaches
-- div,2
all c : Course | some t : Professor : c in t.teaches
-- div,1
all c : Course | some t : Professor | c in p.teaches
-- div,1
all c: Courses | (some p: Professor | c in p.teaches)
-- div,1
all c : Courses | some p : Professor | c in p.teaches
-- div,1
all c : Courses, some p : Professor | p->c in teaches
-- div,1
all c : Courses | (some p: Professor | c in p.teaches)
-- div,1
all c : Course, some t : Teacher | t.teaches = c.course
-- div,2
c : Course implies (some p : Professor | c in p.teaches)
-- div,1
all c : Course implies (some p : Professor | p.teaches.c)
-- div,1
all c : Course, some p : Person - Student | c in p.teaches
-- div,2
all c : Course| implies (some p : Professor | p.teaches.c)
-- div,1
all c : Course | implies (some p : Professor | p.teaches.c)
-- div,1
all c : Course implies (some p : Professor | c in p.teaches)
-- div,1
all c : Course | some t : Professor | c in professor.teaches
-- div,1
all c : Course| implies (all p : Professor | some p.teaches.c)
-- div,1
all c : Course | implies (some p : Professor | c in p.teaches)
-- div,1
all c: Course | (some p : Professor | c in professor.teaches  )
-- div,1
all c: Courses | (some p : Professor | c in professor.teaches  )
-- div,1
all x: Course | some t: Person | t in Professor && c in t.teaches
-- div,1
all c : Courses | some p : Person | p in teaches.c and p in Professor
-- div,1
all x:Course| some  z:Student-y , y:Professor-z | z->x in enrolled implies y->x in teaches and z!=y
-- div,1
all x:Course| one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
-- div,2
all x:Course, one y, z:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
-- div,1
all x:Course| one  z, y:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
-- div,1
all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches y in Professor
-- div,1
all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies y->x in teaches y in Professor
-- div,1
all x:Course| one  z, k:Person | z->x in enrolled and z in Student implies k->x in teaches k in Professor
-- div,1
