all p : Person - Professor|
-- div,1
no (Person - Professor).teach
-- div,1
all c: Course | teaches.c in Teacher
-- div,1
all p:Person-Professor | no s.teaches
-- div,1
all p : Person - Teacher | no p.teaches
-- div,1
all x: Person - Teacher | no x.enrolled
-- div,1
all p:Person - Professors | no p.teaches
-- div,1
all p:Person | not (no p.teaches) implies p in Teacher
-- div,1
all u:User, c:Course| u->c in teaches implies u in Professor
-- div,1
all p:person, c:Course| p->c in teaches implies p in Professor
-- div,1
all p : Person, c : Course | c in p.teaches implies p in Teacher
-- div,1
all x: Person, y:Course| x-> y in teaches implies x in Professsor
-- div,1
all p : Person, c : Course | p->c in teaches mplies p in Professor
-- div,1
all p : Person | all c : Course | c in p.teaches implies p in Professir
-- div,1
