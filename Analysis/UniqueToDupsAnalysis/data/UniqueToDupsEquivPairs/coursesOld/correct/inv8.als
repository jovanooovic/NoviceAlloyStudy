-- equiv pair start,52
no teaches&enrolled
-- div,8
no iden & teaches.~enrolled
-- div,1
no teaches.~enrolled & iden
-- div,6
no p: Person | p in p.teaches.~enrolled
-- div,2
all c:Course | no teaches.c & enrolled.c
-- div,3
all p:Person | no p.teaches & p.enrolled
-- div,14
all p:Person | p.teaches & p.enrolled = none
-- div,1
all cours: Course | cours not in cours.~teaches.enrolled
-- div,1
all p : Person , c: Course | no p.teaches & p.enrolled
-- div,1
all p:Person,c:Course | c in p.teaches implies c not in p.enrolled
-- div,1
all c: Course, p: Person | c in p.teaches => c not in p.enrolled
-- div,1
all p:Person, c:Course | p in teaches.c implies p not in enrolled.c
-- div,3
all p: Person, c:Course | p->c in teaches implies p->c not in enrolled
-- div,3
all p:Person, c:Course | p -> c in enrolled implies p -> c not in teaches
-- div,1
all p:Person,c:Course | p->c not in teaches or p->c not in enrolled
-- div,1
all p:Person | no c:Course | c in p.teaches && c in p.enrolled
-- div,2
all p : Person | all c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all p1: Person | all c: Course| p1->c in enrolled implies p1->c not in teaches
-- div,1
all p1 : Person | all c1 : Course | p1->c1 in teaches implies p1->c1 not in enrolled
-- div,1
-- equiv pair end
