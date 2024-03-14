all c: Course | one teaches.c
-- div,1
no Person.teaches & Person.enrolled
-- div,1
no teaches.~enrolled & teaches.~teaches
-- div,2
all c : Course, p : teaches.c | p not in teaches.c
-- div,1
all p: Person | no (p.teaches.~teaches) & enrolled.(p.teaches)
-- div,1
all p:Person | no p.teaches.~enrolled & p.teaches.~teaches
-- div,1
all p: Person | no (p.teaches.~teaches)-p & enrolled.(p.teaches)
-- div,2
all p,p1: Person, c:Course | p->c in teaches implies p1->c not in enrolled
-- div,1
all p1, p2 : Person, c : Course | c in p1.teaches implies c not in p2.enrolled
-- div,1
all c : Course, p : teaches.c | p.enrolled&(teaches.c).teaches=none
-- div,5
all p,p1: Person, c,c1:Course | p->c in teaches implies p1->c not in enrolled
-- div,1
all c : Course, disj p0,p1 : Person | c in p0.teaches => c not in p1.enrolled
-- div,1
all disj p1,p2 : Person, c : Course | c in p1.teaches => c not in p2.enrolled
-- div,1
all p1,p2 : Person | all c : Course | c in p1.teaches implies c not in p2.enrolled
-- div,1
all c1, c2 : Course, p1, p2 : teaches.c1 | p1 in teaches.c2 implies p2 not in enrolled.c2
-- div,2
all p1:Person, p2:Person, c:Course | p1 in teaches.c implies p2 not in teaches.c
-- div,2
all p1,p2:Person | p1->p2 not in teaches.~enrolled or p1->p2 not in teaches.~teaches
-- div,1
all p,p1: Person, c:Course | p->c in teaches and p!=p1 implies p1->c not in enrolled
-- div,1
all p1, p2 : Person, c : Course | c in p1.teaches and p1 != p2 <=> c not in p2.enrolled
-- div,1
all p1, p2: Person | all course: Course | course in p1.teaches implies course not in p2.enrolled
-- div,1
all p1, p2: Person | all course: Course | course in p1.teaches and course in p2.teaches implies p1=p2
-- div,1
all p1,p2 : Person | all c,c2 : Course | c in p1.teaches and c in p2.enrolled implies (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,2
all p1,p2 : Person | all c,c2 : Course | c in p1.enrolled and c in p2.teaches implies c2 not in p1.enrolled and c2 not in p2.enrolled
-- div,2
all p1,p2 : Person | all c,c2 : Course | (c in p1.teaches and c in p2.enrolled) <=> (c2 not in p1.enrolled and c2 not in p2.enrolled)
-- div,1
all p1, p2: Person | all course: Course | course in p1.teaches and course in p2.teaches implies p1=p2 and p1 in Professor and p2 in Professor
-- div,1
all p1, p2: Person, c1: Course | all c2: Course | c2 in p1.enrolled && c2 in p2.enrolled => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
all p1, p2: Person, c1: Course | one c2: Course | p1!=p2 &&  (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
all person1, person2 : Person | all course1, course2 : Course | (course1 in person1.teaches and course2 in person2.teaches) implies (course2 not in person1.enrolled and course1 not in person2.enrolled)
-- div,1
all p1, p2: Person, c1: Course | one c2: Course | p1!=p2 && (c2 in p1.enrolled && c2 in p2.enrolled) || (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
-- div,1
