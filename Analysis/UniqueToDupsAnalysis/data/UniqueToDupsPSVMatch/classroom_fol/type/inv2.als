Teacher = {}
-- div,1
Teacher in iden
-- div,1
Teacher not in iden
-- div,1
all p:Person | no p in Teacher
-- div,1
all t:Teacher | t not in Teaches
-- div,2
all p : Person | no p in Teacher
-- div,1
all t : Person | t nor in Teacher
-- div,1
all t:Teacher | t.Teaches in iden
-- div,1
all c :Class, t:Teacher | c->t not in Groups
-- div,1
