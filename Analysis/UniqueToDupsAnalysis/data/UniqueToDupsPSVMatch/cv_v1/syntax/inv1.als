in profile
-- div,1
User . visible in User . Profile
-- div,1
some user.profile in user.visible
-- div,1
all u: User | u.visible in u.profile
-- div,2
for u : User | u.visible in u.profile
-- div,2
all w:Work | visible.w = some w.source
-- div,1
all u : User | all profile.(u.visible)
-- div,1
all u:User | all u.visible in u.profile
-- div,1
all w1, w2 : Work | w1->w2 in visible and in profile
-- div,1
all w1, w2 : Work | w1->w2 in visible w1->w2 and in profile
-- div,1
all u : USer, w : Work | u->w in visible and u->w in profile
-- div,1
all u: User| profile.source in u or profile.source in Institution
-- div,2
