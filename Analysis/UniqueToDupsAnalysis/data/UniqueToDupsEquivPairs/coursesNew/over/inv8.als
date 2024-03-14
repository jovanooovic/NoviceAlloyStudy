-- equiv pair start,1
all c : Course | no teaches.c+enrolled.c
-- div,1
-- equiv pair end
-- equiv pair start,1
all p : Person | teaches.p not in enrolled.p
-- div,1
-- equiv pair end
