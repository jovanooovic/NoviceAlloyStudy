-- equiv pair start,10
no Class.Teaches
-- div,1
Teaches in Person -> Class
-- div,1
Class.~Teaches.Teaches in Class
-- div,1
all c:Class | lone c.Teaches
-- div,2
all t:Teacher | lone Teaches.t
-- div,1
Teacher.Teaches in Class.~Teaches.Teaches
-- div,1
all c:Class | lone c.Teaches & Teacher
-- div,1
all x : Class, y,z : Teacher  | (x->y in Teaches and x->z in Teaches) implies y=z
-- div,1
all t1,t2 : Teacher, c : Class | t1->c in Teaches and t2->c in Teaches implies t1->t2 not in Teaches
-- div,1
-- equiv pair end
