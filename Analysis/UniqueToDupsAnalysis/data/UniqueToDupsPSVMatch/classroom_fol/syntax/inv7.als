all
-- div,1
all c : Class | some t :
-- div,1
all c:Class | some t.~Teaches
-- div,1
all c:Class,some t:Teacher | some Class
-- div,1
all c:Class,some t:Teacher | t in c.~Teaches
-- div,1
all t : Teacher | c : Class | t->c in Teaches
-- div,1
all c:class | some t:Teacher | t->c in Teaches
-- div,2
all c: Class, some t: Teacher | t->c in Teaches
-- div,1
all c : Class | some t : Teacher | t -> x in Teaches
-- div,1
all c : Class | some P : Person | p in Teacher and p -> c in Teaches
-- div,1
all c : Classes | some p : Person | p in Teacher and p->c in Teaches
-- div,2
all x : Class | some p : Person, g : Group . x->p->g in Group implies some t : Teacher | t->x in Teacher
-- div,1
all x : Class | some p : Person, g : Group . x->p->g in Group implies (some t : Teacher | t->x in Teacher)
-- div,1
