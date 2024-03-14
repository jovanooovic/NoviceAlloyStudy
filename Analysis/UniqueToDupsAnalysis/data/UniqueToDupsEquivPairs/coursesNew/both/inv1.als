-- equiv pair start,1
no Student.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,41
no Professor.enrolled
-- div,5
no (Professor <: enrolled)
-- div,1
Professor.enrolled = none
-- div,2
all x: Professor | no x.enrolled
-- div,3
all p:Professor| no p.enrolled
-- div,6
all p :Professor | #p.enrolled =0
-- div,2
all x: Professor | #(x.enrolled)=0
-- div,1
all p : Professor | p not in enrolled.Course
-- div,1
all c : Course | no enrolled.c & Professor
-- div,2
all professor : Professor | no professor.enrolled
-- div,1
all p : Professor, c : Course | c not in p.enrolled
-- div,1
all p:Person | p in Professor => no p.enrolled
-- div,3
all p : Person | p in Professor implies #(p.enrolled)=0
-- div,1
all p : Professor | all c : Course | c not in p.enrolled
-- div,1
all c : Course | all p : Professor | not p in enrolled.c
-- div,1
all p : Professor| all c: Course | no enrolled.c & p
-- div,1
all c:Course| no ( enrolled.c & (Professor + (Professor & Student)) )
-- div,1
all p : Person, c : Course | c in p.enrolled implies p not in Professor
-- div,1
all p: Person, c: Course | (p in Professor => p not in c.~enrolled)
-- div,1
all professor : univ | professor in Professor implies no professor.enrolled
-- div,1
all p: Person | p in Professor implies no c: Course | c in p.enrolled
-- div,2
all p: Person | all c: Course | p in Professor implies c not in p.enrolled
-- div,1
all x : Person | all y : Course | x in Professor implies x not in enrolled.y
-- div,1
all p : Person | (p in Student) => (p.enrolled = p.enrolled)
  all p : Person | (p in Professor) => (p.enrolled = none)
-- div,1
-- equiv pair end
-- equiv pair start,1
one Professor.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
no enrolled->Professor
-- div,1
-- equiv pair end
-- equiv pair start,4
Person-Professor in Course
-- div,1
all x:Person-Professor| one enrolled.x
-- div,1
all p: Person - Professor | some enrolled.p
-- div,1
all x: Person-Professor| x -> x in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,4
Student in Person.enrolled
-- div,1
all x: Person | x not in Student
-- div,1
all x: Student | x in Course.enrolled
-- div,1
all p: Person | p in Student => p in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
no (Person.teaches - Student)
-- div,1
Person.enrolled in Course
  	no Person.teaches
-- div,1
-- equiv pair end
-- equiv pair start,1
no (Student & Professor).enrolled
-- div,1
-- equiv pair end
-- equiv pair start,12
all x: Student | x.enrolled = Course
-- div,1
all x: Student | Course in x.enrolled
-- div,1
all s : Student, c : Course | s in enrolled.c
-- div,2
all x: Student, y: Course| x -> y in enrolled
-- div,1
all s:Student | all c:Course | c in s.enrolled
-- div,1
all p: Person, c:Course| p in Student => c in p.enrolled
-- div,1
all p: Person, c: Course | p in Student => p in c.~enrolled
-- div,4
all x: Person, y: Course | x in Student => x in y.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all s: Student | s in Course.~enrolled
-- div,1
all p : Person | p in Student implies #(p.enrolled)>0
-- div,2
-- equiv pair end
-- equiv pair start,3
Person.enrolled in Course
  	no Professor
-- div,1
all p:Person | p in Professor => p.enrolled = 0
-- div,1
all p: Person | p in Professor => p in p.teaches
-- div,1
-- equiv pair end
-- equiv pair start,5
all s : Person - Professor | no s.enrolled
-- div,1
all p: Person - Professor | no p.enrolled
-- div,2
all x : Person - Professor | no x.enrolled
-- div,2
-- equiv pair end
-- equiv pair start,3
all x: Person - Professor| some x.enrolled
-- div,1
all p:(Person - Professor) | p in enrolled.Course
-- div,1
all s : Student | s.enrolled = s.enrolled
  all p : Person | p.enrolled = none => p in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all a : Student-Professor |some a.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person, c : Course | x.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Student, c : Course | x.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p:Person | all c:Course | c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person | p in Student => one p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all c: Course | all p: Person | p not in Professor
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person - Student, c : Course | c in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person-Professor, c : Course | p.enrolled in c
-- div,1
-- equiv pair end
-- equiv pair start,4
all p : Person-Professor, c : Course | c in p.enrolled
-- div,3
all x: Person-Professor, y: Course| x -> y in enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | p = Student => p in c.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | p = Student => ~enrolled[c] = p
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | p != Student => p in c.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | p != Student => ~enrolled[c] != p
-- div,1
-- equiv pair end
-- equiv pair start,1
all  p : Professor | all t : p.teaches | t not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all p: Person, c: Course | p in Student => p in Course.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Person | all c: Course| p in Student implies some enrolled.p
-- div,1
all x: Course, y: Student | y in y.enrolled && Professor not in Professor.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p: Person, s: Student | p not in s => p not in Course.~enrolled
-- div,1
all p: Person, s: Student, c: Course | p not in s => p not in c.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,2
all p : Person, g : Grade | p->g in Course.grades implies p in Student
-- div,2
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Course | c in p.enrolled implies p in Person
-- div,1
-- equiv pair end
-- equiv pair start,1
all x : Person | some y : Course | x in Student implies x in enrolled.y
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | some c : Course | c in p.enrolled implies p in Student
-- div,1
-- equiv pair end
-- equiv pair start,6
all p:Person | (p in Student => some p.enrolled) and (p in Professor => no p.enrolled)
-- div,5
all p: Person | p in Professor => p not in Course.~enrolled
    all p: Person | p in Student => p in Course.~enrolled
-- div,1
-- equiv pair end
-- equiv pair start,3
all p: Person, c: Course | (p in Student => p in c.~enrolled) && (p in Professor => p not in c.~enrolled)
-- div,1
all p: Person | all c: Course | (p in Professor implies c not in p.enrolled) and (p in Student implies c in p.enrolled)
-- div,1
all s: Student | all c: Course | c in s.enrolled
all p: Person, c: Course | p in Professor => c not in p.enrolled
-- div,1
-- equiv pair end
-- equiv pair start,1
all s : Student, c : Course | c in s.enrolled and (c not in (Person.enrolled) or c not in (Professor.enrolled))
-- div,1
-- equiv pair end
