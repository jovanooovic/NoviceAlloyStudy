-- equiv pair start,78
visible in profile
-- div,12
visible = (visible & profile)
-- div,5
all u:User | u.visible in u.profile
-- div,38
all w:Work | visible.w in profile.w
-- div,9
all u:User, w:u.visible | w in u.profile
-- div,1
all u:User, v:u.visible | v in u.profile
-- div,1
all w:Work,u:User | w in u.visible implies w in u.profile
-- div,9
all u: User, w: Work | w in u.visible implies w in u.profile
-- div,1
all u:User | all w:Work | w in u.visible implies w in u.profile
-- div,1
all u:User | u.visible in u.profile
  	all w:Work | visible.w in profile.w
-- div,1
-- equiv pair end
