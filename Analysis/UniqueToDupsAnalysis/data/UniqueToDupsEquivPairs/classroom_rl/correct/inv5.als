-- equiv pair start,133
some Teacher.Teaches
-- div,89
Teacher.Teaches != none
-- div,1
some Teacher <: Teaches
-- div,3
some (Class & Teacher.Teaches)
-- div,1
some (Teaches . Class & Teacher)
-- div,1
some (Teacher & Teaches.Class)
-- div,1
some Teacher.Teaches & Class
-- div,1
some Class.~Teaches&Teacher
-- div,2
some t:Teacher| some t.Teaches
-- div,6
some c:Class | c in Teacher.Teaches
-- div,12
some c : Class, p : Teacher | c in p.Teaches
-- div,1
some c : Class, t : Teacher | c in t.Teaches
-- div,5
some c:Class, t:Teacher | t->c in Teaches
-- div,3
some c: Class | some t: Teacher | t->c in Teaches
-- div,4
some c : Class, p : Person | c in p.Teaches and p in Teacher
-- div,2
some p : Person, c : Class | p in Teacher and p -> c in Teaches
-- div,1
-- equiv pair end
