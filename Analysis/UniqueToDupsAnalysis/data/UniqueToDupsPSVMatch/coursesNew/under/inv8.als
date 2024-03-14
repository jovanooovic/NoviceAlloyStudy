no iden & teaches
-- div,1
no Professor & Professor.teaches
-- div,1
all p : Person | p not in teaches.p
-- div,1
no p: Professor | p in p.teaches
-- div,3
all t : Person | no t & teaches.t
-- div,1
all x:Professor | x not in x.teaches
-- div,2
all p : Professor | p not in teaches.p
-- div,2
all p : Professor | p !in p.teaches
-- div,23
all t:Professor | t not in teaches.t
-- div,1
all t:Professor | t not in t.teaches
-- div,2
all t : Professor | t not in t.enrolled
-- div,1
no p : Professor | p in  p.^teaches
-- div,1
all t : Professor | no t & teaches.t
-- div,1
all p:Professor | p not in Person.teaches
-- div,1
all p : Professor | p.teaches = p.teaches
-- div,1
all p : Professor | no p.enrolled.teaches
-- div,1
all p : Person - Student | p not in p.teaches
-- div,1
all p : Professor | p not in enrolled.(p.teaches)
-- div,5
all p : Professor | p not in p.teaches.enrolled
-- div,1
all x,y : Person |  x in y.teaches implies x != y
-- div,1
no p : Professor | p in p.(teaches.~enrolled)
-- div,1
all t : Professor | no t & enrolled.teaches.t
-- div,1
all p:Professor | no p.enrolled&p.teaches
-- div,8
all t : Professor | no t.enrolled & t.teaches
-- div,1
all p:Professor |no p.teaches & p.enrolled
-- div,13
all p : Professor | no p.enrolled&teaches.p
-- div,2
all t : Professor | no t.teaches & t.enrolled
-- div,1
all p: Professor | #(p.teaches & p.enrolled) = 0
-- div,1
all p : Professor | p.teaches & p.enrolled = none
-- div,2
all p : Professor | p.enrolled & p.teaches = none
-- div,3
all p:Person | p in Professor implies p not in p.teaches
-- div,3
all x : Person | x in Professor implies x not in x.teaches
-- div,2
all p : Person | p in p.teaches implies p not in Professor
-- div,1
all p:Professor| all c:p.teaches| p not in c
-- div,2
all p:Professor, c:p.teaches | c not in p.enrolled
-- div,7
all p:Professor, c : p.teaches | p not in c.enrolled
-- div,1
all x : Professor, y: x.enrolled| y not in x.teaches
-- div,1
all p:Professor, c : p.teaches | p not in enrolled.c
-- div,1
all p1,p2:Professor | p1->p2 in teaches implies p1 != p2
-- div,1
all p1:Professor, p2:Professor | p1 not in p2.teaches
-- div,1
all p1,p2:Professor | p1->p2 in enrolled implies p1 != p2
-- div,1
all p: Professor | all c: p.teaches | some univ
-- div,1
all professor : Professor | professor not in professor.teaches
-- div,1
all p: Professor & Student | no p.teaches & p.enrolled
-- div,1
all p: Professor, c: Course | p in c.teaches => p != c
-- div,1
all x : Professor | all y: x.enrolled | y not in x.teaches
-- div,1
all t:Professor| all c:t.enrolled| c not in t.teaches
-- div,1
all p : Professor | all t : p.teaches | t not in p.enrolled
-- div,1
all p:Professor|all c:p.enrolled | c not in p.teaches
-- div,2
all x : Professor | all c : x.teaches | c not in x.enrolled
-- div,1
all p:Professor |all c:p.teaches | c not in p.enrolled
-- div,29
all p : Professor | all c : p.teaches | p not in enrolled.c
-- div,1
all s:Professor | all c:s.teaches | c not in s.enrolled
-- div,2
all x,y : Person | y in Professor and x in y.teaches implies x != y
-- div,1
all p:Professor | all c:Course | no ((p.teaches) & p.enrolled)
-- div,1
all c: Course, p: Professor | c in p.teaches => c not in p.enrolled
-- div,2
all t:Professor, c:Course | c in t.teaches implies c not in t.enrolled
-- div,2
all p : Professor, c : Course | c in p.teaches implies p not in c.enrolled
-- div,1
all p:Professor, c:Course | p in teaches.c implies p not in enrolled.c
-- div,11
all p:Professor, c:Course | c in p.teaches => c not in p.enrolled
-- div,17
all p : Professor, c : Course | p in enrolled.c implies p not in teaches.c
-- div,1
all t:Professor,c:Course | c in t.teaches => t not in enrolled.c
-- div,1
all p:Professor, c:Course | p in c.teaches implies p not in c.enrolled
-- div,1
all x: Professor, y: Course | x in enrolled.y implies x not in teaches.y
-- div,4
all p:Professor, c:Course | c in p.teaches implies c not in c.enrolled
-- div,1
all c: Course, p: Professor | c in p.teaches => p != c.grades[p]
-- div,1
all t: Professor | all c: t.teaches | t.enrolled in Course-c
-- div,2
all x:Professor, c:Course| x->c in teaches implies x->c not in enrolled
-- div,2
all p : Professor | all c : Course | c not in (p.enrolled & p.teaches)
-- div,1
all p1:Professor, c:Course | c in p1.teaches implies c not in p1.enrolled
-- div,1
all p: Professor, c: Course | p in c.~teaches => p not in c.~enrolled
-- div,3
all c: Course, p: Professor | c in p.teaches => p !in c.grades.Person
-- div,2
all p : Person - Student , c : Course | c in p.teaches implies c not in p.enrolled
-- div,1
all prof : Professor, c:Course | c in prof.teaches implies c not in prof.enrolled
-- div,2
all x:Professor| all y:Course | y in x.enrolled implies y not in x.teaches
-- div,1
all x:Professor | all y: Course | y in x.teaches implies y not in x.enrolled
-- div,1
all x : Professor | all y : Course | x in teaches.y implies x not in enrolled.y
-- div,2
all p : Professor | all c : Course | c in p.teaches => c not in p.enrolled
-- div,11
all p: Professor| all c: Course| p in c.teaches implies p not in c.enrolled
-- div,6
all p: Professor| all c: Course| c in p.teaches implies (p not in c.enrolled)
-- div,1
all p1:Professor | all c:Course | c in p1.teaches implies c not in  p1.enrolled
-- div,4
all p:Professor | all courseTeached:p.teaches | courseTeached not in p.enrolled
-- div,1
all c : Course | all p : Professor | p in c.~(teaches) implies p not in c.~(enrolled)
-- div,1
all p1 : Professor | all c1:Course | p1->c1 in teaches implies p1->c1 not in enrolled
-- div,2
all p: Person - Student| all c: Course| p in c.teaches implies p not in c.enrolled
-- div,1
all p : Person, c : Course | p in Professor && c in p.teaches implies c not in p.enrolled
-- div,2
all c : Course | all p : Professor | p in c.~(teaches) implies p not in c.grades[Person]
-- div,1
all x:Person, c:Course| x in Professor and x->c in teaches implies x->c not in enrolled
-- div,3
all p:Person, c:Course| p->c in teaches and p in Professor implies p->c not in enrolled
-- div,1
all u:Person,c:Course| u in Professor and u->c in teaches implies u->c not in enrolled
-- div,1
all x:Person, c:Course| x->c in teaches and x in Professor implies x->c not in enrolled
-- div,3
all p: Person| all c: Course| p in c.teaches implies (p not in c.enrolled and p in Professor)
-- div,1
all p : Person | all c : Course | (p in Professor and c in p.teaches) implies ( c not in p.enrolled )
-- div,1
all p1:Professor, z:Student | all c:Course | p1->c in teaches and z->c in enrolled implies p1 != z
-- div,2
all c : Course | all p : Professor | p in c.~(teaches) implies (p not in c.grades[Person] and p not in c.~(enrolled))
-- div,2
all p : Professor | (p.teaches & p.enrolled) = none
  
  
  
  	all p : Professor | (all c : p.teaches | c not in p.enrolled)
-- div,1
all professor : Professor | all student : Student | all course : Course | professor->course in teaches and student->course in enrolled implies professor!=student
-- div,1
