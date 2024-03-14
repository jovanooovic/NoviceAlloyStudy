enrolled.(Professor.course)
-- div,1
all t:Teacher | t not in t.teaches
-- div,1
all t: Teacher | t not in t.teaches
-- div,1
all p : Professor | p not in teach.p
-- div,1
all p: Professor | all c: p.teaches | one
-- div,1
all p: Professor | p not in p.teaches.grade
-- div,1
all x : Teacher | x.teaches not in x.enrolled
-- div,1
all p : Professor | no p.endrolled & p.teaches
-- div,1
all p : Professor | no p.teaches & p.enrolled)
-- div,1
all p : Professor | t.teaches not in t.enrolled
-- div,1
all t:Professor| all t.enrolled not in t.teaches
-- div,1
all p : Professor | all p.teaches not in p.enrolled
-- div,1
all p:Professor |all  c:p.teaches | c not in a.enrolled
-- div,1
all a:Professor |all  c:p.teaches | c not in a.enrolled
-- div,1
all p : Professor | c : p.teaches | c not in p.enrolled
-- div,1
all p : Professor | c : p.enrolled | c not in p.teaches
-- div,1
all p : Professor | all c : Courses | p not in teaches.c
-- div,1
all x : Professor | all c : x.teaches | c not in p.enrolled
-- div,1
all c : Course | all p : Professor | p not in c.~(enrolled))
-- div,1
all p : Professor | (all c : p.teaches | c not in p.enrolled))
-- div,4
all c: Course, p: Professor | c in p.teaches => p not in c.teachers
-- div,1
all p:Professor | all coursesTeached:p.teaches | c not in p.enrolled
-- div,1
all p: Professor, c: Course | p in c.~teahces => p not in c.~enrolled
-- div,1
all u:User, c:Course | (c in u.teaches) implies (c not in u.enrolled)
-- div,1
all p: Professor, c: Courses | p in c.~teahces => p not in c.~enrolled
-- div,1
all t:teatcher, c:Course | c in t.teatches implies c not in t.enrolled
-- div,1
all t:Teatcher, c:Course | c in t.teatches implies c not in t.enrolled
-- div,1
all t:Professor, c:Course | c in t.teatches implies c not in t.enrolled
-- div,1
all p : Professor, c : Course | c in p.teaches implies p no in c.enrolled
-- div,1
all p : Person | all c : Course | c in p.teaches implies p not in Prefessor
-- div,1
all c: Course, p: Professor | c in p.teaches => p != c.grades.getKey(p.grades)
-- div,2
all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades.ran
-- div,1
all c: Course, p: Professor | c in p.teaches => p.grades[p] not in c.grades.ran
}
-- div,1
all x : Professor | for all y : Course | x in teaches.y implies x not in enrolled.y
-- div,1
all c : Course | all p : Professor | p in c.~(teaches) implies p not in c.~(enrolled))
-- div,1
r, c1,c2:Course| p1->c1 in teaches and p2->c2 in enrolled and p1 != p2 implies c1 != c2
-- div,1
