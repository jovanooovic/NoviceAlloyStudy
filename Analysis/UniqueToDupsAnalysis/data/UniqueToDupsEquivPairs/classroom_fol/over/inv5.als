-- equiv pair start,17
some Teacher & Class
-- div,1
some Teacher <: Person.Teaches
-- div,1
some c:Class | c in Teacher
-- div,2
some x : Class | x in Teacher
-- div,2
some t:Teacher | t in Class
-- div,2
some x : Teacher | x in Class
-- div,1
some c:Class | some c.Teaches
-- div,1
some x : Class | x in Group and x in Teacher
-- div,1
some x : Person | x in Teacher and x in Class
-- div,1
some t:Person| t in Teacher and t in Class
-- div,1
some c:Class, t:Teacher | c->t in Teaches
-- div,3
some x : Person | x in Teacher and x in Group and x in Class
-- div,1
-- equiv pair end
