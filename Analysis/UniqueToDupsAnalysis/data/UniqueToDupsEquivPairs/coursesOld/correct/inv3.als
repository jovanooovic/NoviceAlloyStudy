-- equiv pair start,187
Course = Person.teaches
-- div,8
Person.teaches = Course
-- div,4
Course in Person.teaches
-- div,21
no Course - Person.teaches
-- div,3
teaches in Person some -> Course
-- div,3
Person.teaches & Course = Course
-- div,1
Course & Person.teaches = Course
-- div,1
Course = Course & Person.teaches
-- div,1
no c:Course | no teaches.c
-- div,1
all c:Course |some teaches.c
-- div,84
all x:Course | some teaches.x
-- div,7
all c: Course | not no teaches.c
-- div,1
all c:Course | some c.~teaches
-- div,9
all c : Course | teaches.c != none
-- div,1
all c: Course | c in Person.teaches
-- div,7
all c: Course | c.~teaches not in none
-- div,1
all c: Course | one (c & Person.teaches)
-- div,1
all c: Course | some (c & Person.teaches)
-- div,2
all kurs: Course | kurs in Person.teaches
-- div,1
all course : Course | course in Person.teaches
-- div,1
Person.teaches in Course and Course in Person.teaches
-- div,1
all c:Course | some p:Person | c in p.teaches
-- div,9
all x : Course | some y : Person | y->x in teaches
-- div,1
all c:Course|some p:Person|p->c in teaches
-- div,16
all x : univ | x in Course implies (some y : univ | y->x in teaches)
-- div,1
all c : univ | c in Course implies some p : univ | p in Person and p->c in teaches
-- div,1
-- equiv pair end
