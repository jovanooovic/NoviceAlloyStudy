-- equiv pair start,2
all s:Person,c:Class,g:Group | (c->s->g in Groups => all t:Person | t->c in Teaches and t->s in Tutors)
-- div,2
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Person, c : Class | (some g : Group | c -> p2 -> g in Groups) and 
		p1 -> c in Teaches and p1 -> p2 in Tutors
-- div,1
-- equiv pair end
-- equiv pair start,1
all p1, p2 : Person | some g : Group, c : Class | 
  		(c -> p1 -> g in Groups and p2 -> c in Teaches) and (p2 -> p1 in Tutors)
-- div,1
-- equiv pair end
