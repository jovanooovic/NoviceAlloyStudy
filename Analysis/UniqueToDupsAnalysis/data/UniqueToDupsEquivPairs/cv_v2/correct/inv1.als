-- equiv pair start,19
visible in profile
-- div,9
visible = (visible & profile)
-- div,1
all u:User | u.visible in u.profile
-- div,5
all u:User, v : u.visible | v in u.profile
-- div,1
always (all u : User, v : u.visible | v in u.profile)
-- div,1
all w : Work, u : User | w in u.visible implies w in u.profile
-- div,2
-- equiv pair end
